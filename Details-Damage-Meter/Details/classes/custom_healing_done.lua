-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> attributes functions for customs
--> HEALING DONE

--> customized display script

	local _details = 		_G._details
	local _
	
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> local pointers

	local _cstr = string.format --lua local
	local _math_floor = math.floor --lua local
	local _table_sort = table.sort --lua local
	local _table_insert = table.insert --lua local
	local _table_size = table.getn --lua local
	local _setmetatable = setmetatable --lua local
	local _ipairs = ipairs --lua local
	local _pairs = pairs --lua local
	local _rawget= rawget --lua local
	local _math_min = math.min --lua local
	local _math_max = math.max --lua local
	local _bit_band = bit.band --lua local
	local _unpack = unpack --lua local
	local _type = type --lua local
	
	local _GetSpellInfo = _details.getspellinfo -- api local
	local _IsInRaid = IsInRaid -- api local
	local _IsInGroup = IsInGroup -- api local
	local _GetNumGroupMembers = GetNumGroupMembers -- api local
	local _GetNumPartyMembers = GetNumPartyMembers or GetNumSubgroupMembers -- api local
	local _GetNumRaidMembers = GetNumRaidMembers or GetNumGroupMembers -- api local
	local _GetUnitName = GetUnitName -- api local

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> constants

	local attribute_custom = _details.attribute_custom
	
	local ToKFunctions = _details.ToKFunctions
	local SelectedToKFunction = ToKFunctions[1]
	local FormatTooltipNumber = ToKFunctions[8]
	local TooltipMaximizedMethod = 1

	function attribute_custom:UpdateHealingDoneBracket()
		SelectedToKFunction = ToKFunctions[_details.ps_abbreviation]
		FormatTooltipNumber = ToKFunctions[_details.tooltip.abbreviation]
		TooltipMaximizedMethod = _details.tooltip.maximize_method
	end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> healing done tooltip
	
	function attribute_custom:healdoneTooltip(actor, target, spellid, combat, instance)
	
		if (spellid) then

			if (instance:GetCustomObject():IsSpellTarget()) then
				local targetname = actor.name
				local this_actor = combat(2, targetname)
				
				if (this_actor) then
					for name, _ in _pairs(this_actor.healing_from) do 
						local healer = combat(2, name)
						if (healer) then
							local spell = healer.spell_tables._ActorTable[spellid]
							if (spell) then
								local on_me = spell.targets._NameIndexTable[targetname]
								if (on_me) then
									on_me = spell.targets._ActorTable[on_me]
									GameCooltip:AddLine(healer.name, FormatTooltipNumber(_, on_me.total))
								end
							end
						end
					end
				end
				
				return
			else
				local name, _, icon = _GetSpellInfo(spellid)
				GameCooltip:AddLine(name)
				GameCooltip:AddIcon(icon, 1, 1, 14, 14)
				
				GameCooltip:AddLine(Loc["STRING_HEAL"] .. ": ", spell.total)
				GameCooltip:AddLine(Loc["STRING_HITS"] .. ": ", spell.counter)
				GameCooltip:AddLine(Loc["STRING_CRITICAL_HITS"] .. ": ", spell.c_amt)
			end
		
		elseif (target) then
			
			if (target == "[all]") then
				actor.targets:SortByKey("total")
				for _, target_object in _ipairs(actor.targets._ActorTable) do
					GameCooltip:AddLine(target_object.name, FormatTooltipNumber(_, target_object.total))
					_details:AddTooltipBackgroundStatusbar()
					GameCooltip:AddIcon([[Interface\FriendsFrame\StatusIcon-Offline]], 1, 1, 14, 14)
				end
				
			elseif (target == "[raid]") then
				local roster = combat.raid_roster
				actor.targets:SortByKey("total")
				for _, target_object in _ipairs(actor.targets._ActorTable) do
					if (roster[target_object.name]) then
						GameCooltip:AddLine(target_object.name, FormatTooltipNumber(_, target_object.total))
					end
				end
				
			elseif (target == "[player]") then
				local targetactor = actor.targets._NameIndexTable[_details.playername]
				if (targetactor) then
					targetactor = actor.targets._ActorTable[targetactor]
					GameCooltip:AddLine(targetactor.name, FormatTooltipNumber(_, targetactor.total))
				end
			else
				local targetactor = actor.targets._NameIndexTable[target]
				if (targetactor) then
					targetactor = actor.targets._ActorTable[targetactor]
					GameCooltip:AddLine(target, FormatTooltipNumber(_, targetactor.total))
				end
			end
		
		else
			actor:ToolTip_DamageDone(instance)
		end
	end
	
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> healing done search
	
	function attribute_custom:healdone(actor, source, target, spellid, combat, instance_container)

		if (spellid) then --> spell is always healing done
			local spell = actor.spell_tables._ActorTable[spellid]
			local melee = actor.spell_tables._ActorTable[1]
			if (spell) then
				if (target) then
					if (target == "[all]") then
						for _, targetactor in _ipairs(spell.targets._ActorTable) do 
							--> add amount
							instance_container:AddValue(targetactor, targetactor.total, true)
							attribute_custom._TargetActorsProcessedTotal = attribute_custom._TargetActorsProcessedTotal + targetactor.total
							--> add to processed container
							if (not attribute_custom._TargetActorsProcessed[targetactor.name]) then
								attribute_custom._TargetActorsProcessed[targetactor.name] = true
								attribute_custom._TargetActorsProcessedAmt = attribute_custom._TargetActorsProcessedAmt + 1
							end
						end
						return 0, true
						
					elseif (target == "[raid]") then
						local roster = combat.raid_roster
						for _, targetactor in _ipairs(spell.targets._ActorTable) do 
							if (roster[targetactor.name]) then
								--> add amount
								instance_container:AddValue(targetactor, targetactor.total, true)
								attribute_custom._TargetActorsProcessedTotal = attribute_custom._TargetActorsProcessedTotal + targetactor.total
								--> add to processed container
								if (not attribute_custom._TargetActorsProcessed[targetactor.name]) then
									attribute_custom._TargetActorsProcessed[targetactor.name] = true
									attribute_custom._TargetActorsProcessedAmt = attribute_custom._TargetActorsProcessedAmt + 1
								end
							end
						end
						return 0, true
						
					elseif (target == "[player]") then
						local targetactor = spell.targets._NameIndexTable[_details.playername]
						if (targetactor) then
							targetactor = spell.targets._ActorTable[targetactor]
							--> add amount
							instance_container:AddValue(targetactor, targetactor.total, true)
							attribute_custom._TargetActorsProcessedTotal = attribute_custom._TargetActorsProcessedTotal + targetactor.total
							--> add to processed container
							if (not attribute_custom._TargetActorsProcessed[targetactor.name]) then
								attribute_custom._TargetActorsProcessed[targetactor.name] = true
								attribute_custom._TargetActorsProcessedAmt = attribute_custom._TargetActorsProcessedAmt + 1
							end
						end
						return 0, true
					
					else
						local targetactor = actor.targets._NameIndexTable[target]
						if (targetactor) then
							targetactor = spell.targets._ActorTable[targetactor]
							--> add amount
							instance_container:AddValue(targetactor, targetactor.total, true)
							attribute_custom._TargetActorsProcessedTotal = attribute_custom._TargetActorsProcessedTotal + targetactor.total
							--> add to processed container
							if (not attribute_custom._TargetActorsProcessed[targetactor.name]) then
								attribute_custom._TargetActorsProcessed[targetactor.name] = true
								attribute_custom._TargetActorsProcessedAmt = attribute_custom._TargetActorsProcessedAmt + 1
							end
						end
						return 0, true
					end
				else
					return spell.total
				end
			else
				return 0
			end

		elseif (target) then

			if (target == "[all]") then
				return actor.targets:GetTotal()
				
			elseif (target == "[raid]") then
				return actor.targets:GetTotalOnRaid(nil, combat)
			
			elseif (target == "[player]") then
				local targetactor = actor.targets._NameIndexTable[_details.playername]
				if (targetactor) then
					return actor.targets._ActorTable[targetactor].total
				else
					return 0
				end

			else
				local targetactor = actor.targets._NameIndexTable[target]
				if (targetactor) then
					return actor.targets._ActorTable[targetactor].total
				else
					return 0
				end
			end
		else
			return actor.total or 0
			
		end
		
	end	
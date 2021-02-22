RegisterServerEvent("ml_doctorjob:checkjob")
AddEventHandler("ml_doctorjob:checkjob", function()
      local _src = tonumber(source)
    TriggerEvent('redemrp:getPlayerFromId', _src, function(user)
print(user.getJob())
        if user.getJob() == 'doctor' then
            TriggerClientEvent('ml_doctorjob:open', _src)
        else
            print('not authorized')
        end
    end)
end)


RegisterServerEvent( 'ml_doctorjob:healplayer' )
AddEventHandler( 'ml_doctorjob:healplayer', function (target)
TriggerEvent('redemrp:getPlayerFromId', target, function()
  TriggerClientEvent('ml_doctorjob:healed', target)
        print('server heal test')
    end)
end)

RegisterServerEvent( 'ml_doctorjob:reviveplayer' )
AddEventHandler( 'ml_doctorjob:reviveplayer', function (target)
TriggerEvent('redemrp:getPlayerFromId', target, function()
  TriggerClientEvent('ml_doctorjob:revived', target)
        print('server revive test')
    end)
end)


RegisterServerEvent("ml_doctorjob:alert_me")
AddEventHandler("ml_doctorjob:alert_me", function(coords)
	TriggerClientEvent("ml_doctorjob:check_client", -1, coords)
end)



RegisterServerEvent("ml_doctorjob:check_job")
AddEventHandler("ml_doctorjob:check_job", function(coords)
     _source = source
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)

        if user.getJob() == 'doctor' then
            TriggerClientEvent('ml_doctorjob:GetAlertNow', _source, coords)
        end
    end)
end)
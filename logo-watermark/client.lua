local watermarkVisible = true

CreateThread(function()
    while true do
        Wait(1000)
        if watermarkVisible then
            SendNUIMessage({
                action = "show"
            })
        end
    end
end)

RegisterCommand("watermark", function()
    watermarkVisible = not watermarkVisible

    SendNUIMessage({
        action = watermarkVisible and "show" or "hide"
    })
end, false)

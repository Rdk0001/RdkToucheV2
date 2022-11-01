ESX = nil



local openMenu

local touche = RageUI.CreateMenu("Touche", "Touche Info")

touche.Closed = function()
    openMenu = false
end

function OpenMenuTouche()
    if not openMenu then
        openMenu = true
        RageUI.Visible(touche, true)

        while openMenu do
            Wait(1)

            RageUI.IsVisible(touche, function()
                RageUI.Separator("~r~Bienvenue : " ..GetPlayerName(PlayerId()))
                RageUI.Button("Radio ", nil, {RightLabel ="="}, true,{
                    onSelected = function()
                    end
                })
                RageUI.Button("Telephone ", nil, {RightLabel ="G"}, true,{
                    onSelected = function()
                    end
                })
                RageUI.Button("Info ", nil, {RightLabel ="/info"}, true,{
                    onSelected = function()
                    end
                })
                RageUI.Button("Menu Admin ", nil, {RightLabel ="F10"}, true,{
                    onSelected = function()
                    end
                })
                RageUI.Button("Report ", nil, {RightLabel ="/report"}, true,{
                    onSelected = function()
                    end
                })
                RageUI.Button("Inventaire ", nil, {RightLabel ="Tab"}, true,{
                    onSelected = function()
                    end
                })
                RageUI.Button("Jobs/Orga ", nil, {RightLabel ="F6"}, true,{
                    onSelected = function()
                    end
                })              
            end)
        end
    end
end

RegisterCommand('touche', function(source, args)
    OpenMenuTouche()
end)

RegisterKeyMapping('boutique', 'Ouverture du Menu Touche', 'keyboard', "f2")

Keys.Register("f2", "RdkTouche", "Ouvrir le menu Touche", function()
    OpenMenuTouche()
end)





            


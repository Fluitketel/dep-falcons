if (!isDedicated) then {
    waitUntil {!isNull player && isPlayer player};
};

waitUntil {!(isNull (findDisplay 46))};

player setspeaker "NoVoice";
showSubs = showSubtitles false;  
ShowRad = showRadio false;
EnabRad = enableRadio false;
player disableConversation true;
player setVariable ["BIS_noCoreConversations", true];

player addEventHandler [
    "respawn",
    {
        player setspeaker "NoVoice"; 
        showSubs = showSubtitles false; 
        ShowRad = showRadio false;
        EnabRad = enableRadio false;
        player disableConversation true
    }
];
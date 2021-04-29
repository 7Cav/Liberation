if (!isDedicated) then {
 
waitUntil { alive player && time > 0 && !isnull (finddisplay 46)};
 
sleep 5;

player createDiarySubject ["serverrules","Server Rules"];
 
player createDiaryRecord ["serverrules",
[
"Server Rules", 
"
<br/><font color = '#E4E00C'>No fratricide or destruction of friendly equipment</font color><br/>

<font color = '#E4E00C'>----------------------------------------------------------------------------------------</font color><br/>
<font color = '#E4E00C'>1. </font color>Fratricide is the killing of one's own forces in war and is used to describe 'friendly fire', or commonly called 'TK’ing' or 'Team Killing'.<br/>
<font color = '#E4E00C'>2. </font color>This means the purposeful or accidental killing of another player or friendly equipment is not allowed.<br/>
<font color = '#E4E00C'>3. </font color>This also means that acts of “revenge killing” are against this rule. The only action a player needs to take against someone who killed them is reporting said team killer to our Military Police or a Game Admin.<br/>

<br/><font color = '#E4E00C'>No offensive or disruptive behavior.</font color><br/>

<font color = '#E4E00C'>----------------------------------------------------------------------------------------</font color><br/>
<font color = '#E4E00C'>1. </font color>No racism of any kind. Any racist remarks or names will result in an instant ban.<br/>
<font color = '#E4E00C'>2. </font color>No political or religious discussions or references including names.<br/>
<font color = '#E4E00C'>3. </font color>No disrespect towards other players or admins.<br/>
<font color = '#E4E00C'>4. </font color>No disrespect towards the 7th Cavalry Gaming Regiment.<br/>
<font color = '#E4E00C'>5. </font color>No disrespect towards deceased 7th Cavalry members.<br/>
<font color = '#E4E00C'>6. </font color>No disrespectful or offensive abbreviations.<br/>
<font color = '#E4E00C'>7. </font color>No mic spamming.<br/>
<font color = '#E4E00C'>8. </font color>No trolling or griefing.<br/>
<font color = '#E4E00C'>9. </font color>Discharge or firing of any weapon on base is strictly prohibited.<br/>
<font color = '#E4E00C'>10. </font color>No vehicles parked on the runway or landing pads.<br/>
<font color = '#E4E00C'>11. </font color>No elitist attitude towards others or taunting.<br/>
<font color = '#E4E00C'>12. </font color>No elitist attitude towards others or taunting.<br/>

<br/><font color = '#E4E00C'>No offensive or disruptive behavior.</font color><br/>

<font color = '#E4E00C'>----------------------------------------------------------------------------------------</font color><br/>
<font color = '#E4E00C'>1. </font color>This means the pilot/operator of any aircraft, artillery, mortars, or UAV.<br/>
<font color = '#E4E00C'>2. </font color>TeamSpeak 3 meaning 7th Cavalry's TeamSpeak 3 server.<br/>
<font color = '#E4E00C'>3. </font color>They must also have a working microphone, and be willing to coordinate over TeamSpeak.<br/>
<font color = '#E4E00C'>4. </font color>Support assets, except tanks, are not to engage the enemy on their own accord.<br/>
<font color = '#E4E00C'>5. </font color>Enemy air assets and enemy anti-air are the only exceptions to this rule. They are allowed to be engaged to make way for safe transport to the AO for friendly troops.<br/>
<font color = '#E4E00C'>6. </font color>All attack aircraft are to maintain a safe holding area, pattern, or stay on base until called in to maintain the longevity of the aircraft.<br/>
<font color = '#E4E00C'>7. </font color>Artillery, including mortars, must remain silent until called to fire by infantry.<br/>
<font color = '#E4E00C'>8. </font color>Assets in immediate danger that need to act against danger can defend themselves to preserve their lives or asset, but shall not provoke the engagement.<br/>

<br/><font color = '#E4E00C'>You must play your role and cooperate with your team.</font color><br/>

<font color = '#E4E00C'>----------------------------------------------------------------------------------------</font color><br/>
<font color = '#E4E00C'>1. </font color>“Lone wolfing” should be avoided whenever possible.<br/>
<font color = '#E4E00C'>2. </font color>Follow the instructions of your Squad Leader and/or mission commander.<br/>
<font color = '#E4E00C'>3. </font color>Play the role you’re slotted for.<br/>
<font color = '#E4E00C'>4. </font color>If you wish to change your role you must reslot. For example, if you were a pilot and wish to fight on the ground you must reslot as an infantryman.<br/>
<font color = '#E4E00C'>5. </font color>No AFK’ing in limited slots.<br/>
"
]
];
};
class Params
{
	class BattlefieldGridSize
	{
		title = "Battlefield Grid Size (in meters)";
		texts[] = { "500m", "1000m", "2000m" };
		values[] = { 500, 1000, 2000 };
		default = 500;
	};
	class CapturingBattlefieldGridSizeDivisorForRadius
	{
		title = "Divisor of Battlefield Grid Size, result will be used as radius for capture sectors (higher = harder)";
        texts[] = { "2", "4", "6", "8", "10" };
        values[] = { 2, 4, 6, 8, 10 };
        default = 6;
	};
	class CapturingSpeedCooficient
	{
		title = "Capture speed (Slower capture speed = harder)";
        texts[] = { "Very fast", "Fast", "Normal", "Slow", "Very slow" };
        values[] = { 0.075, 0.05, 0.025, 0.01, 0.0025 };
        default = 0.05;
	};
	class SkillAi
	{
		title = "Skill AI";
		texts[] = { "Very Easy", "Easy", "Normal", "Hard", "Very Hard" };
		values[] = { 0, 0.25, 0.5, 0.75, 1 };
		default = 0.5;
	};
};
class Params
{
	class BattlefieldGridSize
	{
		title = "Battlefield Grid Size (in meters)";
		texts[] = { "500m", "1000m", "2000m" };
		values[] = { 500, 1000, 2000 };
		default = 500;
	};
	class BattlefieldGridSizeDivisorForCaptureRadius
	{
		title = "Divisor of Battlefield Grid Size, result will be used as radius for capture sectors (higher = harder)";
    		texts[] = { "2", "4", "6", "8", "10" };
    		values[] = { 2, 4, 6, 8, 10 };
    		default = 6;
	}
	class SkillAi
	{
		title = "Skill AI";
		texts[] = { "Very Easy", "Easy", "Normal", "Hard", "Very Hard" };
		values[] = { 0, 0.25, 0.5, 0.75, 1 };
		default = 0.5;
	};
};
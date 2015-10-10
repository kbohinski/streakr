Write-Output "Its a new day, time for some commits!";

cd "C:\streakr";

$rand = Get-Random -min 1 -max 5;
$date = date;
$line = "streakr--$date";

Write-Output $rand;

while ($rand -ge 0) {
Add-Content C:\streakr\gitGraph.txt "$line  $rand";
	git add gitGraph.txt;
	git commit -m "$line  $rand";
	$rand--;
}

git push origin master;

echo "Pushed for the day!"
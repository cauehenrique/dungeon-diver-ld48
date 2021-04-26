textAlpha = smooth_approach(textAlpha, 1, 0.2);
positionAdd = smooth_approach(positionAdd, 0, 0.2);

if (positionAdd == 0) positionSin += 0.1;
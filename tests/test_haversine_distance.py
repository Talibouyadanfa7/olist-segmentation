# test_distance.py

from src.olist_functions import haversine_distance


def test_haversine_distance():
    # Test cas de base (distance connue)
    lat1, lng1 = 48.8566, 2.3522  # Paris
    lat2, lng2 = 51.5074, -0.1278  # Londres
    expected_distance = 213.0  # Distance approximative en miles

    result = haversine_distance(lat1, lng1, lat2, lng2)

    assert abs(result - expected_distance) < 1.0, f"Expected distance to be {expected_distance}, but got {result}"


def test_haversine_distance_same_point():
    # Test distance entre les mêmes points (doit être 0)
    lat1, lng1 = 48.8566, 2.3522  # Paris

    result = haversine_distance(lat1, lng1, lat1, lng1)

    assert result == 0, f"Expected distance to be 0, but got {result}"


def test_haversine_distance_zero():
    # Test distance avec des coordonnées à zéro
    lat1, lng1 = 0.0, 0.0
    lat2, lng2 = 0.0, 0.0

    result = haversine_distance(lat1, lng1, lat2, lng2)

    assert result == 0, f"Expected distance to be 0, but got {result}"

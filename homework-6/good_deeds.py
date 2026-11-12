# -*- coding: utf-8 -*-
"""
Yann Homework 6 dictionary
"""
good_deeds = {
    "Monday": [("Helped a friend", 2), ("Picked up trash", 1), ("Opened a door", 1)],
    "Tuesday": [("Opened a door", 3), ("Complimented someone", 2), ("Donated to charity", 1)],
    "Wednesday": [("Donated to charity", 1), ("Helped a friend", 1), ("Picked up trash", 2)],
    "Thursday": [("Picked up trash", 4), ("Opened a door", 1), ("Complimented someone", 2)],
    "Friday": [("Complimented someone", 3), ("Helped a friend", 2), ("Volunteered", 1)],
    "Saturday": [("Volunteered", 1), ("Opened a door", 2), ("Donated to charity", 2)],
    "Sunday": [("Donated to charity", 1), ("Complimented someone", 1), ("Helped a friend", 3)],
}

daily_totals = {
    day: sum(count for deed, count in deeds)
    for day, deeds in good_deeds.items()
}

sorted_days_list = sorted(daily_totals.items(), key=lambda item: item[1], reverse=True)
sorted_days_dict = dict(sorted_days_list)

print("--- Good Deeds By Day (Descending Order) ---")
for day, count in sorted_days_dict.items():
    print(f"{day:<10} : {count:>3}")

best_day = list(sorted_days_dict.keys())[0]
print(f"\nThe day that saw the most good deeds was {best_day}.\n")

deed_totals = {}
for deeds in good_deeds.values():
    for deed, count in deeds:
        deed_totals[deed] = deed_totals.get(deed, 0) + count

sorted_deeds_list = sorted(deed_totals.items(), key=lambda item: item[1], reverse=True)
sorted_deeds_dict = dict(sorted_deeds_list)

print("--- Total Count for Each Good Deed ---")
for deed, count in sorted_deeds_dict.items():
    print(f"{deed:<25} : {count:>3}")

print("\n--- Good Deeds Sorted by Frequency ---")
for deed, count in sorted_deeds_dict.items():
    print(f"{deed:<25} : {count:>3}")

most_common_deed = list(sorted_deeds_dict.keys())[0]
highest_count = sorted_deeds_dict[most_common_deed]
print(
    f"\nThe most common good deed was '{most_common_deed}', which happened a total of {highest_count} times."
)

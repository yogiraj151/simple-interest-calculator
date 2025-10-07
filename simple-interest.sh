#!/bin/bash

# Author: Your Name
# Date: Today's Date
# Description: A simple script to calculate simple interest.

# --- Function to calculate simple interest ---
calculate_simple_interest() {
  principal=$1
  rate=$2
  time=$3

  # Formula: SI = (P * T * R) / 100
  interest=$(echo "scale=2; $principal * $time * $rate / 100" | bc)

  echo "-------------------------------------"
  echo "Principal Amount:  $principal"
  echo "Annual Rate of Interest: $rate%"
  echo "Time (in years):   $time"
  echo "-------------------------------------"
  echo "Simple Interest:   $interest"
  echo "-------------------------------------"
}

# --- Main script execution ---
echo "Simple Interest Calculator"

# Read inputs from the user
read -p "Enter the principal amount: " p
read -p "Enter the annual rate of interest (e.g., 5 for 5%): " r
read -p "Enter the time period in years: " t

# Call the function with user inputs
calculate_simple_interest $p $r $t

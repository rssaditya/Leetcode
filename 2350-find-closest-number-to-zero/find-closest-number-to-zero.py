class Solution:
    def findClosestNumber(self, nums: List[int]) -> int:
        closest_number = nums[0]
        
        for i in nums:
            
            if abs(i) < abs(closest_number) or (abs(i) == abs(closest_number) and i > closest_number):
                closest_number = i  
                        
        # Return the closest number to zero
        return closest_number

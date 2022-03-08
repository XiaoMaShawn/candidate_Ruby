# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
  # you need the @candidates for below
  result = @candidates.select {|element| element[:id] == id}
  if result
    return result
  return nil
  end
end

def experienced?(candidate)
  # Your code Here
  return candidate[:years_of_experience] >= 2
end

def github_points?(candidate)
  return cadidate[:github_points] >= 100
end

def languages?(candidate)
  return candidate[:languages].include?("Ruby" || "Python")
end

def apply_date?(candidate)
  return candidate[:date_applied] >= 15.days.ago.to_date
end

def age?(candidate)
  return candidate[:age] > 18
end

def qualified_candidates(candidates)
  # Your code Here
  return candidates.select { |candidate| experienced?(candidate) && github_points?(candidate) && languages?(candidate) && apply_date?(candidate) && age?(candidate) }
end

# More methods will go below
def ordered_by_qualifications(candidates)
  candidates.sort_by {|candidate| [-cadidate[:years_of_experience], -candidate[:github_points]]}
end

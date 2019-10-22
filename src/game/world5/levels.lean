import solutions.world2_multiplication

import mynat.le
/- Here's what you get from the import:

1) The following data:
  * a binary relation called mynat.le, and notation a ≤ b for this relation.

  The definition is: a ≤ b ↔ ∃ c : mynat, b = a + c

2) The following axiom:

  * `le_def (a b : mynat) : a ≤ b ↔ ∃ (c : mynat), b = a + c`

You can rewrite `le_def`.

If a goal is of the form `∃ c, ...` then to make progress you can use the `use` tactic.
For example `use 7` will replace all c's in the goal with 7's.
-/


namespace mynat

-- example
theorem le_refl (a : mynat) : a ≤ a :=
begin [less_leaky]
  rw le_def,
  use 0,
  rw add_zero, 
  refl,
  
end

example : one ≤ one := le_refl one

-- ignore this; it's making the "refl" tactic work with goals of the form a ≤ a
attribute [_refl_lemma] le_refl

theorem le_succ {a b : mynat} (h : a ≤ b) : a ≤ (succ b) :=
begin [less_leaky]
  sorry
end


lemma zero_le (a : mynat) : 0 ≤ a :=
begin [less_leaky]
  sorry
end

lemma le_zero {a : mynat} : a ≤ 0 → a = 0 :=
begin [less_leaky]
  sorry
end

theorem le_trans ⦃a b c : mynat⦄ (hab : a ≤ b) (hbc : b ≤ c) : a ≤ c :=
begin [less_leaky]
  sorry
end

instance : preorder mynat := by structure_helper

-- ignore this, it's the definition.
theorem lt_iff_le_not_le {a b : mynat} : a < b ↔ a ≤ b ∧ ¬ b ≤ a := iff.rfl

theorem le_antisymm : ∀ {{a b : mynat}}, a ≤ b → b ≤ a → a = b :=
begin [less_leaky]
  sorry
end

instance : partial_order mynat := by structure_helper

theorem lt_iff_le_and_ne ⦃a b : mynat⦄ : a < b ↔ a ≤ b ∧ a ≠ b :=
begin [less_leaky]
  sorry
end


lemma succ_le_succ {a b : mynat} (h : a ≤ b) : succ a ≤ succ b :=
begin [less_leaky]
  sorry
end

theorem le_total (a b : mynat) : a ≤ b ∨ b ≤ a :=
begin [less_leaky]
  sorry
end

instance : linear_order mynat := by structure_helper


theorem add_le_add_right (a b : mynat) : a ≤ b → ∀ t, (a + t) ≤ (b + t) :=
begin [less_leaky]
  sorry
end

theorem le_succ_self (a : mynat) : a ≤ succ a :=
begin [less_leaky]
  sorry
end

theorem le_of_succ_le_succ {a b : mynat} : succ a ≤ succ b → a ≤ b :=
begin [less_leaky]
  sorry
end

theorem not_succ_le_self {{d : mynat}} (h : succ d ≤ d) : false :=
begin [less_leaky]
  sorry
end

theorem add_le_add_left : ∀ (a b : mynat), a ≤ b → ∀ (c : mynat), c + a ≤ c + b :=
begin [less_leaky]
  sorry
end

def succ_le_succ_iff (a b : mynat) : succ a ≤ succ b ↔ a ≤ b :=
begin [less_leaky]
  sorry
end

def succ_lt_succ_iff (a b : mynat) : succ a < succ b ↔ a < b :=
begin [less_leaky]
  sorry
end

theorem lt_of_add_lt_add_left : ∀ {{a b c : mynat}}, a + b < a + c → b < c :=
begin [less_leaky]
  sorry
end

theorem le_iff_exists_add : ∀ (a b : mynat), a ≤ b ↔ ∃ (c : mynat), b = a + c :=
begin [less_leaky]
  sorry
end

theorem zero_ne_one : (0 : mynat) ≠ 1 :=
begin [less_leaky]
  sorry
end

instance : ordered_comm_monoid mynat := by structure_helper

theorem le_of_add_le_add_left ⦃ a b c : mynat⦄ : a + b ≤ a + c → b ≤ c :=
begin [less_leaky]
  sorry
end

instance : ordered_cancel_comm_monoid mynat := by structure_helper

theorem mul_le_mul_of_nonneg_left ⦃a b c : mynat⦄ : a ≤ b → 0 ≤ c → c * a ≤ c * b :=
begin [less_leaky]
  sorry
end

theorem mul_le_mul_of_nonneg_right ⦃a b c : mynat⦄ : a ≤ b → 0 ≤ c → a * c ≤ b * c :=
begin [less_leaky]
  sorry
end

theorem ne_zero_of_pos ⦃a : mynat⦄ : 0 < a → a ≠ 0 :=
begin [less_leaky]
  sorry
end

theorem mul_lt_mul_of_pos_left ⦃a b c : mynat⦄ : a < b → 0 < c → c * a < c * b :=
begin [less_leaky]
  sorry
end

theorem mul_lt_mul_of_pos_right ⦃a b c : mynat⦄ : a < b → 0 < c → a * c < b * c :=
begin [less_leaky]
  sorry
end

instance : ordered_semiring mynat := by structure_helper

lemma lt_irrefl (a : mynat) : ¬ (a < a) :=
begin [less_leaky]
  sorry
end

theorem not_lt_zero ⦃a : mynat⦄ : ¬(a < 0) :=
begin [less_leaky]
  intro h,
  cases h with ha hna,
  apply hna, clear hna,
  --apply le_zero at ha,
  replace ha := le_zero ha,
  rw ha,
  refl,
end

#check @nat.lt_succ_iff
#check @nat.succ_eq_add_one
/-
nat.lt_succ_iff : ∀ {m n : ℕ}, m < nat.succ n ↔ m ≤ n
-/

theorem lt_succ_self (n : mynat) : n < succ n :=
begin [less_leaky]
  rw lt_iff_le_and_ne,
  split,
    use 1,
    apply succ_eq_add_one,
  intro h,
  exact ne_succ_self n h
end

theorem lt_succ_iff (m n : mynat) : m < succ n ↔ m ≤ n :=
begin [less_leaky]
  rw lt_iff_le_and_ne,
  split,
  { intro h,
    cases h with h1 h2,
    cases h1 with c hc,
    cases c with d,
      exfalso,
      apply h2,
      rw hc,
      rw add_zero,refl,
    use d,
    apply succ_inj,
    rw hc,
    apply add_succ,
  },
  { intro h,
    cases h with c hc,
    split,
    { use succ c,
      rw hc,
      rw add_succ,
      refl
    },
    { rw hc,
      apply ne_of_lt,
      rw lt_iff_le_and_ne,
      split,
        use succ c,
        rw add_succ,
        refl,
      intro h,
      rw [succ_eq_add_one, add_assoc] at h,
      -- doesn't' work yet
      -- symmetry at h,
      rw eq_comm at h,
      replace h := eq_zero_of_add_right_eq_self h,
      apply zero_ne_succ c,
      rw ←h,
      apply add_one_eq_succ
    }
  }
end

-- is this right?
@[elab_as_eliminator]
theorem strong_induction (P : mynat → Prop)
  (IH : ∀ m : mynat, (∀ d : mynat, d < m → P d) → P m) :
  ∀ n, P n :=
begin [less_leaky]
  let Q : mynat → Prop := λ m, ∀ d < m, P d,
  have hQ : ∀ n, Q n,
  { intro n,
    induction n with d hd,
    { intros m hm,
      exfalso,
      exact not_lt_zero hm,
    },
    { intro m,
      intro hm,
      rw lt_succ_iff at hm,
      apply IH,
      intros e he,
      apply hd,
      exact lt_of_lt_of_le he hm,
    }
  },
  intro n,
  apply hQ (succ n),
  apply lt_succ_self
end

end mynat

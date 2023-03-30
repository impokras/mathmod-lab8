using Plots
using DifferentialEquations

M₁ = 6.5
M₂ = 5.5
pₖᵣ = 35
N = 30
q = 1
p₁ = 9.9
p₂ = 8.5
𝜏₁ = 16
𝜏₂ = 20

a₁ = pₖᵣ / (𝜏₁ * 𝜏₁ * p₁ * p₁ * N * q)
a₂ = pₖᵣ / (𝜏₂ * 𝜏₂ * p₂ * p₂ * N *q)
b = pₖᵣ / (𝜏₁ * 𝜏₁ * 𝜏₂ * 𝜏₂ * p₁ * p₁ * p₂ * p₂ * N * q)
c₁ = (pₖᵣ - p₁) / (𝜏₁ * p₁)
c₂ = (pₖᵣ - p₂) / (𝜏₂ * p₂)

function ode_fn₁(du, u, p, t)
    du[1] = u[1] - b / c₁*u[1] * u[2] - a₁ / c₁*u[1] * u[1]
    du[2] = c₂ / c₁*u[2] - b / c₁*u[1] * u[2] - a₂ / c₁*u[2] * u[2]
end
function ode_fn₂(du, u, p, t)
    du[1] = u[1] - (b / c₁ + 0.00065)*u[1] * u[2] - a₁ / c₁*u[1] * u[1]
    du[2] = c₂ / c₁*u[2] - b / c₁*u[1] * u[2] - a₂ / c₁*u[2] * u[2]
end

tspan = (0.0, 30.0)
prob₁ = ODEProblem(ode_fn₁, [M₁, M₂], tspan)
sol₁ = solve(prob₁, dtmax = 0.05)
prob₂ = ODEProblem(ode_fn₂, [M₁, M₂], tspan)
sol₂ = solve(prob₂, dtmax = 0.05)

M₁₁ = [u[1] for u in sol₁.u]
M₁₂ = [u[2] for u in sol₁.u]
M₂₁ = [u[1] for u in sol₂.u]
M₂₂ = [u[2] for u in sol₂.u]
T = [t for t in sol.t]

plt = plot(dpi = 300,title = "1 случай", legend = :topright)
plot!(plt, T, M₁₁, label = "Оборотные средства фирмы 1", color = :purple)
plot!(plt, T, M₁₂, label = "Оборотные средства фирмы 2", color = :red)
savefig(plt, "jlmodel-1.png")
plt2 = plot(dpi = 300,  title = "2 случай", legend = :topright)
plot!(plt2, T, M₂₁, label = "Оборотные средства фирмы 1", color = :purple)
plot!(plt2, T, M₂₂, label = "Оборотные средства фирмы 2", color = :red)
savefig(plt2, "jlmodel-2.png")
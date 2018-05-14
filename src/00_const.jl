# This file defines the const varibles
# 此处数据来源黄水林博士论文试验部分

const ρ = 1.225 #空气密度 量纲kg*m^-3
const ν = 1.46e-4 #运动黏性系数 无量纲
const g = 9.8 #重力加速度  量纲kg*m*s^-2
const v_sound = 343.2 #音速 量纲m/s
const Nro = Int8(2) #Number of rotors
const Nb = Int8(2)  #Number of blades
const R = 1.02  #旋翼半径 量纲m
const chroot = 0.06 # 桨根弦长
const airfoil = "NACA0015" # Airfoil
const ecut = 0.122 #桨叶根切比例 无量纲
const eflap = 0.2*R #桨叶挥舞铰偏置量，量纲m
const m_ = 7.8125 #桨叶质量密度 量纲kg/m
const Ω = 125.66  #旋翼转速 量纲rad/s
const αs = -0*π/180.0  #旋翼轴倾角  量纲rad
const Kβ = 0.0  #桨叶根部挥舞弹簧刚度 量纲？？？
const vair = 0.1 # 来流速度 量纲 m/s
# const T = 2500 #飞行器重量 (量纲为kg*m*s^-2)
const dpsideg = 10.0  # 方位角步进长度（量纲为deg）
const betap = 0.0/180*π # Precone
# const βang0 = 0.0/180*π # 挥舞角初值
# const dβ0 = 0.0/180*π # 挥舞角速度初值
# const θ7 = 2.0/180*π # 旋翼总距
# const θtw = 0.0/180*π # 桨叶扭转角
# const thelat = -0.0/180*π # 横向周期变距
# const thelon = 0.0/180*π # 纵向周期变距
const Nbe = Int8(10) #旋翼分段数量
const taper = 1.0   # 桨叶尖削比
const Iβ = m_/3*R^3(1-ecut^3)  #桨叶挥舞惯量 量纲kg*m^2
const v_air = [vair*cos(αs),0.0,vair*sin(αs)] #forward wind speed  量纲m/s
const μ_air = v_air[1]/(Ω*R)  #来流在桨盘edgewise方向分量  无量纲
const λ_air = v_air[3]/(Ω*R)  #来流在桨盘轴向分量  无量纲
const A = π*R^2 #参考面积 量纲为m^2
const fnonc = ρ*A*Ω*R^2*Ω #力的无量纲化参数 量纲kg*m*s^-2
const mnonc = ρ*A*Ω^2*R^3 #力矩的无量纲化参数 量纲kg*m^2/s^2
# const CT = T/fnonc  #无量纲重量系数
const dψ = dpsideg*π/180 #方位角步进步长 (量纲为rad)
const dt = dψ/Ω # 方位角步进时间 （量纲为s）
const npsi = Int8(360/dpsideg) # 周向分割步数

%E(u,v)=e^u+e^(2*v)+e^(u*v)+u^2-2*u*v+2v^2−3*u−2*v;


theta = 0.01
u=0;
v=0;
for t=1:5
  E_dao_1 =e^u +v*e^u+2*u-2*v-3, 
  E_dao_2 =2*e^(2*v)+u*e^v-2*u+4*v-2
  E_ddao_1 = e^u + v^2*e^(u*v)+2
  E_ddao_2 = 4*e^(2*v) + u^2*e^(u*v)+4
  cov_u = e^(u*v)+v^2*e^(u*v)+2
  cov_v = e^(u*v)+u^2*e^(u*v)+4
  A = [[E_dao_1]
  u = u+(theta*E_ddao_1)*E_dao_1;
  v = v+(theta*E_ddao_2)*E_dao_2;
end
E=e^u+e^(2*v)+e^(u*v)+u^2-2*u*v+2*v^2-3*u-2*v;

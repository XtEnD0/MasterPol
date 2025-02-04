select Partners.PartnerName, PartnerProducts.ProductQuantity,
case when PartnerProducts.ProductQuantity <10000 then '0%'
when PartnerProducts.ProductQuantity >=10000 AND PartnerProducts.ProductQuantity < 50000 then '5%'
when PartnerProducts.ProductQuantity >=50000 AND PartnerProducts.ProductQuantity < 300000 then '10%'
when PartnerProducts.ProductQuantity >300000 then '15%'
end as 'Скидка'
from Partners
join PartnerProducts on Partners.ID = PartnerProducts.PartnerID

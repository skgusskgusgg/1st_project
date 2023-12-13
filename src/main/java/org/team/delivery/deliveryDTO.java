package org.team.delivery;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Setter
@Getter
@ToString
public class deliveryDTO {


	private Integer delivery_id;
	private Integer member_id;
	private Integer total_price;
	private String regdate;
	private Integer total_status;

}

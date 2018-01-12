From: Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v2 1/2] drm/bridge/synopsys: dsi: use common
 mipi_dsi_create_packet()
Date: Fri, 12 Jan 2018 08:10:23 +0100
Message-ID: <8e02092c-7627-5c66-5443-af4adaeafe44@samsung.com>
References: <20180109203248.139249-1-briannorris@chromium.org>
 <CGME20180111135206epcas1p15bf907fd4e30948e22a28c4f6f023f91@epcas1p1.samsung.com>
 <e9a46fa1-e934-169b-6fe3-1035a2823039@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-reply-to: <e9a46fa1-e934-169b-6fe3-1035a2823039-qxv4g6HH51o@public.gmane.org>
Content-language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
Cc: "hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, "hoegsberg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org" <hoegsberg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org" <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, Yannick FERTRE <yannick.fertre-qxv4g6HH51o@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Nickey Yang <nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org" <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "xbl-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <xbl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Vincent ABRIOU <vincent.abriou-qxv4g6HH51o@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 11.01.2018 14:51, Philippe CORNU wrote:
> Hi Brian & All *DSI DRM experts*,
>
> 1) Re-reading this patch, I realize that the returned value of 
> dw_mipi_dsi_host_transfer() is not correct: we should return the number 
> of transfered/received bytes...
>
> so I think there are two solutions: fix this in this serie or add a TODO 
> for later (both solutions are fine to me :-)
>
>
> 2) Digging more into the drm code, the function 
> mipi_dsi_device_transfer() in drm_mipi_dsi.c is called in the same file 
> by the 3 following functions: mipi_dsi_shutdown_peripheral(), 
> mipi_dsi_turn_on_peripheral() & 
> mipi_dsi_set_maximum_return_packet_size(). All these 3 functions are 
> expecting "Return: 0 on success or a negative error code on failure." 
> that is not in line with the transfer function.
>
> So then, we can change the documentation in this file and have instead 
> "* Return: The number of bytes transmitted on success or a negative 
> error code on failure." as for mipi_dsi_generic_write()...
> Or we can change the source code of these 3 functions to match with the 
> documentation "Return: 0 on success...".
>
> note: Hopefully, "users" of these 3 functions test the sign of the 
> return value (or do not use it).
>
> Does anyone have a preferred solutions?

All three functions performs single operation which can succeed only in
one way, nobody is interested in the number of bytes send to achieve the
result. So IMO the result should be 0 or error.

And mipi_dsi_device_transfer() is a different beast, it returns number
of written/read bytes, which can vary (more specifically, only number of
read bytes can vary :) ).

Regards
Andrzej


>
> Many thanks
> Philippe :-)
>
> On 01/09/2018 09:32 PM, Brian Norris wrote:
>> This takes care of 2 TODOs in this driver, by using the common DSI
>> packet-marshalling code instead of our custom short/long write code.
>> This both saves us some duplicated code and gets us free support for
>> command types that weren't already part of our switch block (e.g.,
>> MIPI_DSI_GENERIC_LONG_WRITE).
>>
>> The code logic stays mostly intact, except that it becomes unnecessary
>> to split the short/long write functions, and we have to copy data a bit
>> more.
>>
>> Along the way, I noticed that loop bounds were a little odd:
>>
>> 	while (DIV_ROUND_UP(len, pld_data_bytes))
>>
>> This really was just supposed to be 'len != 0', so I made that more
>> clear.
>>
>> Tested on RK3399 with some pending refactoring patches by Nickey Yang,
>> to make the Rockchip DSI driver wrap this common driver.
>>
>> Signed-off-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>> Reviewed-by: Philippe Cornu <philippe.cornu-qxv4g6HH51o@public.gmane.org>
>> Tested-by: Philippe Cornu <philippe.cornu-qxv4g6HH51o@public.gmane.org>
>> ---
>> v2:
>>   * remove "dcs" naming, since these commands handle generic DSI too, not
>>     just DCS (thanks Philippe)
>>   * add Philippe's {Tested,Reviewed}-by
>> ---
>>   drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 78 ++++++---------------------
>>   1 file changed, 16 insertions(+), 62 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> index d9cca4fd66ec..ed91e32ee43a 100644
>> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
>> @@ -136,10 +136,6 @@
>>   					 GEN_SW_0P_TX_LP)
>>   
>>   #define DSI_GEN_HDR			0x6c
>> -/* TODO These 2 defines will be reworked thanks to mipi_dsi_create_packet() */
>> -#define GEN_HDATA(data)			(((data) & 0xffff) << 8)
>> -#define GEN_HTYPE(type)			(((type) & 0xff) << 0)
>> -
>>   #define DSI_GEN_PLD_DATA		0x70
>>   
>>   #define DSI_CMD_PKT_STATUS		0x74
>> @@ -359,44 +355,15 @@ static int dw_mipi_dsi_gen_pkt_hdr_write(struct dw_mipi_dsi *dsi, u32 hdr_val)
>>   	return 0;
>>   }
>>   
>> -static int dw_mipi_dsi_dcs_short_write(struct dw_mipi_dsi *dsi,
>> -				       const struct mipi_dsi_msg *msg)
>> -{
>> -	const u8 *tx_buf = msg->tx_buf;
>> -	u16 data = 0;
>> -	u32 val;
>> -
>> -	if (msg->tx_len > 0)
>> -		data |= tx_buf[0];
>> -	if (msg->tx_len > 1)
>> -		data |= tx_buf[1] << 8;
>> -
>> -	if (msg->tx_len > 2) {
>> -		dev_err(dsi->dev, "too long tx buf length %zu for short write\n",
>> -			msg->tx_len);
>> -		return -EINVAL;
>> -	}
>> -
>> -	val = GEN_HDATA(data) | GEN_HTYPE(msg->type);
>> -	return dw_mipi_dsi_gen_pkt_hdr_write(dsi, val);
>> -}
>> -
>> -static int dw_mipi_dsi_dcs_long_write(struct dw_mipi_dsi *dsi,
>> -				      const struct mipi_dsi_msg *msg)
>> +static int dw_mipi_dsi_write(struct dw_mipi_dsi *dsi,
>> +			     const struct mipi_dsi_packet *packet)
>>   {
>> -	const u8 *tx_buf = msg->tx_buf;
>> -	int len = msg->tx_len, pld_data_bytes = sizeof(u32), ret;
>> -	u32 hdr_val = GEN_HDATA(msg->tx_len) | GEN_HTYPE(msg->type);
>> +	const u8 *tx_buf = packet->payload;
>> +	int len = packet->payload_length, pld_data_bytes = sizeof(u32), ret;
>>   	u32 remainder;
>>   	u32 val;
>>   
>> -	if (msg->tx_len < 3) {
>> -		dev_err(dsi->dev, "wrong tx buf length %zu for long write\n",
>> -			msg->tx_len);
>> -		return -EINVAL;
>> -	}
>> -
>> -	while (DIV_ROUND_UP(len, pld_data_bytes)) {
>> +	while (len) {
>>   		if (len < pld_data_bytes) {
>>   			remainder = 0;
>>   			memcpy(&remainder, tx_buf, len);
>> @@ -419,40 +386,27 @@ static int dw_mipi_dsi_dcs_long_write(struct dw_mipi_dsi *dsi,
>>   		}
>>   	}
>>   
>> -	return dw_mipi_dsi_gen_pkt_hdr_write(dsi, hdr_val);
>> +	remainder = 0;
>> +	memcpy(&remainder, packet->header, sizeof(packet->header));
>> +	return dw_mipi_dsi_gen_pkt_hdr_write(dsi, remainder);
>>   }
>>   
>>   static ssize_t dw_mipi_dsi_host_transfer(struct mipi_dsi_host *host,
>>   					 const struct mipi_dsi_msg *msg)
>>   {
>>   	struct dw_mipi_dsi *dsi = host_to_dsi(host);
>> +	struct mipi_dsi_packet packet;
>>   	int ret;
>>   
>> -	/*
>> -	 * TODO dw drv improvements
>> -	 * use mipi_dsi_create_packet() instead of all following
>> -	 * functions and code (no switch cases, no
>> -	 * dw_mipi_dsi_dcs_short_write(), only the loop in long_write...)
>> -	 * and use packet.header...
>> -	 */
>> -	dw_mipi_message_config(dsi, msg);
>> -
>> -	switch (msg->type) {
>> -	case MIPI_DSI_DCS_SHORT_WRITE:
>> -	case MIPI_DSI_DCS_SHORT_WRITE_PARAM:
>> -	case MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE:
>> -		ret = dw_mipi_dsi_dcs_short_write(dsi, msg);
>> -		break;
>> -	case MIPI_DSI_DCS_LONG_WRITE:
>> -		ret = dw_mipi_dsi_dcs_long_write(dsi, msg);
>> -		break;
>> -	default:
>> -		dev_err(dsi->dev, "unsupported message type 0x%02x\n",
>> -			msg->type);
>> -		ret = -EINVAL;
>> +	ret = mipi_dsi_create_packet(&packet, msg);
>> +	if (ret) {
>> +		dev_err(dsi->dev, "failed to create packet: %d\n", ret);
>> +		return ret;
>>   	}
>>   
>> -	return ret;
>> +	dw_mipi_message_config(dsi, msg);
>> +
>> +	return dw_mipi_dsi_write(dsi, &packet);
>>   }
>>   
>>   static const struct mipi_dsi_host_ops dw_mipi_dsi_host_ops = {

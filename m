Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE2BFE7717F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 08:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0b1fiCmzf/Y6Cw4ALv6TyA+ZMM5A970nj+gsZCUcCGk=; b=pvsbKUweurCe8K
	i2s0Y0ZXCHxic9HRPeGb12ALXt6NIDurmr7SjjeMpU1S8pMewrdihm61mUdUOCyBjZzTnyl+XarEa
	rcO2RF0QvyMX4pM+KoGFZwS3xO3aKgr2nZzeajGibIkCO+oQ3SbxdnY+/HLHDc3011/LE6f0Koll6
	u1nQUThgz4FlpFEMg8m3XvsDko9FotK/hmk6o0s6o9PFaq0bjov5sgRSOJE7Hrk1FK1c8XG4NX0+x
	31uTD55wLnqvh5G3aj4K4/dOgiTLVfLkJ3sj5XvBcDZWuFloPsuKmkmU2ajrJAjNd285pGD+H8iZd
	3AkpFq8HLR5TwNfgFoAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeyu-0000000HOCk-0924;
	Thu, 12 Dec 2024 08:55:36 +0000
Received: from mail-m12746.qiye.163.com ([115.236.127.46])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeyq-0000000HOBD-1QID;
	Thu, 12 Dec 2024 08:55:34 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 587970be;
	Thu, 12 Dec 2024 16:55:19 +0800 (GMT+08:00)
Message-ID: <f6fd6efe-73bb-4aa2-a075-9a03c39951df@rock-chips.com>
Date: Thu, 12 Dec 2024 16:55:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 06/10] drm/bridge: analogix_dp: Add support for phy
 configuration.
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, vkoul@kernel.org,
 andy.yan@rock-chips.com, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <20241127075157.856029-7-damon.ding@rock-chips.com>
 <twhosvpoyafo472gqsblpvxmuewe2lkqufxabp2q7o636uinfm@unzyfv2pchqn>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <twhosvpoyafo472gqsblpvxmuewe2lkqufxabp2q7o636uinfm@unzyfv2pchqn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk1DT1YYHk1DQkkaHUtOGUpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93ba14685803a3kunm587970be
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MzI6Qjo4FTIPOjQOCTcYCB0h
	DS8wCT9VSlVKTEhIQkJITElKQ09MVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFMTE1JNwY+
DKIM-Signature: a=rsa-sha256;
	b=Bm2MQOWkXjx8Pf9F3W4LsD7hTW78m7eB7oq2XDcJbwtsVGle3yaMemLVAEN+zVoWZx1sSiKi07Y1Rcxs8X+7lH/hi9FsqJO5eqOVWzogYs3zRK3doeb9Kv0vTMPvpyP88zoti2YuAe7NHqy+LN/uRRr11+USss2pTU7MU1cFiqk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=FoVNNZh4L/GMNtlxTr6ggp+PnIEfUziJ14W8Sk9sycA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_005532_918779_22120C5B 
X-CRM114-Status: GOOD (  17.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dmitry,

On 2024/11/30 16:53, Dmitry Baryshkov wrote:
> On Wed, Nov 27, 2024 at 03:51:53PM +0800, Damon Ding wrote:
>> Add support to configurate link rate, lane count, voltage swing and
>> pre-emphasis with phy_configure(). It is helpful in application scenarios
>> where analogix controller is mixed with the phy of other vendors.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>   .../drm/bridge/analogix/analogix_dp_core.c    |  4 +-
>>   .../drm/bridge/analogix/analogix_dp_core.h    |  2 +
>>   .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 90 +++++++++++++++++++
>>   3 files changed, 94 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> index 6f10d88a34c5..7624ed13cdbf 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> @@ -1672,7 +1672,7 @@ EXPORT_SYMBOL_GPL(analogix_dp_probe);
>>   
>>   int analogix_dp_suspend(struct analogix_dp_device *dp)
>>   {
>> -	phy_power_off(dp->phy);
>> +	analogix_dp_phy_power_off(dp);
> 
> Why?
> 
>>   
>>   	if (dp->plat_data->power_off)
>>   		dp->plat_data->power_off(dp->plat_data);
>> @@ -1696,7 +1696,7 @@ int analogix_dp_resume(struct analogix_dp_device *dp)
>>   	if (dp->plat_data->power_on)
>>   		dp->plat_data->power_on(dp->plat_data);
>>   
>> -	phy_power_on(dp->phy);
>> +	analogix_dp_phy_power_on(dp);
> 
> Why?
> 

These changes for phy_power_on()/phy_power_off() may be unnecessary. I 
will just put the phy_set_mode() before phy_power_on() in next version.

>>   
>>   	analogix_dp_init_dp(dp);
>>   
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
>> index 774d11574b09..a76079d61768 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
>> @@ -232,5 +232,7 @@ int analogix_dp_send_psr_spd(struct analogix_dp_device *dp,
>>   			     struct dp_sdp *vsc, bool blocking);
>>   ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
>>   			     struct drm_dp_aux_msg *msg);
>> +void analogix_dp_phy_power_on(struct analogix_dp_device *dp);
>> +void analogix_dp_phy_power_off(struct analogix_dp_device *dp);
>>   
>>   #endif /* _ANALOGIX_DP_CORE_H */
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
>> index 3afc73c858c4..809bb0c72d18 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
>> @@ -11,6 +11,7 @@
>>   #include <linux/gpio/consumer.h>
>>   #include <linux/io.h>
>>   #include <linux/iopoll.h>
>> +#include <linux/phy/phy.h>
>>   
>>   #include <drm/bridge/analogix_dp.h>
>>   
>> @@ -513,10 +514,27 @@ void analogix_dp_enable_sw_function(struct analogix_dp_device *dp)
>>   void analogix_dp_set_link_bandwidth(struct analogix_dp_device *dp, u32 bwtype)
>>   {
>>   	u32 reg;
>> +	int ret;
>>   
>>   	reg = bwtype;
>>   	if ((bwtype == DP_LINK_BW_2_7) || (bwtype == DP_LINK_BW_1_62))
>>   		writel(reg, dp->reg_base + ANALOGIX_DP_LINK_BW_SET);
>> +
>> +	if (dp->phy) {
>> +		union phy_configure_opts phy_cfg = {0};
>> +
>> +		phy_cfg.dp.lanes = dp->link_train.lane_count;
> 
> You can drop this, .set_lanes is false.
> 
>> +		phy_cfg.dp.link_rate =
>> +			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
>> +		phy_cfg.dp.set_lanes = false;
>> +		phy_cfg.dp.set_rate = true;
>> +		phy_cfg.dp.set_voltages = false;
> 
> You don't need to set those to false, it's cleared by = {0};
> 
>> +		ret = phy_configure(dp->phy, &phy_cfg);
>> +		if (ret && ret != -EOPNOTSUPP) {
>> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
>> +			return;
>> +		}
>> +	}
>>   }
>>   
>>   void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
>> @@ -530,9 +548,24 @@ void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
>>   void analogix_dp_set_lane_count(struct analogix_dp_device *dp, u32 count)
>>   {
>>   	u32 reg;
>> +	int ret;
>>   
>>   	reg = count;
>>   	writel(reg, dp->reg_base + ANALOGIX_DP_LANE_COUNT_SET);
>> +
>> +	if (dp->phy) {
>> +		union phy_configure_opts phy_cfg = {0};
>> +
>> +		phy_cfg.dp.lanes = dp->link_train.lane_count;
>> +		phy_cfg.dp.set_lanes = true;
>> +		phy_cfg.dp.set_rate = false;
>> +		phy_cfg.dp.set_voltages = false;
> 
> Likewise
> 
>> +		ret = phy_configure(dp->phy, &phy_cfg);
>> +		if (ret && ret != -EOPNOTSUPP) {
>> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
>> +			return;
>> +		}
>> +	}
>>   }
>>   
>>   void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
>> @@ -546,10 +579,39 @@ void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
>>   void analogix_dp_set_lane_link_training(struct analogix_dp_device *dp)
>>   {
>>   	u8 lane;
>> +	int ret;
>>   
>>   	for (lane = 0; lane < dp->link_train.lane_count; lane++)
>>   		writel(dp->link_train.training_lane[lane],
>>   		       dp->reg_base + ANALOGIX_DP_LN0_LINK_TRAINING_CTL + 4 * lane);
>> +
>> +	if (dp->phy) {
>> +		union phy_configure_opts phy_cfg = {0};
>> +
>> +		for (lane = 0; lane < dp->link_train.lane_count; lane++) {
>> +			u8 training_lane = dp->link_train.training_lane[lane];
>> +			u8 vs, pe;
>> +
>> +			vs = (training_lane & DP_TRAIN_VOLTAGE_SWING_MASK) >>
>> +			     DP_TRAIN_VOLTAGE_SWING_SHIFT;
>> +			pe = (training_lane & DP_TRAIN_PRE_EMPHASIS_MASK) >>
>> +			     DP_TRAIN_PRE_EMPHASIS_SHIFT;
>> +			phy_cfg.dp.voltage[lane] = vs;
>> +			phy_cfg.dp.pre[lane] = pe;
>> +		}
>> +
>> +		phy_cfg.dp.lanes = dp->link_train.lane_count;
>> +		phy_cfg.dp.link_rate =
>> +			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
> 
> You can drop these two.

Indeed, all the needless assignments for phy_configure() will be deleted 
in next version.

> 
>> +		phy_cfg.dp.set_lanes = false;
>> +		phy_cfg.dp.set_rate = false;
>> +		phy_cfg.dp.set_voltages = true;
>> +		ret = phy_configure(dp->phy, &phy_cfg);
>> +		if (ret && ret != -EOPNOTSUPP) {
>> +			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
>> +			return;
>> +		}
>> +	}
>>   }
>>   
>>   u32 analogix_dp_get_lane_link_training(struct analogix_dp_device *dp, u8 lane)
>> @@ -1053,3 +1115,31 @@ ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
>>   
>>   	return -EREMOTEIO;
>>   }
>> +
>> +void analogix_dp_phy_power_on(struct analogix_dp_device *dp)
>> +{
>> +	int ret;
>> +
>> +	ret = phy_set_mode(dp->phy, PHY_MODE_DP);
>> +	if (ret) {
>> +		dev_err(dp->dev, "%s: phy_set_mode() failed: %d\n", __func__, ret);
>> +		return;
>> +	}
>> +
>> +	ret = phy_power_on(dp->phy);
>> +	if (ret) {
>> +		dev_err(dp->dev, "%s: phy_power_on() failed: %d\n", __func__, ret);
> 
> There is already a dev_err() call in phy_power_on().
> 
>> +		return;
>> +	}
>> +}
>> +
>> +void analogix_dp_phy_power_off(struct analogix_dp_device *dp)
>> +{
>> +	int ret;
>> +
>> +	ret = phy_power_off(dp->phy);
>> +	if (ret) {
>> +		dev_err(dp->dev, "%s: phy_power_off() failed: %d\n", __func__, ret);
> 
> There is already a dev_err() call in phy_power_off().
> 
>> +		return;
>> +	}
>> +}
>> -- 
>> 2.34.1
>>
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

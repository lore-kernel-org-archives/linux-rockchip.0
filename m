Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3DEEC0218C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jan 2025 08:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OV/VvMQQcYhrIV7CvRQpX4CA81znMAHCWO6TKF4F6oA=; b=TtxvGVZZjnGV+ZRqD/jKZ7+S5+
	OCSUJLPr4sakwSJc4XOhOfKiXq7n60Fghay9ogjVIndtwmYy8M4vb+qmuakuQKLUmyEqn+Mm17HzM
	PF+CltjIXN1zhuXC5G73/6gkIYNM5qK+sgnPS9JEFAtSY1RYvpVuFmojIlMc4iJ50H16rHBArH6WJ
	OitVvZwA5q3afOJ5c/zuzsyyBh7kHS7zNf/6yv27MiQb5a7Wg1yMM3cf+iUDRJUPvD3UCPBWsNotI
	KV5EYIx8FNWQ3Rn0UfykhjC8vumqcCksHp/ZGozn5RkTtvW6kiW0y2Vp4EvRQWWubGONNUMbI2Pww
	/zfyaYQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taVm6-00000009fnl-2rrM;
	Wed, 22 Jan 2025 08:07:46 +0000
Received: from mail-m19731100.qiye.163.com ([220.197.31.100])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taVl7-00000009feu-04ff;
	Wed, 22 Jan 2025 08:06:46 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 964587b0;
	Wed, 22 Jan 2025 16:06:35 +0800 (GMT+08:00)
Message-ID: <b028f794-bdc9-4414-a823-662ef2fd0ee1@rock-chips.com>
Date: Wed, 22 Jan 2025 16:06:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 11/20] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-12-damon.ding@rock-chips.com>
 <v3is3v3fpx42i2eh2qrfkx3qx3z7iema3honi544qoc4j2whdo@h6ajv5h53gry>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <v3is3v3fpx42i2eh2qrfkx3qx3z7iema3honi544qoc4j2whdo@h6ajv5h53gry>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0xCQ1YfQx8dTRhISh1OHkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a948d0c836b03a3kunm964587b0
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PzI6ERw5LjIKSyhDDRcpGD1O
	Ci0wFEhVSlVKTEhMTkhISkJNQ0pMVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPT0NDNwY+
DKIM-Signature: a=rsa-sha256;
	b=bnJZAh5BBBmw8nokE9qh77t/KlO2EKqf+idj1P8bY9hMXwPKDNSLKz471pF5oWCENK2VT8HFkVJWRI0TEa4GWYpboku9qdNsR1Xcl5/RuzyFuldu+cJjEB46cYrEe2FTx1FDspkHDllaOc0tcCo3JHw1svUDvWffGXUUF7HfzLY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=543GrCJapzJ907rzMydhOSlWrbQQBOk2iQARSOS3UE0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_000645_199723_72093F33 
X-CRM114-Status: GOOD (  15.83  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dmitry,

On 2025/1/9 20:45, Dmitry Baryshkov wrote:
> On Thu, Jan 09, 2025 at 11:27:16AM +0800, Damon Ding wrote:
>> The main modification is moving the DP AUX initialization from function
>> analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
>> eDP panel during probing, it is also needed to advance PM operaions to
>> ensure that eDP controller and phy are prepared for AUX transmission.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v4:
>> - Use done_probing() to call drm_of_find_panel_or_bridge() and
>>    component_add() when getting panel from the DP AUX bus
>>
>> Changes in v5:
>> - Advance PM operations to make eDP AUX work well
>> ---
>>   .../drm/bridge/analogix/analogix_dp_core.c    | 62 ++++++++++---------
>>   1 file changed, 34 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> index 8251adfce2f9..78e78fb474d3 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
>> @@ -1548,6 +1548,18 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
>>   	return ret;
>>   }
>>   
>> +static void analogix_dp_runtime_disable(void *data)
>> +{
>> +	struct analogix_dp_device *dp = (struct analogix_dp_device *)data;
>> +
>> +	if (IS_ENABLED(CONFIG_PM)) {
>> +		pm_runtime_dont_use_autosuspend(dp->dev);
>> +		pm_runtime_disable(dp->dev);
>> +	} else {
>> +		analogix_dp_suspend(dp);
>> +	}
>> +}
>> +
>>   struct analogix_dp_device *
>>   analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
>>   {
>> @@ -1658,8 +1670,29 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
>>   	}
>>   	disable_irq(dp->irq);
>>   
>> +	dp->aux.name = "DP-AUX";
>> +	dp->aux.transfer = analogix_dpaux_transfer;
>> +	dp->aux.dev = dp->dev;
>> +	drm_dp_aux_init(&dp->aux);
>> +
>> +	if (IS_ENABLED(CONFIG_PM)) {
>> +		pm_runtime_use_autosuspend(dp->dev);
>> +		pm_runtime_set_autosuspend_delay(dp->dev, 100);
>> +		pm_runtime_enable(dp->dev);
>> +	} else {
>> +		ret = analogix_dp_resume(dp);
>> +		if (ret)
>> +			goto err_disable_clk;
>> +	}
>> +
>> +	ret = devm_add_action_or_reset(dev, analogix_dp_runtime_disable, dp);
> 
> This looks like a local version of devm_pm_runtime_enable()
> 

Indeed, it is better to use devm_pm_runtime_enable() instead.

>> +	if (ret)
>> +		goto err_disable_pm_runtime;
>> +
>>   	return dp;
>>   
>> +err_disable_pm_runtime:
>> +	analogix_dp_runtime_disable((void *)dp);
>>   err_disable_clk:
>>   	clk_disable_unprepare(dp->clock);
>>   	return ERR_PTR(ret);
>> @@ -1708,25 +1741,12 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>>   	dp->drm_dev = drm_dev;
>>   	dp->encoder = dp->plat_data->encoder;
>>   
>> -	if (IS_ENABLED(CONFIG_PM)) {
>> -		pm_runtime_use_autosuspend(dp->dev);
>> -		pm_runtime_set_autosuspend_delay(dp->dev, 100);
>> -		pm_runtime_enable(dp->dev);
>> -	} else {
>> -		ret = analogix_dp_resume(dp);
>> -		if (ret)
>> -			return ret;
>> -	}
>> -
>> -	dp->aux.name = "DP-AUX";
>> -	dp->aux.transfer = analogix_dpaux_transfer;
>> -	dp->aux.dev = dp->dev;
>>   	dp->aux.drm_dev = drm_dev;
>>   
>>   	ret = drm_dp_aux_register(&dp->aux);
>>   	if (ret) {
>>   		DRM_ERROR("failed to register AUX (%d)\n", ret);
>> -		goto err_disable_pm_runtime;
>> +		return ret;
>>   	}
>>   
>>   	ret = analogix_dp_create_bridge(drm_dev, dp);
>> @@ -1739,13 +1759,6 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>>   
>>   err_unregister_aux:
>>   	drm_dp_aux_unregister(&dp->aux);
>> -err_disable_pm_runtime:
>> -	if (IS_ENABLED(CONFIG_PM)) {
>> -		pm_runtime_dont_use_autosuspend(dp->dev);
>> -		pm_runtime_disable(dp->dev);
>> -	} else {
>> -		analogix_dp_suspend(dp);
>> -	}
>>   
>>   	return ret;
>>   }
>> @@ -1762,13 +1775,6 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
>>   	}
>>   
>>   	drm_dp_aux_unregister(&dp->aux);
>> -
>> -	if (IS_ENABLED(CONFIG_PM)) {
>> -		pm_runtime_dont_use_autosuspend(dp->dev);
>> -		pm_runtime_disable(dp->dev);
>> -	} else {
>> -		analogix_dp_suspend(dp);
>> -	}
>>   }
>>   EXPORT_SYMBOL_GPL(analogix_dp_unbind);
>>   
>> -- 
>> 2.34.1
>>
> 

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

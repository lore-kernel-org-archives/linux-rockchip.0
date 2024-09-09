Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1429ECE581
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 15:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+dGHLcYZT5XLnOzN89XoZ5GbbRoowNDuSTBh2+HpxY=; b=osdastHYWgArwa
	GQSW5cB60QwgleT7hDHbwQ93VLHE1I2cZ9vNzukDue0AVBhui7YoAIdUE3ik6RGWv4PjDpP1YBSYf
	cbPdoqPB0+Jk5D1pgvN7lOF3dF1nDzMksmViGt99mEPRxVnyxaHdrNZYfCbsJ+l9AZ84bs859iPGM
	J6Ke9w5ivAabLcgjSifDFDbc/GKUB3JAHgOlBV84rrz0N9m1++YVM3WhIzq8Ms9rcXUJH2orTeKlB
	tAm4cOp3AhKNHAXS96EAWKighwvWPr/H/ipBxMRFCKcWoS0u/f5grSqofI6R/XCBd29ef1eU5JhRM
	r7eECee6qSeb9WUvyirA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng5X-00000002PmS-2r3F;
	Mon, 09 Sep 2024 15:13:59 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng4N-00000002PQ6-3q54
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 15:12:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1725894747;
 bh=FXnPDua9oM/F12XvXaMhSoJTKFM3q06IAOZGjPkHFmo=;
 b=MIqkl1aN/8T3im1dX1soziq8GA6pmwat9BiZDsmcsvx0koHbaQqPYdTzAO2B0ORiDMypeeY3D
 eJFCy3i0+21GFeJFpQFtuVFWtFGvyEQ5zp33XvPjebX9D3NZwoAf7osh9VxoVRlCTbCY5Uxp/NN
 4sNfPNM0CTJblZhnXo/dEMGkA1wYr9y53MaaJoeINEChbFv7tpUvqNrnBPaUKzzVPysMhW43x1Z
 DQBtQeI4u53d8fBEzJGTo57InOgT9VqdL1RZ2f4eOsaD08z5xHm7QxDo2ZlbzpMCimD06kM6Qyp
 9TGhRcpA+aZLELZ19nndamH8FxibujyVuJbuvxNEtCfQ==
Message-ID: <250d8e1e-20dd-4741-8cf7-c3b4ff9e82a8@kwiboo.se>
Date: Mon, 9 Sep 2024 17:12:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/10] drm: bridge: dw_hdmi: Only notify connected
 status on HPD interrupt
To: neil.armstrong@linaro.org
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240908132823.3308029-1-jonas@kwiboo.se>
 <20240908132823.3308029-3-jonas@kwiboo.se>
 <bc0b47d9-ad8d-4beb-aad4-6dff79f48842@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <bc0b47d9-ad8d-4beb-aad4-6dff79f48842@linaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66df105755874e972a5d499f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_081248_072450_D0E5C21C 
X-CRM114-Status: GOOD (  18.35  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Neil,

On 2024-09-09 15:16, Neil Armstrong wrote:
> On 08/09/2024 15:28, Jonas Karlman wrote:
>> drm_helper_hpd_irq_event() and drm_bridge_hpd_notify() may incorrectly
>> be called with a connected status when HPD is high and RX sense is
>> changed. This typically happen when the HDMI cable is unplugged, shortly
>> before the HPD is changed to low.
>>
>> Fix this by only notify connected status on the HPD interrupt when HPD
>> is going high, not on the RX sense interrupt when RX sense is changed.
>>
>> Fixes: da09daf88108 ("drm: bridge: dw_hdmi: only trigger hotplug event on link change")
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>> v2: New patch
>> ---
>>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> index 9e7f86a0bf5c..055fc9848df4 100644
>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> @@ -3123,7 +3123,8 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
>>   			mutex_unlock(&hdmi->cec_notifier_mutex);
>>   		}
>>   
>> -		if (phy_stat & HDMI_PHY_HPD)
>> +		if ((intr_stat & HDMI_IH_PHY_STAT0_HPD) &&
>> +		    (phy_stat & HDMI_PHY_HPD))
>>   			status = connector_status_connected;
>>   
>>   		if (!(phy_stat & (HDMI_PHY_HPD | HDMI_PHY_RX_SENSE)))
> 
> Perhaps this should be also checked for the other lines checking HDMI_PHY_HPD ?

I think this is the only place we need to check to match the original
intent of da09daf88108 ("drm: bridge: dw_hdmi: only trigger hotplug
event on link change").

The interrupt pattern I can see when physically unplugging are:
- RX interrupt:  HPD=high RX=low  -> triggered connected event
- HPD interrupt: HPD=low  RX=low  -> trigger disconnected event

Based on the commit message the intent was to trigger hotplug event:
- when HPD goes high (plugin)
- when both HPD and RX sense has gone low (plugout)

For plugin we should only trigger when HPD=high at HPD interrupt, as is
done after this patch, to avoid unnecessary events when RX changes.

For plugout the event should be triggered when both HPD=low and RX=low,
that can happen at either HPD or RX interrupt.

This should probably be revisited in future, I think we should ignore
RX sense and instead use a work queue and a small debounce timeout after
HPD interrupt or similar, to better support EDID refresh. Something for
a future series.

Regards,
Jonas

> 
> Neil


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

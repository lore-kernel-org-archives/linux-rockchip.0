Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F9A5CD4F5B
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 May 2026 15:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8CBiKT4OysCVy1xJP9Eoa6Oyl3UC1SWpGNT+M56qOw=; b=vepu1DNqvKBn0B
	CHWp+CGQAWgNgBRm56/eIxMu/Bb7sXdU6heW9VAe+0ZJB/xe8iZc4CCaa2qqsK0l0Zoao0JDu5pNJ
	ZSWA0UJdAzH6NpRJkBncCtoCfHuR2eGGe5t4zcNBOaghMLvVU6Mf+Yt5JMRKlWy2TJp7TNie0+GKB
	BdnjvfDMo4h3NVC5T8NhKyMMLoHgB1QfL+0MuZx8q17ExZYJmn9NJ0LX5H52CZyT3VpxeYMxvKdf7
	mPMHtPv0UxKt2DQNYW+CTkcghLfFa9Yi/7Mulx/thohRY5W6kA7OZvBZiBBNrUcbc5cpfUNz5ijAw
	coz/9yKAz/icf6wHOqqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPMEC-00000001zXG-0agw;
	Tue, 19 May 2026 15:19:28 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPME1-00000001zIB-3JPH
	for linux-rockchip@lists.infradead.org;
	Tue, 19 May 2026 15:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1779203952;
 bh=UysSrWx2IaBnmq7p+RKc3cNjOUxboHqJt85KySMdL0U=;
 b=UP71aKD8jd1h2ABdkRMuqSjeKMKE2+D8oa02GQBNh9X5rGBdo6uOsYq3oy1ElrqvlenRAEAiz
 CGCqBXI3ieXzvP1GnaC9PaDosGMkQlhsHxWwRVzJtUy90/yD0KvBYtIHGTO0C6dkoSDQlGeLsB4
 KrOH8da4hUgG2jZ03AzC0AgcTE+LMsLh8v6bfN8wKQUjpXcrUpnXlXcVVhEzaDZxEcQ+GaFsIRB
 577zEv7HkHUtpucSsQ/fO6qinR669sPIf4BPebdwUxeboN9AvJIEvUV1ULOh6DGbFrFZ7DW803C
 64cEm//xCVfShj+y8nXpkhapzppzI2vzA41b/C+e6A/Q==
X-Forward-Email-ID: 6a0c7f56b6cbacb3a8d0c696
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <e90eddfc-2f57-418a-ae05-43a411d72b99@kwiboo.se>
Date: Tue, 19 May 2026 17:18:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 04/23] drm: bridge: dw_hdmi: Hold bridge ref until
 connector cleanup
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
References: <20260518180206.2480119-1-jonas@kwiboo.se>
 <20260518180206.2480119-5-jonas@kwiboo.se>
 <177919241969.545972.18169905222569864569.b4-review@b4>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <177919241969.545972.18169905222569864569.b4-review@b4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_081923_839664_15395702 
X-CRM114-Status: GOOD (  15.84  )
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
Cc: imx@lists.linux.dev, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Diederik de Haas <diederik@cknow-tech.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, Liu Ying <victor.liu@nxp.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linux-amlogic@lists.infradead.org, Chen-Yu Tsai <wens@kernel.org>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Louis Chauvet <louis.chauvet@bootlin.com>, Christian Hewitt <christianshewitt@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Luca,

On 5/19/2026 2:06 PM, Luca Ceresoli wrote:
> On Mon, 18 May 2026 18:01:40 +0000, Jonas Karlman <jonas@kwiboo.se> wrote:
> 
> Hello Jonas,
> 
>>
>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> index b7bfc0e9a6b2..9d795c550f8a 100644
>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> @@ -2600,10 +2609,14 @@ static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
>>  
>>  	drm_connector_helper_add(connector, &dw_hdmi_connector_helper_funcs);
>>  
>> -	drm_connector_init_with_ddc(hdmi->bridge.dev, connector,
>> -				    &dw_hdmi_connector_funcs,
>> -				    DRM_MODE_CONNECTOR_HDMIA,
>> -				    hdmi->ddc);
>> +	ret = drm_connector_init_with_ddc(hdmi->bridge.dev, connector,
>> +					  &dw_hdmi_connector_funcs,
>> +					  DRM_MODE_CONNECTOR_HDMIA,
>> +					  hdmi->ddc);
>> +	if (ret)
>> +		return ret;
>> +
>> +	drm_bridge_get(&hdmi->bridge);
> 
> I'm not fully following the code paths, but both the report and the fix
> make sense to me. Only I'd move the drm_bridge_get() before
> drm_connector_init_with_ddc(), to avoid a short window where no reference
> is held and the bridge might be destroyed before drm_bridge_get() is
> called. I'm not sure this can happen, but it's better to write the code in
> a way that clearly makes it impossible.

dw_hdmi_connector_create() is only called from dw_hdmi_bridge_attach()
so the bridge should already have a ref for the lifetime of this call.

I explicitly chose the placement after drm_connector_init_with_ddc()
to ensure ref count is correctly balanced without having to add a
drm_bridge_put() call in any error path. I.e. connector destroy() is
only called when drm_connector_init_with_ddc() succeeds.

This code/call is also planned to be removed in a future series, so I do
not think moving drm_bridge_get() is necessary unless you think we need
to protect against possible bad behavior from DRM core?

Regards,
Jonas

> 
> Otherwise looks good.
> 
> Luca
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

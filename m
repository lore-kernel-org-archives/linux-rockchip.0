Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF3D6CF6491
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 00:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcPnqAfH7SZo4L0Yra8BH3zVtcEgGAHIPSlmyEJ4hdU=; b=e+KTGqXxkIJlP3
	xeYoMcJToeM5Is1H12DauDLFQxkC9cabH/DU6AhFmeHfeeQ0QLc2mcU7F/SrueyXVs2o8Hh9FezMD
	LrXYP6D6fC2DQ2r5tHwB3NGDGCaZgMiUZgrPPubHc+0UzC8y8/vWGYdMA0LIQUzWMnLlhtiO7QZxK
	FktNH5riqjWJbIlbNt7ZkQnQ5Ew4f9yX9gwqsGWnPGY6dtG3uA+fQABHbfQOpv7l6dIu9pQKXruyF
	D8OEJ3IagRknYrpgM5d80cR38WlQZCjxM0JyQEZDVETz38XUZ6DHRXMrcwTdz51IUWrl6XtH78ytw
	1kHGkNxVz9gAXn45u0+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suhtd-0000000DrSa-1vAs;
	Sun, 29 Sep 2024 00:34:45 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suhta-0000000DrRS-1w9h
	for linux-rockchip@lists.infradead.org;
	Sun, 29 Sep 2024 00:34:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1727570071;
 bh=xENoRDlaw7uEZQLQGR7uTWdX3LD1ukayJIDfRPDH3Vo=;
 b=da9OAMN/U5XBUZyoZfiZdGSYTzXYwpNid04GT0SdGXMxYWmNAWJRxJmiIFDlrmZLsS0HCvuqy
 rq1K0FfgrMY2xq+0UAMgTzf6wEB1R48Pk619RiGzud5pyVexqo3fGlDVMT07Gmbmb1gIS6PMMg1
 2kKbxWGYS3s5aA+PRaXVEMSCeOOgx5T3mNnK8n+57IB/pnBFG3/WUGe4A/4R2NUMa5PiVxUs2/0
 lsRQ7wyDeGMJDGixJG88GMnrkvPTslTdb/c7LKYcycgFeDpyk0e18ABh1W0rF6WJ+cK6OQ+GW2Y
 xF5zi2Aghx5rHt60Z8h+wbmqSXC1jG3uKmABXU636nTw==
Message-ID: <83349da6-17bc-432d-badc-5946c42a53ed@kwiboo.se>
Date: Sun, 29 Sep 2024 02:34:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 3/3] drm/rockchip: Add basic RK3588 HDMI output support
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Simona Vetter <simona@ffwll.ch>,
 Simona Vetter <simona.vetter@ffwll.ch>
References: <20240929-b4-rk3588-bridge-upstream-v8-0-83538c2cc325@collabora.com>
 <20240929-b4-rk3588-bridge-upstream-v8-3-83538c2cc325@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240929-b4-rk3588-bridge-upstream-v8-3-83538c2cc325@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66f8a093ed0aa09774abf316
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240928_173442_544845_F65F26AC 
X-CRM114-Status: GOOD (  13.53  )
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

Hi Cristian,

On 2024-09-29 00:36, Cristian Ciocaltea wrote:
> The RK3588 SoC family integrates the newer Synopsys DesignWare HDMI 2.1
> Quad-Pixel (QP) TX controller IP and a HDMI/eDP TX Combo PHY based on a
> Samsung IP block.
> 
> Add just the basic support for now, i.e. RGB output up to 4K@60Hz,
> without audio, CEC or any of the HDMI 2.1 specific features.
> 
> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/Kconfig               |   9 +
>  drivers/gpu/drm/rockchip/Makefile              |   1 +
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 425 +++++++++++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c    |   2 +
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.h    |   1 +
>  5 files changed, 438 insertions(+)
> 

[snip]

> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> new file mode 100644
> index 000000000000..6103d30d40fb

[snip]

> +static irqreturn_t dw_hdmi_qp_rk3588_irq(int irq, void *dev_id)
> +{
> +	struct rockchip_hdmi_qp *hdmi = dev_id;
> +	u32 intr_stat, val;
> +	int debounce_ms;
> +
> +	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &intr_stat);
> +	if (!intr_stat)
> +		return IRQ_NONE;
> +
> +	val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
> +			    RK3588_HDMI0_HPD_INT_CLR);
> +	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
> +
> +	debounce_ms = intr_stat & RK3588_HDMI0_LEVEL_INT ? 150 : 20;
> +	mod_delayed_work(system_wq, &hdmi->hpd_work,
> +			 msecs_to_jiffies(debounce_ms));

If I am understanding this correctly this will wait for 150 ms after HPD
goes high and 20 ms after HPD goes low to trigger the hpd_work.

Would it not make more sense to be the other way around? In order to
reduce unnecessary HOTPLUG=1 uevents from being triggered during short
EDID refresh pulses? At least that is what I am playing around with for
dw-hdmi.

Regards,
Jonas

> +
> +	val |= HIWORD_UPDATE(0, RK3588_HDMI0_HPD_INT_MSK);
> +	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
> +
> +	return IRQ_HANDLED;
> +}

[snip]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

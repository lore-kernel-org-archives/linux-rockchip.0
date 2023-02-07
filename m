Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C06CDC636CC
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Feb 2023 11:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lx67EaumUDdNLPsOc8VL6gi0YKLpI9cEoqlNCJatybM=; b=WDfp7lW27PwIn9
	T+BaxHHOXkTfKw1hnoIV03qjSv61uXcmSDMkFtp4NfVpU+EF8upkhMTJmQJLFKbg2/Eyl0WYc3P3e
	uI5IlfFr3sD7O5xnI+1a/34ItHB9fM5ynH/HkUjQ2jRiodhLXoM8ogHQqGOYtet5JPWQeOL5Dokdr
	5damsL4aWF3uqBb+2dBNiDchqH0ESESCbXrTj7ualB7rYjMqUcIjq7numzUekXhnUR/r7EhM4EglP
	4Mw+5gWhBoXTSLzadV+ATCcYRuG6tqeO9jcAG+nvGTYYMAZJtevWt2PR3EQSfZvQ2LFFLd3dQIpl/
	ZdrW0KRd+iLItZeu6FLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPLjA-00Br8Z-A6; Tue, 07 Feb 2023 11:01:32 +0000
Received: from xtrwsqbh.outbound-mail.sendgrid.net ([167.89.100.176])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPLj7-00Br71-Cx
	for linux-rockchip@lists.infradead.org; Tue, 07 Feb 2023 11:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=HenSMTrgrLKplahvcFifYdl9RBoK9/xvCtUuvoh3/VA=;
	b=cff0ebB4AliNsBNAS1MHiES4piW7wS94irZwQFOzlQm61xOz2rhHOf1tiZoPdT7BeAD1
	b+5vp6+SfC6IUyggBjSvMK2RKwrsDjDPzH8AxlglM7ftGfN5Sndq/KkB/BJG+MuvcaIbtm
	PrAJc6Hqy3Llvt+znPpEnrarlY9KU0w163U2HC0HwpshOztRKle5xtwB52gXrE3g6f+3h6
	WDw2k5+Mgj266F8vKCGXWs+MeVOX6HuTFAELyUFWIr2y96ITd1t2ByHeubGxyw8a74T6h2
	yhmygi/Yx69BjOhGsvt0lBvL5Ebi2NT9V7Hjf2Cxhg29TIv8vayoynBkDm9CoYRA==
Received: by filterdrecv-557d69979-492mf with SMTP id filterdrecv-557d69979-492mf-1-63E22F85-12A
        2023-02-07 11:01:26.136761726 +0000 UTC m=+7041333.050952024
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-canary-0 (SG)
	with ESMTP
	id z0wMd4_PSK2AY2B5rCg9wQ
	Tue, 07 Feb 2023 11:01:25.718 +0000 (UTC)
Message-ID: <0bec1f06-9fad-60ad-19eb-3d54135031f7@kwiboo.se>
Date: Tue, 07 Feb 2023 11:01:26 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v4 4/4] drm/rockchip: dw_hdmi: discard modes with
 unachievable pixelclocks
Content-Language: en-US
References: <20230207084452.1069656-1-s.hauer@pengutronix.de>
 <20230207084452.1069656-5-s.hauer@pengutronix.de>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20230207084452.1069656-5-s.hauer@pengutronix.de>
X-SG-EID:  =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hxKYDk3Ndxut4dHrI?=
 =?us-ascii?Q?uunN5BgBTdaYVpq6jUWEiTITcxjpRSSL7mu7WcP?=
 =?us-ascii?Q?=2FTUdEwxOt7yXJphabgNF=2FKgQ3c4IrxGYMxyuxxr?=
 =?us-ascii?Q?OdGFF8TEadPT5NthcopwAL+xm=2FfYHmeOQWQYOeb?=
 =?us-ascii?Q?8uZYHVIVtZ52UBBReEKkeBQLO2U=2FshYPVaiuNi1?=
 =?us-ascii?Q?Z3Z7EmX9kEFSOzKqlVp3w=3D=3D?=
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: Dan Johansen <strit@manjaro.org>, Sandy Huang <hjc@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>,
	Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
	Robin Murphy <robin.murphy@arm.com>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_030129_505069_59D5F78E 
X-CRM114-Status: GOOD (  16.00  )
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

Hi Sascha,

On 2023-02-07 09:44, Sascha Hauer wrote:
> The Rockchip PLL drivers are currently table based and support only
> the most common pixelclocks. Discard all modes we cannot achieve
> at all. Normally the desired pixelclocks have an exact match in the
> PLL driver, nevertheless allow for a 0.1% error just in case.
> 
> Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> Tested-by: Dan Johansen <strit@manjaro.org>
> Link: https://lore.kernel.org/r/20230118132213.2911418-4-s.hauer@pengutronix.de
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index feba6b9becd6c..725952811752b 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -256,10 +256,14 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
>  {
>  	struct rockchip_hdmi *hdmi = data;
>  	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
> -	int pclk = mode->clock * 1000;
> +	int rpclk, pclk = mode->clock * 1000;
>  	bool exact_match = hdmi->plat_data->phy_force_vendor;
>  	int i;
>  
> +	rpclk = clk_round_rate(hdmi->ref_clk, pclk);
> +	if (abs(rpclk - pclk) > pclk / 1000)
> +		return MODE_NOCLOCK;

The ref_clk is optional and rk3228/rk3328 dts do not supply a ref or vpll clock.

Regards,
Jonas

> +
>  	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
>  		/*
>  		 * For vendor specific phys force an exact match of the pixelclock


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

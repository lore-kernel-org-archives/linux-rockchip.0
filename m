Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFD36C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Apr 2022 11:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBdCp5FyHKKUNAF5b7ltvj7ycto1CSKlZVFLmizdbrI=; b=LSzPHgHGWgDQGX
	iGXLKBmZClbGv7ZJmjvJqrDnAUMRcLJXZNKIPezTq90jR/5iprhYiPKYFVVKcBSvp58gAdetwd2JT
	E7Div2bFdC7xBk4bJSNTDqrw+uAzv0VnXYknF+BsH2UwNS94Fy4Afwc1+J/aIzAoXtWWPPDFf4k3f
	8ufGe8rmGc7Gn9xqjLsqAchbhkk/0QdL8HbfKWpHRHCUAJGPcLCHpkz5r1prW8pvyOuDDOJ+gbDqv
	OfSMiqM87mHRIE5AJywzF2kLGgNz0nlY5XBBusA7BtFkI7VqVKBZonJwGuvZC9OUfAZxhoIQW+2iF
	SCy2tDu9hyA0ldpj5Ojw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndVn9-004lrA-Ov; Sun, 10 Apr 2022 11:31:39 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndVmy-004lpj-Rh; Sun, 10 Apr 2022 11:31:30 +0000
Received: by mail-ed1-x530.google.com with SMTP id 21so1796107edv.1;
 Sun, 10 Apr 2022 04:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=sRX1WEzD+OHwRyf2blrJgodVZwUjqhVpYgifnVk+28Y=;
 b=fSiEMLggH6nOdVHr/inNql5RIWc6hCvaVdD44xWAsr7FgswCKbgCQrsr6hhZ36Qnxb
 vpQX4Lb7KHwYN0hblJaC85Fcc6jzu7t3fft4sd/UuYM69jUC/uhtEhUtBw6DWpMAdjJP
 zl9FQkM98CZxxy00AK+IZvXbuAB5HZ5GD+rM48S6ZrIiWHrkDFNQoRdrMZvF+N/hzzU4
 k+f89HH3u/8ZrC0Dl5vzfnmO4wLBuiLDjiT8hz/w7/SMVnN5tvyBTzDIuOGssGa6jtn4
 5WIQt3R0sTdG9FE1r9/6oBG5AxXDRdajEVuI+kSQVtN7s3C4dYdaq9t3vgASLpATTHB0
 XoMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=sRX1WEzD+OHwRyf2blrJgodVZwUjqhVpYgifnVk+28Y=;
 b=ywwebbrMb6Yi4BLO5tfDcA57tbp0l9MZkLG8iRz6XLbM0EuiUnGlbWSZ4/avdVyCsL
 k2bfeuBnwJ3d9QI9c211HIWDmVljtP04OviL/jJ1M0UK9fF1NBVZNHiZdlBZ+2SXnVzX
 cLIUfXfSRiAVXmy/y9UNKkIVikI5WK/TTqc/LsoRmTLMIV8CP53gDRmf3dzdzPCIj89d
 1d9ug70LKVnqSLGWsZXVyYmAgth6U67FWQh48nNpsnEN83H25lgZfq5b2eFPOEaAsenV
 CD0UgxsfpcgO5UxIppaeuIUgBwOhtlrQqHM1e7AhgJdwr4BS9NA1MpGodBDp3/GYHEqR
 s9Sw==
X-Gm-Message-State: AOAM531VIyxKEIArkI6eQ0UOChk8Z+ou+jg/m1471ExK/s/7PzenDeu4
 EsSRW5FGM8HT8QLWLrGdfw==
X-Google-Smtp-Source: ABdhPJw2erxI96LZQkKnLkWjSTDPEUQ3gin+rFkfZ/8VujZteZqKt0pgxbL48uF44MjdbzP8CcImOg==
X-Received: by 2002:a50:858a:0:b0:41d:740f:55bd with SMTP id
 a10-20020a50858a000000b0041d740f55bdmr3769846edh.128.1649590285884; 
 Sun, 10 Apr 2022 04:31:25 -0700 (PDT)
Received: from ?IPV6:2001:16b8:e981:9e00:815a:6661:46b9:139d?
 ([2001:16b8:e981:9e00:815a:6661:46b9:139d])
 by smtp.gmail.com with ESMTPSA id
 dn4-20020a17090794c400b006dbec4f4acbsm10869995ejc.6.2022.04.10.04.31.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 10 Apr 2022 04:31:25 -0700 (PDT)
Message-ID: <8fac5d72-c635-521c-e7d1-a3980a4ed719@gmail.com>
Date: Sun, 10 Apr 2022 13:31:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v10 12/24] drm/rockchip: dw_hdmi: drop mode_valid hook
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20220408112238.1274817-1-s.hauer@pengutronix.de>
 <20220408112238.1274817-13-s.hauer@pengutronix.de>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20220408112238.1274817-13-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_043128_969008_EC8AB584 
X-CRM114-Status: GOOD (  22.66  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Am 08.04.22 um 13:22 schrieb Sascha Hauer:
> The driver checks if the pixel clock of the given mode matches an entry
> in the mpll config table. The frequencies in the mpll table are meant as
> a frequency range up to which the entry works, not as a frequency that
> must match the pixel clock. The downstream Kernel also does not have
> this check, so drop it to allow for more display resolutions.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
You're correct: That frequency is meant to be greater or equal. But I'm
not sure if it makes sense to completely drop it - what happens for
clocks rates > 600 MHz which might be supported by later generation
sinks (HDMI 2.1 or later)?
As these are not supported by the IPs/PHYs currently supported by that
driver a reason a simple

        int i;



        for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {

-               if (pclk == mpll_cfg[i].mpixelclock) {

+               if (pclk >= mpll_cfg[i].mpixelclock) {

                        valid = true;

                        break;

                }

would be the better idea, I guess.

Regards,
Alex

> Notes:
>     Changes since v3:
>     - new patch
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 25 ---------------------
>  1 file changed, 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index cb43e7b47157d..008ab20f39ee6 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -248,26 +248,6 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
>  	return 0;
>  }
>  
> -static enum drm_mode_status
> -dw_hdmi_rockchip_mode_valid(struct dw_hdmi *hdmi, void *data,
> -			    const struct drm_display_info *info,
> -			    const struct drm_display_mode *mode)
> -{
> -	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
> -	int pclk = mode->clock * 1000;
> -	bool valid = false;
> -	int i;
> -
> -	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
> -		if (pclk == mpll_cfg[i].mpixelclock) {
> -			valid = true;
> -			break;
> -		}
> -	}
> -
> -	return (valid) ? MODE_OK : MODE_BAD;
> -}
> -
>  static void dw_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder)
>  {
>  }
> @@ -433,7 +413,6 @@ static struct rockchip_hdmi_chip_data rk3228_chip_data = {
>  };
>  
>  static const struct dw_hdmi_plat_data rk3228_hdmi_drv_data = {
> -	.mode_valid = dw_hdmi_rockchip_mode_valid,
>  	.mpll_cfg = rockchip_mpll_cfg,
>  	.cur_ctr = rockchip_cur_ctr,
>  	.phy_config = rockchip_phy_config,
> @@ -450,7 +429,6 @@ static struct rockchip_hdmi_chip_data rk3288_chip_data = {
>  };
>  
>  static const struct dw_hdmi_plat_data rk3288_hdmi_drv_data = {
> -	.mode_valid = dw_hdmi_rockchip_mode_valid,
>  	.mpll_cfg   = rockchip_mpll_cfg,
>  	.cur_ctr    = rockchip_cur_ctr,
>  	.phy_config = rockchip_phy_config,
> @@ -470,7 +448,6 @@ static struct rockchip_hdmi_chip_data rk3328_chip_data = {
>  };
>  
>  static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
> -	.mode_valid = dw_hdmi_rockchip_mode_valid,
>  	.mpll_cfg = rockchip_mpll_cfg,
>  	.cur_ctr = rockchip_cur_ctr,
>  	.phy_config = rockchip_phy_config,
> @@ -488,7 +465,6 @@ static struct rockchip_hdmi_chip_data rk3399_chip_data = {
>  };
>  
>  static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
> -	.mode_valid = dw_hdmi_rockchip_mode_valid,
>  	.mpll_cfg   = rockchip_mpll_cfg,
>  	.cur_ctr    = rockchip_cur_ctr,
>  	.phy_config = rockchip_phy_config,
> @@ -501,7 +477,6 @@ static struct rockchip_hdmi_chip_data rk3568_chip_data = {
>  };
>  
>  static const struct dw_hdmi_plat_data rk3568_hdmi_drv_data = {
> -	.mode_valid = dw_hdmi_rockchip_mode_valid,
>  	.mpll_cfg   = rockchip_mpll_cfg,
>  	.cur_ctr    = rockchip_cur_ctr,
>  	.phy_config = rockchip_phy_config,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

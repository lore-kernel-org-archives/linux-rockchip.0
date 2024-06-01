Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18615C25B76
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jun 2024 16:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSDLiuEMOG5wlwHGvriGn3UDmTYIJSH/S+dpZD8rbXg=; b=HFJ+ID+pMMsSsr
	w/W7Qv/346WDyzS+/oz2IAALqWOQOlvhXae9locyH8utnPIWBD3uuowQzglxsd63S1EaQibehC0dj
	8qf9J8NDHs3op+/quzdCXzuUIqfFH8ujKqMoagz2lnh0TWKR8corG59eMHF316VA7NvWsat8dC5vK
	4051mizbuBbQzrJssQhUlB5jh6TSNDrBSUE1ChF5hjd5Nh2UIbUVsOXgf79pf/F4iMNaSAkA56Xds
	pXLqhCnG5NmF/CI7YVGWrjnqJE+B07pVS5QCAznCiK2QzPjtW4skDFChFfhZVL2h/+JMlOrm8tWGt
	V9bkVle20WVyPc2Z51Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDRet-0000000CxPb-2dC2;
	Sat, 01 Jun 2024 16:32:43 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDReq-0000000CxOS-1Xxr
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Jun 2024 16:32:41 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-52b7ffd9f6eso2612145e87.3
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Jun 2024 09:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717259556; x=1717864356; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HeNWgTvWB9NOiq+Vqu2GBpsAJX9qGaBSyXZdTFfGgGw=;
        b=O5zNHXJffIQveSpyZz9jWym0JTaNHJiUafl/gd9wQYPEoUPI5oA/PV93XCCG522jqd
         myVPryWGIRGT2VfQpDE297i4Abuqjhs/AdiMsxNAamdqGqIagMhEHXLrxSo4tdb6WQar
         yF1a8s1yMyAtJQ5BSRScYCcNsYn7OgejvJVHXomZ/kaIeUJDPz2G5xIOkhr8GTpwu6kO
         CJFdfoOUTCBf+Zi88IMvSemnjv0RUtFT2vxEinPIEFJlEiXq9sOGxlLxDyoDe1eSTmYx
         2lxXr3UN/bYlUk6XXkYEubMdLNuiQKfa42ePzNInbapL/IXPlqOhPUk6zqS85JKeim9Q
         5IMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717259556; x=1717864356;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HeNWgTvWB9NOiq+Vqu2GBpsAJX9qGaBSyXZdTFfGgGw=;
        b=vxDb1qkGZgYToOZLSCP0GzHefnUaWkTLSvHad0CLekrGZb2+TVOwkIyEV2Ew6Yc33w
         nRtyUruqfiUXwS7vPXmw+pq5O4gO5fCnT0eDVXZt0cWG0VXNitUa9oRzR/Ynoyfua+vU
         0+Dr5FriziF78ukT8sXrj6Gla8WO2AGdd9qe3kGrMt54pOi80t2lt4+4qX/NcYkmifg8
         uLh5/8qYkrbtrFUSEMqHPw2Ab/6p5kItSr0ciZNALHxxQNFujbbedhT1XhiMpJatnPLg
         9ckgZYkszpVwyHdg46G5B9TwzFVMiWaxzwKnXaSp2M8XCGiYDHNZCvGnA3vK7DfwPRLl
         KuIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLhOXQKaLEkj3NlHYMlxg2Qfz2GTdQ5nauF+R/N+jehwMcq1rTmItgxTPEep4OzUdM2jEpi5Opfq11k5OIzevjhKmN6+5SX2D35N4DeKPJ4vJN
X-Gm-Message-State: AOJu0YyCRFI9Bo0ipD5Up+ZWA1RxkdZN3nYEi7zz7zZZL+qZK9TG2/7d
	i0skLrBBQAylAnA4fOtxx+Mo7LVq0F6/NlDm80FjW5KJmYm5yBliokhUt106QYo=
X-Google-Smtp-Source: AGHT+IEGq9nFbnbn3YZLDr5pbWxznGwX+oNfINNXl+JWzilp9OJBdS+502iu7P5yQzsdmL9dipjc6g==
X-Received: by 2002:ac2:518f:0:b0:529:a646:932b with SMTP id 2adb3069b0e04-52b8956c4dbmr3060104e87.20.1717259555422;
        Sat, 01 Jun 2024 09:32:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d3eb89sm713308e87.70.2024.06.01.09.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Jun 2024 09:32:35 -0700 (PDT)
Date: Sat, 1 Jun 2024 19:32:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Yao <markyao0591@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI
 TX Controller
Message-ID: <a5jlj5hncv2p7lxk6pbgynkqfovlg3lzz2muzrbrkd73afiopu@n5tmd4zfyeik>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_093240_445611_725952C0 
X-CRM114-Status: GOOD (  27.51  )
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

On Sat, Jun 01, 2024 at 04:12:22PM +0300, Cristian Ciocaltea wrote:
> The RK3588 SoC family integrates a Quad-Pixel (QP) variant of the
> Synopsys DesignWare HDMI TX controller used in the previous SoCs.
> 
> It is HDMI 2.1 compliant and supports the following features, among
> others:
> 
> * Fixed Rate Link (FRL)
> * 4K@120Hz and 8K@60Hz video modes
> * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
> * Fast Vactive (FVA)
> * SCDC I2C DDC access
> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
> * Multi-stream audio
> * Enhanced Audio Return Channel (EARC)

It would be really nice if you can take a look at using the HDMI
connector framework (landed few days ago) with adaptations for the
drm_bridge / drm_bridge_connector ([1]). Your comments for the
drm_bridge patches would be defeinitely appreciated.

[1] https://lore.kernel.org/dri-devel/20240531-bridge-hdmi-connector-v4-0-5110f7943622@linaro.org/

> 
> This is the last required component that needs to be supported in order
> to enable the HDMI output functionality on the RK3588 based SBCs, such
> as the RADXA Rock 5B. The other components are the Video Output
> Processor (VOP2) and the Samsung IP based HDMI/eDP TX Combo PHY, for
> which basic support has been already made available via [1] and [2],
> respectively.
> 
> The patches are grouped as follows:
> * PATCH 1..7: DW HDMI TX driver refactor to minimize code duplication in
>   the new QP driver (no functional changes intended)
> 
> * PATCH 8..11: Rockchip DW HDMI glue driver cleanup/improvements (no
>   functional changes intended)
> 
> * PATCH 12..13: The new DW HDMI QP TX driver reusing the previously
>   exported functions and structs from existing DW HDMI TX driver
> 
> * PATCH 14: Rockchip DW HDMI glue driver update to support RK3588 and
>   make use of DW HDMI QP TX
> 
> They provide just the basic HDMI support for now, i.e. RGB output up to
> 4K@60Hz, without audio, CEC or any of the HDMI 2.1 specific features.
> Also note the vop2 driver is currently not able to properly handle all
> display modes supported by the connected screens, e.g. it doesn't cope
> with non-integer refresh rates.
> 
> A possible workaround consists of enabling the display controller to
> make use of the clock provided by the HDMI PHY PLL. This is still work
> in progress and will be submitted later, as well as the required DTS
> updates.
> 
> To facilitate testing and experimentation, all HDMI output related
> patches, including those part of this series, are available at [3].
> So far I could only verify this on the RADXA Rock 3A and 5B boards.
> 
> Thanks,
> Cristian
> 
> [1]: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
> [2]: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
> [3]: https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-hdmi-bridge-v6.10-rc1
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> Cristian Ciocaltea (14):
>       drm/bridge: dw-hdmi: Simplify clock handling
>       drm/bridge: dw-hdmi: Add dw-hdmi-common.h header
>       drm/bridge: dw-hdmi: Commonize dw_hdmi_i2c_adapter()
>       drm/bridge: dw-hdmi: Factor out AVI infoframe setup
>       drm/bridge: dw-hdmi: Factor out vmode setup
>       drm/bridge: dw-hdmi: Factor out hdmi_data_info setup
>       drm/bridge: dw-hdmi: Commonize dw_hdmi_connector_create()
>       drm/rockchip: dw_hdmi: Use modern drm_device based logging
>       drm/rockchip: dw_hdmi: Simplify clock handling
>       drm/rockchip: dw_hdmi: Use devm_regulator_get_enable()
>       drm/rockchip: dw_hdmi: Drop superfluous assignments of mpll_cfg, cur_ctr and phy_config
>       dt-bindings: display: rockchip,dw-hdmi: Add compatible for RK3588
>       drm/bridge: synopsys: Add DW HDMI QP TX controller driver
>       drm/rockchip: dw_hdmi: Add basic RK3588 support
> 
>  .../display/rockchip/rockchip,dw-hdmi.yaml         | 127 +++-
>  drivers/gpu/drm/bridge/synopsys/Makefile           |   2 +-
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h   | 179 +++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       | 787 +++++++++++++++++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h       | 831 +++++++++++++++++++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          | 353 +++------
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        | 351 +++++++--
>  include/drm/bridge/dw_hdmi.h                       |   8 +
>  8 files changed, 2290 insertions(+), 348 deletions(-)
> ---
> base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
> change-id: 20240601-b4-rk3588-bridge-upstream-a27baff1b8fc
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

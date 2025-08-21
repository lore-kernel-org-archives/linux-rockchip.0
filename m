Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 482E5CA0EF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 13:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtxwR6lJ23+IohiDw/iNMJo2uI4fCdG1ZgFEUBAguLE=; b=2z5k1OOieHSwvy
	jBHZPLRHIZc1PPIv7xpXV9nVyiCUbwg/xtO7c6ZAG4cBPPgxC/cMs5B5TwaxPwnkuldF0yOtt9Esy
	fmek+oLIR/Uo5vbTAqKsY64dYsbZWnRGyRlI/sEcHhMxT346EYb00BavkF7isf+sv/E9FfXyIUBVD
	7MpCmU4tFGzAY1kYVXTv3wVbb8HqmbylUfV3RZ8RbhpnKgzLbpfxXLx25tr2UkR9gSX/Pc3dlvJtu
	jyTdTym4aqGWt+rJq1f8uUinvx6kRMYIVoQZUFcmsDfOMXFG3lEfjr4t+Gym0gr+Y5AMbgzbkVi//
	Axefv5ZhhTmWbUiJJGGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5FY-0000000H2dS-1H2K;
	Thu, 21 Aug 2025 13:22:40 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up2mw-0000000GeMN-1ijz;
	Thu, 21 Aug 2025 10:45:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=FIdCM0oVeX0+VbSjoJSJjSjQuPULlX/MyyfwfgwFUpY=; b=Q
	YQFW7xvR+nS7G15SXoslmE3ZHV8EwxMBWV04Vm1/yrVq0yVuJ+bBElyjNI4uLWUh
	MAUL40RVl8TlIaVYLo83XUmycMq5nsBXs4lxoLK9dsFaLmobAeaiFHxkOTMk0z5k
	hF0VPMukhrVrQWIZlLsKkfrtkZFSmIzET4v4yGLo+c=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-122 (Coremail) ; Thu, 21 Aug 2025 18:44:21 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 21 Aug 2025 18:44:21 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com, heiko@sntech.de
Subject: Re:[PATCH v6 00/10] Add support for RK3588 DisplayPort Controller
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20250519(9504565a)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250728082846.3811429-1-andyshrk@163.com>
References: <20250728082846.3811429-1-andyshrk@163.com>
X-NTES-SC: AL_Qu2eB/ucvEgt5yScYOkfmUgWjuw/WsG1v/Ul1YBSP556jDHp3AUhenRSH3TH8e60MAaUmgmGWx5szO5WeIlkc5MgoEaz4pLV5OhHt9PPWoNeWA==
MIME-Version: 1.0
Message-ID: <1ebeae81.8b20.198cc3ac94a.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eigvCgBHV0GF+KZo1BMfAA--.9984W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gmwXmim9ughywADsM
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_034458_819203_2F7F0554 
X-CRM114-Status: GOOD (  12.91  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Hello Dmitry,
    

At 2025-07-28 16:28:25, "Andy Yan" <andyshrk@163.com> wrote:
>From: Andy Yan <andy.yan@rock-chips.com>
>
>
>There are two DW DPTX based DisplayPort Controller on rk3588 which
>are compliant with the DisplayPort Specification Version 1.4 with
>the following features:
>
>* DisplayPort 1.4a
>* Main Link: 1/2/4 lanes
>* Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
>* AUX channel 1Mbps
>* Single Stream Transport(SST)
>* Multistream Transport (MST)
>* Type-C support (alternate mode)
>* HDCP 2.2, HDCP 1.3
>* Supports up to 8/10 bits per color component
>* Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
>* Pixel clock up to 594MHz
>* I2S, SPDIF audio interface
>
>The current version of this patch series only supports basic display outputs.
>I conducted tests with DP0 in 1080p and 4K@60 YCbCr4:2:0 modes; the ALT/Type-C
>mode was tested on Rock 5B, DP1 was tested on Rock 5 ITX by Stephen and Piotr.
>HDCP and audio features remain unimplemented.
>For RK3588, it's only support SST, while in the upcoming RK3576, it can support
>MST output.



 Could you take this series? It would be nice if they could land Linux 6.18.


>
>
>Changes in v6:
>- Use drm_dp_vsc_sdp_supported
>- Store bpc/bpp/color format in dw_dp_bridge_state
>- Collect Reviewed-by tags
>- Link to V5: https://lore.kernel.org/linux-rockchip/20250716100440.816351-1-andyshrk@163.com/
>
>Changes in v5:
>- Use drm_dp_read_sink_count_cap instead of the private implementation.
>- First included in this version.
>- Link to V4: https://lore.kernel.org/linux-rockchip/20250619063900.700491-1-andyshrk@163.com/
>
>Changes in v4:
>- Drop unnecessary header files
>- Switch to devm_drm_bridge_alloc
>- Drop unused function
>- Add platform_set_drvdata
>- Link to V3: https://lore.kernel.org/linux-rockchip/20250403033748.245007-1-andyshrk@163.com/
>
>
>Changes in v3:
>- Rebase on drm-misc-next
>- Switch to common helpers to power up/down dp link
>- Only pass parameters to phy that should be set
>- First introduced in this version.
>- First introduced in this version.
>- Add RA620 into bridge chain.
>- Link to V2: https://lore.kernel.org/linux-rockchip/20250312104214.525242-1-andyshrk@163.com/
>
>Changes in v2:
>- Fix a character encoding issue
>- Fix compile error when build as module
>- Add phy init
>- Only use one dw_dp_link_train_set
>- inline dw_dp_phy_update_vs_emph
>- Use dp_sdp
>- Check return value of drm_modeset_lock
>- Merge code in atomic_pre_enable/mode_fixup to atomic_check
>- Return NULL if can't find a supported output format
>- Fix max_link_rate from plat_data
>- no include uapi path
>- switch to drmm_encoder_init
>- Sort in alphabetical order
>- Link to V1: https://lore.kernel.org/linux-rockchip/20250223113036.74252-1-andyshrk@163.com/
>
>Andy Yan (10):
>  dt-bindings: display: rockchip: Add schema for RK3588 DPTX Controller
>  drm/bridge: synopsys: Add DW DPTX Controller support library
>  drm/rockchip: Add RK3588 DPTX output support
>  MAINTAINERS: Add entry for DW DPTX Controller bridge
>  dt-bindings: display: simple-bridge: Add ra620 compatible
>  drm/birdge: simple-bridge: Add support for radxa ra620
>  arm64: dts: rockchip: Add DP0 for rk3588
>  arm64: dts: rockchip: Add DP1 for rk3588
>  arm64: dts: rockchip: Enable DisplayPort for rk3588s Cool Pi 4B
>  arm64: dts: rockchip: Enable DP2HDMI for ROCK 5 ITX
>
> .../display/bridge/simple-bridge.yaml         |    1 +
> .../display/rockchip/rockchip,dw-dp.yaml      |  150 ++
> MAINTAINERS                                   |    8 +
> arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   30 +
> .../arm64/boot/dts/rockchip/rk3588-extra.dtsi |   30 +
> .../boot/dts/rockchip/rk3588-rock-5-itx.dts   |   59 +
> .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   37 +
> drivers/gpu/drm/bridge/simple-bridge.c        |    5 +
> drivers/gpu/drm/bridge/synopsys/Kconfig       |    7 +
> drivers/gpu/drm/bridge/synopsys/Makefile      |    1 +
> drivers/gpu/drm/bridge/synopsys/dw-dp.c       | 2094 +++++++++++++++++
> drivers/gpu/drm/rockchip/Kconfig              |    9 +
> drivers/gpu/drm/rockchip/Makefile             |    1 +
> drivers/gpu/drm/rockchip/dw_dp-rockchip.c     |  150 ++
> drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    1 +
> drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    1 +
> include/drm/bridge/dw_dp.h                    |   20 +
> 17 files changed, 2604 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> create mode 100644 drivers/gpu/drm/bridge/synopsys/dw-dp.c
> create mode 100644 drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> create mode 100644 include/drm/bridge/dw_dp.h
>
>-- 
>2.43.0
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

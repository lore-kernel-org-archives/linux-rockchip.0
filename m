Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3852FCCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 10:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqYHTU6kGCaogLpSuqtn9RMEzTJmdvRDHECAdu+l+UM=; b=PSF8KJv3wwwKFx
	UtDC7tTlEqeRB/e/ZKLezoBm1zDsHoUVFQFSH8yE9jPonlR/BvKJgk5PSaNjPwDJ3PkCIKv4J480l
	XKqtbrO74YVep8Nw40EW7CxjO+RuPkibIObEHqY4LOUxLT7+YrwYqajVkEANGJWC7lv2bdFMOeOCn
	l+T+PDeUdZngJkEVTxeU1m8VVNXytG9ltrWKa0Ok+owwOSZwElCqAucwJt0urNaEPi5+HPzGYwJrE
	Tx+bbQNPeNTy08kf4nEBf6OriIahk1wfxYmG0zNMvKHZEHU1dPhGjQs74lqFsLwT0qI4TdJ/ZPB9s
	Z8Sw6B5vcF4PkRFnanMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAn2y-0000000Cqbw-044g;
	Mon, 20 Oct 2025 10:23:24 +0000
Received: from out-173.mta0.migadu.com ([2001:41d0:1004:224b::ad])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAn2w-0000000CqZU-1BCa
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Oct 2025 10:23:23 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1760955788;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VNNEOzlbJ+EpRHTDYCWfkhalXUCCgphJIuOM79MU4aM=;
	b=fPxtP3eO4pIybGviOxSGTBl0MzU+7o4PDjmokTLpHHAGISxHzP3X1744e25ke7RiLL+005
	+92q7wEhleYQLj92B/f/Hv1drToatKE7qObN8+gxArTQsEtNRdOuRwtYYPeCnCl97MkN0a
	PrQw3mkZQ3osWueSrcBbh3wikCfWbztfJ17se1Qe/diZ1kAXhfmgh4MqIIURB8ixiggQ5s
	epnzhTpAgC8Nt8dxLs/9rs4do8CKdIYSwHaocGbxhwxpgY5dmMqWx9AbXMTQitoMbVFCgs
	4652qbHH4N68+P/4gWEUUNgzDyLcMm/FI/vH4GsFoJIL4ypQw+8KfmmQebKcfQ==
Date: Mon, 20 Oct 2025 12:23:05 +0200
Message-Id: <DDN2Q7RZKYZR.E49OGFZL7BIW@cknow-tech.com>
Cc: <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <quentin.schulz@cherry.de>,
 <andy.yan@rock-chips.com>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <cn.liweihao@gmail.com>
Subject: Re: [PATCH 0/9] Gernal RK3368 HDMI support and 2 outputs for
 RK3368-Lion
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Heiko Stuebner" <heiko@sntech.de>
References: <20251020082508.3636511-1-heiko@sntech.de>
In-Reply-To: <20251020082508.3636511-1-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_032322_459434_F2633E37 
X-CRM114-Status: GOOD (  16.03  )
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

Hi Heiko,

On Mon Oct 20, 2025 at 10:24 AM CEST, Heiko Stuebner wrote:
> This series adds the necessary bits for HDMI output on RK3368 and enables
> this on RK3368-Lion. At the same time, use the recently added DSI support
> to enable the generic Video-Demo-adapter as an overlay on Lion as well.

I noticed several 'spelling' issues in various patches, therefor
reporting it against the series:

- s/Gernal/General/ ? (series Subject)
- s/internal in the controller/internal to the controller/ (patch 1)

Incorrect/inconsistent casing (not sure about these though):
- s/phy/PHY/ (patch 2)
- s/soc/SoC/ (patch 3 + 7)
- s/hdmi/HDMI/ (patch 7)
- s/vop/VOP/ (patch 7)

- s/the newer one that/the newer ones that/ ? (correct if there is only
  1 newer) (patch 3)
- s/devicetree already is set up/devicetree is already set up/ (patch 3)
- s/definitly/definitely/ (patch 4 + 5)
- s/to no cause/to not cause/ (patch 4 + 5)
- s/power-domain property/power-domains property/ (patch 4 + 5)
- s/hirarchy/hierarchy/ (patch 6)
- s/is change at/is changed at/ (patch 6)

Sorry ;-P

Diederik

>
> The reason I'm shaving this Yak is that the recently added DSI support
> created DTC warnings about a single endpoint with an address.
>
> So it was either removing the @0 from the endpoint, or adding a second
> output option :-) .
>
>
> Heiko Stuebner (9):
>   dt-bindings: display: rockchip: dw-hdmi: Add compatible for RK3368
>     HDMI
>   drm/rockchip: hdmi: add RK3368 controller variant
>   soc: rockchip: grf: Add select correct PWM implementation on RK3368
>   arm64: dts: rockchip: Add power-domain to RK3368 DSI controller
>   arm64: dts: rockchip: Add power-domain to RK3368 VOP controller
>   arm64: dts: rockchip: Use phandle for i2c_lvds_blc on rk3368-lion
>     haikou
>   arm64: dts: rockchip: Add HDMI node to RK3368
>   arm64: dts: rockchip: Enable HDMI output on RK3368-Lion-Haikou
>   arm64: dts: rockchip: Add the Video-Demo overlay for Lion Haikou
>
>  .../display/rockchip/rockchip,dw-hdmi.yaml    |   1 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   5 +
>  .../rk3368-lion-haikou-video-demo.dtso        | 174 ++++++++++++++++++
>  .../boot/dts/rockchip/rk3368-lion-haikou.dts  |  36 +++-
>  arch/arm64/boot/dts/rockchip/rk3368.dtsi      |  45 +++++
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |  16 ++
>  drivers/soc/rockchip/grf.c                    |   1 +
>  7 files changed, 268 insertions(+), 10 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3368-lion-haikou-video-demo.dtso


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

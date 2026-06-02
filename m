Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8192FCD6E57
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 20:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Br3nYrVbjV4qR1ibBYUwQIajtx8jHn/WXL+AmiB/xD8=; b=jfFVJZn4Rj+/fr
	jE3vcWBIGSa9QASBFvOpqmO5dB9FGlVSW2Ii2R044sznLQ6elz0FKg5xFPAE8EZUD2lc4tgXwFXB5
	+Tgabj2uGqL1OEIMH9RlHzfzXl0/DKJSudxebZfRZ0II5EwccTfvn5GcmoWznTdKCer25wRSVb8Fu
	FFE2tWUTC30RgAVGn9TsTV4d5522+IB+Pi/L2wfGjF3nODUIwzpbKis2CGmEK5yXcwdXtYN7YXc3R
	uc8xXXg6SOVTd0p4wVyHApflhEPtisPrcjzxIrTB1SMZa7jXvknYw6/EK0KM4k+g/lSrbsz3hQJEC
	7i6vJhs+WvWyzPYeo0VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUVNd-0000000Diq2-19Zo;
	Tue, 02 Jun 2026 20:06:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUVNZ-0000000DipX-41mN;
	Tue, 02 Jun 2026 20:06:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=QfQEDsKS6dbk9DnS1YH4HjGcuydsJ8S8waoFaz8Seoo=; b=vcSsT6g8OzYRFLBCXEJEhR7foL
	1i7AkqP37LfhlTv9QJjNw10ZkLxx9AEzzVCWAjjJSo4fC5dmoLprmzkiZfxRBu1raXdx/oNZRWMYn
	vboPVBmIBMBxVSSNKjE/swxIOubGSQNQ3lvXIGiOHbDeMNP+MMm1cTso/FWsAv1x3974hP8mvaioX
	G0Z4guQYEJmBwM2vRtOQVYJBm3ENlkWwEiILmauiAs/phEFE5CDva7dHStToK2azk5QAcHuqX8hVe
	VAzQH0CB/TEOehrOeFt8YEaXzBn3D552j9tzkKFzfAGwBf2mUMew2aQhxN0tFsyswCeJV+MzKuTEH
	BBxFXN1w==;
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: Re: (subset) [PATCH v10 00/11] Add eDP support for RK3576
Date: Tue,  2 Jun 2026 22:05:40 +0200
Message-ID: <178043072949.664369.15843941283523280742.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601065100.1103873-1-damon.ding@rock-chips.com>
References: <20260601065100.1103873-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_130626_020704_3B6EB2D2 
X-CRM114-Status: GOOD (  11.53  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 01 Jun 2026 14:50:49 +0800, Damon Ding wrote:
> Patch 1-5 are to add missing clock "hclk" for RK3588 eDP nodes.
> Patch 6 is to use automatic cleanup to fix OF node reference leak
>         reported by Sashiko.
> Patch 7-8 are to add the RK3576 eDP node.
> Patch 9-11 are to support the RK3576 Analogix DP controller.
> 
> Damon Ding (11):
>   dt-bindings: display: rockchip: analogix-dp: Fix hclk as third clock
>     for RK3588
>   dt-bindings: display: rockchip: analogix-dp: Add per-clock
>     descriptions
>   arm64: dts: rockchip: Add missing hclk for RK3588 eDP0
>   arm64: dts: rockchip: Add missing hclk for RK3588 eDP1
>   drm/rockchip: analogix_dp: Enable hclk for RK3588
>   drm/rockchip: analogix_dp: Fix OF node reference leak via auto cleanup
>   dt-bindings: display: rockchip: analogix-dp: Add support for RK3576
>   arm64: dts: rockchip: Add eDP node for RK3576
>   drm/bridge: analogix_dp: Rename and simplify is_rockchip()
>   drm/bridge: analogix_dp: Add support for RK3576
>   drm/rockchip: analogix_dp: Add support for RK3576
> 
> [...]

Applied, thanks!

[01/11] dt-bindings: display: rockchip: analogix-dp: Fix hclk as third clock for RK3588
        commit: 826ab13cf73e7bd5b268085c9594850f6a7fc7fd
[02/11] dt-bindings: display: rockchip: analogix-dp: Add per-clock descriptions
        commit: 38f41d4e704c2a9bfc025bb17594d53be010a629
[05/11] drm/rockchip: analogix_dp: Enable hclk for RK3588
        commit: 104f20616d72825fdcf56cfdc5f89f4e96fd8dbe
[06/11] drm/rockchip: analogix_dp: Fix OF node reference leak via auto cleanup
        commit: 87e060521371257ddbb77964b66e60d80afcc7b2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

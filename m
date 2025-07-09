Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55FEDC83F09
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 08:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmJwXN5XWI9d/dAPtgLnr080/wmUZmgmwJ99QvyknXE=; b=RBTEwvB1zW8Tl9
	qBDYP79S+BDWlzuVr3IXsMg855uQKOaRxng+9cJhQYa32KoXAo4pBrut3PTJUgWVJ//roPwQarpXN
	5rQ5BEFZ68scyhbdsc7ySgh3BihM1mL0z3HcybrwgZM9uYqrWAwcczAyyXTFQG5LmE9UhT5rN699n
	HxqQ0rJY0zelUetglpnl7mUtfu5s+BGvl2cm5iajzkUjiin1ui8Eh6hDAB090cOmdwxxU0Tsto0nL
	iZ4Roe7qbkP46ESURVv7XId5hSrbBInR4+Jj2BqqwvJtJ1Zs+GbiGSnPE923cHILPt0FQGUlsyiDM
	5jXp7QwlKYKNlDJf7U9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZQMr-000000080Cd-2ru0;
	Wed, 09 Jul 2025 08:41:29 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZP8p-00000007nlI-26mr
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Jul 2025 07:22:58 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250709072246euoutp0112657b32208d02fcd9920c87f5741427~QhFeKiE1T1133511335euoutp01I
	for <linux-rockchip@lists.infradead.org>; Wed,  9 Jul 2025 07:22:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250709072246euoutp0112657b32208d02fcd9920c87f5741427~QhFeKiE1T1133511335euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1752045766;
	bh=qIHbeL0LG8G55ANYGcdpujwUfCstWXCxAhnRkcjxSxo=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=u+O8eUBejQ0U3lDJSuGDT7O5A/2mhQfjdEr38ZnnSm3Z8lCrRXk6b+nevytM15awo
	 25r7QXh3IEnRHwfD96bFEDkSZQ3ByBaTuHMeYQrrxorgL8Y3By2iGo6nYl2vAjLAM5
	 n0Mdgya150E1spOOOyzKUWIQ1LJBxrPnGh+Tabqg=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20250709072246eucas1p1d64e4c09a83c92497d76cb3efeaf6509~QhFdx5tSY0368803688eucas1p1I;
	Wed,  9 Jul 2025 07:22:46 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250709072243eusmtip29880f65c5964c8e0828e1df05a890579~QhFbeaA3i1291112911eusmtip2E;
	Wed,  9 Jul 2025 07:22:43 +0000 (GMT)
Message-ID: <4eb09ec9-bb7b-4266-8771-26b4819f47db@samsung.com>
Date: Wed, 9 Jul 2025 09:22:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/12] Apply drm_bridge_connector helper for the
 Analogix DP driver
To: Damon Ding <damon.ding@rock-chips.com>, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	jingoohan1@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
	kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
	hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
	dmitry.baryshkov@oss.qualcomm.com, l.stach@pengutronix.de,
	dianders@chromium.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20250709070139.3130635-1-damon.ding@rock-chips.com>
X-CMS-MailID: 20250709072246eucas1p1d64e4c09a83c92497d76cb3efeaf6509
X-Msg-Generator: CA
X-RootMTR: 20250709070241eucas1p1351e2b508cc648d1fafd93640b471e7b
X-EPHeader: CA
X-CMS-RootMailID: 20250709070241eucas1p1351e2b508cc648d1fafd93640b471e7b
References: <CGME20250709070241eucas1p1351e2b508cc648d1fafd93640b471e7b@eucas1p1.samsung.com>
	<20250709070139.3130635-1-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_002255_802390_FE88D101 
X-CRM114-Status: GOOD (  10.16  )
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

On 09.07.2025 09:01, Damon Ding wrote:
> PATCH 1 is a small format optimization for struct analogid_dp_device.
> PATCH 2 is to perform mode setting in &drm_bridge_funcs.atomic_enable.
> PATCH 3-8 are preparations for the movement of the panel/bridge parsing.
> PATCH 9 is to apply a better API for the encoder initialization.
> PATCH 10-11 are to apply the newly added API to find panel or bridge.
> PATCH 12 is to apply the drm_bridge_connector helper.

This patchset conflicts with my recent fix for Analogix DP driver 
applied to drm-misc-fixes:

https://lore.kernel.org/all/20250627165652.580798-1-m.szyprowski@samsung.com/


> Damon Ding (12):
>    drm/bridge: analogix_dp: Formalize the struct analogix_dp_device
>    drm/bridge: analogix_dp: Move &drm_bridge_funcs.mode_set to
>      &drm_bridge_funcs.atomic_enable
>    drm/bridge: analogix_dp: Add &analogix_dp_plat_data.bridge
>    drm/exynos: exynos_dp: Remove &exynos_dp_device.ptn_bridge
>    drm/exynos: exynos_dp: Remove redundant
>      &analogix_dp_plat_data.skip_connector
>    drm/bridge: analogix_dp: Remove redundant
>      &analogix_dp_plat_data.skip_connector
>    drm/bridge: analogix_dp: Add support to find panel or bridge
>    drm/rockchip: analogix_dp: Apply drmm_encoder_init() instead of
>      drm_simple_encoder_init()
>    drm/rockchip: analogix_dp: Apply analogix_dp_find_panel_or_bridge()
>    drm/exynos: exynos_dp: Apply analogix_dp_find_panel_or_bridge()
>    drm/bridge: analogix_dp: Remove unused APIs for AUX bus
>    drm/bridge: analogix_dp: Apply drm_bridge_connector helper
>
>   .../drm/bridge/analogix/analogix_dp_core.c    | 370 ++++++++++--------
>   .../drm/bridge/analogix/analogix_dp_core.h    |   8 +-
>   drivers/gpu/drm/exynos/exynos_dp.c            |  27 +-
>   .../gpu/drm/rockchip/analogix_dp-rockchip.c   |  42 +-
>   include/drm/bridge/analogix_dp.h              |   6 +-
>   5 files changed, 217 insertions(+), 236 deletions(-)
>
Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

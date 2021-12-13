Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADCC0C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Dec 2021 13:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgqS0clpUxFpYz5UX868+KTKEE0Kvo2bZM9ESnufV7A=; b=x0TSYca5rpx7pv
	/6ytdEvfaSgJTMS0OPYl0YIQ80ywMLNEEDHYCbjSdyOohyckDgi7bLN8JVANWNQFCWBELvv5aDXQS
	aNvcEs+gQrvX7kDT1rd5cNesIX7m0gtVhpIsDwH5oypCVeQG9Z2U4KaD/zvX9890fIyvC8yFj07ZG
	LUAEShlI9NcytabYjEblVQfZbL+MDvohz3Xa9dx8PrQQAuflFval/GVvfIRg9u4A2Xc1aNUnOaFEW
	/UizTzRWQR70FWdvMwSZxal7d1+iRhlxzMYooR+wnsnbyIYZADaxu4EOY/AqMEvxtW438ZAldhxMn
	uv8VVCynPWDNPEBDeURA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwlTW-009isU-1w; Mon, 13 Dec 2021 13:34:42 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwlTB-009iiW-Fc; Mon, 13 Dec 2021 13:34:22 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="226007994"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="226007994"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 05:34:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="517751011"
Received: from ppolasze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.20.7])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 05:34:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Thomas Zimmermann <tzimmermann@suse.de>, nouveau@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/3] drm/dp: Move DisplayPort helpers into own module
In-Reply-To: <20211213093650.19598-1-tzimmermann@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211213093650.19598-1-tzimmermann@suse.de>
Date: Mon, 13 Dec 2021 15:34:12 +0200
Message-ID: <87lf0o7hnv.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_053421_612023_2D50AE28 
X-CRM114-Status: GOOD (  13.15  )
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

On Mon, 13 Dec 2021, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> Split-off DisplayPort functions from KMS helper library and move them
> into their own module. Reduces the size of drm_kms_helper.ko by ~50%.
>
> This patchset is part of an on-going effort to reduce the minimum
> binary size of the DRM core and helpers. It's helpful for systems with
> early-boot DRM graphics, which requires DRM to be linked into the
> kernel image.

Would it be time to add a subdirectory for each non-driver, non-core drm
module? We've touched this topic before. I find it increasingly hard to
remember which files are part of helpers. This would also help with the
arbitrary drm_dp_helper_mod.c naming.

Perhaps drivers/gpu/drm/drm_dp/?

BR,
Jani.



>
> Thomas Zimmermann (3):
>   drm/dp_mst: Remove trailing whitespace.
>   drm/dp: Move DP declarations into separate header file
>   drm/dp: Move DisplayPort helpers into separate helper module
>
>  drivers/gpu/drm/Kconfig                       |  8 ++++++
>  drivers/gpu/drm/Makefile                      | 14 ++++++----
>  drivers/gpu/drm/bridge/Kconfig                |  4 +++
>  drivers/gpu/drm/bridge/analogix/Kconfig       |  2 ++
>  drivers/gpu/drm/bridge/cadence/Kconfig        |  1 +
>  drivers/gpu/drm/drm_crtc_helper_internal.h    | 27 ------------------
>  drivers/gpu/drm/{drm_dp_helper.c => drm_dp.c} |  2 +-
>  drivers/gpu/drm/drm_dp_aux_dev.c              |  2 +-
>  drivers/gpu/drm/drm_dp_helper_internal.h      | 28 +++++++++++++++++++
>  drivers/gpu/drm/drm_dp_helper_mod.c           | 22 +++++++++++++++
>  drivers/gpu/drm/drm_dp_mst_topology.c         |  4 +--
>  drivers/gpu/drm/drm_kms_helper_common.c       | 14 ----------
>  drivers/gpu/drm/i915/Kconfig                  |  1 +
>  drivers/gpu/drm/msm/Kconfig                   |  1 +
>  drivers/gpu/drm/nouveau/Kconfig               |  1 +
>  drivers/gpu/drm/rockchip/Kconfig              |  1 +
>  drivers/gpu/drm/tegra/Kconfig                 |  1 +
>  drivers/gpu/drm/xlnx/Kconfig                  |  1 +
>  18 files changed, 83 insertions(+), 51 deletions(-)
>  rename drivers/gpu/drm/{drm_dp_helper.c => drm_dp.c} (99%)
>  create mode 100644 drivers/gpu/drm/drm_dp_helper_internal.h
>  create mode 100644 drivers/gpu/drm/drm_dp_helper_mod.c
>
>
> base-commit: 3f422828221d9ceefcddef0be33561b1646a1cbe
> prerequisite-patch-id: c2b2f08f0eccc9f5df0c0da49fa1d36267deb11d
> prerequisite-patch-id: c67e5d886a47b7d0266d81100837557fda34cb24
> --
> 2.34.1
>

-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

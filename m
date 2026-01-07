Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 860A1CE9D48
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 12:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iewfeoiKZ4nHz3FdLdVk0X+l94QBUphQ7/8N9iWHIE=; b=OuucAvdDHoG6AQ
	pe/LhLNDVdYsP11rIhElalX4NZnKwEkqRNt77sLiQ94QlK2zoWdRb7soqzxRfhP1E4sxbPyhFNB2o
	Zznf3CiCmvTjtil5nmZseMLVhy5xDtVDXkPNAqP7biSwvQ0uxrMWiQ4OwjqpbZoi4MzYNySCP2R8T
	8rVHIueyY4u/G9/5B1XDEnG0I/2aKDtzHEtSSvQRgxcw2FGLxwdUjXQm/oFyz92texQhv1/xOMRWj
	AkhczT/vqnqZrid85mpmcLxjlR8bHQRJXwMG2q4DiH7Q54wBLl+4TbcHY8QwFlI/JroLhozHOPjtY
	wyi0ShH+5WXDNvg7VDOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSUR-0000000EswJ-1Ueb;
	Wed, 07 Jan 2026 12:18:15 +0000
Received: from out-178.mta0.migadu.com ([91.218.175.178])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSUN-0000000Esvf-3QdB
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 12:18:13 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1767788286;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xyxOVVnJKKmmJxMZsTyn7vn2lBMNGNuEjeeeFoSFD1A=;
	b=ADvw8/KkVnrrBg9xwWqTARss2+6AB6k1ESvzoORAXmCmGq2JXxtqo8stEoZE1W90OuQYp+
	ZK3JtyON8mB11BqNNmFFktvl0N2HllrV/ujbW2oqVCsAMPDPlSgKFhc036D31nKlnJNKtW
	DlCm2e96B8QcQpXyJ1+DXz37DH8sjsJboyTWrW8pvpIB+WpEOXwvkDid7hFv5bQHNFLf46
	8AR1HpYJriKeGY5zqOl7wE9xEYU9XNLPnR8+lfY0gC07Yg0IkfMQh2kZrSq6HwwEsq02u9
	+lD5gCn6npxDWl1Cwu/lnQbYGtUpx6Nby/ZckSxEXFOCAWSABHgIbC7Q+s/oog==
Date: Wed, 07 Jan 2026 13:18:00 +0100
Message-Id: <DFICN8TKUFBH.1V8WHTIQ5BE2J@cknow-tech.com>
Cc: "Robert Mader" <robert.mader@collabora.com>, <kernel@collabora.com>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, "Matt Roper"
 <matthew.d.roper@intel.com>
Subject: Re: [PATCH v3 0/4] Introduce BACKGROUND_COLOR DRM CRTC property
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Sandy
 Huang" <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, "Andy Yan" <andy.yan@rock-chips.com>, "Louis Chauvet"
 <louis.chauvet@bootlin.com>, "Haneen Mohammed" <hamohammed.sa@gmail.com>,
 "Melissa Wen" <melissa.srw@gmail.com>
References: <20251118-rk3588-bgcolor-v3-0-a2cc909428ea@collabora.com>
In-Reply-To: <20251118-rk3588-bgcolor-v3-0-a2cc909428ea@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_041812_487608_59F0CD12 
X-CRM114-Status: GOOD (  16.78  )
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

Hi,

On Tue Nov 18, 2025 at 12:51 AM CET, Cristian Ciocaltea wrote:
> Some display controllers can be hardware-configured to present non-black
> colors for pixels which are not covered by any plane (or are exposed
> through transparent regions of higher planes).
> ...
> The subsequent patches add background color support to VKMS and the VOP2
> display controller used in the RK3568, RK3576, and RK3588 Rockchip SoC
> families.

Cristian provided a helper script which would show a test pattern and
then iterate through setting Red, Green, Blue background color and then
set it back to the original value.

I first tested this on a Rock 5B (RK3588).
Without this patch set, the background color was Black with every
iteration. But with this patch set, I did see a Red, Green and Blue
background color, after which it was set back to Black.

diederik@rock5b:~$ grep -E "^Changing prop|^Read BACKGROUND_COLOR" bgcol-test-bash-user.log
Read BACKGROUND_COLOR prop (ARGB64): 0xffff000000000000
Changing prop value to: 0xffff00000000ffff
Read BACKGROUND_COLOR prop (ARGB64): 0xffff00000000ffff
Changing prop value to 0xffffffff00000000
Read BACKGROUND_COLOR prop (ARGB64): 0xffffffff00000000
Changing prop value to 0xffff0000ffff0000
Read BACKGROUND_COLOR prop (ARGB64): 0xffff0000ffff0000
Changing prop value to 0xffff00000000ffff
Read BACKGROUND_COLOR prop (ARGB64): 0xffff00000000ffff
Changing prop value to: 0xffff000000000000
Read BACKGROUND_COLOR prop (ARGB64): 0xffff000000000000

I then did the same test on a Quartz64-B (RK3566) and that too showed a
Red, Green and Blue background color and then was set back to Black.

diederik@quartz64b:~$ grep -E "^Changing prop|^Read BACKGROUND_COLOR" bgcol-test-bash-user-q64b.log
Read BACKGROUND_COLOR prop (ARGB64): 0xffff000000000000
Changing prop value to: 0xffff00000000ffff
Read BACKGROUND_COLOR prop (ARGB64): 0xffff00000000ffff
Changing prop value to 0xffffffff00000000
Read BACKGROUND_COLOR prop (ARGB64): 0xffffffff00000000
Changing prop value to 0xffff0000ffff0000
Read BACKGROUND_COLOR prop (ARGB64): 0xffff0000ffff0000
Changing prop value to 0xffff00000000ffff
Read BACKGROUND_COLOR prop (ARGB64): 0xffff00000000ffff
Changing prop value to: 0xffff000000000000
Read BACKGROUND_COLOR prop (ARGB64): 0xffff000000000000

So this patch set does what it is supposed to do, so feel free to add:

Tested-by: Diederik de Haas <diederik@cknow-tech.com>

Cheers,
  Diederik

> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> Changes in v3:
> - Added new patches:
>   * uapi: Provide DIV_ROUND_CLOSEST()
>   * drm/vkms: Support setting custom background color
> - Improved DRM_ARGB64_{PREP|GET}*() helpers by using a conversion ratio
>   for better color approximation when dealing with less than 16 bits of
>   precision
> - Mentioned the IGT test in the cover letter while documenting the
>   validation results; also dropped references to the now useless
>   modetest wrapper script and its generated report
> - Rebased series onto latest drm-misc-next
> - Link to v2: https://lore.kernel.org/r/20251013-rk3588-bgcolor-v2-0-25cc3810ba8c@collabora.com
>
> Changes in v2:
> - Improved uAPI consistency and readability by introducing
>   DRM_ARGB64_PREP*() and DRM_ARGB64_GET*() helper macros
> - Updated several code comment sections
> - Referenced the counterpart Weston support in the cover letter
> - Rebased series onto v6.18-rc1
> - Link to v1: https://lore.kernel.org/r/20250902-rk3588-bgcolor-v1-0-fd97df91d89f@collabora.com
>
> ---
> Cristian Ciocaltea (4):
>       uapi: Provide DIV_ROUND_CLOSEST()
>       drm: Add CRTC background color property
>       drm/vkms: Support setting custom background color
>       drm/rockchip: vop2: Support setting custom background color
>
>  drivers/gpu/drm/drm_atomic_state_helper.c    |  1 +
>  drivers/gpu/drm/drm_atomic_uapi.c            |  4 ++
>  drivers/gpu/drm/drm_blend.c                  | 39 ++++++++++++++--
>  drivers/gpu/drm/drm_mode_config.c            |  6 +++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 13 +++++-
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  4 ++
>  drivers/gpu/drm/vkms/vkms_composer.c         | 10 ++++-
>  drivers/gpu/drm/vkms/vkms_crtc.c             |  3 ++
>  include/drm/drm_blend.h                      |  4 +-
>  include/drm/drm_crtc.h                       | 12 +++++
>  include/drm/drm_mode_config.h                |  5 +++
>  include/linux/math.h                         | 18 +-------
>  include/uapi/drm/drm_mode.h                  | 67 ++++++++++++++++++++++++++++
>  include/uapi/linux/const.h                   | 17 +++++++
>  14 files changed, 178 insertions(+), 25 deletions(-)
> ---
> base-commit: 92c49b3f4df8f9acfa95551ef38fc00c675319fd
> change-id: 20250829-rk3588-bgcolor-c1a7b9a507bc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

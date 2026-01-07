Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04781D0D167
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 19:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TO/91BlFMr0qbY5YdG5TPbCRPMuWDXP/W7DhgU+2Es8=; b=lPQzQ9Vg7myb/4
	xX2fbkRk3um8lF0rrAJbh8xxgl85oWiE8xtpdL0MDi+4Z9tAknDV+lyORTOjJd1th3uATg1EgsIAH
	VN24Al/8DqJB5jO4ZZTTdhy8hh+a5MVhCwnjDpTe3RO6ClKGJT92BiKZyIir4e28JqJwKtpvfRAvq
	LdvVd6v/4YdSpKx7LXSJzCZyRXdTVGahOrUM4QoBeQSzg/kVTECeSVjhz9lu1SA9DweoVzyaNzMhu
	FfeAftVajWaN8tZCoDiUHVpWbGCxnjK0e5F+PSHOEegJnJWgBP6uOs3fcSZYJ+ewty+U9h8TUrtyE
	XNTF51QLZCkVRBiVmf1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdZLX-0000000FYQZ-0PRP;
	Wed, 07 Jan 2026 19:37:31 +0000
Received: from out-173.mta1.migadu.com ([95.215.58.173])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdZLV-0000000FYOw-1id7
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 19:37:30 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1767814636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=z1SgIeXwK7eoIrcxdiJuapBod9YS33FgrXRH2Nf3ffM=;
	b=Ptk0ivhNZ6UGwRHwBOQGRqwSwCmfCfoLASWomi13u3Xtsy2UPKixKOQXQNX1JjDAff1l0r
	yUu+K2Tt5TTpbP93TSTqCQPV5OpZEW+GOxfW8CyZYbpTdC5XIsj7guZ9jxKyKH5eHIz1x+
	BNKBQaTxnk7LLFoLL3cj8I2n2KKg7KTY5NIjvzVHBf3aDlT8RzEzZGURmgHTE2kSwJXDts
	w+3M0xvi0HyIZWJZZRECSjrC1VSi0gs96rkXmzFB8hnshwnD1VuTlBxFKSVBm7t+UV/bAi
	i8tW2rF615gdKoZuLdGpnlFmuCYLQ7TV97c0HsbMxafFt8uglnXrtAvQrOqeUA==
Date: Wed, 07 Jan 2026 20:37:11 +0100
Message-Id: <DFILZI4QUYYR.4Z3O3SGK3RZ9@cknow-tech.com>
Cc: "Robert Mader" <robert.mader@collabora.com>, <kernel@collabora.com>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, "Matt Roper"
 <matthew.d.roper@intel.com>
Subject: Re: [PATCH v3 0/4] Introduce BACKGROUND_COLOR DRM CRTC property
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Diederik de Haas" <diederik@cknow-tech.com>, "Cristian Ciocaltea"
 <cristian.ciocaltea@collabora.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Sandy Huang"
 <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Andy Yan" <andy.yan@rock-chips.com>, "Louis Chauvet"
 <louis.chauvet@bootlin.com>, "Haneen Mohammed" <hamohammed.sa@gmail.com>,
 "Melissa Wen" <melissa.srw@gmail.com>
References: <20251118-rk3588-bgcolor-v3-0-a2cc909428ea@collabora.com>
 <DFICN8TKUFBH.1V8WHTIQ5BE2J@cknow-tech.com>
In-Reply-To: <DFICN8TKUFBH.1V8WHTIQ5BE2J@cknow-tech.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_113729_598395_F30886A8 
X-CRM114-Status: GOOD (  21.88  )
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

On Wed Jan 7, 2026 at 1:18 PM CET, Diederik de Haas wrote:
> On Tue Nov 18, 2025 at 12:51 AM CET, Cristian Ciocaltea wrote:
>> Some display controllers can be hardware-configured to present non-black
>> colors for pixels which are not covered by any plane (or are exposed
>> through transparent regions of higher planes).
>> ...
>> The subsequent patches add background color support to VKMS and the VOP2
>> display controller used in the RK3568, RK3576, and RK3588 Rockchip SoC
>> families.
>
> Cristian provided a helper script which would show a test pattern and
> then iterate through setting Red, Green, Blue background color and then
> set it back to the original value.
>
> I first tested this on a Rock 5B (RK3588).
> Without this patch set, the background color was Black with every
> iteration. But with this patch set, I did see a Red, Green and Blue
> background color, after which it was set back to Black.
>
> diederik@rock5b:~$ grep -E "^Changing prop|^Read BACKGROUND_COLOR" bgcol-test-bash-user.log
> Read BACKGROUND_COLOR prop (ARGB64): 0xffff000000000000
> Changing prop value to: 0xffff00000000ffff
> Read BACKGROUND_COLOR prop (ARGB64): 0xffff00000000ffff
> Changing prop value to 0xffffffff00000000
> Read BACKGROUND_COLOR prop (ARGB64): 0xffffffff00000000
> Changing prop value to 0xffff0000ffff0000
> Read BACKGROUND_COLOR prop (ARGB64): 0xffff0000ffff0000
> Changing prop value to 0xffff00000000ffff
> Read BACKGROUND_COLOR prop (ARGB64): 0xffff00000000ffff
> Changing prop value to: 0xffff000000000000
> Read BACKGROUND_COLOR prop (ARGB64): 0xffff000000000000
>
> I then did the same test on a Quartz64-B (RK3566) and that too showed a
> Red, Green and Blue background color and then was set back to Black.
>
> diederik@quartz64b:~$ grep -E "^Changing prop|^Read BACKGROUND_COLOR" bgcol-test-bash-user-q64b.log
> Read BACKGROUND_COLOR prop (ARGB64): 0xffff000000000000
> Changing prop value to: 0xffff00000000ffff
> Read BACKGROUND_COLOR prop (ARGB64): 0xffff00000000ffff
> Changing prop value to 0xffffffff00000000
> Read BACKGROUND_COLOR prop (ARGB64): 0xffffffff00000000
> Changing prop value to 0xffff0000ffff0000
> Read BACKGROUND_COLOR prop (ARGB64): 0xffff0000ffff0000
> Changing prop value to 0xffff00000000ffff
> Read BACKGROUND_COLOR prop (ARGB64): 0xffff00000000ffff
> Changing prop value to: 0xffff000000000000
> Read BACKGROUND_COLOR prop (ARGB64): 0xffff000000000000
>
> So this patch set does what it is supposed to do, so feel free to add:
>
> Tested-by: Diederik de Haas <diederik@cknow-tech.com>

I actually tested v4 of this series, so I'll copy-paste the above reply
to the correct version this time.

>
> Cheers,
>   Diederik
>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>> Changes in v3:
>> - Added new patches:
>>   * uapi: Provide DIV_ROUND_CLOSEST()
>>   * drm/vkms: Support setting custom background color
>> - Improved DRM_ARGB64_{PREP|GET}*() helpers by using a conversion ratio
>>   for better color approximation when dealing with less than 16 bits of
>>   precision
>> - Mentioned the IGT test in the cover letter while documenting the
>>   validation results; also dropped references to the now useless
>>   modetest wrapper script and its generated report
>> - Rebased series onto latest drm-misc-next
>> - Link to v2: https://lore.kernel.org/r/20251013-rk3588-bgcolor-v2-0-25cc3810ba8c@collabora.com
>>
>> Changes in v2:
>> - Improved uAPI consistency and readability by introducing
>>   DRM_ARGB64_PREP*() and DRM_ARGB64_GET*() helper macros
>> - Updated several code comment sections
>> - Referenced the counterpart Weston support in the cover letter
>> - Rebased series onto v6.18-rc1
>> - Link to v1: https://lore.kernel.org/r/20250902-rk3588-bgcolor-v1-0-fd97df91d89f@collabora.com
>>
>> ---
>> Cristian Ciocaltea (4):
>>       uapi: Provide DIV_ROUND_CLOSEST()
>>       drm: Add CRTC background color property
>>       drm/vkms: Support setting custom background color
>>       drm/rockchip: vop2: Support setting custom background color
>>
>>  drivers/gpu/drm/drm_atomic_state_helper.c    |  1 +
>>  drivers/gpu/drm/drm_atomic_uapi.c            |  4 ++
>>  drivers/gpu/drm/drm_blend.c                  | 39 ++++++++++++++--
>>  drivers/gpu/drm/drm_mode_config.c            |  6 +++
>>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 13 +++++-
>>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  4 ++
>>  drivers/gpu/drm/vkms/vkms_composer.c         | 10 ++++-
>>  drivers/gpu/drm/vkms/vkms_crtc.c             |  3 ++
>>  include/drm/drm_blend.h                      |  4 +-
>>  include/drm/drm_crtc.h                       | 12 +++++
>>  include/drm/drm_mode_config.h                |  5 +++
>>  include/linux/math.h                         | 18 +-------
>>  include/uapi/drm/drm_mode.h                  | 67 ++++++++++++++++++++++++++++
>>  include/uapi/linux/const.h                   | 17 +++++++
>>  14 files changed, 178 insertions(+), 25 deletions(-)
>> ---
>> base-commit: 92c49b3f4df8f9acfa95551ef38fc00c675319fd
>> change-id: 20250829-rk3588-bgcolor-c1a7b9a507bc
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

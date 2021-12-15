Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E9CDC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 10:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4mU9MlBSeWka69lEGte5HKfHEzylg0n5chlZNn0zD4=; b=JWoRuaXuu3eCSW
	BCYJGU3e+K6T4IiEUkfG0ihz+xTE7eP/I/Wcj8XKTJWTc4TJo/DfTitoSmZnRu84aiXk3eznMqRWB
	JHs0rGVw/8/a49uxbDS0Xs3hTqDDj6B3qKeaJOxbxD954/ta5GazG14b+bbVDV+0S1CqpQkrtn698
	7YzUGVtQQr0j+0Yzc2q9VHsifkzcURTtcRdcWARdg1kem6OYlEKZhQhicOkL8nEBysDQXVzaUDrUP
	xHAzN+vkUt8R5Lv/synwc8OnGf7dEtr6vTm+YE43oVIB5CX3oKlHLV/NEY6Ab7W+4BDXJvnF/k3kf
	21EpDyD0eEXdoXgeXutg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxRSi-000APv-68; Wed, 15 Dec 2021 10:24:40 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxRSf-000AOK-Jl; Wed, 15 Dec 2021 10:24:39 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="239148097"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="239148097"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 02:24:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="614655687"
Received: from adalyx-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.7.70])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 02:24:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch
Cc: nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/3] drm/dp: Move DisplayPort helpers into own module
In-Reply-To: <83ab4452-3744-20fe-e3ba-5bd4b48622e3@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211213093650.19598-1-tzimmermann@suse.de>
 <87lf0o7hnv.fsf@intel.com> <83ab4452-3744-20fe-e3ba-5bd4b48622e3@suse.de>
Date: Wed, 15 Dec 2021 12:24:22 +0200
Message-ID: <87sfuu4149.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_022437_743435_39A186B2 
X-CRM114-Status: GOOD (  11.76  )
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
> Hi
>
> Am 13.12.21 um 14:34 schrieb Jani Nikula:
>> On Mon, 13 Dec 2021, Thomas Zimmermann <tzimmermann@suse.de> wrote:
>>> Split-off DisplayPort functions from KMS helper library and move them
>>> into their own module. Reduces the size of drm_kms_helper.ko by ~50%.
>>>
>>> This patchset is part of an on-going effort to reduce the minimum
>>> binary size of the DRM core and helpers. It's helpful for systems with
>>> early-boot DRM graphics, which requires DRM to be linked into the
>>> kernel image.
>> 
>> Would it be time to add a subdirectory for each non-driver, non-core drm
>> module? We've touched this topic before. I find it increasingly hard to
>> remember which files are part of helpers. This would also help with the
>> arbitrary drm_dp_helper_mod.c naming.
>> 
>> Perhaps drivers/gpu/drm/drm_dp/?
>
> It's probably worth it, but I'd prefer a separate patchset and 
> discussion over this. It affects several modules.

I guess the only thing here that we need to get right from the start is
the new module name, everything else is relatively easy to change
later. drm_dp_helper.ko seems fine by me.

Note that this will also affect the drm_kms_helper.ko module parameters
dp_aux_i2c_speed_khz, dp_aux_i2c_transfer_size and
drm_dp_cec_unregister_delay, which will move to drm_dp_helper.ko.

See the monstrosity near the top of drm_kms_helper_common.c I had to add
for backward compatibility when I moved drm_edid_load.c from
drm_kms_helper.ko to drm.ko. That was perhaps different, as these seem
more like debug knobs, but at a minimum this needs to be mentioned in
the commit message, and certainly needs acks from Dave and/or Daniel.


BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

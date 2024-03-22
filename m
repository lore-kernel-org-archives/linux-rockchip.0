Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38F3BC47DD9
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 09:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0FGxkwf6jJvyA1zCm3LozsjGR8/qDsalV+SZEAQ9cY=; b=vA4YIq9TbNSnq1
	Z1gF3ERKn3os6RTglIRPiYCR2SlnDUMyVqaPizjT+40meHZ4Aha/qsDx6sfR5WEqgJSj0AVEOYW5z
	UewPD9UFh74VKYJ4QCW78rip4QsnBpw5OoiIh5BpPZQuu5l96rhm21ySXHdOujw8diQbNOshmS8br
	iCSL1nSM5A+E/x9izNvO4KP7iEOrxPBMlW0Y/o8NdX/xoSlRnnwGlbL1I9Si2h8ajAU55AQ4xFmBK
	ujUgdKogyQtB7Y+8LrS4lS93J2HWXbLanA4kCSHcGFVht+9BSFGiuXExGDyr4jbVAIHx0VaWVu/0h
	7GnCbMV3clGJhgxWHURg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnb73-00000006YII-12sF;
	Fri, 22 Mar 2024 09:22:57 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnb6z-00000006YH4-3fRN;
	Fri, 22 Mar 2024 09:22:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711099374; x=1742635374;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=dqz+Usb0C8ozA80PCCBjHib9D3xaFY8srzv1b7krGc4=;
  b=JiY11PpmRXeQtvNPar3Agx67K4bpmkUg8NX8/ucBvUx0fYTw79VN/bx5
   SA0hPJFJA5EnzDumliH3VjvNNsQTZiGTk+Wt2PXIpUZAKNeExixYvnpED
   IiJD9SO/H09V2GjQkDqnFZP77oP+YwhPoJbS59M57JauZpbbxjEi8rYMm
   xJNELC0mJ9JjSmQw4vVmaNvXd/fcYktz44VT2jm0ZVV1NOTD9b5cGFI3q
   3CzfJ9qvYCDcb63sczzVkmSK/N+R3kbj90AR+J1NJ5XJkAjcdTRcHUJu5
   /fYauQvJ1uz7vl5MspuHOWAlBV/zoxdzWYDyVYERmYXjAKtvgiCSidHqz
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="31575287"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="31575287"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2024 02:22:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="19508193"
Received: from ghoshsu1-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.6])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2024 02:22:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sui Jingfeng <sui.jingfeng@linux.dev>, Maxime Ripard
 <mripard@kernel.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sandy Huang
 <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Chen-Yu Tsai
 <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick
 <sebastian.wick@redhat.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [v10,20/27] drm/connector: hdmi: Add Infoframes generation
In-Reply-To: <07125064-2a78-4515-bb48-655f2aec140f@linux.dev>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240321-kms-hdmi-connector-state-v10-20-e6c178361898@kernel.org>
 <07125064-2a78-4515-bb48-655f2aec140f@linux.dev>
Date: Fri, 22 Mar 2024 11:22:14 +0200
Message-ID: <87sf0iliyh.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_022254_020444_545DC137 
X-CRM114-Status: GOOD (  14.59  )
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

On Fri, 22 Mar 2024, Sui Jingfeng <sui.jingfeng@linux.dev> wrote:
> Hi,
>
>
> On 2024/3/21 23:29, Maxime Ripard wrote:
>> Infoframes in KMS is usually handled by a bunch of low-level helpers
>> that require quite some boilerplate for drivers. This leads to
>> discrepancies with how drivers generate them, and which are actually
>> sent.
>>
>> Now that we have everything needed to generate them in the HDMI
>> connector state, we can generate them in our common logic so that
>> drivers can simply reuse what we precomputed.
>>
>> Signed-off-by: Maxime Ripard <mripard@kernel.org>
>> ---
>>   drivers/gpu/drm/Kconfig                            |   1 +
>>   drivers/gpu/drm/drm_atomic_state_helper.c          | 338 +++++++++++++++++++++
>>   drivers/gpu/drm/drm_connector.c                    |  14 +
>>   .../gpu/drm/tests/drm_atomic_state_helper_test.c   |   1 +
>>   drivers/gpu/drm/tests/drm_connector_test.c         |  12 +
>>   include/drm/drm_atomic_state_helper.h              |   8 +
>>   include/drm/drm_connector.h                        | 109 +++++++
>>   7 files changed, 483 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
>> index 16029435b750..3d3193c7aa5f 100644
>> --- a/drivers/gpu/drm/Kconfig
>> +++ b/drivers/gpu/drm/Kconfig
>> @@ -97,10 +97,11 @@ config DRM_KUNIT_TEST
>>   	  If in doubt, say "N".
>>   
>>   config DRM_KMS_HELPER
>>   	tristate
>>   	depends on DRM
>> +	select DRM_DISPLAY_HDMI_HELPER
>
> Should we select DRM_DISPLAY_HELPER here? Otherwise there will have some compile error
> emerged with default config.

Can we stop abusing select instead of adding more selects to paper over
the issues?

Use select only for non-visible symbols (no prompts anywhere) and for
symbols with no dependencies.


BR,
Jani.


>
>
> : drivers/gpu/drm/drm_atomic_state_helper.o: in function `drm_atomic_helper_connector_hdmi_check':
> drm_atomic_state_helper.c:(.text+0x15e4): undefined reference to `drm_hdmi_avi_infoframe_colorimetry'
> : drm_atomic_state_helper.c:(.text+0x15f0): undefined reference to `drm_hdmi_avi_infoframe_bars'
> : drm_atomic_state_helper.c:(.text+0x1638): undefined reference to `drm_hdmi_infoframe_set_hdr_metadata'
> make[2]: *** [scripts/Makefile.vmlinux:37: vmlinux] Error 1
>
> make[1]: *** [/home/suijingfeng/UpStream/drm-tip/Makefile:1162: vmlinux] Error 2
>
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:240: __sub-make] Error 2
>
>>   	help
>>   	  CRTC helpers for KMS drivers.
>>   
>>   config DRM_DEBUG_DP_MST_TOPOLOGY_REFS
>>           bool "Enable refcount backtrace history in the DP MST helpers"

-- 
Jani Nikula, Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

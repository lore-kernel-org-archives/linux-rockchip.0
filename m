Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FD78C54E58
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 21:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WBkwv0Lr4Scef5u3eU0ge5UyVUEAz8DQ848z+xmRrQ=; b=lwv+eQ/xdr71Z3
	4qxy+zVH16IYSMwYkPIIcQtuVlx94zrKFDiZF4ZIGQf3R0ovPUby9FqbOI7Q7UtljihiKLqR2Rxda
	xeWt+CDAbyvST5MW58StO8l6XTlJEJe/+4V+d/oZBv6mFsYzQ+XFORwBlKX5Jt0xrDEyS+/O8HxNN
	0CVeU3BTjGz28evGLNTgUwvc1ymyexVUmhNP8Xs9REQyMVgjP9bcvKqWc+cowEN8OBqbfGMZO+E9a
	BdD0YNQ3Y0HL4p9KFaINz4u8gJLAIzWsEH755FszNBPYN6oOKZ2au4ghMOyysW4cuzoEh+/Axr977
	KnWTRRYW74LdlR2I3qCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnQLm-00000004nVG-0dP0;
	Thu, 21 Mar 2024 21:53:26 +0000
Received: from out-174.mta1.migadu.com ([2001:41d0:203:375::ae])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnQLi-00000004nSy-0WA8
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 21:53:24 +0000
Message-ID: <07125064-2a78-4515-bb48-655f2aec140f@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1711057998;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U9xIbt5IRGyj4Yh6zUnaudYx8WQHO3ZjhO4k+FGux7M=;
	b=PlqQ1VCdMmQb7CMTnF3ueOxvUYjQ2qNPWK23J+ZUf5kHQCWRjNcVhSKum6isUXV0J+FTi5
	n/eN/oYuBh7sHBT/nWyYjuxY7t7NP5XlalCvGwwHoPYgw3boDPE9z69TpfaZgmdYBUcs5x
	JkugC/OTPO2xUvTJTEevnUtGTAxfKcc=
Date: Fri, 22 Mar 2024 05:53:07 +0800
MIME-Version: 1.0
Subject: Re: [v10,20/27] drm/connector: hdmi: Add Infoframes generation
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20240321-kms-hdmi-connector-state-v10-20-e6c178361898@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <20240321-kms-hdmi-connector-state-v10-20-e6c178361898@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_145322_361886_E5282285 
X-CRM114-Status: GOOD (  16.09  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,


On 2024/3/21 23:29, Maxime Ripard wrote:
> Infoframes in KMS is usually handled by a bunch of low-level helpers
> that require quite some boilerplate for drivers. This leads to
> discrepancies with how drivers generate them, and which are actually
> sent.
>
> Now that we have everything needed to generate them in the HDMI
> connector state, we can generate them in our common logic so that
> drivers can simply reuse what we precomputed.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>   drivers/gpu/drm/Kconfig                            |   1 +
>   drivers/gpu/drm/drm_atomic_state_helper.c          | 338 +++++++++++++++++++++
>   drivers/gpu/drm/drm_connector.c                    |  14 +
>   .../gpu/drm/tests/drm_atomic_state_helper_test.c   |   1 +
>   drivers/gpu/drm/tests/drm_connector_test.c         |  12 +
>   include/drm/drm_atomic_state_helper.h              |   8 +
>   include/drm/drm_connector.h                        | 109 +++++++
>   7 files changed, 483 insertions(+)
>
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index 16029435b750..3d3193c7aa5f 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -97,10 +97,11 @@ config DRM_KUNIT_TEST
>   	  If in doubt, say "N".
>   
>   config DRM_KMS_HELPER
>   	tristate
>   	depends on DRM
> +	select DRM_DISPLAY_HDMI_HELPER

Should we select DRM_DISPLAY_HELPER here? Otherwise there will have some compile error
emerged with default config.


: drivers/gpu/drm/drm_atomic_state_helper.o: in function `drm_atomic_helper_connector_hdmi_check':
drm_atomic_state_helper.c:(.text+0x15e4): undefined reference to `drm_hdmi_avi_infoframe_colorimetry'
: drm_atomic_state_helper.c:(.text+0x15f0): undefined reference to `drm_hdmi_avi_infoframe_bars'
: drm_atomic_state_helper.c:(.text+0x1638): undefined reference to `drm_hdmi_infoframe_set_hdr_metadata'
make[2]: *** [scripts/Makefile.vmlinux:37: vmlinux] Error 1

make[1]: *** [/home/suijingfeng/UpStream/drm-tip/Makefile:1162: vmlinux] Error 2

make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:240: __sub-make] Error 2

>   	help
>   	  CRTC helpers for KMS drivers.
>   
>   config DRM_DEBUG_DP_MST_TOPOLOGY_REFS
>           bool "Enable refcount backtrace history in the DP MST helpers"

-- 
Best regards,
Sui


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

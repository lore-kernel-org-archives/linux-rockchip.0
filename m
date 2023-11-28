Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AA92C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 12:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWPnbTVpR2rtnLjPqraZTE99VmLFsr5P+oQMTVC843k=; b=CeulY/T/h9NsW8
	5Vr0TIYDaNBf1IJpTQ3cgNUVhpA2tL9PJaQC0zovxlyTCfXJMayAb3OFx0RuvBTRXqvu7FukGxL+B
	y58sRAPKqkpXGKArUEZ7yLmrM9mITL2LOnJsKMSogFRfiGvUFiES6hPPwTOTYv9jMcQgZL+hXwgsl
	Y2D1b1pqpz6IYCVtLDxIBpBMlDp5RAxEi+Ar2eBSTIFEq80a7aghJDSTgzKSGpvAjXqiI2ooTRQgJ
	L1y9PkWX8T9TFmPVoJwUWdS2RajURp0D34TeLb/GFPkrBXt1l8vIb2NQJWBb637u5rZQnt9LffjfD
	CDEczA0zwdH5btlBhRCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7xbU-005KTs-0Q;
	Tue, 28 Nov 2023 12:54:16 +0000
Received: from mgamail.intel.com ([134.134.136.126])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7xbQ-005KSX-2O;
	Tue, 28 Nov 2023 12:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1701176052; x=1732712052;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=5K++CR/OvistPw0XQfzY/YBgYQVr3P4OlOvmEu/zZC4=;
  b=aEe0FMCtLZoz4MH4M6tegdBa+9olVCNmCpgZPmklNmKA2BV0mQ1syNGV
   zmSOGmrCpBm9cbdYNZBZy4fOvghm+L1shexN3gFfLQoqFAcdG2H/ntSgN
   HE2YivSdU+aP80ithrrrjE7CQg54QFnN640bAsQKE5vtk+ueuJT5cp1Lv
   rY8rMLFJk5a0SDdf52DmzjgLx/5d6INnyU++6IcU9sSqqwJbwEYW3SpLA
   P9on7/wxTHTe99dzGuSbAoghdBGgRFKj/EgjtoEeyo15kYUvPM/X20sZ3
   FFIGWq6Hfw/qZ0B3AELT8a9/1UCTvhVCe8JCUezYYj0VzPGKWUuMbD1SC
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="377943912"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; 
   d="scan'208";a="377943912"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Nov 2023 04:54:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="1015900733"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; 
   d="scan'208";a="1015900733"
Received: from mravivx-mobl.ger.corp.intel.com (HELO localhost) ([10.252.42.57])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Nov 2023 04:54:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, Jonathan Corbet
 <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St?=
 =?utf-8?Q?=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, Maxime
 Ripard <mripard@kernel.org>
Subject: Re: [PATCH v4 05/45] drm/connector: Check drm_connector_init
 pointers arguments
In-Reply-To: <20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
 <20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
Date: Tue, 28 Nov 2023 14:54:02 +0200
Message-ID: <87h6l66nth.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_045412_839651_B95D380E 
X-CRM114-Status: GOOD (  18.49  )
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

On Tue, 28 Nov 2023, Maxime Ripard <mripard@kernel.org> wrote:
> All the drm_connector_init variants take at least a pointer to the
> device, connector and hooks implementation.
>
> However, none of them check their value before dereferencing those
> pointers which can lead to a NULL-pointer dereference if the author
> isn't careful.

Arguably oopsing on the spot is preferrable when this can't be caused by
user input. It's always a mistake that should be caught early during
development.

Not everyone checks the return value of drm_connector_init and friends,
so those cases will lead to more mysterious bugs later. And probably
oopses as well.


BR,
Jani.


>
> Let's test those pointers instead and error out if any is NULL.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_connector.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index b0516505f7ae..2f60755dccdd 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -229,6 +229,9 @@ static int __drm_connector_init(struct drm_device *dev,
>  	struct ida *connector_ida =
>  		&drm_connector_enum_list[connector_type].ida;
>  
> +	if (!dev || !connector || !funcs)
> +		return -EINVAL;
> +
>  	WARN_ON(drm_drv_uses_atomic_modeset(dev) &&
>  		(!funcs->atomic_destroy_state ||
>  		 !funcs->atomic_duplicate_state));

-- 
Jani Nikula, Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

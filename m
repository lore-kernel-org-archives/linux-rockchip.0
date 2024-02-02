Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E18AC4828F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Feb 2024 13:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4PA4W+piUP9lYjLcBG8L+vWS/QgOZp7fXtIIn1Eez5w=; b=W+b72qSoO3yBoZ
	XrR+Xe2wvUwKiDobzpgR8ZNUPhHLu6OyDwCEcys1zpCSitQZVcKO4uvTLHkACJLJsaURl4ib/nX5c
	0inlXR2OPsFG0emfB5PY3+8DLBLtP6xVrECFVPe9LDcQ2feKBhvx9BXRRJGFbQR2h1Ayb+dstOEWV
	pnUd/0AN8AFOFcaqs4hrLZsRPHSvnwBg6dCHWI/01PwU+3DTdcPUiHcOeX5MnRqSxCdjHfsgmJ4hb
	gbCevvFpDBn0gcSn0mgw27QlZlEhdphwHH3xxP5F80sA1jdv9Y5fdtgMJ0CtirR/oreaWMmaWWAMs
	y10EipW1Q8eL4Jcu6R2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVu4G-0000000BfsG-2mWQ;
	Fri, 02 Feb 2024 13:58:56 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVu4B-0000000Bfqy-3DVd;
	Fri, 02 Feb 2024 13:58:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1706882332; x=1738418332;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=tgr1j4EzwrF68qG4xANL4ri8EhdYwVBBDxE0H3P5pG4=;
  b=KCO7N79pMJuTb1WnSHtQLJTbk33sHtI4w2WMXIxyTZX9jMtKm9RDH1Le
   TYmKXMzEW8mDjAQuQ7Tmbq+qq0AAkCH0wglf501n2T1YQcCwgO/50kGsS
   uRaKSltRLueDjE9C6sdrsk12djyCmbSQZfuoLWBlVo+cIl5KqOXFlhqH/
   lU85vNafWXZI1pVeQaJ23sprsbfh5daUNIZU3vdPKcxcm8fZhmQ5Be7tg
   FwPArKtFgI6IlJpwtRbTE8CegRkzBtZA2HbYHPkVc3prNME7WT+3bbq65
   qVD8rldMynB7gxLRd25rJWLpVLAgiltTfnlX5QlrDVs8Xg5YcNUgIS3wo
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="22645141"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="22645141"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2024 05:58:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="31182993"
Received: from mmermeza-mobl3.ger.corp.intel.com (HELO localhost) ([10.252.59.198])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2024 05:58:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>, Dave Stevenson
 <dave.stevenson@raspberrypi.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, Jonathan Corbet
 <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St?=
 =?utf-8?Q?=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: Re: Re: [PATCH v5 15/44] drm/connector: hdmi: Compute bpc and
 format automatically
In-Reply-To: <vydlftxen23kd2odwegxbtpaz73sy2lgpv7nlynfjr3p2xvc2b@7lkdkaw3gp5q>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-15-6538e19d634d@kernel.org>
 <CAPY8ntBQ+qY9441-rMzq_JAoYAaY_r+E-ADv7Wry0tJNTzKpwg@mail.gmail.com>
 <jlkoofv7nszj2uqmo2672yo4wjd3yjqarge2l2hxofixcchu6a@j72pa4iybitd>
 <CAPY8ntAmXyKtebMeM7rLtgRR+QwL1H+UCwSO=bLBQN4TsgwsDg@mail.gmail.com>
 <vydlftxen23kd2odwegxbtpaz73sy2lgpv7nlynfjr3p2xvc2b@7lkdkaw3gp5q>
Date: Fri, 02 Feb 2024 15:58:39 +0200
Message-ID: <87y1c3dl2o.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_055851_889565_3E26D105 
X-CRM114-Status: GOOD (  18.17  )
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

On Thu, 01 Feb 2024, Maxime Ripard <mripard@kernel.org> wrote:
> We've discussed that on IRC today. I'm not sure there was a conclusion
> other than "well this doesn't seem right". I think we should at least
> provide different EDIDs depending on the connector type indeed, but
> there was also a few discussions that arose:
>
>   - Is it useful to have embedded EDIDs in the kernel at all, and could
>     we just get rid of it?
>
>   - Should we expose those EDIDs to userspace, and what happens to the
>     compositor when we do?
>
>   - The current way to generate those EDIDs isn't... optimal? Should we
>     get rid of that as well?
>
> Anyway, all of those issues have been here for a while so I don't really
> expect this series to fix that.

IMO the direction should be towards deprecating and removing the builtin
firmware EDIDs from the kernel instead of adding more or expanding on
them. They were only ever meant to be the immediate aid to get something
on screen so the user could provide a proper EDID via userspace.

BR,
Jani.


-- 
Jani Nikula, Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

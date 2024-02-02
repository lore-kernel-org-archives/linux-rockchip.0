Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9932CC47DB3
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Feb 2024 11:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sYjYk2xGB7hL5e9JAdXo4qF/IFlQP2i7EWh5FmJyts=; b=dgfIco+5h9VDig
	AgMQmP7Ti8l9QUbL4nQa6soprMSgt5J8z4Ph35YjFI1tCtzCYSYeGWkgRbnCAkAuYhmCWrAhGrwEE
	DP/ykDfmNVWQLPTEvEWNC4T0ZjyHXqxjx3SI4cNUHVniHlHzvRt+ASXoksKsfGnd0kqZ6DUPlqEyt
	sVWPos5ICwPQWdWrvMJ0Q9rXmVUT5jM/ysN8c9sgS2gjm6iMAqn70mSCAvE7HZ/+bUKySwFzAzZZg
	0W9elbGuPkndRYTIqSTSXUVfNkXhVqmJV5UORmtyt9rnspLW0INFpKc+z5pvgy7VqCundY/JuvfNg
	vW7eNXYbi4Nrmo27adFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVrLz-0000000BFFA-4AtB;
	Fri, 02 Feb 2024 11:05:03 +0000
Received: from mgamail.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVrLx-0000000BFDG-0Bo5;
	Fri, 02 Feb 2024 11:05:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1706871901; x=1738407901;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=q7IX5Ck7p9ObclPnEIIJjPrssh+zna2B8YOn9nxa6vk=;
  b=L8Xt7Z5kZmRJl0IAih++7bPsFH0qRbgdcVa2iyTuGb5sToDr11PdRhXE
   iB2HNngArhy23rtvpwq9niXnvtxRu00zjkNqu0nqsx/LOuTodhWqslZmr
   hIva9VbUtHSdpDq16VjR4+YZEqSoogC7GghYB1V5dK3hC6K7/pFfUfDd7
   ZoWHdbVSYL1rEWaw3GCwny/g9JQcTU/Z+ZEiZsmOcdSIAz+FW97JEZFgV
   pAEYXk3b8hhzdZ1sKpY2r7DLxN7nZb7dfa4LlmQjDOuIfssSqVoRQ0KD4
   spgFnoBwfsMMbw39jpKMNAo4jHGJi611yUjGqSh0cBArJpTOd0ld+KzKl
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="435276051"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="435276051"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2024 03:04:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="908542172"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="908542172"
Received: from mmermeza-mobl3.ger.corp.intel.com (HELO localhost) ([10.252.59.198])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2024 03:04:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>, Maxime Ripard
 <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Emma Anholt <emma@anholt.net>,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org, Samuel
 Holland <samuel@sholland.org>, Sandy Huang <hjc@rock-chips.com>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, linux-doc@vger.kernel.org, Hans
 Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org, Chen-Yu
 Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, David Airlie <airlied@gmail.com>,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB property
In-Reply-To: <20240115143308.GA159345@toolbox>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
Date: Fri, 02 Feb 2024 13:04:50 +0200
Message-ID: <874jerf7ot.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_030501_121062_60EB97DE 
X-CRM114-Status: GOOD (  26.81  )
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

On Mon, 15 Jan 2024, Sebastian Wick <sebastian.wick@redhat.com> wrote:
> On Thu, Dec 07, 2023 at 04:49:31PM +0100, Maxime Ripard wrote:
>> The i915 driver has a property to force the RGB range of an HDMI output.
>> The vc4 driver then implemented the same property with the same
>> semantics. KWin has support for it, and a PR for mutter is also there to
>> support it.
>> 
>> Both drivers implementing the same property with the same semantics,
>> plus the userspace having support for it, is proof enough that it's
>> pretty much a de-facto standard now and we can provide helpers for it.
>> 
>> Let's plumb it into the newly created HDMI connector.
>> 
>> Signed-off-by: Maxime Ripard <mripard@kernel.org>

[snip]

>> @@ -1655,6 +1678,26 @@ EXPORT_SYMBOL(drm_connector_attach_dp_subconnector_property);
>>  /**
>>   * DOC: HDMI connector properties
>>   *
>> + * Broadcast RGB
>> + *      Indicates the RGB Quantization Range (Full vs Limited) used.
>> + *      Infoframes will be generated according to that value.
>> + *
>> + *      The value of this property can be one of the following:
>> + *
>> + *      Automatic:
>> + *              RGB Range is selected automatically based on the mode
>> + *              according to the HDMI specifications.
>> + *
>> + *      Full:
>> + *              Full RGB Range is forced.
>> + *
>> + *      Limited 16:235:
>> + *              Limited RGB Range is forced. Unlike the name suggests,
>> + *              this works for any number of bits-per-component.
>> + *
>> + *      Drivers can set up this property by calling
>> + *      drm_connector_attach_broadcast_rgb_property().
>> + *
>
> This is a good time to document this in more detail. There might be two
> different things being affected:
>
> 1. The signalling (InfoFrame/SDP/...)
> 2. The color pipeline processing
>
> All values of Broadcast RGB always affect the color pipeline processing
> such that a full-range input to the CRTC is converted to either full- or
> limited-range, depending on what the monitor is supposed to accept.
>
> When automatic is selected, does that mean that there is no signalling,
> or that the signalling matches what the monitor is supposed to accept
> according to the spec? Also, is this really HDMI specific?

Automatic is based on the mode as described in the specs
below. Basically certain modes are expected to be broadcast range, and
others full range.

I don't remember why we don't use the full range if the display
indicates it supports selectable quantization range in Video
Capabilities Data Block. It's quite possible there are displays that
declare support but don't. Cc: Ville.

- HDMI 1.4b section 6.6 Video Quantization Ranges

- HDMI 2.1 section 7.3 Video Quantization Ranges

- DP 2.1 (and earlier) section 5.1.1.1 Video Colorimetry

- CTA-861-H (and earlier) section 5.1 Default Encoding Parameters and
  section 6.4.3 Quantization Range

> When full or limited is selected and the monitor doesn't support the
> signalling, what happens?

1) Limited selected, display expects full, colors seem washed out.

2) Full selected, display expects limited, black screen possible.

We receive the occasional bug report for 1, because there are displays
that incorrectly expect full when spec says it should be limited. We
reject the bug reports, because erring the other way can lead to black
screens.


BR,
Jani.



-- 
Jani Nikula, Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

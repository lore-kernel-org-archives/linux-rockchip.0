Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00DDEC4828F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Feb 2024 17:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VbNYIZ1P/Yz12GlySPOmgtpmOrrIHJouGE5EY7UMGGs=; b=E1CGq8RxinJd4H
	0gWKdWGbKcNn8/ysTDKLqEdy48BICN99ZUXc6JfzNntCHBjKXYpEdLXu0gjQO9inRiHbcfHm3DhwG
	7064quPtwns2RpKCt6XQPCtPerIO9118xyB763FLTax8ZYBL7FWbI7tvqhVn4dxMWRg8Zz8ZtzWrS
	7+PQNNppmFKWRdDCcMoJQ40ie2JDfEh7KSv38MHYFxmvwsh3AqVl/XNgDgrOTNBFTWCiIkgZKu8qm
	qhBlxqiFwPvpCy/8sASLZMn9TPlAqE6vG0wKIlwC53Y/b2clcQRVAdQMqF6RUFfyFUdUyw/zV0pCS
	/sBdEWA5obANECmei3vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVxdF-0000000CgMV-344w;
	Fri, 02 Feb 2024 17:47:17 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVwYE-0000000CMO4-3rmL;
	Fri, 02 Feb 2024 16:38:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1706891883; x=1738427883;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=DI+vowAp6HxEMoicKFi0dBorFyKWjCm9wzepkmTNs34=;
  b=ChS/F13keoqaBq1gvI/hKPuAsq7IgrXg0ZY4KCdbqTuX2GedVp5sR6Hf
   EDiVal1QTRIsQEm/ZNKnGxXZ6XbhteqGHbhuCEz0FvSbf7y5EDuHlePi8
   wGlzYI16Pyvq0E7BZ5qdb+fqSCbcSJLRpz/wlsdTV05duuWyhbyX5HZiG
   BZBhsQ6pF35gpYmMlnUTs21HzIeWY1jeHc0XDf5/QHcbcVPhXXZhdD3HA
   vZHvdMQak0DE+LBUUQ/INOLLGNOX9KAbW1ydc5Uh/rt7doCOhwE7AFziQ
   NQNpj/7m8ewziykHSsjeW3GWXqpr5zQ/5+67wtr7nxcoRWQjU2tIUbOlN
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="355011"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="355011"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2024 08:38:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823251802"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="823251802"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 08:37:53 -0800
Received: by stinkbox (sSMTP sendmail emulation); Fri, 02 Feb 2024 18:37:52 +0200
Date: Fri, 2 Feb 2024 18:37:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Sebastian Wick <sebastian.wick@redhat.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Hans Verkuil <hverkuil@xs4all.nl>,
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB
 property
Message-ID: <Zb0aYAapkxQ2kopt@intel.com>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
 <20240115143720.GA160656@toolbox>
 <73peztbeeikb3fg6coxu3punxllgtyrmgco34tnxkojtsjbr3s@26bud3sjbcez>
 <Zb0M_2093UwPXK8y@intel.com>
 <hez2m57ogqx3yyqk45tzdkvxvhrbdepgm244i4m2aty2xhf5b5@acqgvmxhmmvr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <hez2m57ogqx3yyqk45tzdkvxvhrbdepgm244i4m2aty2xhf5b5@acqgvmxhmmvr>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_083803_094220_D46E1A33 
X-CRM114-Status: GOOD (  40.03  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Feb 02, 2024 at 04:59:30PM +0100, Maxime Ripard wrote:
> On Fri, Feb 02, 2024 at 05:40:47PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime Ripard wrote:
> > > Hi,
> > > =

> > > On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian Wick wrote:
> > > > > >  /**
> > > > > >   * DOC: HDMI connector properties
> > > > > >   *
> > > > > > + * Broadcast RGB
> > > > > > + *      Indicates the RGB Quantization Range (Full vs Limited)=
 used.
> > > > > > + *      Infoframes will be generated according to that value.
> > > > > > + *
> > > > > > + *      The value of this property can be one of the following:
> > > > > > + *
> > > > > > + *      Automatic:
> > > > > > + *              RGB Range is selected automatically based on t=
he mode
> > > > > > + *              according to the HDMI specifications.
> > > > > > + *
> > > > > > + *      Full:
> > > > > > + *              Full RGB Range is forced.
> > > > > > + *
> > > > > > + *      Limited 16:235:
> > > > > > + *              Limited RGB Range is forced. Unlike the name s=
uggests,
> > > > > > + *              this works for any number of bits-per-componen=
t.
> > > > > > + *
> > > > > > + *      Drivers can set up this property by calling
> > > > > > + *      drm_connector_attach_broadcast_rgb_property().
> > > > > > + *
> > > > > =

> > > > > This is a good time to document this in more detail. There might =
be two
> > > > > different things being affected:
> > > > > =

> > > > > 1. The signalling (InfoFrame/SDP/...)
> > > > > 2. The color pipeline processing
> > > > > =

> > > > > All values of Broadcast RGB always affect the color pipeline proc=
essing
> > > > > such that a full-range input to the CRTC is converted to either f=
ull- or
> > > > > limited-range, depending on what the monitor is supposed to accep=
t.
> > > > > =

> > > > > When automatic is selected, does that mean that there is no signa=
lling,
> > > > > or that the signalling matches what the monitor is supposed to ac=
cept
> > > > > according to the spec? Also, is this really HDMI specific?
> > > > > =

> > > > > When full or limited is selected and the monitor doesn't support =
the
> > > > > signalling, what happens?
> > > > =

> > > > Forgot to mention: user-space still has no control over RGB vs YCbC=
r on
> > > > the cable, so is this only affecting RGB? If not, how does it affect
> > > > YCbCr?
> > > =

> > > So I dug a bit into both the i915 and vc4 drivers, and it looks like =
if
> > > we're using a YCbCr format, i915 will always use a limited range while
> > > vc4 will follow the value of the property.
> > =

> > The property is literally called "Broadcast *RGB*".
> > That should explain why it's only affecting RGB.
> =

> Right. And the limited range option is called "Limited 16:235" despite
> being usable on bpc > 8 bits. Naming errors occurs, and history happens
> to make names inconsistent too, that's fine and not an argument in
> itself.
> =

> > Full range YCbCr is a much rarer beast so we've never bothered
> > to enable it.
> =

> vc4 supports it.

Someone implemented it incorrectly then.

> =

> > Eg. with DP it only became possible with the introduction of the VSC
> > SDP (and I don't recall if there's additional capability checks that
> > are also required). With DP MSA signalling full range YCbCr is not
> > possible at all.
> =

> This is for HDMI only.
> =

> > I don't recall right now what the HDMI requirements are.
> =

> HDMI has supported it for a while, and it's defined (for example) in the
> HDMI 1.4 spec in Section 6.6 - Video Quantization Ranges. It supports
> limited and full range on both RGB and YCbCr, as long as the EDIDs state
> so and the Infoframes signal it.

I think a good reason for not using a simple boolean like this =

YCbCr is that it doesn't cover the color encoding part at all,
which is probably more important than the quantization range.
So we need a new property anyway.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

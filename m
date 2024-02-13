Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04E8BC4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 08:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jqxhe68nY3dCd4TSj7i3cicakoLD8kWS5A56ETHNE7I=; b=mQ/zD1ei3M39rS
	4rj7a5uO31UwCQSAj+iOLFgAB5oCVO0CYediC2sMMcY/rifVvz66Pv8tgylXaW44SbtogvEC9FyAv
	FMbbKReWggm8Ea/LxuLGY/FpDqnkOHKQ8OFrBHrOu4VYlVZxJo9CDbcsu8ic4WYxQZaHMEOq4wt3T
	4E5t1uZQcI/aYDzzEeh0cBKC7Z0ao0e3O1Ktj1blQ3R0XfW4Uy57s+9iiyGogCL6DrC0AznZgHcp4
	EJduXOsFM7UGgFmBzkP2bLhYg2Ey8hle+7n3DhLsZU56IpSRN5Og7o0Pwf6wN7RIHaqLqnzmS3Mp3
	94enrYMDJ1J9nx0ahKrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZoJo-00000008SE1-3eL6;
	Tue, 13 Feb 2024 08:39:08 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZoJl-00000008SDa-2Qwn;
	Tue, 13 Feb 2024 08:39:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1707813545; x=1739349545;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=EW4hyg6ywuwUU3ETBIP6P9hAzw5rF+JafXM/qqClrws=;
  b=Nq+FAIFGZ+vbGpaspxZZQWfqyNugROV6PtXFRLG/ecZM05I1/hnl5Pch
   1RfZ+UCB4q1eY0D1957NvXPYbXm1dN0/NHh1y3Na4VTGMVkqeZ4GUQSNQ
   FzuqXLKQ+CmnNYP2uFwgegqjOUA1fH/lfeM38NOhD0qF92noIQkCoigF8
   28JL7YE2j7XLam03dRHI4NiiDeWnBPpAq5j3bOjFZ/GHAQuTkzs0ucVTT
   IayjMpdrHnakqd9B6+uKfNjOLjOvrVsK7KWA/U/Jt1jBfJbAxL5oUxWnW
   03GgYBbZTd3mldytNV4biVsnNmBs4ohpCeBeqKIsUhk2qGofs3scxjyxR
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="5629259"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="5629259"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Feb 2024 00:39:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="826052613"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="826052613"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by orsmga001.jf.intel.com with SMTP; 13 Feb 2024 00:38:57 -0800
Received: by stinkbox (sSMTP sendmail emulation); Tue, 13 Feb 2024 10:38:56 +0200
Date: Tue, 13 Feb 2024 10:38:56 +0200
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
Subject: Re: Re: Re: Re: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add
 Broadcast RGB property
Message-ID: <ZcsqoPCJDjA5PJUF@intel.com>
References: <20240115143720.GA160656@toolbox>
 <73peztbeeikb3fg6coxu3punxllgtyrmgco34tnxkojtsjbr3s@26bud3sjbcez>
 <Zb0M_2093UwPXK8y@intel.com>
 <hez2m57ogqx3yyqk45tzdkvxvhrbdepgm244i4m2aty2xhf5b5@acqgvmxhmmvr>
 <Zb0aYAapkxQ2kopt@intel.com>
 <zml6j27skvjmbrfyz7agy5waxajv4p4asbemeexelm3wuv4o7j@xkd2wvnxhbuc>
 <20240209203435.GB996172@toolbox>
 <ahfl6f72lpgpsbnrbgvbsh4db4npr2hh36kua2c6krh544hv5r@dndw4hz2mu2g>
 <Zco-DQaXqae7B1jt@intel.com>
 <yx2t7xltxxgsngdsxamsfq6y7dze3wzegxcqwmsb5yrxen73x6@u3vilqhpci4w>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yx2t7xltxxgsngdsxamsfq6y7dze3wzegxcqwmsb5yrxen73x6@u3vilqhpci4w>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_003905_726416_EC6314DE 
X-CRM114-Status: GOOD (  47.12  )
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

On Mon, Feb 12, 2024 at 05:53:48PM +0100, Maxime Ripard wrote:
> On Mon, Feb 12, 2024 at 05:49:33PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Mon, Feb 12, 2024 at 11:01:07AM +0100, Maxime Ripard wrote:
> > > On Fri, Feb 09, 2024 at 09:34:35PM +0100, Sebastian Wick wrote:
> > > > On Mon, Feb 05, 2024 at 10:39:38AM +0100, Maxime Ripard wrote:
> > > > > On Fri, Feb 02, 2024 at 06:37:52PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > > > On Fri, Feb 02, 2024 at 04:59:30PM +0100, Maxime Ripard wrote:
> > > > > > > On Fri, Feb 02, 2024 at 05:40:47PM +0200, Ville Syrj=E4l=E4 w=
rote:
> > > > > > > > On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime Ripard wro=
te:
> > > > > > > > > Hi,
> > > > > > > > > =

> > > > > > > > > On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian Wick =
wrote:
> > > > > > > > > > > >  /**
> > > > > > > > > > > >   * DOC: HDMI connector properties
> > > > > > > > > > > >   *
> > > > > > > > > > > > + * Broadcast RGB
> > > > > > > > > > > > + *      Indicates the RGB Quantization Range (Full=
 vs Limited) used.
> > > > > > > > > > > > + *      Infoframes will be generated according to =
that value.
> > > > > > > > > > > > + *
> > > > > > > > > > > > + *      The value of this property can be one of t=
he following:
> > > > > > > > > > > > + *
> > > > > > > > > > > > + *      Automatic:
> > > > > > > > > > > > + *              RGB Range is selected automaticall=
y based on the mode
> > > > > > > > > > > > + *              according to the HDMI specificatio=
ns.
> > > > > > > > > > > > + *
> > > > > > > > > > > > + *      Full:
> > > > > > > > > > > > + *              Full RGB Range is forced.
> > > > > > > > > > > > + *
> > > > > > > > > > > > + *      Limited 16:235:
> > > > > > > > > > > > + *              Limited RGB Range is forced. Unlik=
e the name suggests,
> > > > > > > > > > > > + *              this works for any number of bits-=
per-component.
> > > > > > > > > > > > + *
> > > > > > > > > > > > + *      Drivers can set up this property by calling
> > > > > > > > > > > > + *      drm_connector_attach_broadcast_rgb_propert=
y().
> > > > > > > > > > > > + *
> > > > > > > > > > > =

> > > > > > > > > > > This is a good time to document this in more detail. =
There might be two
> > > > > > > > > > > different things being affected:
> > > > > > > > > > > =

> > > > > > > > > > > 1. The signalling (InfoFrame/SDP/...)
> > > > > > > > > > > 2. The color pipeline processing
> > > > > > > > > > > =

> > > > > > > > > > > All values of Broadcast RGB always affect the color p=
ipeline processing
> > > > > > > > > > > such that a full-range input to the CRTC is converted=
 to either full- or
> > > > > > > > > > > limited-range, depending on what the monitor is suppo=
sed to accept.
> > > > > > > > > > > =

> > > > > > > > > > > When automatic is selected, does that mean that there=
 is no signalling,
> > > > > > > > > > > or that the signalling matches what the monitor is su=
pposed to accept
> > > > > > > > > > > according to the spec? Also, is this really HDMI spec=
ific?
> > > > > > > > > > > =

> > > > > > > > > > > When full or limited is selected and the monitor does=
n't support the
> > > > > > > > > > > signalling, what happens?
> > > > > > > > > > =

> > > > > > > > > > Forgot to mention: user-space still has no control over=
 RGB vs YCbCr on
> > > > > > > > > > the cable, so is this only affecting RGB? If not, how d=
oes it affect
> > > > > > > > > > YCbCr?
> > > > > > > > > =

> > > > > > > > > So I dug a bit into both the i915 and vc4 drivers, and it=
 looks like if
> > > > > > > > > we're using a YCbCr format, i915 will always use a limite=
d range while
> > > > > > > > > vc4 will follow the value of the property.
> > > > > > > > =

> > > > > > > > The property is literally called "Broadcast *RGB*".
> > > > > > > > That should explain why it's only affecting RGB.
> > > > > > > =

> > > > > > > Right. And the limited range option is called "Limited 16:235=
" despite
> > > > > > > being usable on bpc > 8 bits. Naming errors occurs, and histo=
ry happens
> > > > > > > to make names inconsistent too, that's fine and not an argume=
nt in
> > > > > > > itself.
> > > > > > > =

> > > > > > > > Full range YCbCr is a much rarer beast so we've never bothe=
red
> > > > > > > > to enable it.
> > > > > > > =

> > > > > > > vc4 supports it.
> > > > > > =

> > > > > > Someone implemented it incorrectly then.
> > > > > =

> > > > > Incorrectly according to what documentation / specification? I'm =
sorry,
> > > > > but I find it super ironic that i915 gets to do its own thing, not
> > > > > document any of it, and when people try to clean things up they g=
et told
> > > > > that we got it all wrong.
> > > > =

> > > > FWIW, this was an i915 property and if another driver uses the same
> > > > property name it must have the same behavior. Yes, it isn't standar=
dized
> > > > and yes, it's not documented (hence this effort here) but it's stil=
l on
> > > > vc4 to make the property compatible.
> > > =

> > > How is it not compatible? It's a superset of what i915 provides, but
> > > it's strictly compatible with it.
> > =

> > No it is not.
> =

> The property is compatible with i915 interpretation of it, whether you
> like it or not. And that's what Sebastian was referring to.
> =

> > Eg. what happens if you set the thing to full range for RGB (which you
> > must on many broken monitors), and then the kernel automagically
> > switches to YCbCr (for whatever reason) but the monitor doesn't
> > support full range YCbCr? Answer: you get crap output.
> =

> And that part is just moving goalposts.

No. Allowing users to get correct colors with broken displays
is the sole reason why this property even exists.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5726C48291
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Feb 2024 15:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WogKOcGeyjHe4G+ISuw2I4knKWlguYTCv4ZGuatHMS8=; b=X6Uxn5H4yj6Zsq
	S4wCULjNCQKv9cbQdCDv4A1Qjgmuh5Q0D/8KvWq6b2wJDkXXKQKl/T3Bmfh2fuObBZtKikanXNlYm
	gz50f+VuCwHx27vqRiaaF+pRQKIcTYE7oRhrD3eFaDoccvhdcFE1Hw9XG5HJVrEVhuGdFDCscW/Eu
	taGmoRIMaBKfutHAcz0u/VyWS2VjYeIOWQSJ7fD0ZyQq6x6IC4nivvAQecAMDvJzGs9v0Dgitqu4j
	TOSNKk8W3/yKIfmNmTyOuive6Xj2uorMwpqmYdfc3p3L27ObME9l+jWR+pBzsz503BfD49BHb7//Z
	Scm3BC3fh6pW6YcjRLxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvf1-0000000C429-2HOg;
	Fri, 02 Feb 2024 15:40:59 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvez-0000000C3zw-0mbN;
	Fri, 02 Feb 2024 15:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1706888458; x=1738424458;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=Wzt2OKA98oRZpOPKfSYMaxS0U0E4dZGMDfd4SSadYFo=;
  b=IAwUNLUhXiv6c37AjhEMFREmTixOXW2aTzUmHpYp8f8EKEAMbtXvURvd
   MOl/NuujWgz8doJAPMDpRIPhKusjjnRhj1uYOI1lweWrf7ialmwxLrObZ
   8am5/FoAPlkp8IJua0rm7E0024TZ3lbB1XQ1LppZBhsGdtciRVQziyZzJ
   P4LOBFl9E2gn2IF8nlJyPhZKYvPPfDMS131XGZPOCMw4R87zJPm8pLMAM
   mB0kmLshm8UaWQOGFR7D0qud9asFg3YmDjMxOvDxb0dsvD/09Dl4Ygwzg
   dFw8U6dJHXUOAQ6Sy8HL09AqE8Ch7RbCxdohBXzNE5SSlIM6Brhccnr8v
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="356376"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="356376"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2024 07:40:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823240563"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="823240563"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 07:40:48 -0800
Received: by stinkbox (sSMTP sendmail emulation); Fri, 02 Feb 2024 17:40:47 +0200
Date: Fri, 2 Feb 2024 17:40:47 +0200
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
Subject: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB
 property
Message-ID: <Zb0M_2093UwPXK8y@intel.com>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
 <20240115143720.GA160656@toolbox>
 <73peztbeeikb3fg6coxu3punxllgtyrmgco34tnxkojtsjbr3s@26bud3sjbcez>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73peztbeeikb3fg6coxu3punxllgtyrmgco34tnxkojtsjbr3s@26bud3sjbcez>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_074057_319079_D0CDFEC5 
X-CRM114-Status: GOOD (  31.29  )
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

On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime Ripard wrote:
> Hi,
> =

> On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian Wick wrote:
> > > >  /**
> > > >   * DOC: HDMI connector properties
> > > >   *
> > > > + * Broadcast RGB
> > > > + *      Indicates the RGB Quantization Range (Full vs Limited) use=
d.
> > > > + *      Infoframes will be generated according to that value.
> > > > + *
> > > > + *      The value of this property can be one of the following:
> > > > + *
> > > > + *      Automatic:
> > > > + *              RGB Range is selected automatically based on the m=
ode
> > > > + *              according to the HDMI specifications.
> > > > + *
> > > > + *      Full:
> > > > + *              Full RGB Range is forced.
> > > > + *
> > > > + *      Limited 16:235:
> > > > + *              Limited RGB Range is forced. Unlike the name sugge=
sts,
> > > > + *              this works for any number of bits-per-component.
> > > > + *
> > > > + *      Drivers can set up this property by calling
> > > > + *      drm_connector_attach_broadcast_rgb_property().
> > > > + *
> > > =

> > > This is a good time to document this in more detail. There might be t=
wo
> > > different things being affected:
> > > =

> > > 1. The signalling (InfoFrame/SDP/...)
> > > 2. The color pipeline processing
> > > =

> > > All values of Broadcast RGB always affect the color pipeline processi=
ng
> > > such that a full-range input to the CRTC is converted to either full-=
 or
> > > limited-range, depending on what the monitor is supposed to accept.
> > > =

> > > When automatic is selected, does that mean that there is no signallin=
g,
> > > or that the signalling matches what the monitor is supposed to accept
> > > according to the spec? Also, is this really HDMI specific?
> > > =

> > > When full or limited is selected and the monitor doesn't support the
> > > signalling, what happens?
> > =

> > Forgot to mention: user-space still has no control over RGB vs YCbCr on
> > the cable, so is this only affecting RGB? If not, how does it affect
> > YCbCr?
> =

> So I dug a bit into both the i915 and vc4 drivers, and it looks like if
> we're using a YCbCr format, i915 will always use a limited range while
> vc4 will follow the value of the property.

The property is literally called "Broadcast *RGB*".
That should explain why it's only affecting RGB.

Full range YCbCr is a much rarer beast so we've never bothered
to enable it. Eg. with DP it only became possible with the
introduction of the VSC SDP (and I don't recall if there's
additional capability checks that are also required). With
DP MSA signalling full range YCbCr is not possible at all.
I don't recall right now what the HDMI requirements are.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

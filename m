Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CCB4C54788
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 12:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LYt+ma/LvwDGPacoof4BzsLloLK7mWpLA/PW6bKEB0=; b=2e+XxID3RF5RzO
	YBm7j/ExQCE3cAUTv88tsx8Z1HNT4Lq+zpksj0sPc5PlF6ky8ZF8NncnPWeowxisJKcXRNEvM4X51
	Hkv5/egQu5QuEnNZ1maGpQ0LfsbHP77cipo+VxZNU6yXcOsO5Kl/Q0u0GYf2xjRabT+dOSO6ke+VY
	V14+xJ20X8I9rU2kMEFFpbW+YGJQ4ZBryHKTie7RAobf1KYQHRf8v04KMqgLTwOycqq+eWCmhS6xQ
	3eQm+uixMiMK7SGf4g28+Yh8Gxm5sNUXJNVjQll1sGGe0a6j0xcXQbvxmVcEzcybVwQRvebySPlIH
	GZXLIa7pQBQPxIv41K6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rd8fB-00000004viU-1xBa;
	Thu, 22 Feb 2024 12:58:57 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rd8f8-00000004vhp-3ltE;
	Thu, 22 Feb 2024 12:58:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1708606735; x=1740142735;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=JLuc1Jnxsxw+U4ER0Rl4lWt2pmSMVhIz7T8Bf6moZAM=;
  b=a/rciQcNohokVTzgs5/g2ndxs3RWC/KNr+06lHIbCC4MMezS8ffs0r9l
   M3asGeH8PKziCOXhaqCh8i5r4nw0kNbHjB/lqzgyjGgKmTBhAT5Owozi+
   t37/1UBCPNCDw75c+u2AeRqu3QNvxa92LoBypvq++phWVkKqMWNz0K1tt
   q5C4VCvd2Gb3VCYnsLJdpvuIMkNMsr3jxMn7iCZJRB2EKY5PfXfXsPRbu
   GD/I3UMzIPi6W0w84YV91R0sWNSlEK/yXMiXJZGCJes2jHCGR330jtmWY
   G7m+o8URZ4HNRz4LMLiTjhIxzpfYmhc8C4WvaH0jVhlGx5pkbY/yFtYn/
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="13449822"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="13449822"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2024 04:58:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="827546623"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="827546623"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by orsmga001.jf.intel.com with SMTP; 22 Feb 2024 04:58:46 -0800
Received: by stinkbox (sSMTP sendmail emulation); Thu, 22 Feb 2024 14:58:45 +0200
Date: Thu, 22 Feb 2024 14:58:45 +0200
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
Subject: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB property
Message-ID: <ZddFBe4A-galsO91@intel.com>
References: <Zb0aYAapkxQ2kopt@intel.com>
 <zml6j27skvjmbrfyz7agy5waxajv4p4asbemeexelm3wuv4o7j@xkd2wvnxhbuc>
 <20240209203435.GB996172@toolbox>
 <ahfl6f72lpgpsbnrbgvbsh4db4npr2hh36kua2c6krh544hv5r@dndw4hz2mu2g>
 <Zco-DQaXqae7B1jt@intel.com>
 <yx2t7xltxxgsngdsxamsfq6y7dze3wzegxcqwmsb5yrxen73x6@u3vilqhpci4w>
 <20240212170618.GA1372043@toolbox>
 <2mih3humepuedtli7ge52ncom4uffkqravdpalncgfyucmwdzc@bp5o7i3ky77a>
 <20240219140144.GB1956149@toolbox>
 <euaujtp4jyyoud3ccg5qhyvixyq2p6vir4ojlzoky6kep754rj@wruidyfxssry>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <euaujtp4jyyoud3ccg5qhyvixyq2p6vir4ojlzoky6kep754rj@wruidyfxssry>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_045854_982699_35E801F1 
X-CRM114-Status: GOOD (  62.27  )
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

On Thu, Feb 22, 2024 at 11:54:04AM +0100, Maxime Ripard wrote:
> On Mon, Feb 19, 2024 at 03:01:44PM +0100, Sebastian Wick wrote:
> > On Thu, Feb 15, 2024 at 12:00:01PM +0100, Maxime Ripard wrote:
> > > On Mon, Feb 12, 2024 at 06:06:18PM +0100, Sebastian Wick wrote:
> > > > On Mon, Feb 12, 2024 at 05:53:48PM +0100, Maxime Ripard wrote:
> > > > > On Mon, Feb 12, 2024 at 05:49:33PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > > > On Mon, Feb 12, 2024 at 11:01:07AM +0100, Maxime Ripard wrote:
> > > > > > > On Fri, Feb 09, 2024 at 09:34:35PM +0100, Sebastian Wick wrot=
e:
> > > > > > > > On Mon, Feb 05, 2024 at 10:39:38AM +0100, Maxime Ripard wro=
te:
> > > > > > > > > On Fri, Feb 02, 2024 at 06:37:52PM +0200, Ville Syrj=E4l=
=E4 wrote:
> > > > > > > > > > On Fri, Feb 02, 2024 at 04:59:30PM +0100, Maxime Ripard=
 wrote:
> > > > > > > > > > > On Fri, Feb 02, 2024 at 05:40:47PM +0200, Ville Syrj=
=E4l=E4 wrote:
> > > > > > > > > > > > On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime Ri=
pard wrote:
> > > > > > > > > > > > > Hi,
> > > > > > > > > > > > > =

> > > > > > > > > > > > > On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebasti=
an Wick wrote:
> > > > > > > > > > > > > > > >  /**
> > > > > > > > > > > > > > > >   * DOC: HDMI connector properties
> > > > > > > > > > > > > > > >   *
> > > > > > > > > > > > > > > > + * Broadcast RGB
> > > > > > > > > > > > > > > > + *      Indicates the RGB Quantization Ran=
ge (Full vs Limited) used.
> > > > > > > > > > > > > > > > + *      Infoframes will be generated accor=
ding to that value.
> > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > > + *      The value of this property can be =
one of the following:
> > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > > + *      Automatic:
> > > > > > > > > > > > > > > > + *              RGB Range is selected auto=
matically based on the mode
> > > > > > > > > > > > > > > > + *              according to the HDMI spec=
ifications.
> > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > > + *      Full:
> > > > > > > > > > > > > > > > + *              Full RGB Range is forced.
> > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > > + *      Limited 16:235:
> > > > > > > > > > > > > > > > + *              Limited RGB Range is force=
d. Unlike the name suggests,
> > > > > > > > > > > > > > > > + *              this works for any number =
of bits-per-component.
> > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > > + *      Drivers can set up this property b=
y calling
> > > > > > > > > > > > > > > > + *      drm_connector_attach_broadcast_rgb=
_property().
> > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > =

> > > > > > > > > > > > > > > This is a good time to document this in more =
detail. There might be two
> > > > > > > > > > > > > > > different things being affected:
> > > > > > > > > > > > > > > =

> > > > > > > > > > > > > > > 1. The signalling (InfoFrame/SDP/...)
> > > > > > > > > > > > > > > 2. The color pipeline processing
> > > > > > > > > > > > > > > =

> > > > > > > > > > > > > > > All values of Broadcast RGB always affect the=
 color pipeline processing
> > > > > > > > > > > > > > > such that a full-range input to the CRTC is c=
onverted to either full- or
> > > > > > > > > > > > > > > limited-range, depending on what the monitor =
is supposed to accept.
> > > > > > > > > > > > > > > =

> > > > > > > > > > > > > > > When automatic is selected, does that mean th=
at there is no signalling,
> > > > > > > > > > > > > > > or that the signalling matches what the monit=
or is supposed to accept
> > > > > > > > > > > > > > > according to the spec? Also, is this really H=
DMI specific?
> > > > > > > > > > > > > > > =

> > > > > > > > > > > > > > > When full or limited is selected and the moni=
tor doesn't support the
> > > > > > > > > > > > > > > signalling, what happens?
> > > > > > > > > > > > > > =

> > > > > > > > > > > > > > Forgot to mention: user-space still has no cont=
rol over RGB vs YCbCr on
> > > > > > > > > > > > > > the cable, so is this only affecting RGB? If no=
t, how does it affect
> > > > > > > > > > > > > > YCbCr?
> > > > > > > > > > > > > =

> > > > > > > > > > > > > So I dug a bit into both the i915 and vc4 drivers=
, and it looks like if
> > > > > > > > > > > > > we're using a YCbCr format, i915 will always use =
a limited range while
> > > > > > > > > > > > > vc4 will follow the value of the property.
> > > > > > > > > > > > =

> > > > > > > > > > > > The property is literally called "Broadcast *RGB*".
> > > > > > > > > > > > That should explain why it's only affecting RGB.
> > > > > > > > > > > =

> > > > > > > > > > > Right. And the limited range option is called "Limite=
d 16:235" despite
> > > > > > > > > > > being usable on bpc > 8 bits. Naming errors occurs, a=
nd history happens
> > > > > > > > > > > to make names inconsistent too, that's fine and not a=
n argument in
> > > > > > > > > > > itself.
> > > > > > > > > > > =

> > > > > > > > > > > > Full range YCbCr is a much rarer beast so we've nev=
er bothered
> > > > > > > > > > > > to enable it.
> > > > > > > > > > > =

> > > > > > > > > > > vc4 supports it.
> > > > > > > > > > =

> > > > > > > > > > Someone implemented it incorrectly then.
> > > > > > > > > =

> > > > > > > > > Incorrectly according to what documentation / specificati=
on? I'm sorry,
> > > > > > > > > but I find it super ironic that i915 gets to do its own t=
hing, not
> > > > > > > > > document any of it, and when people try to clean things u=
p they get told
> > > > > > > > > that we got it all wrong.
> > > > > > > > =

> > > > > > > > FWIW, this was an i915 property and if another driver uses =
the same
> > > > > > > > property name it must have the same behavior. Yes, it isn't=
 standardized
> > > > > > > > and yes, it's not documented (hence this effort here) but i=
t's still on
> > > > > > > > vc4 to make the property compatible.
> > > > > > > =

> > > > > > > How is it not compatible? It's a superset of what i915 provid=
es, but
> > > > > > > it's strictly compatible with it.
> > > > > > =

> > > > > > No it is not.
> > > > > =

> > > > > The property is compatible with i915 interpretation of it, whethe=
r you
> > > > > like it or not. And that's what Sebastian was referring to.
> > > > > =

> > > > > > Eg. what happens if you set the thing to full range for RGB (wh=
ich you
> > > > > > must on many broken monitors), and then the kernel automagically
> > > > > > switches to YCbCr (for whatever reason) but the monitor doesn't
> > > > > > support full range YCbCr? Answer: you get crap output.
> > > > > =

> > > > > And that part is just moving goalposts.
> > > > =

> > > > But it's really not.
> > > =

> > > It really is. This whole discussion started by "well it would be nice=
 if
> > > we made that property handled by the core", and we're now at the "we
> > > need to deal with broken YCbCr displays and i915 opinion about them"
> > > stage. After creating documentation, unit tests, etc. It's the textbo=
ok
> > > definition of moving goalposts. And while i915 won't be affected by a=
ll
> > > that work.
> > =

> > Sorry, but what you're saying is just not true.
> > =

> > The Broadcast RGB property is an Intel specific property.
> =

> No, it's not. vc4 has been using it for a year now.
> =

> > It lacked documentation but the user space contract exists and it
> > based on how i915 implemented it. By changing the semantics you're
> > breaking user space. The documentation has to document the current
> > contract between i915 and user space, not whatever you want the
> > property to be like.
> > =

> > I get that you're frustrated that you have to do work while i915 doesn't
> > but none of that is relevant for what the property is and how user space
> > expects it to work.
> =

> That's not it, really. I don't mind doing the work. I do mind losing
> functionalities on something that was working fine. And getting the
> blame for something that is, at best, just as much of an documentation
> issue on i915 devs.

We've had a couple of these cases recently where people have taken
some old property implemented by i915 and implemented it differently
in some other driver. Dunno if the reason was that people didn't try
to understand what i915 is doing and why, or they misundestood it,
or they understood it but decided to ignore it anyway.

Unfortunately having undocumented corners in the uapi is simply
a fact of life when dealing with a >15 year old legacy codebase.
Also there were basically no rules regarding properties in the
past, so everyone just added random properties whenever they =

felt like it.

I think going forward we should probably lay down some extra
ground rules; if an old undocumented uapi is being extended
to cover more than one driver we must first figure out what
the de facto semantics are, and document things properly
before anything else gets done.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7AAAC48BF8
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 14:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ce5E9QnYo1UpudwCG9nDJNch/0DVTcAIMif3dmFXH20=; b=jVsRbeEgGCrOLL
	QyHkWjm64d1CFr/OfiKelGEU//RlgwYapU5KDWC2JxdcJCf2MrRIQMlAh+uPejBVbVpUSPUEmXlkS
	nc2kabubHQx5Fbz4ZGSE8JjDUxQH45azNkY3UxeE85i1IFN+tLdGeGxWvvOqu7vc5+R9IdmvxaekX
	/tgEYAlMlmf3Pqt0dAu+uMdqpIyRpZ5pZoiIDAwvlgdR6ppB+Bs4dg3zku5xOjpD7HsNV50zTROzB
	3c6/mbCoB8A6dmulGubYRlP495LmRY3le5mokeTUVgNvual8QwN//x1nFguYmPP9dFyZWMhNLMulX
	Yen9u6zHsR8h68QGzk9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc4DV-0000000AkiF-3kGs;
	Mon, 19 Feb 2024 14:01:57 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc4DT-0000000Akh7-0fEe
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Feb 2024 14:01:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1708351312;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u587ZdVcj3glUgoM/Hcg0rJugpW/yYo4cuFbTIpN5kY=;
	b=PrPz1JmudzBfSYCIunVapQ7/mSqAF0PoZUAD/Y83lYoNs7KXE5Qza179ZLqfoU8WQtPvEa
	MUD/nz26vDHwKZ4Q6UUoZdlxXPIhmHIY/tjtH9oESjTD39Wxrxi3QIe0Kq2yLjZtWXkZ/G
	oG2ESQcvfm/krgjPSP/FIsPAKAfyiZg=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-343-O8idCIZyNXC_xuXHWojYoQ-1; Mon, 19 Feb 2024 09:01:48 -0500
X-MC-Unique: O8idCIZyNXC_xuXHWojYoQ-1
Received: by mail-lj1-f200.google.com with SMTP id 38308e7fff4ca-2d2368a12a1so12384061fa.1
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Feb 2024 06:01:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708351307; x=1708956107;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u587ZdVcj3glUgoM/Hcg0rJugpW/yYo4cuFbTIpN5kY=;
        b=KiL5V3JYMMSB9B03jNYVL3MmIfc6GkXzRVY/hmY/PhP/MsQyuL8Oo3kts+t3g5eNsP
         hByJ4Lhul2yXO4fbZGngsjQ6E9gMHrLlZ7KXMyitNTV99dYyNLS6uH5BHxgtsuIiwUFr
         tvW+OVRKWg+C2pu9CoNK6lnHhI6WOlRq+wJFlQpJZRhpUFZaiDpU7cHA0q9WB14zjL+w
         cc73ObA1pK7yvk98a9270aKrG2YWKI1GLW8+T1RmLsa0S7qIOTa/DvQeZBY0fYWFL/Sv
         PoBoL2FVOPQb26C/ZcLg7dmb5B00filzwUttENIX4CUKGHEqtAISz1TIneHtvK2zWYMm
         kWRA==
X-Forwarded-Encrypted: i=1; AJvYcCWR2znCOdi6CEI8WhaEqs+pz7PhSTBgZYXIsG+c6eE8Hf4mAvUHr6dmnlyqUndLIUAStIEsUkZCa/bNuZD4DzyznfYunCXUuIejlf8BnV5mkdOX
X-Gm-Message-State: AOJu0YzTXsnTgcefVsY/En3KuZLL8eOEIwJyChYsMs+OyuEdcuVR4MHD
	XjKHYo4tKEa+A5v9CwBMAAKUN+20CXq3sJwq2PMygdaQp8kqCfmZXZpMSWx6FduFX08x4DWMMC8
	Ir6Wl4E7q49JHlfYehDVrQuf9d9Jf5lAov0jRPA1E1v4+uDpSmbPoKcrkUTSI7H1V1dsA5w==
X-Received: by 2002:a2e:bb88:0:b0:2d2:317a:4e51 with SMTP id y8-20020a2ebb88000000b002d2317a4e51mr2711450lje.19.1708351306655;
        Mon, 19 Feb 2024 06:01:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFYOkgdkpjUPqkVShV5VUvUXvy45CYFqtPgSKyukje33ZPvJRJxa7MElMt9lvxrCNYhdDWEcw==
X-Received: by 2002:a2e:bb88:0:b0:2d2:317a:4e51 with SMTP id y8-20020a2ebb88000000b002d2317a4e51mr2711422lje.19.1708351306160;
        Mon, 19 Feb 2024 06:01:46 -0800 (PST)
Received: from toolbox ([2001:9e8:89aa:1800:3845:886a:5f99:bee1])
        by smtp.gmail.com with ESMTPSA id v21-20020a05600c445500b0041266f5b041sm2964973wmn.34.2024.02.19.06.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 06:01:45 -0800 (PST)
Date: Mon, 19 Feb 2024 15:01:44 +0100
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
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
Subject: Re: Re: Re: Re: Re: Re: Re: [PATCH v5 08/44] drm/connector: hdmi:
 Add Broadcast RGB property
Message-ID: <20240219140144.GB1956149@toolbox>
References: <Zb0M_2093UwPXK8y@intel.com>
 <hez2m57ogqx3yyqk45tzdkvxvhrbdepgm244i4m2aty2xhf5b5@acqgvmxhmmvr>
 <Zb0aYAapkxQ2kopt@intel.com>
 <zml6j27skvjmbrfyz7agy5waxajv4p4asbemeexelm3wuv4o7j@xkd2wvnxhbuc>
 <20240209203435.GB996172@toolbox>
 <ahfl6f72lpgpsbnrbgvbsh4db4npr2hh36kua2c6krh544hv5r@dndw4hz2mu2g>
 <Zco-DQaXqae7B1jt@intel.com>
 <yx2t7xltxxgsngdsxamsfq6y7dze3wzegxcqwmsb5yrxen73x6@u3vilqhpci4w>
 <20240212170618.GA1372043@toolbox>
 <2mih3humepuedtli7ge52ncom4uffkqravdpalncgfyucmwdzc@bp5o7i3ky77a>
MIME-Version: 1.0
In-Reply-To: <2mih3humepuedtli7ge52ncom4uffkqravdpalncgfyucmwdzc@bp5o7i3ky77a>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_060155_305994_3046317F 
X-CRM114-Status: GOOD (  67.22  )
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

On Thu, Feb 15, 2024 at 12:00:01PM +0100, Maxime Ripard wrote:
> On Mon, Feb 12, 2024 at 06:06:18PM +0100, Sebastian Wick wrote:
> > On Mon, Feb 12, 2024 at 05:53:48PM +0100, Maxime Ripard wrote:
> > > On Mon, Feb 12, 2024 at 05:49:33PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Mon, Feb 12, 2024 at 11:01:07AM +0100, Maxime Ripard wrote:
> > > > > On Fri, Feb 09, 2024 at 09:34:35PM +0100, Sebastian Wick wrote:
> > > > > > On Mon, Feb 05, 2024 at 10:39:38AM +0100, Maxime Ripard wrote:
> > > > > > > On Fri, Feb 02, 2024 at 06:37:52PM +0200, Ville Syrj=E4l=E4 w=
rote:
> > > > > > > > On Fri, Feb 02, 2024 at 04:59:30PM +0100, Maxime Ripard wro=
te:
> > > > > > > > > On Fri, Feb 02, 2024 at 05:40:47PM +0200, Ville Syrj=E4l=
=E4 wrote:
> > > > > > > > > > On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime Ripard=
 wrote:
> > > > > > > > > > > Hi,
> > > > > > > > > > > =

> > > > > > > > > > > On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian W=
ick wrote:
> > > > > > > > > > > > > >  /**
> > > > > > > > > > > > > >   * DOC: HDMI connector properties
> > > > > > > > > > > > > >   *
> > > > > > > > > > > > > > + * Broadcast RGB
> > > > > > > > > > > > > > + *      Indicates the RGB Quantization Range (=
Full vs Limited) used.
> > > > > > > > > > > > > > + *      Infoframes will be generated according=
 to that value.
> > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > + *      The value of this property can be one =
of the following:
> > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > + *      Automatic:
> > > > > > > > > > > > > > + *              RGB Range is selected automati=
cally based on the mode
> > > > > > > > > > > > > > + *              according to the HDMI specific=
ations.
> > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > + *      Full:
> > > > > > > > > > > > > > + *              Full RGB Range is forced.
> > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > + *      Limited 16:235:
> > > > > > > > > > > > > > + *              Limited RGB Range is forced. U=
nlike the name suggests,
> > > > > > > > > > > > > > + *              this works for any number of b=
its-per-component.
> > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > + *      Drivers can set up this property by ca=
lling
> > > > > > > > > > > > > > + *      drm_connector_attach_broadcast_rgb_pro=
perty().
> > > > > > > > > > > > > > + *
> > > > > > > > > > > > > =

> > > > > > > > > > > > > This is a good time to document this in more deta=
il. There might be two
> > > > > > > > > > > > > different things being affected:
> > > > > > > > > > > > > =

> > > > > > > > > > > > > 1. The signalling (InfoFrame/SDP/...)
> > > > > > > > > > > > > 2. The color pipeline processing
> > > > > > > > > > > > > =

> > > > > > > > > > > > > All values of Broadcast RGB always affect the col=
or pipeline processing
> > > > > > > > > > > > > such that a full-range input to the CRTC is conve=
rted to either full- or
> > > > > > > > > > > > > limited-range, depending on what the monitor is s=
upposed to accept.
> > > > > > > > > > > > > =

> > > > > > > > > > > > > When automatic is selected, does that mean that t=
here is no signalling,
> > > > > > > > > > > > > or that the signalling matches what the monitor i=
s supposed to accept
> > > > > > > > > > > > > according to the spec? Also, is this really HDMI =
specific?
> > > > > > > > > > > > > =

> > > > > > > > > > > > > When full or limited is selected and the monitor =
doesn't support the
> > > > > > > > > > > > > signalling, what happens?
> > > > > > > > > > > > =

> > > > > > > > > > > > Forgot to mention: user-space still has no control =
over RGB vs YCbCr on
> > > > > > > > > > > > the cable, so is this only affecting RGB? If not, h=
ow does it affect
> > > > > > > > > > > > YCbCr?
> > > > > > > > > > > =

> > > > > > > > > > > So I dug a bit into both the i915 and vc4 drivers, an=
d it looks like if
> > > > > > > > > > > we're using a YCbCr format, i915 will always use a li=
mited range while
> > > > > > > > > > > vc4 will follow the value of the property.
> > > > > > > > > > =

> > > > > > > > > > The property is literally called "Broadcast *RGB*".
> > > > > > > > > > That should explain why it's only affecting RGB.
> > > > > > > > > =

> > > > > > > > > Right. And the limited range option is called "Limited 16=
:235" despite
> > > > > > > > > being usable on bpc > 8 bits. Naming errors occurs, and h=
istory happens
> > > > > > > > > to make names inconsistent too, that's fine and not an ar=
gument in
> > > > > > > > > itself.
> > > > > > > > > =

> > > > > > > > > > Full range YCbCr is a much rarer beast so we've never b=
othered
> > > > > > > > > > to enable it.
> > > > > > > > > =

> > > > > > > > > vc4 supports it.
> > > > > > > > =

> > > > > > > > Someone implemented it incorrectly then.
> > > > > > > =

> > > > > > > Incorrectly according to what documentation / specification? =
I'm sorry,
> > > > > > > but I find it super ironic that i915 gets to do its own thing=
, not
> > > > > > > document any of it, and when people try to clean things up th=
ey get told
> > > > > > > that we got it all wrong.
> > > > > > =

> > > > > > FWIW, this was an i915 property and if another driver uses the =
same
> > > > > > property name it must have the same behavior. Yes, it isn't sta=
ndardized
> > > > > > and yes, it's not documented (hence this effort here) but it's =
still on
> > > > > > vc4 to make the property compatible.
> > > > > =

> > > > > How is it not compatible? It's a superset of what i915 provides, =
but
> > > > > it's strictly compatible with it.
> > > > =

> > > > No it is not.
> > > =

> > > The property is compatible with i915 interpretation of it, whether you
> > > like it or not. And that's what Sebastian was referring to.
> > > =

> > > > Eg. what happens if you set the thing to full range for RGB (which =
you
> > > > must on many broken monitors), and then the kernel automagically
> > > > switches to YCbCr (for whatever reason) but the monitor doesn't
> > > > support full range YCbCr? Answer: you get crap output.
> > > =

> > > And that part is just moving goalposts.
> > =

> > But it's really not.
> =

> It really is. This whole discussion started by "well it would be nice if
> we made that property handled by the core", and we're now at the "we
> need to deal with broken YCbCr displays and i915 opinion about them"
> stage. After creating documentation, unit tests, etc. It's the textbook
> definition of moving goalposts. And while i915 won't be affected by all
> that work.

Sorry, but what you're saying is just not true.

The Broadcast RGB property is an Intel specific property. It lacked
documentation but the user space contract exists and it based on how
i915 implemented it. By changing the semantics you're breaking user
space. The documentation has to document the current contract between
i915 and user space, not whatever you want the property to be like.

I get that you're frustrated that you have to do work while i915 doesn't
but none of that is relevant for what the property is and how user space
expects it to work.

> That series has been stuck for multiple iterations on pointless and
> mundane debates while the biggest part and whole point of it is not
> getting any review. So yeah, sorry, it's frustrating.

I'm reviewing the parts that I can, and that's the uAPI. I find it
really offensive that you're saying that this is pointless and mundate.
The uAPI is your end product, if it can't be used, everything you do in
your driver is utterly pointless.

> > The Broadcast RGB property kind of works from a user space perspective
> > because it's a workaround for broken sinks. If a sink expects limited
> > range we can force full range. If this however affects YCbCr modes as
> > well, then this isn't a workaround for broken RGB range anymore
> > because it now breaks YCbCr.
> =

> Or, you know, it's a workaround for broken YCbCr display.

Displays can accept both RGB and YCbCr signals, drivers can chose
whichever they want, and user space can not influence or even know which
one is being used.

The automatic selection of the range is very different between RGB and
YCbCr. If user space forces the range to a specific value and the driver
for whatever reason switches from RGB to YCbCr or the other way around,
this forcing of the range will most likely be incorrect.

This is what we're talking about when we say that the semantics of the
vc4 Broadcast RGB property is broken. User space literally cannot use it
consistenly. By restricting it to RGB signals, user space can user it
consistently and fix monitors that do not follow the automatic
quantization range algorithm correctly. Yes, if there is an issue with
the quantization range of a YCbCr signal then this property doesn't
help, but it never tried to help those cases.

> > Sorry, but vc4 just has to change.
> > =

> > And again: let's please stop trying to improve the property.
> =

> I'm not. I'm super close to just dropping that patch entirely and keep
> the current situation that seems to work fine for everyone.

I mean, vc4 doesn't work fine apparently. You're just lucky that no one
reported issues to you.

All you have to do is adjust the documentation to say that Broadcast RGB
only affects RGB signalling. Yes, vc4 has a bug according to the docs
then, but that's okay. Fix it at some point.

> Maxime



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FFAEC48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 13:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cA3FYmQf+gagujDJZlzg4JzYadzR6Sz1LUoR36Ol7FE=; b=VAU6jXrf8z/5I5
	yXjFFPzTSHYxEgcqY4KqkcWdm66XaV+8xmO7vW/YlurKYsiK9vaVcwQhozh1bse5cmz/qTJUCgooW
	wb2hbo795/i65lpcMzgLW8tl++6jIJafeazjPH4TqvU+FgAhrHGWmsTC7w6mzqSH9Ru74JuX7ZnA0
	6Mfl+6k5WbI8jZZ7UclXi/NS3cJFzIBz7oEIqaJfkPuwNqpS0oJnaSTiDjrIXyfaDbAIiKE/qi/LN
	uyEHUq4y4cHICJF0bNe5BEQC+XeW3aWBeTZQvHcgaxEXGpn2eUVdv3w9VchDYD2I75UyGTHHjqpY4
	0JuUY0jDmNe1XwKUXwIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rd8sF-00000004xOr-1kK8;
	Thu, 22 Feb 2024 13:12:27 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rd8sC-00000004xLW-0wsA
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 13:12:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1708607538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/rZwXlN3+rt9lmwvddhJ6lNaAg1yTingK5zSV78YIBs=;
	b=DLmS8S58LD6nWbPScKce0LGc+o1/Kk5kVQyPUBufLYsyuRBJ2HU0aNW+u4CthPLVNoX6r6
	r+DJKhKexfpItqU8Iql3fwu5/FgX/A//nyGdROiOmUtd0UIXPch6C1IEv1e2f3L/K0SN5N
	1w8Ct1OJltFBkZY9jTlDoYq8hh7CDhI=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-295-ASsF6fkHMumyMqd7IKzwEQ-1; Thu, 22 Feb 2024 08:12:14 -0500
X-MC-Unique: ASsF6fkHMumyMqd7IKzwEQ-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-41225d3b3d1so38121455e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Feb 2024 05:12:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708607533; x=1709212333;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/rZwXlN3+rt9lmwvddhJ6lNaAg1yTingK5zSV78YIBs=;
        b=nRHYXLtf1dqytr3iaBBYM117SvCrGM3ePJseO78Ut8ZMorwt7/wP7KvkdAaS1UUp7a
         R0Zi85MkDpm998W915XB1xRs05IaKPN+bUN4wnSvPiyDkXKmGANQKI2Wfo1XOcvgUeFH
         db9ml1wuSI6LeELVGM9HsEgDAFWu/dwLDo3EQd1IwWDs3sq+mkyYUXY1v4oP60EGQ01q
         P7ikqMCCyI0cayvVId9jHAIv+n2qHFvKWWxb34ZKudYxppnfXiHzX/xvcMu2v5PY8Yud
         6ImtL9BgAHioNx7qbBWNNlcr7iO8lux5Q+QlC6oKfVw7J0u6q8j7YwY+EmXNMhZ+rXGq
         HFzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFxj61Pu4C71OF9bdhUZY0LWmP2sMi+nF4FaEUdRP8Aa/BATb/CgzKHsetPETR1F3cMXCDBkDdcOejw8Ou3pzHuj07tNwPzBTUKIPpPL+3y4iG
X-Gm-Message-State: AOJu0YxRKyj0qJd5QzOX9X7qt2xMlkfwRs+FeJ+yFd8xZuNEMf2Rfv0G
	EoU0FDH5NCY0NWxZgv1xvdQd4Ho4r0HVmS4UgSc5GiiCjH0zfbTRZHX2TjFhD2MJnvNtq2p/zL1
	4hQbH/+AkHVqknTDz6GIdRmyZdsJ1+ZQgORieatwXFtnKA+TkdDUPXPxFXjzCTpVnTA82ww==
X-Received: by 2002:a05:600c:310e:b0:412:7218:bda4 with SMTP id g14-20020a05600c310e00b004127218bda4mr4380810wmo.19.1708607533215;
        Thu, 22 Feb 2024 05:12:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH5XqSURveOjbO1VkGnuWlZrU2nGzUGAvm+K3BM/xVrrJRRrntfTjTe48FJywj6JtVook8iJA==
X-Received: by 2002:a05:600c:310e:b0:412:7218:bda4 with SMTP id g14-20020a05600c310e00b004127218bda4mr4380794wmo.19.1708607532795;
        Thu, 22 Feb 2024 05:12:12 -0800 (PST)
Received: from toolbox ([2001:9e8:89bc:5400:b148:5c28:6821:6aa5])
        by smtp.gmail.com with ESMTPSA id m12-20020a5d4a0c000000b0033b60bad2fcsm20208517wrq.113.2024.02.22.05.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 05:12:12 -0800 (PST)
Date: Thu, 22 Feb 2024 14:12:10 +0100
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>,
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
Message-ID: <20240222131210.GA2405678@toolbox>
References: <zml6j27skvjmbrfyz7agy5waxajv4p4asbemeexelm3wuv4o7j@xkd2wvnxhbuc>
 <20240209203435.GB996172@toolbox>
 <ahfl6f72lpgpsbnrbgvbsh4db4npr2hh36kua2c6krh544hv5r@dndw4hz2mu2g>
 <Zco-DQaXqae7B1jt@intel.com>
 <yx2t7xltxxgsngdsxamsfq6y7dze3wzegxcqwmsb5yrxen73x6@u3vilqhpci4w>
 <20240212170618.GA1372043@toolbox>
 <2mih3humepuedtli7ge52ncom4uffkqravdpalncgfyucmwdzc@bp5o7i3ky77a>
 <20240219140144.GB1956149@toolbox>
 <euaujtp4jyyoud3ccg5qhyvixyq2p6vir4ojlzoky6kep754rj@wruidyfxssry>
 <ZddFBe4A-galsO91@intel.com>
MIME-Version: 1.0
In-Reply-To: <ZddFBe4A-galsO91@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_051224_374097_90A525CF 
X-CRM114-Status: GOOD (  65.63  )
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

On Thu, Feb 22, 2024 at 02:58:45PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Feb 22, 2024 at 11:54:04AM +0100, Maxime Ripard wrote:
> > On Mon, Feb 19, 2024 at 03:01:44PM +0100, Sebastian Wick wrote:
> > > On Thu, Feb 15, 2024 at 12:00:01PM +0100, Maxime Ripard wrote:
> > > > On Mon, Feb 12, 2024 at 06:06:18PM +0100, Sebastian Wick wrote:
> > > > > On Mon, Feb 12, 2024 at 05:53:48PM +0100, Maxime Ripard wrote:
> > > > > > On Mon, Feb 12, 2024 at 05:49:33PM +0200, Ville Syrj=E4l=E4 wro=
te:
> > > > > > > On Mon, Feb 12, 2024 at 11:01:07AM +0100, Maxime Ripard wrote:
> > > > > > > > On Fri, Feb 09, 2024 at 09:34:35PM +0100, Sebastian Wick wr=
ote:
> > > > > > > > > On Mon, Feb 05, 2024 at 10:39:38AM +0100, Maxime Ripard w=
rote:
> > > > > > > > > > On Fri, Feb 02, 2024 at 06:37:52PM +0200, Ville Syrj=E4=
l=E4 wrote:
> > > > > > > > > > > On Fri, Feb 02, 2024 at 04:59:30PM +0100, Maxime Ripa=
rd wrote:
> > > > > > > > > > > > On Fri, Feb 02, 2024 at 05:40:47PM +0200, Ville Syr=
j=E4l=E4 wrote:
> > > > > > > > > > > > > On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime =
Ripard wrote:
> > > > > > > > > > > > > > Hi,
> > > > > > > > > > > > > > =

> > > > > > > > > > > > > > On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebas=
tian Wick wrote:
> > > > > > > > > > > > > > > > >  /**
> > > > > > > > > > > > > > > > >   * DOC: HDMI connector properties
> > > > > > > > > > > > > > > > >   *
> > > > > > > > > > > > > > > > > + * Broadcast RGB
> > > > > > > > > > > > > > > > > + *      Indicates the RGB Quantization R=
ange (Full vs Limited) used.
> > > > > > > > > > > > > > > > > + *      Infoframes will be generated acc=
ording to that value.
> > > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > > > + *      The value of this property can b=
e one of the following:
> > > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > > > + *      Automatic:
> > > > > > > > > > > > > > > > > + *              RGB Range is selected au=
tomatically based on the mode
> > > > > > > > > > > > > > > > > + *              according to the HDMI sp=
ecifications.
> > > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > > > + *      Full:
> > > > > > > > > > > > > > > > > + *              Full RGB Range is forced.
> > > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > > > + *      Limited 16:235:
> > > > > > > > > > > > > > > > > + *              Limited RGB Range is for=
ced. Unlike the name suggests,
> > > > > > > > > > > > > > > > > + *              this works for any numbe=
r of bits-per-component.
> > > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > > > + *      Drivers can set up this property=
 by calling
> > > > > > > > > > > > > > > > > + *      drm_connector_attach_broadcast_r=
gb_property().
> > > > > > > > > > > > > > > > > + *
> > > > > > > > > > > > > > > > =

> > > > > > > > > > > > > > > > This is a good time to document this in mor=
e detail. There might be two
> > > > > > > > > > > > > > > > different things being affected:
> > > > > > > > > > > > > > > > =

> > > > > > > > > > > > > > > > 1. The signalling (InfoFrame/SDP/...)
> > > > > > > > > > > > > > > > 2. The color pipeline processing
> > > > > > > > > > > > > > > > =

> > > > > > > > > > > > > > > > All values of Broadcast RGB always affect t=
he color pipeline processing
> > > > > > > > > > > > > > > > such that a full-range input to the CRTC is=
 converted to either full- or
> > > > > > > > > > > > > > > > limited-range, depending on what the monito=
r is supposed to accept.
> > > > > > > > > > > > > > > > =

> > > > > > > > > > > > > > > > When automatic is selected, does that mean =
that there is no signalling,
> > > > > > > > > > > > > > > > or that the signalling matches what the mon=
itor is supposed to accept
> > > > > > > > > > > > > > > > according to the spec? Also, is this really=
 HDMI specific?
> > > > > > > > > > > > > > > > =

> > > > > > > > > > > > > > > > When full or limited is selected and the mo=
nitor doesn't support the
> > > > > > > > > > > > > > > > signalling, what happens?
> > > > > > > > > > > > > > > =

> > > > > > > > > > > > > > > Forgot to mention: user-space still has no co=
ntrol over RGB vs YCbCr on
> > > > > > > > > > > > > > > the cable, so is this only affecting RGB? If =
not, how does it affect
> > > > > > > > > > > > > > > YCbCr?
> > > > > > > > > > > > > > =

> > > > > > > > > > > > > > So I dug a bit into both the i915 and vc4 drive=
rs, and it looks like if
> > > > > > > > > > > > > > we're using a YCbCr format, i915 will always us=
e a limited range while
> > > > > > > > > > > > > > vc4 will follow the value of the property.
> > > > > > > > > > > > > =

> > > > > > > > > > > > > The property is literally called "Broadcast *RGB*=
".
> > > > > > > > > > > > > That should explain why it's only affecting RGB.
> > > > > > > > > > > > =

> > > > > > > > > > > > Right. And the limited range option is called "Limi=
ted 16:235" despite
> > > > > > > > > > > > being usable on bpc > 8 bits. Naming errors occurs,=
 and history happens
> > > > > > > > > > > > to make names inconsistent too, that's fine and not=
 an argument in
> > > > > > > > > > > > itself.
> > > > > > > > > > > > =

> > > > > > > > > > > > > Full range YCbCr is a much rarer beast so we've n=
ever bothered
> > > > > > > > > > > > > to enable it.
> > > > > > > > > > > > =

> > > > > > > > > > > > vc4 supports it.
> > > > > > > > > > > =

> > > > > > > > > > > Someone implemented it incorrectly then.
> > > > > > > > > > =

> > > > > > > > > > Incorrectly according to what documentation / specifica=
tion? I'm sorry,
> > > > > > > > > > but I find it super ironic that i915 gets to do its own=
 thing, not
> > > > > > > > > > document any of it, and when people try to clean things=
 up they get told
> > > > > > > > > > that we got it all wrong.
> > > > > > > > > =

> > > > > > > > > FWIW, this was an i915 property and if another driver use=
s the same
> > > > > > > > > property name it must have the same behavior. Yes, it isn=
't standardized
> > > > > > > > > and yes, it's not documented (hence this effort here) but=
 it's still on
> > > > > > > > > vc4 to make the property compatible.
> > > > > > > > =

> > > > > > > > How is it not compatible? It's a superset of what i915 prov=
ides, but
> > > > > > > > it's strictly compatible with it.
> > > > > > > =

> > > > > > > No it is not.
> > > > > > =

> > > > > > The property is compatible with i915 interpretation of it, whet=
her you
> > > > > > like it or not. And that's what Sebastian was referring to.
> > > > > > =

> > > > > > > Eg. what happens if you set the thing to full range for RGB (=
which you
> > > > > > > must on many broken monitors), and then the kernel automagica=
lly
> > > > > > > switches to YCbCr (for whatever reason) but the monitor doesn=
't
> > > > > > > support full range YCbCr? Answer: you get crap output.
> > > > > > =

> > > > > > And that part is just moving goalposts.
> > > > > =

> > > > > But it's really not.
> > > > =

> > > > It really is. This whole discussion started by "well it would be ni=
ce if
> > > > we made that property handled by the core", and we're now at the "we
> > > > need to deal with broken YCbCr displays and i915 opinion about them"
> > > > stage. After creating documentation, unit tests, etc. It's the text=
book
> > > > definition of moving goalposts. And while i915 won't be affected by=
 all
> > > > that work.
> > > =

> > > Sorry, but what you're saying is just not true.
> > > =

> > > The Broadcast RGB property is an Intel specific property.
> > =

> > No, it's not. vc4 has been using it for a year now.
> > =

> > > It lacked documentation but the user space contract exists and it
> > > based on how i915 implemented it. By changing the semantics you're
> > > breaking user space. The documentation has to document the current
> > > contract between i915 and user space, not whatever you want the
> > > property to be like.
> > > =

> > > I get that you're frustrated that you have to do work while i915 does=
n't
> > > but none of that is relevant for what the property is and how user sp=
ace
> > > expects it to work.
> > =

> > That's not it, really. I don't mind doing the work. I do mind losing
> > functionalities on something that was working fine. And getting the
> > blame for something that is, at best, just as much of an documentation
> > issue on i915 devs.
> =

> We've had a couple of these cases recently where people have taken
> some old property implemented by i915 and implemented it differently
> in some other driver. Dunno if the reason was that people didn't try
> to understand what i915 is doing and why, or they misundestood it,
> or they understood it but decided to ignore it anyway.
> =

> Unfortunately having undocumented corners in the uapi is simply
> a fact of life when dealing with a >15 year old legacy codebase.
> Also there were basically no rules regarding properties in the
> past, so everyone just added random properties whenever they =

> felt like it.
> =

> I think going forward we should probably lay down some extra
> ground rules; if an old undocumented uapi is being extended
> to cover more than one driver we must first figure out what
> the de facto semantics are, and document things properly
> before anything else gets done.

That would be great. The documentation already has requirements for new
properties. Adding the requirement for extending driver-specific
properties to more drivers there would be great and make it "official".

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
> =



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

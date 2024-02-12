Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90E14C48297
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mGwnmzae7mYp75cipJ/RryIX1IbwYKdS2zU2cwHk9g=; b=TWIDgCkIDwya1R
	Smknbbj/tpVAyaRqi70e0zbQn6kQj2P3BaJxKwW7TWxsJ6ihJjn4rGSe9pD8ta9VjiTef02RFS0lt
	xRN/eg3cyhlYELyB3EVqYuCGc7qOT3+EfjzqSYKfrGCfShwwsolBu745YIlq0UQrKegPiyoo/foqO
	zTlZdxgYDFmKIhx51ox35TB6cy+wL2/0KB+QXyDOPWYAX5NF7Mm28D9XMUhKgrjkOgtCvs3oPlWS5
	Jl5TN2oXyef0AaNvAHvvJ0OuFZ+ld3hZQmj2qL/69nP8pANAOUbEGYpe0HBZi+7T3pRwGRbrjgj77
	NvO4R6VS+5TX+RiQpAOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZZlG-00000006LBH-15qN;
	Mon, 12 Feb 2024 17:06:30 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZZlD-00000006L9I-3HcU
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Feb 2024 17:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1707757585;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3eymUcFdUhoCcBYFo7gSsZUmQAqnxgL1YlUX2Z2tkFY=;
	b=M8dlS1dIJB8RZr9SgV2G9u5ZgEcI3NjfJbeHirwf+MEqhJvqfVusLyIqVoEIs0Gr0sd4H/
	OQuk6/+56zGvZh93VlHUhGVbrSA7UWVzT0cOpWdZvVpkp4drR6MARyrGUkGEbh0aLDDCaa
	Tf/XOVmjd6RUKmFDlE3Q9BfVC8kq/Go=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-582-8KS2-FdtODupzr6LJ0_-8g-1; Mon, 12 Feb 2024 12:06:24 -0500
X-MC-Unique: 8KS2-FdtODupzr6LJ0_-8g-1
Received: by mail-lf1-f69.google.com with SMTP id 2adb3069b0e04-5116e3cce79so2938895e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Feb 2024 09:06:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707757582; x=1708362382;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3eymUcFdUhoCcBYFo7gSsZUmQAqnxgL1YlUX2Z2tkFY=;
        b=FyeVXn7ZxO+RoKdM+rNspXahntLeBrF9fVHQd+Cgvhgql4EdYJkqYb1AHNa7Pros56
         9Wo0KajPzFMPZEpECc6qsIqvH5qK9ctTJS7aFg6xRsYF4/ZU22AwuktnBNIFLZPbRBG6
         8Gq/mTbKKs97L3z6nMnOwhX1Ibt/VMigWurvKAwa4t16nn3JBnryWZbX6aNBb/kblQHM
         EcT+cg6mswyvj+4m79vWtZObEfzpSKd3DZyVIVKIgiSaYhIwO17nRR8NTXt1EFeTFbUh
         SNKiP9Jx1k0qM9NSx4TTnaqkAXl56K3Q9cxL/NfHlcuB7UqpAnA2oH1f5QRbuNk29DvQ
         RkbQ==
X-Forwarded-Encrypted: i=1; AJvYcCU74C3i5Nz9n8ITCBPVHKrsFh6yN3odobnBLmqiSZhN3efrYzVyHg1bxnSFvSZfYvNXUkIEYDMNjNzSJIKi5ZbTPZi8h5PM93q+MuZRnFmOasJO
X-Gm-Message-State: AOJu0YwVYvTbzzcA/tg5yAihDoErMYUif53JPmJHh2cylAFAktP8LDLn
	jg/mLYZyXODD48zKC4FclmIavUXMBtL8WvQeLUfXjlA4df8xomPyojpnrnGpj8S5fBzUL3QhrRm
	Rd6Affqgnfzu3r97sE8iHWyE1x/sYv2nkXtC30mTm2lQfwsNeNm75dqfXtDuk/JA7JifoxQ==
X-Received: by 2002:a05:6512:124a:b0:511:6ec8:9b30 with SMTP id fb10-20020a056512124a00b005116ec89b30mr6055836lfb.50.1707757582612;
        Mon, 12 Feb 2024 09:06:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvDBjKALP1ZmqUpLt6l2lZIIDPssZ4zAUV94qq67shMDrA2wUIprRPNTJdwaMalC0xRGstzA==
X-Received: by 2002:a05:6512:124a:b0:511:6ec8:9b30 with SMTP id fb10-20020a056512124a00b005116ec89b30mr6055757lfb.50.1707757580610;
        Mon, 12 Feb 2024 09:06:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVDbpS/N9Btsj6liWrjb0yF4Ne0JTB7gb7oaub+EmpD+3bUF/+aHFfL3eeQSHDleOFtGcMAeedShtTblBVbTLi/Uzs8ehObiuNGcGbwIkqW6km3Ie29qRhA+zUURPsLIoGHoTWSg4hJRYbSVUsPFXzwjVp1B84hrtW4ZC9Jv8hudbAlqksOis3kEPid5AaB+nCE6Em/f/BtlmaI1D33wL7QtFNOoVSooPaFxOqD9+DrN1R72NrThYp7RPQPG9vgFaxmIC/rcynrvuJVZC0kQC5NTEPHKTi9Qn0l3RbIXl0/fCnCDdiXUJxw8nlUJro9mDFSCx+wDMVzsB+duddcMgdppppl5uL/DttHm7iUAuaz0qkvRK3C39vMGgFJ2pPhgKDTzg64xmT9+zSIIq2ZFkxpA9Tfc8HVn9B91LIk3ra8TNo071WjMAsu91/WNaR9L7sywPXJXIzF8A3y086BVmbaiXOCGhXyxY07obLAm8FZzfW0biMsLvV47IZuPgpNOPT85mDreg6UvKQaQZG4gDvu0Hnr4+BJRy84zQW6ds+BqUrNZ5bTTdRwNRvYi5uRnO/7nnB1NHvhtb2EgyO5oPjVjwmKjHzgKkXj7C6vqeNHozSUURoenVazPGqh87+vfENwn/kG40mogSAtYR9VZPedoT/rft62PYkLfTKNzRqyow==
Received: from toolbox ([2001:9e8:89a4:db00:6e8f:bfe4:6e0:1fe8])
        by smtp.gmail.com with ESMTPSA id w17-20020a05600c475100b00411062c123esm1846050wmo.26.2024.02.12.09.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 09:06:20 -0800 (PST)
Date: Mon, 12 Feb 2024 18:06:18 +0100
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
Subject: Re: Re: Re: Re: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add
 Broadcast RGB property
Message-ID: <20240212170618.GA1372043@toolbox>
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
In-Reply-To: <yx2t7xltxxgsngdsxamsfq6y7dze3wzegxcqwmsb5yrxen73x6@u3vilqhpci4w>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_090627_924099_AD8101A8 
X-CRM114-Status: GOOD (  48.78  )
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

But it's really not. The Broadcast RGB property kind of works from a
user space perspective because it's a workaround for broken sinks. If a
sink expects limited range we can force full range. If this however
affects YCbCr modes as well, then this isn't a workaround for broken RGB
range anymore because it now breaks YCbCr.

Sorry, but vc4 just has to change.

And again: let's please stop trying to improve the property.

> =

> Maxime



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D4AC4828F
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Feb 2024 20:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uy6ykaiDvWwCtsYh83rr5Y8NZpLB3eSM1YB/V4S/wQo=; b=FcAV1MmMRKeET1
	DlwV9n+I+RxAFbgKCsja+6VwUkeT2jjIEGg4332LKTP/6WAFLCSXrDWJdA+jVN14uBXWLS3dtsyAN
	fXY/+/e+0wNxzGwO3n01MAZxr8Wk6ZmhX3Sph+B0Bdu3lhybNK3RDogh9esEcCgfN/9L6C7uSUHTQ
	0yuydjccPFgzxCHGDS8163XG1OqBPBuLooqi5xMbLZpJHSf+xncCmd0HL+5yKEAezlPMmQSLOQbDO
	54BbCAyEzoUdYVjTmdqjTvltRI3KARLbV1+LmUlvjeVnarrhp4eiQ+mh8Vc7aw20r1qHPkhYTqIU/
	AtiRUAJTPd8oAWJMrTKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYXa8-00000000Vj2-15mZ;
	Fri, 09 Feb 2024 20:34:44 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYXa5-00000000Vhu-1uw2
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Feb 2024 20:34:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1707510880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=j2wWnG4c9flOTNWJ6O8wnfxhMZrHV7GwnwMrXW3f8A8=;
	b=HqWqpM9AZiaTePbJd2qdRTOIN/0UnuyADdnZpRFYdZR2gMb+o632vufDUmY1eSkPd9TeBm
	leFEhLUd1oeZch84S/ZdfhIQpRnYAPMBrwAVpfX9GBtzJjXJ1xv5+SObyj5JVYhIdR+uxG
	ZN878sEDKBSfS3GDnOyXW8LVrn5zGw8=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-680-PkaSkgKsPUm9JAZIFWOrdg-1; Fri, 09 Feb 2024 15:34:39 -0500
X-MC-Unique: PkaSkgKsPUm9JAZIFWOrdg-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-40fd28064a0so9290825e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Feb 2024 12:34:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707510878; x=1708115678;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j2wWnG4c9flOTNWJ6O8wnfxhMZrHV7GwnwMrXW3f8A8=;
        b=qBArHPxw0AdxVVXyggFFcQ37bKY+UD86lJeHtmOm/wzZCHijA5mWyXOvM88onzOwhv
         fZDtXmYwQlL5Kv/atjH+LreYosql+kD5usffnFvRnrdD8U8YQai5eSYPRqt3HJTKLxMF
         m/hrkzNneND1/7HFoABtKM/j8QN+QlDd0q8CSaJqb5yCyFsgyPdMJleeg/ctDN4uhUxF
         6Gp6q5QrYMUkcvAhYuzq1SQ++/MfheYqHlNWId2yKo8ozyfs7EmofFTLi1mPkyFdkjTL
         SZcj3chrQBKlYsOljg32bxmtisGThhtpkimn36OcEZbFo2P9WOHmZfC/O+W6qNKIbJ7R
         deFw==
X-Forwarded-Encrypted: i=1; AJvYcCXnOXoejlHYBxC7g2miuz61d2hxKPWnOb0oydyKKbN+XcOx/ZnCyis0ayfuodkJ/Xv4Kiz8Jlhcv61jNZjJV874Br8gBOGp8nfw4cLSfIyEArVR
X-Gm-Message-State: AOJu0YwqUazWpMP4dGCCxtVn54nG+bdfTB2UDADk2RP7RibYSY4xpI5e
	GT8GWSwsuwCO12yePYzdCx3z7pYL8hrT6cW0zrHGyzyxcbFiuIU8sYoKCv8MmJ4YDsrDwPUxCVK
	1uCsPlXclEBBjWd/JjPQiKoj+wwSBDVNJA5kPZ+BnZoQM8TBC+AF9tE7Z909oCzmlh/NaDw==
X-Received: by 2002:a05:600c:1da0:b0:410:67c7:4aec with SMTP id p32-20020a05600c1da000b0041067c74aecmr360327wms.2.1707510878043;
        Fri, 09 Feb 2024 12:34:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF13pfF52uklm5dhWcBcvNdikZJOPXaH04X4IAFneBMKzMG8gczhKEBhOer9kGWxz4bpMboiA==
X-Received: by 2002:a05:600c:1da0:b0:410:67c7:4aec with SMTP id p32-20020a05600c1da000b0041067c74aecmr360309wms.2.1707510877712;
        Fri, 09 Feb 2024 12:34:37 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUTFIpsyOPGLuOIRqyqojYZLXShV7fMVG8lKMKh8RWmrfILG4wVCf8gLUYnmxYZ6GojncTWgKEfP5koXhwu+L8mW7OdvkwtZN0qrjcaqiHaZqA7TU3roMpuu6JlMFFn+4qCBNlcejLlIfxt7yTqAQw44eq+2Gt3YvBKnODhx8UY004UIxjjJmMD1qB8k6iA5fh1kaHrSuUy+P8HziuYc5LiaFqmAu6pVpkvLeEb2evFtiqUaryp00KXCh/C+JzQZfr8YsNSQzKLSVIflmMGGpSXjhNZz7cEqPFNSPjqXXehfees138vEzAxsGDxWT/4m4Kb+BvL/VwHZf7h55cfdzPilGIWTQfjIlqsRLmTFjyNer9tvYV+fHP5NIvBrWkMuwK4zw081lC9wBo9G6v4Lqk9xFPzRi8ziXvrhzNkJGbvi8TR/Z2Bgw/uoru6FUJCpZZJRqb7Ak7PPwX2n1rGOXJPLjAI40lx4ryIIzK0+gPD5GtLOxedGKUhcKBzmmJYY3EPUoCscwHprrNUxAOqFjsFt9Dfx9HtZzehHYRn9fzQ/33OGqc6nEBUZ8In8El5X3dvcPBxG9zUrq9xbcPP0dphQoN8skR0FjYoQt0mIrjjraq/ahk149YTxa6askU6srquoL4TIMYWmij5nI37tV9iVNaet/SQt/58ZLbUrl60mQ==
Received: from toolbox ([2001:9e8:898e:7200:1f00:29c:19b0:2997])
        by smtp.gmail.com with ESMTPSA id r2-20020a056000014200b0033b4acb999dsm115375wrx.98.2024.02.09.12.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 12:34:37 -0800 (PST)
Date: Fri, 9 Feb 2024 21:34:35 +0100
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
Subject: Re: Re: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast
 RGB property
Message-ID: <20240209203435.GB996172@toolbox>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
 <20240115143720.GA160656@toolbox>
 <73peztbeeikb3fg6coxu3punxllgtyrmgco34tnxkojtsjbr3s@26bud3sjbcez>
 <Zb0M_2093UwPXK8y@intel.com>
 <hez2m57ogqx3yyqk45tzdkvxvhrbdepgm244i4m2aty2xhf5b5@acqgvmxhmmvr>
 <Zb0aYAapkxQ2kopt@intel.com>
 <zml6j27skvjmbrfyz7agy5waxajv4p4asbemeexelm3wuv4o7j@xkd2wvnxhbuc>
MIME-Version: 1.0
In-Reply-To: <zml6j27skvjmbrfyz7agy5waxajv4p4asbemeexelm3wuv4o7j@xkd2wvnxhbuc>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_123441_623974_0AC0F5D9 
X-CRM114-Status: GOOD (  48.00  )
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

On Mon, Feb 05, 2024 at 10:39:38AM +0100, Maxime Ripard wrote:
> On Fri, Feb 02, 2024 at 06:37:52PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Feb 02, 2024 at 04:59:30PM +0100, Maxime Ripard wrote:
> > > On Fri, Feb 02, 2024 at 05:40:47PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Fri, Feb 02, 2024 at 02:01:39PM +0100, Maxime Ripard wrote:
> > > > > Hi,
> > > > > =

> > > > > On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian Wick wrote:
> > > > > > > >  /**
> > > > > > > >   * DOC: HDMI connector properties
> > > > > > > >   *
> > > > > > > > + * Broadcast RGB
> > > > > > > > + *      Indicates the RGB Quantization Range (Full vs Limi=
ted) used.
> > > > > > > > + *      Infoframes will be generated according to that val=
ue.
> > > > > > > > + *
> > > > > > > > + *      The value of this property can be one of the follo=
wing:
> > > > > > > > + *
> > > > > > > > + *      Automatic:
> > > > > > > > + *              RGB Range is selected automatically based =
on the mode
> > > > > > > > + *              according to the HDMI specifications.
> > > > > > > > + *
> > > > > > > > + *      Full:
> > > > > > > > + *              Full RGB Range is forced.
> > > > > > > > + *
> > > > > > > > + *      Limited 16:235:
> > > > > > > > + *              Limited RGB Range is forced. Unlike the na=
me suggests,
> > > > > > > > + *              this works for any number of bits-per-comp=
onent.
> > > > > > > > + *
> > > > > > > > + *      Drivers can set up this property by calling
> > > > > > > > + *      drm_connector_attach_broadcast_rgb_property().
> > > > > > > > + *
> > > > > > > =

> > > > > > > This is a good time to document this in more detail. There mi=
ght be two
> > > > > > > different things being affected:
> > > > > > > =

> > > > > > > 1. The signalling (InfoFrame/SDP/...)
> > > > > > > 2. The color pipeline processing
> > > > > > > =

> > > > > > > All values of Broadcast RGB always affect the color pipeline =
processing
> > > > > > > such that a full-range input to the CRTC is converted to eith=
er full- or
> > > > > > > limited-range, depending on what the monitor is supposed to a=
ccept.
> > > > > > > =

> > > > > > > When automatic is selected, does that mean that there is no s=
ignalling,
> > > > > > > or that the signalling matches what the monitor is supposed t=
o accept
> > > > > > > according to the spec? Also, is this really HDMI specific?
> > > > > > > =

> > > > > > > When full or limited is selected and the monitor doesn't supp=
ort the
> > > > > > > signalling, what happens?
> > > > > > =

> > > > > > Forgot to mention: user-space still has no control over RGB vs =
YCbCr on
> > > > > > the cable, so is this only affecting RGB? If not, how does it a=
ffect
> > > > > > YCbCr?
> > > > > =

> > > > > So I dug a bit into both the i915 and vc4 drivers, and it looks l=
ike if
> > > > > we're using a YCbCr format, i915 will always use a limited range =
while
> > > > > vc4 will follow the value of the property.
> > > > =

> > > > The property is literally called "Broadcast *RGB*".
> > > > That should explain why it's only affecting RGB.
> > > =

> > > Right. And the limited range option is called "Limited 16:235" despite
> > > being usable on bpc > 8 bits. Naming errors occurs, and history happe=
ns
> > > to make names inconsistent too, that's fine and not an argument in
> > > itself.
> > > =

> > > > Full range YCbCr is a much rarer beast so we've never bothered
> > > > to enable it.
> > > =

> > > vc4 supports it.
> > =

> > Someone implemented it incorrectly then.
> =

> Incorrectly according to what documentation / specification? I'm sorry,
> but I find it super ironic that i915 gets to do its own thing, not
> document any of it, and when people try to clean things up they get told
> that we got it all wrong.

FWIW, this was an i915 property and if another driver uses the same
property name it must have the same behavior. Yes, it isn't standardized
and yes, it's not documented (hence this effort here) but it's still on
vc4 to make the property compatible.

Trying to make the property handle YCbCr is very much in the "let's try
to fix the property" territory that I want to avoid, so I'm in favor of
adjusting vc4.

> > > > Eg. with DP it only became possible with the introduction of the VSC
> > > > SDP (and I don't recall if there's additional capability checks that
> > > > are also required). With DP MSA signalling full range YCbCr is not
> > > > possible at all.
> > > =

> > > This is for HDMI only.
> > > =

> > > > I don't recall right now what the HDMI requirements are.
> > > =

> > > HDMI has supported it for a while, and it's defined (for example) in =
the
> > > HDMI 1.4 spec in Section 6.6 - Video Quantization Ranges. It supports
> > > limited and full range on both RGB and YCbCr, as long as the EDIDs st=
ate
> > > so and the Infoframes signal it.
> > =

> > I think a good reason for not using a simple boolean like this =

> > YCbCr is that it doesn't cover the color encoding part at all,
> > which is probably more important than the quantization range.
> > So we need a new property anyway.
> =

> This isn't what is being discussed here, and as I've shown you, is
> completely orthogonal as far as HDMI is concerned.
> =

> Maxime



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

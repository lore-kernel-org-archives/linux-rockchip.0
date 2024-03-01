Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03DF0C5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 14:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sO94bOvqD/9E35piCHnGclddZfgVdkUxNqZG+MevPvI=; b=YshA+MukWGPSvO
	8UQW4PsI0xV0WBukom0i7PuNYjXG0Us6UJZyTifH7051/ZYZ6EsOOIIPXbhWbvg8oi+WCFWGSO9Ky
	Odf4I2dOWT4n/zbwN4ukvZjFrgTtNWgiv0hUBFRuebCOpZbiGJzm059cdyE/IldGcX0043hbeiYjG
	9kNrs0HFzdKfaBmnl6bENBBg2SmTEiOJUYrk+N93jKqgbmeUmSprL0FOSm1NkU3sQbV0SEkIEN/g1
	VQ/zYyRt01MSI7PFWzkMr8t2cIRoeQYqL0esZY7rMdCfD4YQ7/CK1RIcTWJqZTC80T3zP77gwza5c
	BA2Ko1jiUGC2xdPSiAUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg4AY-00000000mRW-1KWx;
	Fri, 01 Mar 2024 14:47:26 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg2jW-00000000ME4-1Hwp
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Mar 2024 13:15:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1709298925;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=j6JDdzMRW33EgNy8WVE2rwXJul+k7YILcoZp2XURKLI=;
	b=iI8lTj7syOyTuYUrra2JC9Ixh25zlm6lpJ5/XDSxvHHZ/6ckDatltHl+o0x+DBKt8i4e14
	GWgGHG02FIHk3CvRUBtRNIt2Pb3jLghh+3m1ZOV1vVbydisna2iAiG8iA+MKLF1Y12RhUs
	cSNRD4SkeYAhCd1c/P3E/TVKYPX2EQo=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-311-_MH_jNwiPR61HFuDiw5U8g-1; Fri, 01 Mar 2024 08:15:23 -0500
X-MC-Unique: _MH_jNwiPR61HFuDiw5U8g-1
Received: by mail-lf1-f71.google.com with SMTP id 2adb3069b0e04-5132bb1921cso1281051e87.3
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Mar 2024 05:15:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709298922; x=1709903722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j6JDdzMRW33EgNy8WVE2rwXJul+k7YILcoZp2XURKLI=;
        b=e4YvsaDRyQCRaeq9Jwf6fYYMZhbzCB7IwaGc6rvPqIp5sIDdXnXm45gxENy/vgfXzy
         DJ8BbNDxqvTclDjKSnegU30Z5HZCtYgH2Oh/ss9jCnJxVWoVDiy6Bu8bKHNsoUrLKaar
         i4LYJsQgkps8z0nOKh8BPzusuDc/ltaVsiOv8ptvYkgmeRbSoVOB5Bsby+Ztq/qUpxks
         7YEnFivvdFr3G6So1QRA/HuqxqybWzScYXYhGJINTGP8Fh9+Xb81FgweyYhUmGHkuGZp
         lqo59aseYZKTIrDIwA9H1isvaaHfiIw3B0Ypf8fCb6d/AIFoOdaPJ8iviVHDattJOQyQ
         q61A==
X-Forwarded-Encrypted: i=1; AJvYcCXLLjlTuV3/tb74kX2Pz+kqd7UploumZUMJ0//VCBpLea6+KLuzDhPGO/oFqvtjqGZ0qIG8ziIOXCLu2UKs7zwLW2srMKzBKpU3M5pdoA2Flu83
X-Gm-Message-State: AOJu0YxoDFsI8pu44HdKYEIYgLo08+ICRFN466SAYfQoo7Hvl5BIDHgX
	Bk+ciLp6sv+mw+yYTOuqB3sT2Im0HGBdjNzy2CA1e/1qDhP8C/t2IvQtDpBkV0f1iX1tVeulZG+
	7E7H2JdscGuvMGTns0ugM+MQykGoN8uTzhXLuAHSo4Mv7nf9/ZVH1sQmUIHfpi8OYQ2uQOA==
X-Received: by 2002:ac2:599b:0:b0:512:f6d3:9998 with SMTP id w27-20020ac2599b000000b00512f6d39998mr1223717lfn.17.1709298922218;
        Fri, 01 Mar 2024 05:15:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFwlzt5HlgK0WAcZyh2ZsOJe95EyGGHjhxje8QxMH4nFVP4Pvs9Hg/dbyzZ0Awcz9X/EGacJg==
X-Received: by 2002:ac2:599b:0:b0:512:f6d3:9998 with SMTP id w27-20020ac2599b000000b00512f6d39998mr1223689lfn.17.1709298921881;
        Fri, 01 Mar 2024 05:15:21 -0800 (PST)
Received: from toolbox ([2001:9e8:89a0:c500:c65:1f3a:8c08:2a1d])
        by smtp.gmail.com with ESMTPSA id bw1-20020a0560001f8100b0033db0c866f7sm4639850wrb.11.2024.03.01.05.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Mar 2024 05:15:21 -0800 (PST)
Date: Fri, 1 Mar 2024 14:15:19 +0100
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH v7 21/36] drm/connector: hdmi: Add Broadcast RGB property
Message-ID: <20240301131519.GA10491@toolbox>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-21-8f4af575fce2@kernel.org>
 <20240229194726.GB166694@toolbox>
 <20240301-light-impressive-grasshopper-adabeb@houat>
 <20240301112941.GE166694@toolbox>
 <20240301-loyal-cornflower-oxpecker-83ed59@houat>
MIME-Version: 1.0
In-Reply-To: <20240301-loyal-cornflower-oxpecker-83ed59@houat>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_051526_481091_212139D8 
X-CRM114-Status: GOOD (  29.32  )
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

On Fri, Mar 01, 2024 at 01:12:02PM +0100, Maxime Ripard wrote:
> On Fri, Mar 01, 2024 at 12:29:41PM +0100, Sebastian Wick wrote:
> > On Fri, Mar 01, 2024 at 11:30:56AM +0100, Maxime Ripard wrote:
> > > On Thu, Feb 29, 2024 at 08:47:26PM +0100, Sebastian Wick wrote:
> > > > > @@ -1708,6 +1731,39 @@ EXPORT_SYMBOL(drm_connector_attach_dp_subconnector_property);
> > > > >  /**
> > > > >   * DOC: HDMI connector properties
> > > > >   *
> > > > > + * Broadcast RGB (HDMI specific)
> > > > > + *      Indicates the Quantization Range (Full vs Limited) used. The color
> > > > > + *      processing pipeline will be adjusted to match the value of the
> > > > > + *      property, and the Infoframes will be generated and sent accordingly.
> > > > > + *
> > > > > + *      This property is only relevant if the HDMI output format is RGB. If
> > > > > + *      it's one of the YCbCr variant, it will be ignored and the output will
> > > > > + *      use a limited quantization range.
> > > > 
> > > > Uh, maybe just say that the quantization range is selected automatically
> > > > in case a YCbCr output format is in use. I'm not sure every YCbCr
> > > > variant requires limited and even if it does, new formats could change
> > > > this.
> > > 
> > > I documented what i915 is doing:
> > > https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/i915/display/intel_hdmi.c#L2143
> > 
> > Sure, this is one valid strategy for the automatic behavior of YCbCr.
> > Drivers could also always send an InfoFrame to ensure full range where
> > possible. The point here is that this property shall not affect YCbCr
> > output formats!
> > 
> > Maybe it's even better to say "driver specific" instead of "automatic".
> 
> Honestly, I'm not sure what you want from me here. Ville and you
> insisted on the previous version to document what i915 is doing and to
> follow whatever the behaviour was, and that we shouldn't spend time
> improving the property. Fine, I did that.
> 
> But now, you want me to ... improve the property?

The property has a clear scope: quantization range for RGB output
formats. What Intel does with things that are not in scope of the
property is irrelevant. This isn't improving the property either but
documenting the scope of the property.

Sorry if this seems arbitrary but these details are so important to get
right because the interactions between all the different things is
already majorly broken.

> Maxime
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

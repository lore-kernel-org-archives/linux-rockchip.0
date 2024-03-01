Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23869C5478C
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8vdXv/bxVslVKPB3dro3PZQAyvdWEgmLeYtT7SbKEo=; b=GEOeoCbNbOVWkz
	kH+VyNwEHY/I7tuf4CLx0WUMo1r7F9TLMfm+hYz+qmYMvDj/fPchG6n0lFS1wU1lefe4ANhH/IBhh
	GXDrKQ6gzpd3+rHXcq1FazAJeQx3F7c1CX2UgNhrXx7a80IUmlSYAjJ3X0UfP9NizyKzd80B85JmS
	23caxYVlN8+K/3dbv5bnbzXjAax056xE//1WbaK2dTDrhTkyIZwX8Uj00nSE7KW3/57NOuzhCsJ4c
	lUl5t1LS2w0drh7lavoWlzfp0cF3F7A96LFtslfVPatWb1FPzrnZLWvoNWAxRZj8zowUVEfca/N6F
	6l8UNj30AAG7N3EjL8Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg16i-0000000Hb7p-0WVo;
	Fri, 01 Mar 2024 11:31:16 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg16d-0000000Hb2X-1mLD
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Mar 2024 11:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1709292669;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qRUqDJ3Iv/k5nE0Cga6hqzTdj9gEhtnN2QTBMasCuKc=;
	b=inR0I0fZEt1MfWlHqLLYIzCNNzLRI9sSB7cAJCBfIP5IhKfbMgGMyEBazFLl8kX0RzZCxd
	Z/c/tqUfDHfGrofh7me0JxV8hR3JjGPFPkbeZ1IrWdxQ7YISlW5QcpMGieB4+ZBW/vCK5U
	LDpmVrK4OZb+hFzKztOruYCfcjsvxyc=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-330-u0xQGNIJOr29WUSeiW-r8A-1; Fri, 01 Mar 2024 06:29:45 -0500
X-MC-Unique: u0xQGNIJOr29WUSeiW-r8A-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-412add7c18fso9527995e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Mar 2024 03:29:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709292584; x=1709897384;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qRUqDJ3Iv/k5nE0Cga6hqzTdj9gEhtnN2QTBMasCuKc=;
        b=we0C6YjGFOvMVcbL/icsuZHRXRlxlj743UQX3DyuMBLY5ggXzlK4OSqzY9uPARrB08
         rqG8kI+dcfYoAgTSg94FjoWrxA0dzx3PrRTYCVJzYbKLFEgqyJglqLjEYXEZzEXV/MqS
         3TVgkHhZ733K/fGFSP8/z62gsqUaTJlb21FxEeOLoIuj0eucDNLOuTsLqI3adfG9g3P/
         bumq0SZoelapcZQPlDNH3f2LMSdgh/sAOMlWZ3kAp+PUNZLR+Ehf0YUtXSJa4nVuYwAu
         cKHWStGU/Wyumfbbkr1c3xytejgV6MM4tA7G+Bzsw/vogPM7TgHaZ6+7Bt8HuI6R0Mg4
         /iMg==
X-Forwarded-Encrypted: i=1; AJvYcCXR3SEYJrkewMRS3Xnl28/tsfjQXhEG//OA5IWcdpNygC0mULr4BoZ/ymvuplr6mmXWdnQAaj4iFy4G8dfQ3ISlZwuaJam2t3VfqbEwgdjCpsem
X-Gm-Message-State: AOJu0Yys/4KYXGlCGdq4sP0AXU6J0BfIZOrH+TWH2J4P2er5GcaBphCT
	bRv134baWl1e0gSJD+8Q7GUDsuIIrLCJikdhYxb5CjY7g3zwe1wBg7K9055zHVCVifeRvl2d0lq
	w2pXtbFWs3t4CvjuFcXem0CQ1TGUiRdGFISptR6f0mM0O7pIEKR66Be/rpwyLpdn9Oxa6Iw==
X-Received: by 2002:a05:600c:4fc4:b0:412:c8c9:c844 with SMTP id o4-20020a05600c4fc400b00412c8c9c844mr988474wmq.26.1709292584000;
        Fri, 01 Mar 2024 03:29:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEKqlwQ+JstuXu5h4wbg4ZOpZ/dkea6nQ1ibG6iOdPso+qOIY2FCKYMPY6GH4tsyMvb9w+yJg==
X-Received: by 2002:a05:600c:4fc4:b0:412:c8c9:c844 with SMTP id o4-20020a05600c4fc400b00412c8c9c844mr988453wmq.26.1709292583675;
        Fri, 01 Mar 2024 03:29:43 -0800 (PST)
Received: from toolbox ([2001:9e8:89a0:c500:c65:1f3a:8c08:2a1d])
        by smtp.gmail.com with ESMTPSA id bi19-20020a05600c3d9300b00412ca030252sm1036720wmb.30.2024.03.01.03.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Mar 2024 03:29:43 -0800 (PST)
Date: Fri, 1 Mar 2024 12:29:41 +0100
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
Message-ID: <20240301112941.GE166694@toolbox>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-21-8f4af575fce2@kernel.org>
 <20240229194726.GB166694@toolbox>
 <20240301-light-impressive-grasshopper-adabeb@houat>
MIME-Version: 1.0
In-Reply-To: <20240301-light-impressive-grasshopper-adabeb@houat>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_033111_780483_A17CBC7C 
X-CRM114-Status: GOOD (  19.92  )
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

On Fri, Mar 01, 2024 at 11:30:56AM +0100, Maxime Ripard wrote:
> On Thu, Feb 29, 2024 at 08:47:26PM +0100, Sebastian Wick wrote:
> > > @@ -1708,6 +1731,39 @@ EXPORT_SYMBOL(drm_connector_attach_dp_subconnector_property);
> > >  /**
> > >   * DOC: HDMI connector properties
> > >   *
> > > + * Broadcast RGB (HDMI specific)
> > > + *      Indicates the Quantization Range (Full vs Limited) used. The color
> > > + *      processing pipeline will be adjusted to match the value of the
> > > + *      property, and the Infoframes will be generated and sent accordingly.
> > > + *
> > > + *      This property is only relevant if the HDMI output format is RGB. If
> > > + *      it's one of the YCbCr variant, it will be ignored and the output will
> > > + *      use a limited quantization range.
> > 
> > Uh, maybe just say that the quantization range is selected automatically
> > in case a YCbCr output format is in use. I'm not sure every YCbCr
> > variant requires limited and even if it does, new formats could change
> > this.
> 
> I documented what i915 is doing:
> https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/i915/display/intel_hdmi.c#L2143

Sure, this is one valid strategy for the automatic behavior of YCbCr.
Drivers could also always send an InfoFrame to ensure full range where
possible. The point here is that this property shall not affect YCbCr
output formats!

Maybe it's even better to say "driver specific" instead of "automatic".

> Maxime
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84005C4828F
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Feb 2024 20:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OgXxAAbCQcPOa+axdCANjI9N+qybuyMseOKwydhI8O8=; b=dB5mZ+e+nha1lv
	bNcx+/2j6apokYIHr/voRVYHsxgcop7oBgFd8qPEiMvVcWdv3vicxQf9Jfz4jsofvjA0ZIFOooueK
	Nq5DEbKfVonQ03kyQsJ3fM33NiVz+yl+KBqRThQzuywtYRSAq7XT/gh0A0O1tGdiFFzf3Z2g2gT8R
	+vOy5SSsb1z9UDh5StZ4V5+PgwuEx5ApqqXAWorEtCrcQjHoJMF4Zn+dCW7Sz5bRxAILNNjhcu8PT
	0sT94gLaErnCgHCJCtgRtETC9sM387RLG2MQ4VqSBUpCrMohxZUFxgkiEmSp8IdxAtaxkr7Mv7ZT1
	I2JavbXXulCieIEeS7CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYXWU-00000000V6M-07iH;
	Fri, 09 Feb 2024 20:30:58 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYXWP-00000000V58-2dZY
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Feb 2024 20:30:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1707510651;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=r8J/XbEGW4rTV6z/EaKBWgEwgI/IDyi1WgmOXHA89nc=;
	b=N0FgUj9Q5AK+1OWY6KMcWcLFXB/nZbDYog2dGqDrcpbgUfbx5ZfyGNR2JUg7JV2lwnMGeH
	kggPAdrbt4tgIPXLnqdhjVv03cLUuNRX0xpwiggwpKfTcv5dnQ69MHW5FtlDO0Hl7jRxg3
	pJ4atz0DpzLjVyiY4rri7g79PERYhJY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-346-o78jbG64MnCua5siPs49Ug-1; Fri, 09 Feb 2024 15:30:49 -0500
X-MC-Unique: o78jbG64MnCua5siPs49Ug-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-41005484bf3so9325485e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Feb 2024 12:30:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707510648; x=1708115448;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8J/XbEGW4rTV6z/EaKBWgEwgI/IDyi1WgmOXHA89nc=;
        b=Qlb8czKqSjHjoyO1XgBfot4s+p3nUPSQDgCaFAyx8aSzC0H3FTIKk0fHP85ieniEs3
         TB+ppGuw8QhZS0zm8hP0H2MDolXdkpUs/R8ORp3y+oEFMicCJ3xz5tw+bMlOR70vFJdu
         vGGp1ny3pSiF+lhWZFJiSUM3P6K/bdswV+FkAsjErrVFHe7tg/SfZN8tsWJx2ZIqMrqW
         Jc8B8gV9vGPl97rmzYiatHEA8MufifaIR9n2mBrb+3gQ9LNy1a97xRduXGAVv9f/sm/p
         r6PoYylabSRZZUTTBimJbP+dZwnc6ecNOM7Eui5pnD4FEoWHljJcEVY9EYbm8NTWFgez
         fdkQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+GbPRQarul9ccRL8Ce2QcZqD2cLmKp8z85KI6U4uSnayXhQd2FCPshTI76NVDtHghLYDf8l6dErmwiyMaxFWtMuV/fv2djCyL1BQBs85ID8cN
X-Gm-Message-State: AOJu0YyGFH5tOflmBNN3DuA94FgddB+h6Q81khUv9Nhc7y3mAdcl/tXj
	P5MKgznaifUtYVOapU2hUBI59tzmxvztlPutrOHZ3twyb2qdxwxf/R5oaZW5nFt7oM5Rz9pFq9n
	I2fTcLDEnbEjaSfhdL4okS/NQlLuBm6zOt/L3NKIH6pEfJuNMqFkCqaJFQ/o5r7icremPYA==
X-Received: by 2002:a05:600c:5248:b0:40e:f2d6:9dc with SMTP id fc8-20020a05600c524800b0040ef2d609dcmr299008wmb.33.1707510648622;
        Fri, 09 Feb 2024 12:30:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHn7tTpFP36Rfj//rT72qd9+jvGx2yenpz6/LSui/V8HYLJ/ywcOwSHhBf9szBB3acqUagp1Q==
X-Received: by 2002:a05:600c:5248:b0:40e:f2d6:9dc with SMTP id fc8-20020a05600c524800b0040ef2d609dcmr298995wmb.33.1707510648315;
        Fri, 09 Feb 2024 12:30:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVcq9h0v46XkBbkpGmGw7p+gvFjC5M5dM9Vxo8+153Wr+2lSmDerGeFt0bQGagJ3AqQ62L9bMcfNAhyGp2EErv/jeUfhwoqxnFqHWXQmWyIufisWQ5NN+QWQZlhqNzGtg3ymkuvzMX62LPzGS7cu5QPu8iSUMsQ7o6o8mDsv/1PeyApbtC7c0tr4rM19hySOPuvNxflS+MbsX7T4dcy51FG4nTDSJDOHg2oTilImEUjF9D97lu6EPkSvViSU5ywMA6djQ5iy8zI6i8Z1CgH9ADUR4hIYgyTZ5dnpM5e3m41u/AzGTlyFFLd1f8XUHyiMrA2TbDmPUp5WspO/0kN3M4DJfVZl1bznOif8MLeUNZ6JMJUffSu4bpqe4e3RjzORPF4lNXqSILT96MQe6qWSLLYaiRE9viR3LceZoFPgmqQ4SLwrk5+FfsTiZKXV4pGD77JBdQi4X+LMuG+3Y6kX6rHBO1SJC2XaPIdkIlpeCi4v+S7sSmgEXReM8iiCvemxFkRuc3WnHLe1Fa0/cXLvqaT9xfK6QfieDTCNEXIlIWWWNaoUpH0eAyFuxH2qyqMoSV10vmbY//bU6qpp6m8rb//wF90dZGrVCRNumEXcMHCB/ll6EBPUktzLtXGDl4=
Received: from toolbox ([2001:9e8:898e:7200:1f00:29c:19b0:2997])
        by smtp.gmail.com with ESMTPSA id g7-20020a5d5407000000b003392206c808sm109606wrv.105.2024.02.09.12.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 12:30:47 -0800 (PST)
Date: Fri, 9 Feb 2024 21:30:46 +0100
From: Sebastian Wick <sebastian.wick@redhat.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
Message-ID: <20240209203046.GA996172@toolbox>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
 <niqn7eql5neyfp5ficdfisdpmlwrprovqn5g7lgcfwoe74ds23@7fr4yv2miqe7>
MIME-Version: 1.0
In-Reply-To: <niqn7eql5neyfp5ficdfisdpmlwrprovqn5g7lgcfwoe74ds23@7fr4yv2miqe7>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_123053_765949_FBEF6EC3 
X-CRM114-Status: GOOD (  28.88  )
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

On Fri, Feb 02, 2024 at 04:49:04PM +0100, Maxime Ripard wrote:
> Hi Sebastian,
> 
> On Mon, Jan 15, 2024 at 03:33:08PM +0100, Sebastian Wick wrote:
> > >  /**
> > >   * DOC: HDMI connector properties
> > >   *
> > > + * Broadcast RGB
> > > + *      Indicates the RGB Quantization Range (Full vs Limited) used.
> > > + *      Infoframes will be generated according to that value.
> > > + *
> > > + *      The value of this property can be one of the following:
> > > + *
> > > + *      Automatic:
> > > + *              RGB Range is selected automatically based on the mode
> > > + *              according to the HDMI specifications.
> > > + *
> > > + *      Full:
> > > + *              Full RGB Range is forced.
> > > + *
> > > + *      Limited 16:235:
> > > + *              Limited RGB Range is forced. Unlike the name suggests,
> > > + *              this works for any number of bits-per-component.
> > > + *
> > > + *      Drivers can set up this property by calling
> > > + *      drm_connector_attach_broadcast_rgb_property().
> > > + *
> > 
> > This is a good time to document this in more detail. There might be two
> > different things being affected:
> > 
> > 1. The signalling (InfoFrame/SDP/...)
> > 2. The color pipeline processing
> > 
> > All values of Broadcast RGB always affect the color pipeline processing
> > such that a full-range input to the CRTC is converted to either full- or
> > limited-range, depending on what the monitor is supposed to accept.
> > 
> > When automatic is selected, does that mean that there is no signalling,
> > or that the signalling matches what the monitor is supposed to accept
> > according to the spec? Also, is this really HDMI specific?
> > 
> > When full or limited is selected and the monitor doesn't support the
> > signalling, what happens?
> 
> Leaving the YCbCr vs RGB discussion aside, would this be better ?

Yes, it is. Thanks.

We do have to resolve the YCbCr vs RGB issue though.

>  * Broadcast RGB (HDMI specific)
>  *      Indicates the Quantization Range (Full vs Limited) used. The color
>  *      processing pipeline will be adjusted to match the value of the

Ah, another thing no note here is that the CRTC as configured by user
space must always produce full range pixels.

>  *      property, and the Infoframes will be generated and sent accordingly.
>  *
>  *      The value of this property can be one of the following:
>  *
>  *      Automatic:
>  *              The quantization range is selected automatically based on the
>  *              mode according to the HDMI specifications (HDMI 1.4b - Section
>  *              6.6 - Video Quantization Ranges).
>  *
>  *      Full:
>  *              Full quantization range is forced.
>  *
>  *      Limited 16:235:
>  *              Limited quantization range is forced. Unlike the name suggests,
>  *              this works for any number of bits-per-component.
>  *
>  *      Property values other than Automatic can result in colors being off (if
>  *      limited is selected but the display expects full), or a black screen
>  *      (if full is selected but the display expects limited).
>  *
>  *      Drivers can set up this property by calling
>  *      drm_connector_attach_broadcast_rgb_property().
> 
> Thanks!
> Maxime



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

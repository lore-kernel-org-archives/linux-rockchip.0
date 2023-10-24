Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCE7AC07545
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 18:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IITVL4FKuQi9cHw4DsBESkWXwnv2Yb1dSnTfhCFIWbU=; b=NsCeadhc+VOR+I
	YWAGSwPij2pP4ZUtiuznfl9j00V8Ip3drnFu8jEi8BHsLI9bio/Jy4VyFzl+nI/X/vDTDy81f8aIJ
	/Z8rFmkFBaXxLt8lbvnRGGPi0KGdgfAsui6MHUJnM3DsfPhVl6vdN2ek4utTbD+H1mRBbxzupaT83
	xmd3Yf8f8mUxtTpjLNaCmx0m1VvfjbFuId2pQX8oFjgqNfSEvcF9a7har4NLTbOWXwHif7kvcHIvL
	EBwarlUcnafcRdpQekZxC+MvAFIQ2CvRQEG4xF8+m+d8E0EVpaDSg95NbChGW5vB7Sk5Aqwd7rO0g
	gZCttEA2FfMea2IFMxdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvM8T-00Afes-2E;
	Tue, 24 Oct 2023 18:28:13 +0000
Received: from mail-oo1-f43.google.com ([209.85.161.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvM8Q-00Afb8-15
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Oct 2023 18:28:12 +0000
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5820299b99cso21789eaf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Oct 2023 11:27:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698172077; x=1698776877;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZNng016sWlIYuCE41qXO+ZMCuxWjt/SPYUfNc1rT6qY=;
        b=rxY/tEzi3eqw/0hGuD9o13p8uUOvEAwkbSh/BSxpY/fNc+Yl2fLWDE8+qBDeMUt1Rh
         V2myFftM5Udjy2JJG79d4ZLOF4b3uLl9k6EtlrAGubajcuak22Xa+ES+P6IJxw7K6Lds
         A3VFi2PqFuNOZSF5KxaNGUeHnJCatUcbsRj7aC5HTRTofEGVVYShkBJuptM/o2+faA7h
         HYOXhk47biihWAzxjLNZElp/0USlzcb5mfoX4pzEF9LlGjikhJFVHVnK1RliStl1olQw
         /deTJAspikEAXWv/hLtu+zwEwTqebnZ/os0OXGt1GZ6XSSCnkx83Q/dGg2MRVpPGTWje
         f8DA==
X-Gm-Message-State: AOJu0Yw4N6mO4k7pYvlHRF+VwAn144a3Wi1dz8nKd+VH+dFPE12EZK1g
	lexZLcm+dJGKlfzrn0KwLQ==
X-Google-Smtp-Source: AGHT+IF4Mo7SI7+Mkd9TqQMoBcw8WQzBGoqowxfYx/0ojUXzi24Q6N3YSxHT8mMusatDWtCimTP/wg==
X-Received: by 2002:a05:6870:13c6:b0:1e9:b5d7:4000 with SMTP id 6-20020a05687013c600b001e9b5d74000mr6763342oat.7.1698172077184;
        Tue, 24 Oct 2023 11:27:57 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id cj19-20020a05687c041300b001c02f12abd0sm2231435oac.38.2023.10.24.11.27.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 11:27:56 -0700 (PDT)
Received: (nullmailer pid 243306 invoked by uid 1000);
	Tue, 24 Oct 2023 18:27:55 -0000
Date: Tue, 24 Oct 2023 13:27:55 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, sboyd@kernel.org, mturquette@baylibre.com, daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH 1/5] dt-bindings: display: panel: Update NewVision
 NV3051D compatibles
Message-ID: <20231024182755.GA215478-robh@kernel.org>
References: <20231018161848.346947-1-macroalpha82@gmail.com>
 <20231018161848.346947-2-macroalpha82@gmail.com>
 <e684983a-9399-4fd7-8fe5-41faeabbfab1@linaro.org>
 <SN6PR06MB534271680DB8A3A3F0A1A31CA5D4A@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR06MB534271680DB8A3A3F0A1A31CA5D4A@SN6PR06MB5342.namprd06.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_112810_380386_EACFEC45 
X-CRM114-Status: GOOD (  32.33  )
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

On Thu, Oct 19, 2023 at 09:50:38AM -0500, Chris Morgan wrote:
> On Thu, Oct 19, 2023 at 11:22:19AM +0200, Krzysztof Kozlowski wrote:
> > On 18/10/2023 18:18, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Update the NewVision NV3051D compatible strings by adding a new panel,
> > > the powkiddy,rk2023-panel, and removing another entry, the
> > > anbernic,rg353v-panel. The rg353v-panel is exactly identical to the
> > > rg353p-panel and is not currently in use by any existing device tree.
> > > The rk2023-panel is similar to the rg353p-panel but has slightly
> > > different timings.
> > 
> > This still does not explain me why do you want to remove old panel.
> 
> When I originally wrote the driver I only had one piece of hardware
> and I set the compatible string in the driver as newvision,nv3051d.
> Unfortunately since then I've found 2 more devices in use that are
> *just* different enough to require the driver to do things a bit
> differently. In the case of the anbernic,rg351v-panel I need to
> enable a new DSI flag; in the case of the powkiddy,rk2023-panel I need
> to decrease the vertical back porch and drop the higher frequency
> timings.
> 
> The best way to accomplish this was to change the strategy from having
> a single binding in the driver of newvision,nv3051d to a binding for
> each distinct hardware where the differences apply. 

Exactly why the DT maintainers annoyingly ask for specific compatible 
strings which may not be used immediately.

> Note that I've
> looked at querying the DSI panel ID, but for each device the value
> is identical (so it can't be used to differentiate the hardware sadly).
> So the driver now has 3 different compatible strings. I could in this
> case add a 4th compatible string of anbernic,rg353v-panel but it would
> be identical to anbernic,rg353p-panel. For the moment we are using
> anbernic,rg353p-panel everywhere (including the rg353v), so it makes
> sense to drop this unused value while we can, at least to me.

Your reasoning is the compatible string is unused, so remove it. 

If there's some reasoning about how the 2 panels are the same hardware 
or the rg353v is never going to be used or show up at some point, then 
that would be a reason to remove.

You could also say the rg353v is just wrong because it should have a 
fallback compatible to rg353p and rather than fix it, just remove it 
for now since there are no known users of it.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

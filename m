Return-Path: <SRS0=Qwjt=NK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 493C8C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 13:53:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 14F8F610FF
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 13:53:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 14F8F610FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oo4I1Pt5/qv/y0GWQqtVBatJFwrwSfQj1RuRDJ6OgVs=; b=kqaNUF/3HFM5EI
	HgozfFfp/BGSrIyDlSK8e2+hFBY40wefIKp0ErvI69a1asJeD7/gYwCOYQo6EfksQTagFswO4KUYg
	yYRgV2CdB8m+c8cMCdHDHK9tSu9K6h2y4Kb6jHtWH9R3t+VARLk93MBSeEvEKf2/w50sEF12Q8N81
	5S/FwPoLZ7wV/4DWhQuqVJvrcWRpD94thAvlfeJ0Ih3GnajEKWv2JJbNUMH6Jeinwi5x2/4zgzjP2
	xSlqlpEt0S5C35U1u5/uqKw2+Sxr0q1KGTGFzExDgrEeKXjFkBqva2Z6EW4ltfo0dc+POq73eIF8H
	fAR80bOV7hsKlzr9oujA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGiTs-008Wct-Tk; Thu, 19 Aug 2021 13:53:16 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGiTb-008WXo-2R; Thu, 19 Aug 2021 13:53:00 +0000
Received: by mail-ej1-x62c.google.com with SMTP id z20so13096854ejf.5;
 Thu, 19 Aug 2021 06:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/HYaakT71hwEdcXvkxwyQsillUjSwTO59JhdjV9n6y4=;
 b=BVG+5HrApNRX9+03fK0jt38W6Ps+UyhCQADZcdZe1QVPyVsrWh+RlxWohzju5i7IfV
 IGO9cvRFPjCMp+i8l1kXqOyMt3QsOoyEyu6f7xLSY7Vs2LzpmsgFEuz3zLkK/6CTLrdj
 F7nnKRo3DDRugBTcoyY2Rss9o2yUYfy9fQZb1Ep0lkSXVE8XYZuQuYlYw0PKM9C5vj1A
 w2VGwE8UO4owDU0hs4h1DKqlg8np9j+vKv5jrARah7QGVhcuNxgx2j2bpqUMvH8vp+eV
 vRUi7Sq+lk179LXgirigXKAzF0UqCguYyHo0hgqud7AZMK6uB2DFeBV2HxFX1QzBgUO8
 +utQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/HYaakT71hwEdcXvkxwyQsillUjSwTO59JhdjV9n6y4=;
 b=ZUKwr2jCZssDnBISYoMI78Jre45ZfFsJmWI2dKskUY3ZdKwv8F/Di6BMqlD1DUa5RF
 VOdsBN4M9FJkGA/H+EM1TWXscIIfTBICj2v7YnpS9PraTMMbBGD40Q7QkwgvVTgooDtb
 7ggYZhJHrdCJRt4uoqD0Htgr4J+v7rvuN9iHNe+UeoA8C0idosvsBJ1SsDFwuBOmksS/
 vCabUjjb+bws3Sc+4YHjXUa8UlbcRrY9VFiWBA97DBATtSzVP7tuLcu88i0vwMZlYpMO
 4/sA29TFXIRQJ09Y9/dW5N2uInf3fUji6wd6wTBaOOZVrUBfi1jEQQycw76VF4t2y/6m
 jzDQ==
X-Gm-Message-State: AOAM533MeteXW2G5Ke67A1eElcwzXtQyNiU9bt3bkAxkJFGw2qcm/gd1
 rWBhWXfIb7w1dE5u0O1Nspk=
X-Google-Smtp-Source: ABdhPJxf6vkzIJ5gvRxJJnkoE76NF/NsXfuA1qI+2XbKik7L6dd//lHk57lp40vP12GLenGbbQ1fCQ==
X-Received: by 2002:a17:906:1dd6:: with SMTP id
 v22mr9418467ejh.226.1629381176818; 
 Thu, 19 Aug 2021 06:52:56 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id y23sm1294480ejp.115.2021.08.19.06.52.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 06:52:56 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Robin Murphy <robin.murphy@arm.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Date: Thu, 19 Aug 2021 15:52:55 +0200
Message-ID: <2412250.zZEsDtmPgG@archbook>
In-Reply-To: <deb50900-fcfd-23d0-ab8a-0e64b2abb063@arm.com>
References: <20210817101119.423853-1-frattaroli.nicolas@gmail.com>
 <20210817101119.423853-3-frattaroli.nicolas@gmail.com>
 <deb50900-fcfd-23d0-ab8a-0e64b2abb063@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_065259_184766_8A762050 
X-CRM114-Status: GOOD (  33.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Donnerstag, 19. August 2021 14:08:36 CEST Robin Murphy wrote:
> On 2021-08-17 11:11, Nicolas Frattaroli wrote:
> > +  rockchip,trcm-sync:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      Which lrck/bclk clocks each direction will sync to. You should use
> > the +      constants in <dt-bindings/sound/rockchip,i2s-tdm.h>
> > +    oneOf:
> > +      - const: 0
> > +        description:
> > +          RK_TRCM_TXRX. Use both the TX and the RX clock for TX and RX.
> > +      - const: 1
> > +        description:
> > +          RK_TRCM_TX. Use only the TX clock for TX and RX.
> > +      - const: 2
> > +        description:
> > +          RK_TRCM_RX. Use only the RX clock for TX and RX.
> 
> I wonder if that might make sense to have boolean properties to describe
> the latter two cases (which would effectively be mutually-exclusive),
> rather than a magic number? Or possibly even just make the respective
> clocks optional, if this is something which would be done per-SoC rather
> than per-board?
> 

From what I know from downstream vendor device trees, these are per
board, not for the SoC as a whole. There are I2S/TDM controllers on the
SoC which I think are hardwired to certain other IP blocks, such as I2S0
being connected to HDMI, but I2S1 can be routed outside of the SoC where
these come into play I believe.

As for making them boolean properties, I'd rather not. If I were to make it
two mutually exclusive booleans, this would result in 4 possible states
rather than 3, and require complexity to check it both in the schema and
in the probe function. Like this, I can get away with a switch case that
has a fallthrough, and a list of consts in the schema.

> > +
> > +  "#sound-dai-cells":
> > +    const: 0
> > +
> > +  rockchip,no-dmaengine:
> > +    description:
> > +      If present, driver will not register a pcm dmaengine, only the dai.
> > +      If the dai is part of multi-dais, the property should be present.
> > +    type: boolean
> 
> That sounds a lot more like a policy decision specific to the Linux
> driver implementation, than something which really belongs in DT as a
> description of the platform.

I agree. Should I be refactoring this into a module parameter or
something along those lines? I'm unsure of where this goes.

> 
> > +
> > +  rockchip,playback-only:
> > +    description: Specify that the controller only has playback
> > capability.
> > +    type: boolean
> > +
> > +  rockchip,capture-only:
> > +    description: Specify that the controller only has capture capability.
> > +    type: boolean
> 
> Could those be inferred from the compatible string, or are there cases
> where you have multiple instances of the IP block in different
> configurations within the same SoC? (Or if it's merely reflecting
> whether the respective interface is actually wired up externally, could
> that be inferred from the attached codec?)
> 
> Robin.
> 

They can't be inferred from the SoC because there are indeed multiple
instances of this IP block in different configurations on the same SoC.
The RK3566 and RK3568 have four in total, of two different categories,
each being able to be configured for a different format (though the
number of channels and available formats vary for the two categories,
one group only supports I2S and PCM with two channels)

The particular configuration may even vary per-board; an I2S/TDM
controller may be connected to an external codec which does not
support capture, whereas on another board it may be connected to
one that does.

As an example, if I understand it correctly, I2S3 on the RK3566 and
RK3568 can do 2 channels RX and TX in I2S mode, but only 2 channels
either RX or TX in PCM mode, but I'm unsure of the language in the
(still not public) documentation I have.

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

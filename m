Return-Path: <SRS0=WjyS=OF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A387FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 17:06:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D82061247
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 17:06:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5D82061247
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvpJu/9Cleb9GUYPUMYI16N/y7OCS+Jb0KohbiZYQS0=; b=znlDcZ2zAeIkhm
	JoGNcQBLANE5o/JGldBZN4/4BTWh3mmF9UTN4pnX3viluu2TjUzfmLsu6CW9beWVwuxhIc5p5Kf1i
	rfeWSVdraxMNKwkxNL63po8hRUXwhIf+938sbro9XP2Qmxh4c9hNjZ6GYygBUH6wKwO9KW5a0fNuu
	FPiPrq8u8A5I7keNZrjWAy9Wso+5SvmAwOxS4my+TCWKuZrqadCQvir+J1bTaDl9gwg6z2u7IIYmw
	8uhZEJet/IZIBXOlRk1UcwOc0FXcQs0f0tJgGBlNh/kPNDMQ9lGRamIkS1ThvKONa91dl50x7Z6Cr
	f9Em4uWtYzgcph2CIiiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQYMY-009cGb-8u; Wed, 15 Sep 2021 17:06:22 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQYMU-009cFW-KP; Wed, 15 Sep 2021 17:06:20 +0000
Received: by mail-wr1-x432.google.com with SMTP id g16so4996416wrb.3;
 Wed, 15 Sep 2021 10:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GTVsTGVHzHHxdcEJg4/8YrzvHZvRek9+ki75XlfwV6w=;
 b=U3vEqEgCOGl+c9PEE+3pQVWcmVpFPwH4Vk1y0emiMUsRJL7SIuEuiz2GuNdcFHZe6C
 DWyPP5WtNcPjHwquO2rXLaXgsGo3XAGuWZ/2vdt6PjOkXhVU0Zv8NWVXNHUIPRtpE+z/
 FXyehLwcE/nMqnUUb3yzosCLAtt/aIngZPEhgJTitK23lRkJgXzZGXOPtFiTkZvbDOPt
 0II9VJR54WTHU5mo/35kAwtjkE7+Wys5Cvyfl0u2ADdMIumGYIZm1cYtFNAB8Ri712Ly
 wWD3sbj3tK0mwP2PVHMe5hVmFLItWdqcuXTdD+RmRJVK0qlVKQjv95qT1DwMA96qtRiU
 RdpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GTVsTGVHzHHxdcEJg4/8YrzvHZvRek9+ki75XlfwV6w=;
 b=UqKc7zxKoRS2DfLYDPIrH2VKLgvnf9nj7mfW8IwelFKeIwns3SLHDeQ9c81OxXUZoH
 r6kjmJrKdO0Tjq0Nn31WRLItBJP7gKhD73pR5YIjzMEpIkoH0YzflCVnOKd2zXtAMCNi
 SsowwPlHq4z863NZSyz+8BLNWgM4eH4gJKYHUQok3OPYAec0jv81rrptIguqQlfTmtsj
 TBZRSL/fFAJsPA87PaYO1eCNx2IYPKXBLFgODTvJZ3+igtEojnKv39JDL5CtfjqluN+F
 XAMSIjotY6VJfPLMPSrh9g01vKZoL+o+1xXVUuJ5rCahrHIOXCEpxjqenvbGsiATZKxE
 Qbaw==
X-Gm-Message-State: AOAM530NrG79Kj3nDZOqc8FlB3nDcAhPr37r7W+dnd6/M0EorZSVdhZg
 H9OtSBK8o9gGS/mcLaOhpVw=
X-Google-Smtp-Source: ABdhPJwJpOmUK49E3LeTsgzkI8+y91tIlB46nQfOTD778QVq5gZRib5LmUCXTPjYG103hZ2OLszbrQ==
X-Received: by 2002:adf:ce0c:: with SMTP id p12mr1204705wrn.194.1631725576068; 
 Wed, 15 Sep 2021 10:06:16 -0700 (PDT)
Received: from archbook.localnet ([185.213.155.232])
 by smtp.gmail.com with ESMTPSA id f1sm509887wri.43.2021.09.15.10.06.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Sep 2021 10:06:15 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Date: Wed, 15 Sep 2021 19:06:14 +0200
Message-ID: <42974939.Tn3hggVSkZ@archbook>
In-Reply-To: <20210915141012.GC12513@sirena.org.uk>
References: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
 <20210903231536.225540-3-frattaroli.nicolas@gmail.com>
 <20210915141012.GC12513@sirena.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_100618_732393_6E875C33 
X-CRM114-Status: GOOD (  18.34  )
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

On Mittwoch, 15. September 2021 16:10:12 CEST Mark Brown wrote:
> On Sat, Sep 04, 2021 at 01:15:34AM +0200, Nicolas Frattaroli wrote:
> > +  rockchip,tdm-fsync-half-frame:
> > +    description: Whether to use half frame fsync.
> > +    type: boolean
> > +
> 
> Why is this not part of the normal bus format configuration?  I don't
> know what this is but it sounds a lot like I2S mode...

This affects all TDM I2S modes, i.e. TDM Normal, TDM Left Justified and TDM 
Right Justified.

Without tdm-fsync-half-frame, we purportedly get the following output in TDM 
Normal Mode (I2S Format):
(ch0l = channel 0 left, ch0r = channel 0 right)

fsync: 	_____________________________
                     	            \____________________________
sdi/sdo: ch0l, ch0r, ..., ch3l, ch3r,  ch0l, ch0r, ...

With tdm-fsync-half-frame, we purportedly get the following:

fsync: 	_____________________________
                     	            \____________________________
sdi/sdo: ch0l,  ch1l,  ch2l,  ch3l,   ch0r,  ch1r,  ch2r,  ch3r

At least, according to the TRM. I do not have an oscilloscope to verify this 
myself, and in the following paragraphs, I will elaborate why this seems 
confusing to me.

The comment block "DAI hardware signal polarity" in soc-dai.h seems to imply 
that what the TRM says the tdm-fsync-half-frame mode is (if one inverts fsync 
polarity of those waveforms), is what is expected:

> * FSYNC "normal" polarity depends on the frame format:
> * - I2S: frame consists of left then right channel data. Left channel starts
> *      with falling FSYNC edge, right channel starts with rising FSYNC edge.
> * - Left/Right Justified: frame consists of left then right channel data.
> *      Left channel starts with rising FSYNC edge, right channel starts with
> *      falling FSYNC edge.

I don't know if this is only applicable to non-TDM I2S, and whether it's 
normal to have the channels interleaved like that in TDM.

I don't see any DAIFMT that does what this does in any case.

So to answer the question, it's not part of the bus format because it applies 
to three bus formats, and I'm completely out of my depth here and wouldn't 
define three separate bus formats based on my own speculation of how this 
works.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

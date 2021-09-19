Return-Path: <SRS0=i330=OJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20896C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Sep 2021 17:38:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C6778610A8
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Sep 2021 17:38:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C6778610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCaC1oOczqjg964FVICMBA9wEiYO9aMw8Og8HJGa+s0=; b=nhBWaY/dtSHtvo
	G+isx4nhRhm5r7ktEmdjqWucJouev6w1jW+8SLgxu+xz++CYS3IAqQVVKFkA6YwTAbxNE2JtrEPhB
	3bNGBcnpks6LnkyvWphcXz9Y1F2c1T25jD3IkU+HvZGOu9Sfwk8avft+Ljy2T9v7TvhBZYIqW7Bej
	efbbazihusDFxwCajBG+0mrhPjECUUP7G2AKAokIuH/RqRdyDrQXrLYmh+MRXj2pAYDAUpSFILRDr
	vKUdWiIVaDXoE9xrWCsVjhc/QCBOMmoQ8e+kVjrcDmz07gOvH5Y+pm/vqRfIBesEUWN9GvZYPH0ZY
	Q0uLQrEDTys5kZqeOCDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mS0mE-00HadK-8O; Sun, 19 Sep 2021 17:38:54 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mS0mB-00HacE-W9; Sun, 19 Sep 2021 17:38:53 +0000
Received: by mail-ed1-x534.google.com with SMTP id n10so50712923eda.10;
 Sun, 19 Sep 2021 10:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5M7w7zPy21obTvYguz5Oq3eJq+JEdmpFilnfj/UaVzQ=;
 b=LhN5noFjo+451RFhaPdyEiaEskENVgpQpw/AKZYzB8yPg8w21uDQt3oeX0bOsbP3Gr
 CGbr7gmvPPmOjUdEtYO1vPUHutZjRsb2Qz9ekOMJ9IuCgg1/ArcVxFt7UeAyH1dESchQ
 TifLDaNGbXnep5im/SQaOK2V8JBxUNsIiwi720vH6zqPKVpELwe09vto+ju7FUNMMn1N
 gU4slJRLmX75YPFoPC/T02fI96cx4hv6v05GkCo7tUDhkmnQftykur0LfeKdjI1NZIvs
 Y5++L/weCha9F5RhlJCbiweOVNPBFO5bD4F3ywAQIwH54pEdF7MqpE//ZPSgmjSdnZfZ
 nUXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5M7w7zPy21obTvYguz5Oq3eJq+JEdmpFilnfj/UaVzQ=;
 b=tDhtjeukeuhja7QXkF1YEXrX28kzyL7GYox8I4f4OHP6LoYxmrQEvpRKFWd0RFamcg
 JccDdvhayL9O3QzZMVzcIYVa83iJC+ob+OEbys9L1b7JjaYdTNuh9+0D2hbmd/tokE0J
 q6r1gN3Aia+lds//Kb+iFEUtw56llJh2w2lAOIr3bv5idDv6KIcatAdPm2PHtS+J6kru
 12iS6qojBvYVQ8IAzcACAxRvK/+Gl9gCEIXFWMppIB8nfBmtoghb/6O7Ps1ldVm1S3fN
 4lE1wOyNKTCbbWJyltIB4UwFYwURI8MBBpLZ+Y8iOpCHfeOa3xolSqdklfPUtBqtyWNP
 sCVw==
X-Gm-Message-State: AOAM532CXKB79hJj0/6TUIfWVhI1thCdzw8aNnzaIJCNhlJ3iywPQHJB
 BIZCEtX/eu13908ncWkBgucP1qtkNvs=
X-Google-Smtp-Source: ABdhPJzIc1p2YHYXKQUZaJF5CsnCuPC6aHASPs/54dQ8LsS6ySMakHNHKw85yPRAQNwt3LxaJWqlFw==
X-Received: by 2002:a05:6402:88e:: with SMTP id
 e14mr25583141edy.342.1632073128991; 
 Sun, 19 Sep 2021 10:38:48 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id c28sm5214401ejc.102.2021.09.19.10.38.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Sep 2021 10:38:48 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Date: Sun, 19 Sep 2021 19:38:47 +0200
Message-ID: <2435067.tOv7cHfTnj@archbook>
In-Reply-To: <20210916122549.GF5048@sirena.org.uk>
References: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
 <42974939.Tn3hggVSkZ@archbook> <20210916122549.GF5048@sirena.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210919_103852_111448_04CE3437 
X-CRM114-Status: GOOD (  29.60  )
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

On Donnerstag, 16. September 2021 14:25:49 CEST Mark Brown wrote:
> On Wed, Sep 15, 2021 at 07:06:14PM +0200, Nicolas Frattaroli wrote:
> > On Mittwoch, 15. September 2021 16:10:12 CEST Mark Brown wrote:
> > > Why is this not part of the normal bus format configuration?  I don't
> > > know what this is but it sounds a lot like I2S mode...
> > 
> > This affects all TDM I2S modes, i.e. TDM Normal, TDM Left Justified and
> > TDM
> > Right Justified.
> > 
> > Without tdm-fsync-half-frame, we purportedly get the following output in
> > TDM Normal Mode (I2S Format):
> > (ch0l = channel 0 left, ch0r = channel 0 right)
> > 
> > fsync: 	_____________________________
> > 
> >                      	            \____________________________
> > 
> > sdi/sdo: ch0l, ch0r, ..., ch3l, ch3r,  ch0l, ch0r, ...
> > 
> > With tdm-fsync-half-frame, we purportedly get the following:
> > 
> > fsync: 	_____________________________
> > 
> >                      	            \____________________________
> > 
> > sdi/sdo: ch0l,  ch1l,  ch2l,  ch3l,   ch0r,  ch1r,  ch2r,  ch3r
> > 
> > At least, according to the TRM. I do not have an oscilloscope to verify
> > this myself, and in the following paragraphs, I will elaborate why this
> > seems confusing to me.
> 
> fsync-half-frame is just normal TDM for I2S, the default mode is how DSP
> mode normally operates.  I don't know that there's any pressing need to
> support mix'n'match here, you could but it should be through the TDM
> configuration API.
> 
> > So to answer the question, it's not part of the bus format because it
> > applies to three bus formats, and I'm completely out of my depth here and
> > wouldn't define three separate bus formats based on my own speculation of
> > how this works.
> 
> It is part of the bus format really.  I suspect the hardware is the kind
> that only really implements DSP mode and can just fake up a LRCLK for
> I2S in order to interoperate.

Thank you for your explanation!

Going forward, what would be a solution that is acceptable for upstream? As 
far as I understand, the obvious route here is to drop the rockchip,fsync-
half-frame property and just always set this mode when we're using a TDM bus 
format. Is this correct?

According to the TRM, the register bit this sets only affects TDM modes. 
Though since TDM is not standardised in any way from what I've read online, it 
is possible that there is hardware out there which expects the non-fsync-half-
frame mode, but I am completely fine with only thinking about this hardware 
when it actually surfaces.

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

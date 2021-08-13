Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24781C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:58:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC2D860FC4
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:58:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DC2D860FC4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9uNULFuQ1v11kxQzxb0z01xmS1lpuwRFshXDJjI7ZI=; b=xyfZzn3b/Kg1I3
	rEJxy2xNXyW3NFVq0hzI9sLCgdeGRP1gu4Bi87Wa0UhoZ/0DZyxaBXcaq183GEpCjbNQxwycaaakL
	A3Ghb64rV0kUM+nyuNJ0QqSeJG/iB628rQZj+rbagmTug6uUV8LL/RVIbf6LLKocov9ls9zMgpAOY
	RPjxd3E6RF0Gpn7ibd9tpfoM/Bdz/fXcLgqj0/k4RtbjRS4a3dZ0KQJfFRhE8eTk9x987C1yFFOML
	eQcgSx8u/VZQa8SanPcv2eoZZS+GfuWqTpiDFK5U0wqK4q5MSQZUZt4cSqmrdkXHob5gB59wQBDbD
	lV6ZnzlbthQTxQaFKdWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEZZU-00D1yP-A3; Fri, 13 Aug 2021 15:58:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEZZG-00D1wN-O8; Fri, 13 Aug 2021 15:57:59 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5F9066103A;
 Fri, 13 Aug 2021 15:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628870278;
 bh=pY+Zqp963icDROpevltpSJJAR69cOdOt+bXbLF0MeIQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JWzfONqb+1aQ24l+qPrrKOn3eID7gh98TW05DvqA+LNK4ldzKRS2l2CsbU1HC+b4i
 d+sUDP4g1uuwzXd9KCharX+QeYi/XY/PMgM7LKPTtgEK4wGDcCrAm8lFfGagtCWaey
 igiIAhqEkEhINq/ddag6PLU2pbsptU0+C1YexLmQz8+b9IDUdXP3bWnFJU+ElBnvKe
 aTfq4tgBPuxyrM5tiymAhnxUxkIMjYwylO3OtTN/VIu3JcbKyYkFJZhO1wvMmAtSNR
 tf39bqZnBckXsMShjb3RKsTP3VWJCSsNGNYdeLIm3iImtyQRvFMc4W8ehXGSWsCc5I
 8ysV/M3Kt6Q4g==
Received: by mail-ed1-f52.google.com with SMTP id dj8so8229210edb.2;
 Fri, 13 Aug 2021 08:57:58 -0700 (PDT)
X-Gm-Message-State: AOAM5303kXcw8FqpIo2LHnSgBhz9nLtfQO6nV6pMlZ4JaiovoR1LvOmk
 y44M/ZJf02s01kSsGfaeZ47fBMfKmk4KgEVRfw==
X-Google-Smtp-Source: ABdhPJzGb/GgbXDVHZTmqzulqvJERz/jWWIhITrpEQe00RTcREbvrBDSwmoXTlx2OUnRARI/JvACJ/JQOgQrTZnANvc=
X-Received: by 2002:aa7:cb19:: with SMTP id s25mr4083549edt.194.1628870276974; 
 Fri, 13 Aug 2021 08:57:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210813113338.GA30697@kili>
 <01b7c3da-1c58-c1d9-6a54-0ce30ca76097@arm.com>
 <CAL_JsqJ4Dadf00pJxEDd14zbWyN99s1A2L4fxZSkZddeg2pV6g@mail.gmail.com>
 <81b9a25d-f12f-90e0-0b05-b5e396f14c08@arm.com>
In-Reply-To: <81b9a25d-f12f-90e0-0b05-b5e396f14c08@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 13 Aug 2021 10:57:44 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLWVLRDdkR62BSv69oW3QCLVebgpU1TKtxvzZmD4wuP4Q@mail.gmail.com>
Message-ID: <CAL_JsqLWVLRDdkR62BSv69oW3QCLVebgpU1TKtxvzZmD4wuP4Q@mail.gmail.com>
Subject: Re: [PATCH] PCI: rockchip-dwc: Potential error pointer dereference in
 probe
To: Robin Murphy <robin.murphy@arm.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Simon Xue <xxm@rock-chips.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Kever Yang <kever.yang@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
 PCI <linux-pci@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 kernel-janitors@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_085758_833068_59190DF0 
X-CRM114-Status: GOOD (  16.25  )
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

On Fri, Aug 13, 2021 at 8:47 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-08-13 14:34, Rob Herring wrote:
> > On Fri, Aug 13, 2021 at 7:55 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 2021-08-13 12:33, Dan Carpenter wrote:
> >>> If devm_regulator_get_optional() returns an error pointer, then we
> >>> should return it to the user.  The current code makes an exception
> >>> for -ENODEV that will result in an error pointer dereference on the
> >>> next line when it calls regulator_enable().  Remove the exception.
> >>
> >> Doesn't this break the apparent intent of the regulator being optional,
> >> though?
> >
> > I'm pretty sure 'optional' means ENODEV is never returned. So there
> > wasn't any real problem, but the check was unnecessary.
>
> In fact it's the other way round - "optional" in this case is for when
> the supply may legitimately not exist so the driver may or may not need
> to handle it, so it can return -ENODEV if a regulator isn't described by
> firmware. A non-optional regulator is assumed to represent a necessary
> supply, so if there's nothing described by firmware you get the (valid)
> dummy regulator back.

Ah yes, regulators is the oddball. Surely no one else will assume the
same behavior of _optional() variants across subsystems... ;)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30000C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Apr 2022 16:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtA77fkhGBZdR68gav6/j64EnXoeTC7b4MuxBB0fi18=; b=hrt+eOVhxjIZfu
	me2tL+ZBZTBarHTxIg/2/vN3CT6bawNXEB+5E4+I5kCxZz2ewEj9L9JV2vHHWExcOuQVIm/WMKFKq
	nwnVOQkLgprzkSx0lk08qr27LId11eRPbY2hZs40EPnPRwzIwSkLLdYx+HBq/Ge133llJ9N8OOj46
	SVfSyKD82SNGubOltadgZlN9Heg9DG3nazem6KOoKpmCT+uF0E406MmKXDQ/RujZQg2h8lhT76mOm
	Yjn5sg6r8vAxvLfHNNaiY7dDQbRyWHE2drvrIkozrpECkFvqpr8C0pCxi1Ag2jCk2bTmsGqtTcx6i
	KLP+f0Ivz2l1fwsrIQjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngU4T-0001fj-Fo; Mon, 18 Apr 2022 16:17:49 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngU4Q-0001eP-Jp; Mon, 18 Apr 2022 16:17:47 +0000
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-2f19fdba41fso18692327b3.3; 
 Mon, 18 Apr 2022 09:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mGWxv/qota/JshJiLK9mcfcLcUXUwT9NkI4w3aXnwsE=;
 b=BRLJRAM6c4CTKa9943BLdzY274Da7Gk76ZH+uFpSX6pUtz6TPcxsEk/jNKjVOuMN+a
 HcEP9XqzUKeT06kLFtfKlWdNwbU+wkAWwhFub0lyjCq9Opij8cKGZfczmS0M4uzEGLJF
 +59kT9/fyltIEL1RVB9BW8W81FABIUsmVd9couP7iIcapJoY5P5Gh9jgvqIvOtr//bPk
 7zvJfX4X7uyKiTRopzYzY4n/uwrjXG+DDsYNVvf7hnBs4br/ON6llX48ghv2JqmRtWpT
 kOq71eBViGMD6nnTUISoAsAqmbCBxV/pbZriCXqo79zTuKs02sNMuKZYqENpYYCIAOML
 zEHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mGWxv/qota/JshJiLK9mcfcLcUXUwT9NkI4w3aXnwsE=;
 b=re2KU8oa6K05Y3QteAkaSIE8+V04pTp2Rs98co9bxgIfUkcwXiAPCH7lQZOzYukqNn
 sfNMLG9CLj8zGyznxEbp+GyaMwFyU1o12UnjkTLc+2vhw9ICSPixWIPfs/6nXUDJvC+f
 ERGTYIunDeKpu2FkUaXcX8ARuVeORMeWeYlQ5K9u0HkiaeGsC58dMQbgfcpUIhb8ia65
 9GmRq2dJVajar1oHfKFS4lY6HcmYkIKj8AbhPGymy9EZGAeyhiRzdn3ysv/8lZ2Si2vP
 Jmt68DhyOhe6xag1N5JERfAJpGRr62kDqhgeArwJ5TlQhtTRyRL6tVoIbcIkYxkoGM0c
 hKUA==
X-Gm-Message-State: AOAM531x2tRnvc1py71I39lR//UB0H0zgWE+WL/V+nueO9yHpJ05/l1e
 QgQHdwyjVIOHMh6hCDn1mf6+xfE5AIcoX5HS/Rs=
X-Google-Smtp-Source: ABdhPJx2IFxxyKsz/E+/vX5yjPGTf8jxveTP2m6H/pqXXpMrMGVz4/s/MMOE1+sNXpE6i7CO0eSsyT8JQa0WRfWGhSc=
X-Received: by 2002:a81:5904:0:b0:2eb:f900:882e with SMTP id
 n4-20020a815904000000b002ebf900882emr10602126ywb.281.1650298662641; Mon, 18
 Apr 2022 09:17:42 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-a220fd81-2ee9-474d-bd65-505b9ed904b2-1650186482865@3c-app-gmx-bs58>
 <20220418155313.GA1101563@bhelgaas>
In-Reply-To: <20220418155313.GA1101563@bhelgaas>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 18 Apr 2022 12:17:31 -0400
Message-ID: <CAMdYzYpydGyQZT2n9Tf+ccQMLHzfhOgoyamMgspQDcjzm3Umdg@mail.gmail.com>
Subject: Re: Re: [RFC/RFT 4/6] PCI: rockchip-dwc: add pcie bifurcation
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Frank Wunderlich <linux@fw-web.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Johan Jonker <jbx6244@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_091746_706001_51E14387 
X-CRM114-Status: GOOD (  20.52  )
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

On Mon, Apr 18, 2022 at 11:53 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Sun, Apr 17, 2022 at 11:08:02AM +0200, Frank Wunderlich wrote:
> > > On Sat, Apr 16, 2022 at 03:54:56PM +0200, Frank Wunderlich wrote:
> > > > From: Frank Wunderlich <frank-w@public-files.de>
> > > >
> > > > PCIe Lanes can be split to 2 slots with bifurcation.
> > > > Add support for this in existing pcie driver.
>
> > > Is the "rockchip,bifurcation" DT property something that should be
> > > generalized so it's not rockchip-specific?  Other controllers are
> > > likely to support similar functionality.
> >
> > I do not know if other controllers support similar functionality,
> > but i ack a property without vendor prefix is better. Should i use
> > "bifurcation" as name or do you think about a different name which
> > is more generic?
>
> Really a question for Rob about what name would be good and where it
> should go.

It might be good to define this as a lane map.
In the Rockchip implementation it's only 2+0 or 1+1, but that isn't
guaranteed if this is made into a standard definition.
So perhaps:
pcie-bifurcation-map = <0>, <1>;
pcie-bifurcation-map = <1>;
pcie-bifurcation-map = <4>, <5>, <6>, <7>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

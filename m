Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FBBCC47093
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 08:30:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 977336128A
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 08:30:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 977336128A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTug5+9TzJNWw5sL6fQVFIGqyf807jT1z3RXLiSoRs0=; b=3NP8jGMp2kfhfx
	UveYU4U9nmpMcxu2WGhtpIZej1AZWUw5QnilXhbQE7qdPOfShgp518yOTuPK6PsjjHFa5SedYPPfz
	XhX70lrqk8XeccpefPGRgscrVgkNzIGMmN0tpwxjBqwC9h8VTLDGabtM6MlOWr5zJP0n68Xy7CuJf
	WcmQBPVQuvbu+Lsf1RfwcrYKVVhIOCRvMvI9kvMVuv/RKtd8fG7k50nsTf/WZHY5RK4A4fPedkWRT
	GC7nQiwWlIeuXrCfR0woLzxgdkJkNzA701ARn93aIkjTw5OuPdFjHkAjpo84+VgCnMbNJA+OCMyan
	bE1Gda7fPXwQchobFf5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnznW-00FLOW-FH; Tue, 01 Jun 2021 08:30:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnzn9-00FLBG-4x; Tue, 01 Jun 2021 08:30:28 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lnzn2-0008O5-Rw; Tue, 01 Jun 2021 10:30:20 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Chris Morgan <macroalpha82@gmail.com>
Cc: linux-mtd@lists.infradead.org, linux-rockchip@lists.infradead.org,
 andy.yan@rock-chips.com, yifeng.zhao@rock-chips.com,
 sugar.zhang@rock-chips.com, tudor.ambarus@microchip.com, michael@walle.cc,
 p.yadav@ti.com, robh+dt@kernel.org, vigneshr@ti.com, richard@nod.at,
 miquel.raynal@bootlin.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 2/4] spi: rockchip-sfc: Bindings for Rockchip serial
 flash controller
Date: Tue, 01 Jun 2021 10:30:18 +0200
Message-ID: <3698714.BjyWNHgNrj@diego>
In-Reply-To: <20210531171812.GA1729@wintermute.localdomain>
References: <20210528170020.26219-1-macroalpha82@gmail.com>
 <d94ddb6c-116d-5119-a731-0b89925505d1@gmail.com>
 <20210531171812.GA1729@wintermute.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_013027_271087_8E37B835 
X-CRM114-Status: GOOD (  15.59  )
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

Am Montag, 31. Mai 2021, 19:18:12 CEST schrieb Chris Morgan:
> On Sat, May 29, 2021 at 10:45:35AM +0200, Johan Jonker wrote:
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > 
> > > +title: Rockchip SoCs Serial FLASH Controller (SFC)
> > 
> > title: Rockchip Serial Flash Controller (SFC)
> > 
> > > +
> > 
> > > +maintainers:
> > 
> > > +  - Andy Yan <andy.yan@rock-chips.com>
> > 
> > This is the original author years ago, but did you ask him to be maintainer?
> > 
> >   - Heiko Stuebner <heiko@sntech.de>
> > 
> > Add someone who can respond in a short period of time and who knows the
> > hardware in case rob+dt wants to delete something.
> 
> I asked Heiko on IRC if he would be okay with me listing him and myself
> as maintainers. I'm comfortable enough with the hardware now to be able
> to respond/fix basic issues with it, though it would also be good to
> have a veteran of the hardware involved too.

sure that is fine with me :-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

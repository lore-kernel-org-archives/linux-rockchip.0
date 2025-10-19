Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0F92CCD195
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Oct 2025 17:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7uOMp5Jvynfr0f1A6HUYTEgOpgz/8ggpVBQ8lVJwLU=; b=e/hqDH9fsuv0fs
	28WBArnuhT/wTF4XXoCPqt6JgN/Vh87iOfiRGpXa0Sa96SX2Lic19SXlan+TZbj4NnaCNfEOjCZI4
	4J/rwnJrScbWOLoHiZI4sTmrCgIcAER+5oHUVn0f0SsPXzw+MYzHtAnof6/x4fyCJiWogBv2szeOC
	+MkCOrmJ+Q2QyirmnWt+Ax0VG/JV7q7EtJ5jtUim/yG7RhjqnNzem11kOQ8wE76PUHOFNUjRsck4z
	OQu7VciA0uMKnBFLd4eQuOH7JBx0anr318mEccVaBKhhoJiHn3hkhx2tHTPG62K8dEngRfgU0Jvib
	fewfSFx+XrwN0F8f7qcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAWpr-0000000BEYr-45jt;
	Sun, 19 Oct 2025 17:04:47 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAWpo-0000000BEXO-43CW;
	Sun, 19 Oct 2025 17:04:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 798F640D07;
	Sun, 19 Oct 2025 19:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1760893480; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=89pcnqHw6GeCqqkxoyyYoM031ZknkpS6TyEdPScCLBQ=;
	b=feN0m9vz9xepdNVeyszgt4J9lygxtJJV4M+epGRMOa/A1mU8wSgxMaNeobaWfiG9n32OW0
	0BLpORvYv4TtSZ7ulhp94Crw24Xgj8BDInMP27qsN3RrdY3uaLkakvR9sUOeFvdpBOmT1J
	DEOnZb5bW2C/grjE8ZOajzOxFmkGubtqYxF/p49k4pv749kwBVwu9lX6credP+5/nFPZxy
	Q1U4MX2GYVdyyFyCZyKUibY6+2blN2b/qe0viwN079Bz8wWffKpz5h9wT2tAmya7snNdQm
	CUCSr87CTMvAUoQguQ8FO+I1Wt7UNal84mfHgsD3UZp8bRWTaK2aLofYIWW41w==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <CABGV7H_pTkJ_-WQNgVbGE+Ys7jOZaKcRrnMtPr8idfKoYMgKjg@mail.gmail.com>
References: <20251017073954.130710-1-cnsztl@gmail.com> <7f0b1747-87eb-0b0b-6fb0-304811a4be21@manjaro.org> <CABGV7H_pTkJ_-WQNgVbGE+Ys7jOZaKcRrnMtPr8idfKoYMgKjg@mail.gmail.com>
Date: Sun, 19 Oct 2025 19:04:30 +0200
Cc: "Tianling Shen" <cnsztl@gmail.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Grzegorz Sterniczuk" <grzegorz@sternicz.uk>, "Jonas Karlman" <jonas@kwiboo.se>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Grzegorz Sterniczuk" <grzegorz.sterniczuk@gmail.com>
MIME-Version: 1.0
Message-ID: <f26601b4-c589-5909-5432-378c496e9010@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= fix eMMC corruption on NanoPC-T6 with A3A444 chips
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_100445_221730_5FCE9673 
X-CRM114-Status: GOOD (  20.99  )
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

Hello Grzegorz,

On Sunday, October 19, 2025 12:05 CEST, Grzegorz Sterniczuk <grzegorz.sterniczuk@gmail.com> wrote:
> [image: image.png]
> [image: IMG_0471.jpeg]

Nice, thanks for the pictures!  BTW, I'm hoping to get the quirk
patch(es) done and submitted to the MLs in the next few days.  Of
course, I'll Cc your and everyone else's email addresses so you
can perform the required testing and provide Tested-by tags.

> On Fri, 17 Oct 2025 at 12:25, Dragan Simic <dsimic@manjaro.org> wrote:
> > On Friday, October 17, 2025 09:39 CEST, Tianling Shen <cnsztl@gmail.com>
> > wrote:
> > > From: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
> > >
> > > Some NanoPC-T6 boards with A3A444 eMMC chips experience I/O errors and
> > > corruption when using HS400 mode. Downgrade to HS200 mode to ensure
> > > stable operation.
> >
> > Could you, please, provide more details about the troublesome eMMC
> > chip that gets identified as A3A444, i.e. what's the actual brand
> > and model?  Maybe you could send a picture of it?  It might also
> > help if you'd send the contents of "/sys/class/block/mmcblkX/device
> > /manfid" from your board (where "X" should equal two).
> >
> > I'm asking for that because I'd like to research it a bit further,
> > if possible, because some other eMMC chips that are also found on
> > the NanoPc-T6 seem to work fine in HS400 mode. [1]  It may be that
> > the A3A444 chip has some issues with the HS400 mode on its own,
> > i.e. the observed issues may not be caused by the board.
> >
> > [1] https://github.com/openwrt/openwrt/issues/18844
> >
> > > Signed-off-by: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
> > > Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> > > index fafeabe9adf9..5f63f38f7326 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> > > @@ -717,8 +717,7 @@ &sdhci {
> > >       no-sd;
> > >       non-removable;
> > >       max-frequency = <200000000>;
> > > -     mmc-hs400-1_8v;
> > > -     mmc-hs400-enhanced-strobe;
> > > +     mmc-hs200-1_8v;
> > >       status = "okay";
> > >  };


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7739C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 10:49:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C429E64E37
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 10:49:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C429E64E37
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tc9AJsdstE1EhkpnSkkRlB3q4ycYrQWkg4tCuMznqMg=; b=Pa6IcHHNrW0yJRbPj3r00+Akr
	Phw5DO8EyxiTMV1c+dxv23G3xWyWZGtvI7O6DT7cxlxFCE4790RtQTiuVnK1jchyYSfqaRgsDXjnA
	sprGU7Y1v55/AYy27pT1cNZxGUoMPRcPyoMF2S8gRy23/epiORu9d5nyVgZCV+N1ZHPMOt9r0RVm1
	xLD9PqgAfdCAucDKE+dZnS3wtcGqJKuQJCTiaK3yqF/8bUL21fvVFNPAMRZEIyrKQnOOOAOJ6qu2r
	X/0a5Ss+PMupr/zQCmZ/PMjMvoQVgHVRTbUPiwWlNxIq8CWHwAyXya/L4Hlfmqe/4uEpoLIeFG1Ns
	FaqGynR3Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9n3o-000713-3Q; Wed, 10 Feb 2021 10:49:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9n3k-0006zq-By; Wed, 10 Feb 2021 10:49:26 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l9n3f-0003Yx-RQ; Wed, 10 Feb 2021 11:49:19 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH 2/5] ARM: dts: rockchip: assign a fixed index to mmc
 devices on rv1108 boards
Date: Wed, 10 Feb 2021 11:49:17 +0100
Message-ID: <46108228.fMDQidcC6G@diego>
In-Reply-To: <CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com>
References: <20210118155242.7172-1-jbx6244@gmail.com>
 <6598201.ejJDZkT8p0@diego>
 <CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_054924_423080_61C5513E 
X-CRM114-Status: GOOD (  22.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: DTML <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 10. Februar 2021, 11:34:41 CET schrieb Arnd Bergmann:
> On Wed, Feb 10, 2021 at 12:50 AM Heiko St=FCbner <heiko@sntech.de> wrote:
> > Am Dienstag, 9. Februar 2021, 23:25:40 CET schrieb Arnd Bergmann:
> >
> > Hmm, right now I don't see the disadvantage of missing mmc numbers.
> =

> It's inconsistent with the normal use of these aliases across other
> platforms.
> =

> > As similarly we count i2c and serial numbers for a long time, even thou=
gh
> > not all of them appear on every board.
> =

> Yes, that is a similar mistake.
> =

> > Especially as the main goal is to simply have stable numbers and
> > not having the mmc devices swap numbers on every boot.
> >
> > So right now we're not using them from a userspace POV but
> > instead agreed on following the address ordering of the soc.
> > so when ordering mmc controllers by their io-address, mmc0
> > is the first one, then mmc1, etc.
> >
> > So just for my understanding, what is different for mmc?
> > I guess to guarantee ongoing numbering similar to sd{a,b,c,...}
> > Or should all aliases be duplicted in each board dts and not
> > live in any soc dtsi?
> =

> Each board should have its own aliases node that describes
> exactly which of the devices are wired up on that board, and
> in which order. If there are connectors on the board that
> are labeled in some form, then the aliases are meant to
> match what is written on the board or in its documentation.

Then we're at least in the clear for i2c, serial and the rest ... as these
are numbered in the soc documentation, and all boards I've seen so
far use these number also to identify these in schematics.

So an i2c2 is always i2c2 even if i2c1 is not populated.

And of course doing
	i2c0 =3D &i2c2
would definitly confuse people to no end.

So I guess we'll just move the mmc stuff over to board files.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

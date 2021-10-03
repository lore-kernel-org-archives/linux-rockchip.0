Return-Path: <SRS0=83oW=OX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08C34C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Oct 2021 09:15:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6FB7F61B3E
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Oct 2021 09:15:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6FB7F61B3E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzcVprOVfinHtluERdcdctLzr7D7gMhDi0Q4e7Ovo68=; b=T7odpyyd4e47/i
	XLY0E515FX7BIAlB5LLmh1WXmxJcNJg3RtDnn8ZjICRlO5OpbJS9xmmWnUZlqqLJ4J4pwCKWYLLlf
	lC5M5aglvXU5fwtzgQVGeIxYqbddnWi//RGH84GJG2sGgENEPl1Fnw13IK48PDSIVHub96RfbMcIY
	8bITXMU69UwqwhDG5Waboc8tpI9C4H7TgzHi6tTO1kQ+OnVRRj7XCgQok/DSjrTu/CKNP9E9X5k0o
	KAU5yjUAAG8mrKnUw9Fes80KyD5ginvB69a2OJ44Bv8IYrzFsLTGbNIzrECjZBNOkht0F/y6b14KO
	fmP/FyxwFkdMEy8BVylA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWxb2-003TRp-Jy; Sun, 03 Oct 2021 09:15:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWxaz-003TR8-Pu; Sun, 03 Oct 2021 09:15:46 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mWxar-0003m9-17; Sun, 03 Oct 2021 11:15:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jakub Kicinski <kuba@kernel.org>, Andreas Rammhold <andreas@rammhold.de>
Cc: netdev@vger.kernel.org, Punit Agrawal <punitagrawal@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 davem@davemloft.net, peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: Fix ethernet on rk3399 based
 devices
Date: Sun, 03 Oct 2021 11:15:35 +0200
Message-ID: <2664637.bMcS0GE8HR@diego>
In-Reply-To: <20211003004103.6jdl2v6udxgl5ivx@wrt>
References: <20210929135049.3426058-1-punitagrawal@gmail.com>
 <20211002172056.76c6c2d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20211003004103.6jdl2v6udxgl5ivx@wrt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211003_021545_861319_7C5BAF23 
X-CRM114-Status: GOOD (  18.30  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Sonntag, 3. Oktober 2021, 02:41:03 CEST schrieb Andreas Rammhold:
> On 17:20 02.10.21, Jakub Kicinski wrote:
> > On Sat, 2 Oct 2021 23:33:03 +0200 Andreas Rammhold wrote:
> > > On 16:02 01.10.21, Jakub Kicinski wrote:
> > > > On Wed, 29 Sep 2021 23:02:35 +0200 Heiko St=FCbner wrote:  =

> > > > > On a rk3399-puma which has the described issue,
> > > > > Tested-by: Heiko Stuebner <heiko@sntech.de>  =

> > > > =

> > > > Applied, thanks!  =

> > > =

> > > This also fixed the issue on a RockPi4.
> > > =

> > > Will any of you submit this to the stable kernels (as this broke with=
in
> > > 3.13 for me) or shall I do that?
> > =

> > I won't. The patch should be in Linus's tree in around 1 week - at which
> > point anyone can request the backport.
> > =

> > That said, as you probably know, 4.4 is the oldest active stable branch,
> > the ship has sailed for anything 3.x.
> =

> I am sorry. I meant 5.13.
> =


As the commit has "fixes" tag, it should be picked up automatically
for stable kernels that include the original commit.


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

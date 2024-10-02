Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 483EECF31AE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnSOaMeVHcNnZaNiKd+WZwzMWXlG05DYpgwzxbs+iIw=; b=s9XXEcVs1iDOIo
	+1n7pfHSgE6VSFcu+e3AZkd1NJs3li1f2NI5Oy7Z+G7pYUj3sL/1hmaIGV7rwSmbNPNCQc6+UBMXd
	D8PTeQhfnz/ySlicwsqIPiKOAJSGqbi6PZ/im8in9IzU3eut9X2a3WsuGKENNTYTAho0cDc3uG2Dg
	MDJEAgOgmttMVlpzrl11kT/0uNX5p3JLJGP8GETMPOPBOGUiTFwfA0N1y9w2dlAXEDLCQReZ2H0Xh
	HhCp7pvtpRxVRZ+19/IeIx2aGWTYdwQVB78sE5Tisc6scuhbIGwZ6gZluKJ5ZtB3x+oCknJuq3r64
	KzXLeZ2yumIHVSnYQDXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwMP-00000005SRh-3Kca;
	Wed, 02 Oct 2024 10:13:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwLA-00000005SCY-1GI9;
	Wed, 02 Oct 2024 10:12:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JwhzVDZBNjGUfu++mGGFURZdzqhlb44Qh8znmFHlVD4=; b=X15MMLxHC2hJRWot0HCHmSPS8U
	EZULsRX4yVnovppXgWmHJkK/fIwxZ/sjz6fnRas8Z6/e/Ls9NL0+8Hxib1mXWA/N5+/9Ho0a/si6b
	ssRC8gxYzz/eQaldK3zoF0xlXZ2/K0r7M4J4xfiijtBF2Rp4Zq1xE395SGAC/iuAbI/Ap9Gsoehku
	pv1sRprdMEYk+nypJeRWs8V8BKZCWy+tYDWxeAvLwWEGh9uDIfcoFtMy3uxxsQVnvF6kZhg3W6YZ5
	ETWO+pSOkGlKB4JPaGxUZ0Ozf/vDFNxchzo/Tlvx1rF0cev/zNxoPiSFzrpG70zD7al0EWti1hQiO
	aD3bJNWQ==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svwL6-0004tJ-Fk; Wed, 02 Oct 2024 12:12:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Yao Zi <ziyao@disroot.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 4/8] clk: rockchip: Add PLL flag ROCKCHIP_PLL_FIXED_MODE
Date: Wed, 02 Oct 2024 12:12:11 +0200
Message-ID: <3798659.MHq7AAxBmi@diego>
In-Reply-To: <Zv0blIPaF0Y2Pmn1@pineapple>
References: <20241001042401.31903-2-ziyao@disroot.org> <8495918.NyiUUSuA9g@diego>
 <Zv0blIPaF0Y2Pmn1@pineapple>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_031216_362583_4BA59ACF 
X-CRM114-Status: GOOD (  20.81  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 2. Oktober 2024, 12:08:20 CEST schrieb Yao Zi:
> On Wed, Oct 02, 2024 at 10:16:49AM +0200, Heiko St=FCbner wrote:
> > Hi,
> > =

> > Am Dienstag, 1. Oktober 2024, 06:23:58 CEST schrieb Yao Zi:
> > > RK3528 comes with a new PLL type, flagged by ROCKCHIP_PLL_FIXED_MODE,
> > > which should operate in normal mode only. Add corresponding definition
> > > and handle it in code.
> > > =

> > =

> > More commit message would be nice ;-) .
> =

> Good idea.
> =

> > It's the PPLL for the pcie controller that is specified in the manual to
> > only work in normal mode. This is helpful for people reading along :-) .
> > =

> > Heiko
> =

> btw, for the documentation, is there any technical reference manual
> of RK3528 available publicly? Please let me know if it's true, it will
> be quite helpful to understand clock tree better :)

Sadly not. So far there hasn't been a "leak" yet and Rockchip also seems
to have gotten more restrictive for whatever strange reason, so with my
NDA I also only got part1 of the manual.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

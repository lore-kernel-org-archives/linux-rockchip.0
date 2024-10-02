Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13B7FCF31AF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaGU1sQj0BoyrdN8QF5bzY60YZkTs2kwrWVcIb1OJk8=; b=2Uem9B1Xp8h6a1
	qbiVBLocy6CD3VzYONubRB8R4cE7bsPA4MzjHHfygpr2yW+qWVipyhyXwSFxh2IfGLnB6d5UznKHZ
	999JD/VV4AMP58sgHc96LAgTOivhBk7RG2oTPfYq1B0A3YU9hgsAfGsYooDe7xELZsOHlPERHePbD
	PHzCYJSoLj5dp4xz/AtwjFatjx4TNgH7OMgTpea5GUxA6/a9ZIze4FV3ZAnhWSabb20UNVE8xWTJz
	aO2+zCOEs5gPdHRKEm39mN7fStTeNO4Nd/4zyDRMOY3qRr/B17VFwpks6ARmQ61gaOVhiKFrp0aSX
	iYhMrFly6FGO2Uh81Ffg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwYK-00000005U3H-1Rjh;
	Wed, 02 Oct 2024 10:25:52 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwVD-00000005TZJ-07Gn;
	Wed, 02 Oct 2024 10:22:40 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id A677D23CB3;
	Wed,  2 Oct 2024 12:22:37 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JpG7VOy15MuO; Wed,  2 Oct 2024 12:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727864557; bh=mJKvs9FLRZJEhIPy4X5obYmCOTWrv4Y6lROopBRIP0U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZAUbyOdmY1iWScCGppAp8saDjp7y/6eUmxNQjbT2zYu8/q+STLhhrCjb2J7gotCOk
	 7aY3oWJuqtLAjs+jIQnqNjP49GsKu4jI8yWHKMk5bS8yiCn2Kl/VMABiBPDhuXka3H
	 QMbFMNBfardQhG/pTgPFNy3inTf396+nbzZitoiMuN75kO3rJcGhiqUmm785U6PaxB
	 nW4xm7PttncmUtKOOK+0FTbZttA8nWJo3szNesn1s68Y4YK+O/rLh6fyPYjyJj+eZ0
	 jpWrZIRt4V8ZVs2VJMeTWeKxmYCGpn7isvCXFUA0thlmj3fNoXo44GP/1dsiwPsR5G
	 DzuEwFqnAas2Q==
Date: Wed, 2 Oct 2024 10:22:15 +0000
From: Yao Zi <ziyao@disroot.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 4/8] clk: rockchip: Add PLL flag ROCKCHIP_PLL_FIXED_MODE
Message-ID: <Zv0e1_9AdNASLQMr@pineapple>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <8495918.NyiUUSuA9g@diego>
 <Zv0blIPaF0Y2Pmn1@pineapple>
 <3798659.MHq7AAxBmi@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3798659.MHq7AAxBmi@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_032239_223240_E44263FF 
X-CRM114-Status: GOOD (  11.46  )
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

On Wed, Oct 02, 2024 at 12:12:11PM +0200, Heiko St=FCbner wrote:
> Am Mittwoch, 2. Oktober 2024, 12:08:20 CEST schrieb Yao Zi:
> > On Wed, Oct 02, 2024 at 10:16:49AM +0200, Heiko St=FCbner wrote:
> > btw, for the documentation, is there any technical reference manual
> > of RK3528 available publicly? Please let me know if it's true, it will
> > be quite helpful to understand clock tree better :)
> =

> Sadly not. So far there hasn't been a "leak" yet and Rockchip also seems
> to have gotten more restrictive for whatever strange reason, so with my
> NDA I also only got part1 of the manual.

Oops, sad but also much thanks.

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

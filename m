Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D643C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 16:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XbU2O920PpzRdVjvkkV/G8siWSFF6xnwB2DiR+1bV84=; b=J+rVY6Vc+9wuAn
	wxWeUL4+r6ae3szped1mL7/UXtRqRDlrOntNrzg7VFZ2jf49grP/9GzgwWJ5aIeRk6ELoiEKXLQVx
	nrFXOBNFkiySHu/aJn1mbx+eabGKFWWtWCXWs1Sxi6RdmUmbXhUyHkG+v+weCfz+ZhUqTADdVUGHv
	Y31it0Z89ssiLrTmFcpgfhk3y6MtbQWyChyGX0Ru/2//dXyq6qhERfSJMJEYiOunWO25a6b66Xu6R
	JNvggTDp7/FhgqSsBkTbLyIAYCL3Pu8QBhG/Q3w6MklCuNP3O/xO2oiMFR6VXNnCVPeY0F0vunlBM
	03FtPX28UKk00IHlG0hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0f7-0000000GXlS-3XdE;
	Mon, 05 Aug 2024 16:34:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0eu-0000000GXhY-2Twi;
	Mon, 05 Aug 2024 16:34:19 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sb0ef-0003iO-Ao; Mon, 05 Aug 2024 18:33:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 05 Aug 2024 18:33:52 +0200
Message-ID: <3723411.CpGBqz00pN@diego>
In-Reply-To: <1805269.IgJLvJe6uz@bagend>
References: <20240304084612.711678-2-ukleinek@debian.org>
 <688bf5d2-153f-4be2-814f-245b8eeba911@kwiboo.se> <1805269.IgJLvJe6uz@bagend>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_093408_653946_4F78B860 
X-CRM114-Status: GOOD (  14.33  )
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

Am Montag, 4. M=E4rz 2024, 17:47:22 CEST schrieb Diederik de Haas:
> On Monday, 4 March 2024 16:46:59 CET Jonas Karlman wrote:
> > Sorry for not getting back to you sooner, but yes I would check with
> > phy-mode =3D "rgmii-id". There is also a possible issue with rk gmac
> > driver in both U-Boot and linux, it always set enable tx/rx delay bit.
> > =

> > Please, try with following in U-Boot:
> =

> No worries :)
> Will try your suggestions soon, but it's probably better to take that =

> discussion somewhere else to not further clutter up this patch/thread.

did you get somewhere with your testing?

Just as a datapoint, I also had a lot of "fun" with the gmac0 on my qnap
ts433 today.

Cable connection was detected but dhcp did not get an IP address.

In the end I realized that the vccio4 supply was 1.8V but the
pmu-io-domains were not enabled, so the soc thought it got 3.3V

After enabling pmu-io-domains [0], I now get networking on that port.


Heiko


[0] https://lore.kernel.org/linux-rockchip/20240805162052.3345768-1-heiko@s=
ntech.de/T/#u




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

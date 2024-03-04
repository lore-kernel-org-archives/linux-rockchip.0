Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B384BC48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 09:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cv3ieXXt27KRcxPXOZCMzXjbrXA5A/O4kbsxeGymANU=; b=RP9P/96TdMVP8z
	GzfWusXsCjjSQqsFOQnhLLWyvQXnumU2dY5nBTPKNGXCt2JGHDJIuUMXYwogQcA6bHdWaYGSoZPC8
	9tG+pVN+iakN6Rp9q3DKlbjxCC8ZdMilRu81CAosXDaGN8VmPCXVypsOq0Pz44I8+Mz5MzEJeQiR+
	VAAT6S4/I9fdXtXI5DLs7sf/AlxO+OO350taxG/XMvO8CY2x32ARYFP0ESYP0WSTIdX9ARXdF9gev
	4+2dzuL6AA//o71BXF/5+JBAofiKBtlXqzd+ulftd1/6fM5U3gJvJsaPUESHMVTHQEhXaX8a7NDyu
	jh6TRAHobDC5YzCqsb4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4ZO-00000008Myf-1Nt1;
	Mon, 04 Mar 2024 09:25:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4Z2-00000008Mkk-3zyY;
	Mon, 04 Mar 2024 09:25:02 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rh4Yt-0007X4-Rj; Mon, 04 Mar 2024 10:24:43 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 04 Mar 2024 10:24:43 +0100
Message-ID: <3246455.0WQXIW03uk@diego>
In-Reply-To: <0f7d2882-aa4b-424e-a999-45f2e18fc7f0@debian.org>
References: <20240304084612.711678-2-ukleinek@debian.org> <3082796.ktpJ11cQ8Q@diego>
 <0f7d2882-aa4b-424e-a999-45f2e18fc7f0@debian.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_012458_565536_EDF273B4 
X-CRM114-Status: GOOD (  21.29  )
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

Hi Uwe,

Am Montag, 4. M=E4rz 2024, 10:15:57 CET schrieb Uwe Kleine-K=F6nig:
> On 04.03.24 10:07, Heiko St=FCbner wrote:
> > Am Montag, 4. M=E4rz 2024, 09:46:11 CET schrieb Uwe Kleine-K=F6nig:
> >> While it requires to have the right phy driver loaded (i.e. motorcomm)
> >> to make the phy asserting the right delays, this is generally the
> >> preferred way to define the MAC <-> PHY connection.
> >>
> >> Signed-off-by: Uwe Kleine-K=F6nig <ukleinek@debian.org>
> >> ---
> >> Hello,
> >>
> >> Andrew already pointed out when I posted the patch introducing the gma=
c0 node
> >> that rgmii-id would be the preferred way to setup things. Back then th=
is didn't
> >> happen because this change broke reception of network packets. However=
 this
> >> only happend because I didn't have the right phy driver loaded.
> > =

> > trying to understand how the (not) loaded module fits into this :-)
> > The mdio-bus is supposed to probe the phy and load the appropriate modu=
le.
> > =

> >  From your description it sounds like the correct phy module needs to be
> > actually loaded? Or was that meant to be a "requires to have the right =
phy
> > driver compiled" instead?
> =

> The latter. i.e. with MOTORCOMM_PHY=3Dn it's broken, but works fine with =

> MOTORCOMM_PHY=3Dy or =3Dm.

ah great, then it's really fine. If it's ok with you I'll change the "loade=
d"
to "available" then (for compiled in or as module)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

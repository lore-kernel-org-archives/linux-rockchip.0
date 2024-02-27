Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59FEEC5478C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 17:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3UJSKgG30czrQd+AhoJsxlZHcdaN2Y245gtPYtMIRM=; b=i8jixdMEa4HegT
	RAze+Ecmd+GSWr0J0Ri5VvndWFkdjMkN0Hb/PM7edbTON03dhvVK7SoVRc/p+tkm8kp1t8PnNPZyk
	TDoILEPncgqMOgji3x+9eScTTi1s+FKlClXfEr+RBw3FeGgwL9cXIhaTEDGJOL0zMc0j5K+UnBVer
	OFBLFvU3q985MPbIB21y6zOcltwe7lckjLqrwZR2XKigRWjgQEm0CU9u46SEqWBmnSrhNHAEAduYn
	kFQFXOLDIJaPYjKyUN6qFHDaMZ1FZGL8roRfK3FpnIL46JXqG872O09NX6wsrgrf+H9ZLSZS0UxG3
	yWAof6c/nTYEtWc8Y/IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf1T0-00000006GzM-38vJ;
	Tue, 27 Feb 2024 17:42:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf1Sx-00000006Gxu-1q9W;
	Tue, 27 Feb 2024 17:42:08 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf1Sq-0007Qa-OF; Tue, 27 Feb 2024 18:42:00 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Date: Tue, 27 Feb 2024 18:41:59 +0100
Message-ID: <6020339.31tnzDBltd@diego>
In-Reply-To: <2ifrk72uv2j27eukuxeekeuluzf4bu5335qk73gaaykg7tcq4d@uhkutnknqqd2>
References: <cover.1709034476.git.ukleinek@debian.org>
 <170904127405.3703837.16422930909447111254.robh@kernel.org>
 <2ifrk72uv2j27eukuxeekeuluzf4bu5335qk73gaaykg7tcq4d@uhkutnknqqd2>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_094207_517954_65841DE0 
X-CRM114-Status: GOOD (  14.74  )
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

Am Dienstag, 27. Februar 2024, 14:55:57 CET schrieb Uwe Kleine-K=F6nig:
> Hello Rob,
> =

> On Tue, Feb 27, 2024 at 07:45:06AM -0600, Rob Herring wrote:
> > New warnings running 'make CHECK_DTBS=3Dy rockchip/rk3568-qnap-ts433.dt=
b' for cover.1709034476.git.ukleinek@debian.org:
> > =

> > arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: video-codec@fdea040=
0: 'interrupt-names' is a required property
> > 	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
> > arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: i2s@fe420000: reset=
-names:0: 'm' is not one of ['tx-m', 'rx-m']
> > 	from schema $id: http://devicetree.org/schemas/sound/rockchip,i2s-tdm.=
yaml#
> =

> Yes, I saw these, too. But given that the added dts doesn't touch these
> two nodes, I thought this to be a problem of rk3568.dtsi that I can
> ignore for this series.

I think I found suitable fixes for those in [0].

The question would be, if the bot finding errors causes the patch to get
removed from the review queue, because the binding addition still would
profit from an Ack :-)


Heiko


[0] https://lore.kernel.org/linux-rockchip/20240227173526.710056-1-heiko@sn=
tech.de/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

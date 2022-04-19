Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9F50C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Apr 2022 17:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBBqZ6pZUdJqLyjPUCBjPvdxXuhYkzKnI8HyhRQE0SQ=; b=omfT6gnkxgoP3f
	sv6zuC9VdkML0Kfh2Sqvhf1I3ISjxYaC+4tsVAANjt6O0VYeLzhaxi6DllYf8NSTh8MJ2LwLT9Lo0
	e8QoeL5t9Xzp8kPMIq74G1PWehbhIJ3719C0MG1e0CG4WnljRLyfMX2ROTRuMCNQCee1A1E2AgYKG
	d+M5ITRm7bW7z24Nrb4sWw9md+l0ZKJDZpNm/nQM/Vz7g02wwHryBg99uXmjJ6T/zV9obk8s4RxJN
	G/vJjTrnf5h6NarfMYoWgCTKXGCfWoqgiC32yneTENm7FgH5eQRCmzCcxMuq2eHC+8AYJ60OsP0v3
	D8aqK7ktzMMbGyKL77/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngrpq-005OTj-DQ; Tue, 19 Apr 2022 17:40:18 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngrfT-005JjB-Vc; Tue, 19 Apr 2022 17:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1650389348;
 bh=KwXzkV0B3f5e2tIrsLC+AOdAfv7m88ysNXObwXd6YFU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=C3r0DjATYEqweUN70N+KSWm8s2Civ07dEeM21QTrj5r1m5ZISvnKT7EL2fK8jKQcG
 YCjlBNclMYyRmEK6ZfE9at59azUaeOCjiGBJ+iM3/boiWJlrweKhokDKsRGFHpVm44
 syEqyK5OLmSSqMe8pekmtoe+yOUERDkEvLQKcVvs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.157.75] ([217.61.157.75]) by web-mail.gmx.net
 (3c-app-gmx-bap70.server.lan [172.19.172.170]) (via HTTP); Tue, 19 Apr 2022
 19:29:08 +0200
MIME-Version: 1.0
Message-ID: <trinity-c60358c4-ebd1-47bf-91e0-9ae0beefd39f-1650389348418@3c-app-gmx-bap70>
From: Frank Wunderlich <frank-w@public-files.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>, Peter Geis
 <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: Aw: Re: [RFC/RFT 2/6] dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
Date: Tue, 19 Apr 2022 19:29:08 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <02b3fe1c-12f9-8f96-a9b5-df44ca001825@linaro.org>
References: <20220416135458.104048-1-linux@fw-web.de>
 <20220416135458.104048-3-linux@fw-web.de>
 <02b3fe1c-12f9-8f96-a9b5-df44ca001825@linaro.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:GSNIHIUWA/GRgjok62B+UG3JpReIUrnZJW4cJo6k+0piMPNyKFMYLVAFWEh1wrHmC12r3
 jNiJtMLDXSgz8acJ/aJzo+jHp/laJRu0OT7D+X3jpnmIx10ZRP1JqBS5CgsRVh/9IdoFFvDn3g/d
 rj15Lid9nt0dWx9ntE2Vb5tFhLn/8safPKxQPqCoi0HjiXWlBT+34uxmGYQ7RC1juT0PrxVRNTqc
 +QTAlJ8jBUmU1xE8ALgCLTfOHz6M+dTJ9/YjpIsyksZMR+MkqhSHhbwhX6bzXV0vtETyR9yddXOr
 u4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:5J5RBFRzPTA=:MMjlPLuedJCMlAG5z+h8Bd
 CK5NFPEE5BVigaDy2laiQ3hRh0HImsKvp9cX2T3LIVYqMkqSsdHqKNBebEb9780iJzIt8QM/K
 y9CLpFPNgTk0uM/rfb3lgNeOPYy+VVHhEX/pWsHHxtLSpMVOZ9kppKDncbHeK2pBCqzqbBABV
 4Hq6qMPtbDPsmgM9C+lq8lfBsoCDZpGQltXuR+4tcZ0Da3h6jUHz2/UBW1FT1KHOA+laYVvMk
 Riyj53Nwe+OUPmsJs7mnYI2iLWL6L/tUaf5WEUva+1mUYPHoJRbRcCeHcRQJDSOCmqBrYAbYF
 +3s76mG4HUhtZ+cBaMiYRj3eeg8vHx0s6BybOeU3XzkVVYavGi/jCADVnpZYoCtxL4B66wO58
 gjuekbExgepHeqNRmYJS+H+5VFOiH3YJLw4pwg/Q9OAiLjfe7XWTtdNO4nAN8eI9Ed0RIRNkp
 gHPIBavKmNjNsvReK1OGzG2oGnejY7gC5GuhCvFYoAbLXF1/sndvItKF7jMz1MBMPBq8XWDD7
 1cQLVwUR/fFS0cW9+ozbdCHKY3I/95TDHgeGdXd93tAoRhBryWoYjZkSr8yFglnePJThlEqwR
 0pq235DHr7bdkoQieORurzxhhH4+Drw7BaTzq40uEnMMZMcPBhf26ZU45rosLjOpGUyJEJJM3
 YTRUlTdc5HFiT33FAqSB83j9MTWyHTmUZJVzHrHq6mSdnFZOm7XeSsY6ZzxfPpgLX1VvmxbNe
 2z7dslB3GZNBFZ3wpYcTO44+RvZB9DlwXuzmx2QQVHRT5fbtdA1uaNeTflN5aK5nvUU03Wpe+
 L6o34tm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_102936_603039_97E65169 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
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

> Gesendet: Montag, 18. April 2022 um 17:54 Uhr
> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>

> > --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > @@ -14,6 +14,8 @@ properties:
> >      oneOf:
> >        - items:
> >            - enum:
> > +              - rockchip,pcie30-phy-grf
> > +              - rockchip,pcie30-pipe-grf
>
> These are without SoC parts. Are these PCIe v3 General Register Files
> part of some PCIe spec?

imho they are shared across SoCs rk3568 and rk3588, but have only seen rk3568 implementation yet.
PCIe driver currently supports these 2 Soc (different offsets in the Phy-GRF), but can only test rk3568.

pipe-grf seems only be used for rk35688 (offset used in probe is defined for this SoC), which i cannot test.

so i have left them SoC independed.

> >                - rockchip,rk3288-sgrf
> >                - rockchip,rk3566-pipe-grf
> >                - rockchip,rk3568-usb2phy-grf

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

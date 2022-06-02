Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B300C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jun 2022 13:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZDFz31zDPEDLD6mzbzJFlBczhRgrjt8MykvaHI5DN4=; b=GE0sJb7xXE8Uoq
	dVr8jAt0vlR3MAjlek/mbnlWnPtHvbbylP6XOhykDrq8lY5RHzJ7//AhQyhQtqj9zkCB8UvRlAYyN
	jDNQTJse34dLACXdq3h+YgIYC3PekpNWbtlpOcAC6fXAPYVQX8uW//YgH+RmJX6SiOHYnAn5/Js2G
	7Ehb0E0cH1Ov7oLxP/xxAglrNKDw2Uz0SpRqZsIaj8mzqZZ++fUCL+G5ELX/rGn0VZCCRvaRE6F7j
	/x0jEANKLkmDZSWEIzQk1qqNgqsq8kANvWSQORGe7tWm9VxfeWejQXqZwJL6B3sUgPPBnv25HAxqq
	DbPjxlj0PfPsxAVYUDDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwlBJ-003Stj-7V; Thu, 02 Jun 2022 13:48:09 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwlBF-003SsM-AT; Thu, 02 Jun 2022 13:48:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1654177662;
	bh=2iYMbjgyUAEmKKRbCPL6Jl2Wqx6/vlykoO1h/cdX9pU=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=B2lwuKhhses728holgAZp4oZnvnVyjpESpX5d4Wahe78tNJd3f7G3iHZN30VkwjsH
	 1q3k8Lea6OztCKRlH2bP/S9GAYekJz/0C+n+sKdRpScjskIa9I1rRRD5u26It9R98s
	 VtpCdQQEYQDUF5VyLUAzEr47GXRxAufe1baxqXxE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.145.102] ([217.61.145.102]) by web-mail.gmx.net
 (3c-app-gmx-bs39.server.lan [172.19.170.91]) (via HTTP); Thu, 2 Jun 2022
 15:47:42 +0200
MIME-Version: 1.0
Message-ID: <trinity-b1d8205a-3354-42e7-8784-0a0cfd7e8a36-1654177662388@3c-app-gmx-bs39>
From: Frank Wunderlich <frank-w@public-files.de>
To: Rob Herring <robh@kernel.org>
Cc: Frank Wunderlich <linux@fw-web.de>, Michael Riesch
 <michael.riesch@wolfvision.net>, Vinod Koul <vkoul@kernel.org>, Johan
 Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Bjorn Helgaas
 <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Peter Geis <pgwipeout@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>
Subject: Aw: Re: Re: [RFC v3 1/5] dt-bindings: phy: rockchip: add PCIe v3
 phy
Date: Thu, 2 Jun 2022 15:47:42 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <trinity-940b8fcf-17e7-4445-8aeb-e17f36b41b4b-1653047439840@3c-app-gmx-bap67>
References: <20220514115946.8858-1-linux@fw-web.de>
 <20220514115946.8858-2-linux@fw-web.de>
 <1652570081.002742.3276245.nullmailer@robh.at.kernel.org>
 <trinity-02ad648c-f6f8-4383-b389-a0578d5a02d2-1652615387162@3c-app-gmx-bap15>
 <20220516173537.GA2942634-robh@kernel.org>
 <9496CAFB-6CB6-4BDA-A539-3A6E1B562299@public-files.de>
 <20220518155551.GB3302100-robh@kernel.org>
 <trinity-940b8fcf-17e7-4445-8aeb-e17f36b41b4b-1653047439840@3c-app-gmx-bap67>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Ou72G3HO5kBx6mld4VIc7l+uMCSnBYkop7SJ5NIcA1Q3jsvlKS/T+4A2TSpMYReYX1Th0
 GAypuTa3Dp5BK76Enhpr3QRdwCqTSZRqGvWRg8QAKYTGYvWejEs9dbpyaEqq1FTO8xZ16d538kB5
 eY9I2r3Q0tpRm2I9dUl60ZMM4o41OGb7zWBlZPLHfp4gZlwFehrFuARn0k53XVU1e8bI19FDn7pR
 qURa9QP8VTUcbDNiMTKY7o/g6JQGRjPw2uNLkyeSpz/dp0nuEC+MWu+Iff69VEglUCvsEE4gwi++
 +E=
X-UI-Out-Filterresults: notjunk:1;V03:K0:AM77h1kBGk8=:BFWCs43+kuOa1+j+QUaBrc
 xUewSLTR6sWjcX/t/JXh6voUcMsVSiBagkHDIcOTlNTHngfeHJSZy8Qj7NHOeJQYRHMfHHpHi
 OBI7kmLwzjW23tCFGSYcTTeGYqr2gzMT4Bnzae8XSCvQrD1LwapSpYhvVKv64Qs4wMAkMZSIl
 M+ydn9ktzWPygx0j0usL15amBFWotiOtewmog1LE7yNkOU0RUIjZgFTP66BCQF7JszrotpQ4J
 DaqDPvH6nNl5DnOAtVyWx1GhR+E4hKsdmDo31jw0rmPgzhFzc2SyKU1IM4oBuJ1jSHW+F2RVC
 T2Ag9HLokhVoa0xIWI9gTRE2IojuWWwxplNXf64p7laHinWjbw+7Bjefi9gLm6OK2KiwuH9jl
 D1PbqX0gA9KwsI6peS5UrWANHghNgDGBLS+8hz6ecsFnVm/FhvWhSY1tAhnxlQSDq9OCVcYkq
 EEG1LoMz7j3VrpzjjZdh8VzhiBNG8urgDCdnoH0QsbbtIsIPZjmFoLwe/GoUHRCNrsv6G2CBi
 /khwDm2OWPOJ8Qr3lVaN8Lb8NoroO89YRCX28sgqrBe5ROrHU2AvXtRvbBCBR6B35whGF4Lgf
 N9RYAy4YdWkc3DYijq2gAUA79W1kl4vFpsD62UNn1p+x7qv9jmVBH5oRbx1X+ZvA8Y9dVftqr
 XTYPb/N4sU55JUh6+t6k5wOWcRzlOfW3I0uiKjPp2l0wu1Wa92JKn+DS7AIbsXsSMJx2EQFP+
 q4ydhp2uVyKH89+WcAnpuDKsndqtgejGlenvaSIWRY/adCbtrkjuBFgf4/BEtVcmYb8b+ErdN
 qXsGcYA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_064805_869170_BF7ED5AD 
X-CRM114-Status: GOOD (  11.98  )
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

> Gesendet: Freitag, 20. Mai 2022 um 13:50 Uhr
> Von: "Frank Wunderlich" <frank-w@public-files.de>
> An: "Rob Herring" <robh@kernel.org>
> Hi,
>
> fixed reg-error by using 32bit-address in example, in my test output is clean.
>
> +++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> @@ -68,7 +68,7 @@ examples:
>      #include <dt-bindings/clock/rk3568-cru.h>
>      pcie30phy: phy@fe8c0000 {
>        compatible = "rockchip,rk3568-pcie3-phy";
> -      reg = <0x0 0xfe8c0000 0x0 0x20000>;
> +      reg = <0xfe8c0000 0x20000>;
>
>
> i hope yours is clean too

have you tried it?

> regarding data-lanes instead of own lane-map, Peter and me only find this in special
> bindings outside the phy-"namespace" like this.
>
> https://elixir.bootlin.com/linux/v5.18-rc7/source/Documentation/devicetree/bindings/media/video-interfaces.yaml#L157
>
> do you mean converting this binding and add it there and base out binding on it?
>
> https://elixir.bootlin.com/linux/v5.18-rc7/source/Documentation/devicetree/bindings/phy/phy-bindings.txt

is this the right binding to add the data-lanes or do you refer another one (have not found phy-provider)?

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

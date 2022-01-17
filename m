Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D763C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 11:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Yi6re4aEQ3+gEDoJOiV7r+eh77CLY+HeTmGmtRyecs=; b=B8/HNK6XGT+HEG
	orzgHKXOpFWNvFaawVNd7yo2JVACYtr3NZBCBwgGHRAf/ILBmqDgcQkaq6snG49xgHebGFgLqloAN
	fVrj//ZbCw3b5NDo/KvSZoRwezOanfBHLRnCpRGtcA3g+pBYqZh0pMFrPhxYiIucl3cQLcCzZVSIg
	409FCJuiDGuWRBHp26yrg6D/GR91knVMK+Y5P8uVUsdJA6sAzIJVZSQ6L3bJeXre0gHwGYOThhvNj
	5CzHEn8A9g+Kc418k1Btrs04UPeDbgF0Loioa/NGhX2EshQj+JAZSQfXfuctdV9eZmvGAm5lOkXPt
	3+WBgnjqXoHCvoyq7/WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9QfT-00Ek4U-F2; Mon, 17 Jan 2022 11:59:23 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9QfP-00Ek2e-6l; Mon, 17 Jan 2022 11:59:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1642420743;
 bh=gujjjYS9qrwNcyKQ6e9KHDoy6rimz86Y6K0Rz+RmDUc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=a7TR8vfa60Twe9sfDtxzobLLBC1WGSWSQq6+QehAaAKkAb3ur6o+U9nJhvIQaAvYv
 GFYyyxXC6WXdwLRWdn3R/YAUpBnDfhdDHb1oyvq2/e2bYphp74qqZCM44pTI6LFZ9X
 C37PQnrI+uCSIhAc1Hlkab9B+d6HEybmsoBW6B6c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.156.53] ([217.61.156.53]) by web-mail.gmx.net
 (3c-app-gmx-bap64.server.lan [172.19.172.134]) (via HTTP); Mon, 17 Jan 2022
 12:59:03 +0100
MIME-Version: 1.0
Message-ID: <trinity-5a2f356e-2777-4624-b921-f8f56ce282c7-1642420742957@3c-app-gmx-bap64>
From: Frank Wunderlich <frank-w@public-files.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Peter
 Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Aw: Re: [PATCH v1 1/3] dts64: rk3568: drop pclk_xpcs from gmac0
Date: Mon, 17 Jan 2022 12:59:03 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <8285bea7-559c-5834-78c7-5a062b7d8269@gmail.com>
References: <20220116124911.65203-1-linux@fw-web.de>
 <20220116124911.65203-2-linux@fw-web.de>
 <8285bea7-559c-5834-78c7-5a062b7d8269@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:cHO62E7Ya9rRWKPr0L0VrCY6B+yBe1mHhOfKgW+7v9Hi1JVHqgeaRwf2dbX14RlQr0bQS
 EaLgvi6Or8euWn98c6UjX+7pWk8eqTZy9t6P0XrUdQOhQ42xpzISY9KjjbMblE1OeK3bgJ/VIUlV
 0vP3/KvslZqn2qRoBHn0FVjlBaMw7Uv7heU+l7PCUPPxXcD739+eTt45Tiq9ATZnJbwRT+ohyZq7
 pJ6/eKvZiJ+LH9sOaXw0UmTO+PYxYdhQVBsabvBXMxGOQ2g0bw7hAkybXpltlfujGGjdfbeNyhZc
 3Y=
X-UI-Out-Filterresults: notjunk:1;V03:K0:L5kvOgyIvyc=:rgDGofe8CM8AvpBjMrXbOl
 GuHBAUFt2+k+8H9y0OHogGT/4Fudq7RfZcPkA7WrtGEPoW9+EM/X04qQVmFIM0GMOUubqVXdX
 Wk8EPuPONlKFrbFuXT+bKhOHuFX4woH5PGzmGnp0SYLXVyo3qdBv+vOVItB1uj/rN0O5a2xAp
 vOYnEVPFE9wbuULn2UcCoze2e/n32jKEWeFRh127O5y0wDoExGmASf6QM49H4tqDCioLYT3zg
 L2nOebMdO+FGRD6yK9tnO9rh1fKE1hCDxzBv2hZsY97yxQ3MAzpxGS5lgj794zeuxq00wc39Q
 AJ9wNxg5nNELhK6eaH9cmL3t+jBsJB00/2nDBIzZHcfzr1bPD1jBuXDG6E7dOgJWHmPbySxl1
 EbzlxhoybuubsUN2WzXE59AvOUn2zxOkYiKYNTzquRDJapJFKedDmxv+TaZK4Xi0Zbery4659
 jBsJRpFrYJLyomSyD+i1CwFuNpqundlA+99xTC3KFfcJkcooKQRecf/QWzJ7ALh0bdZLVomle
 a4rUe2kzEGLnRoso0K4gqcq47mU9DiIkw8toOXCqpKQYXgYGM0Qv/qHRjWvVvbQveiyMCa7Kp
 sSOja7cW63bQEDqXWiAWeUHE9fMB5Bb3eCXE1M+wIvkIJ9cmLXH3u3HIM/8Cm0XJX42BoeweT
 knWIa91iHp4r/GxQfVOCL472l5fQ+X4kkG0vSEfXnu2fv3bmjaL7sKeMHvuaPCL96aoZQ9Nju
 LIoy25fZ5dhnmbvcmHrZ1/IrDuGQkU7qvBHR5uczZOso/1PDebtR7bAQQ9cQhFzCq17baNd/F
 N5nV3gJ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_035919_632847_B6085B2F 
X-CRM114-Status: GOOD (  19.45  )
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

Hi

> Gesendet: Montag, 17. Januar 2022 um 11:47 Uhr
> Von: "Johan Jonker" <jbx6244@gmail.com>
> Hi Frank,
>
> Despite that the DT is hosted in the kernel tree
> DT and mainline kernel driver support are 2 separate things.
> PCLK_XPCS might be in use elsewhere.
>
> Given the link below pclk_xpcs is only needed for rk3568.
> Maybe gmac1 should have a PCLK_XPCS too, because one can select between
> them.
>
> ethernet: stmicro: stmmac: Add SGMII/QSGMII support for RK3568
> https://github.com/rockchip-linux/kernel/commit/1fc7cbfe9e227c700c692f1de3137914b3ea6ca6
>
> The original dtsi did have PCLK_XPCS in both nodes.
> https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L2121
> https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L1492
>
> Maybe fix the document or leave it as it is for now as long the driver
> isn't updated and someone has tested it.
> That's up to the DT maintainer.
>
> Johan

as far as i understand, the PCLK_XPCS is part of the naneng combphy, which is not yet available in mainline.
Naneng driver needs some changes and imho this should be part of it (including change documentation). That also makes it clear why this clock is added.
But leaving an unused property with sideeffects is imho no good choice.

So this was the easiest way to fix the dtbs_check. Else i got no usable result for it. Maybe adding it to Documentation is also easy, but have not yet looked into it as it currently unused from my POV.

But i leave it as decision for Maintainer to drop this patch as it is not needed for my Board DTS.

> ===
>
> XPCS is also part of PD_PIPE.
> See Rockchip RK3568 TRM Part1 V1.0-20210111.pdf page 475.
> Please advise if the power-domain@RK3568_PD_PIPE does need a PCLK_XPCS
> fix or is PCLK_PIPE enough in combination with a PHY driver?
>
> PD_PIPE:
>
> BIU_PIPE
> USB3OTG
> PCIE20
> PCIE30
> SATA
> XPCS
>
>
> 	power-domain@RK3568_PD_PIPE {
> 		reg = <RK3568_PD_PIPE>;
> 		clocks = <&cru PCLK_PIPE>;
> 		pm_qos = <&qos_pcie2x1>,
> 			 <&qos_pcie3x1>,
> 			 <&qos_pcie3x2>,
> 			 <&qos_sata0>,
> 			 <&qos_sata1>,
> 			 <&qos_sata2>,
> 			 <&qos_usb3_0>,
> 			 <&qos_usb3_1>;
> 		#power-domain-cells = <0>;
> 	};

PD_PIPE is imho also part of Naneng. But more for usage as USB3/SATA/... phy. This is not part of Mainline too.

But thanks for pointing.

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

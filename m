Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5F95C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 10:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZF9rUCV1VHjNIYhY0d/ax02ay+AZNmlJOz1VcQMsdQ=; b=kh2r3h56elyvh5
	/sJDGntiP0tAJ+jKm+65HGQzXf9r3zUhaL71gkJ4dchAF5NtBPq58fXRycGfyEXryskXuPmuJSQ/J
	hO2/o9mLMR+fTYNxCQ1YTPi1pCXGBUwLAXM64TmwvBAuc0VxkjBckvVBKNrrmRfMj7ngNp+dKZpLD
	fq2n++Krua6WzVABSVsIU3KQAVkqhqYFKz2zdfqPQHKu0/reDhtvAgDQRQ0t7XpxPhv2eQyNzqYlD
	/fWFlvHNPKJWsYPEb53pgOrj5BxkuMCeRZLZCx65mzv/gA8w6Ef4NDAMW+JX6JrAMMYE5M2h2DK1H
	m9AQaoibo5t/I6zJqXsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd87O-002mjE-Jz; Sat, 09 Apr 2022 10:14:58 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd87C-002mgZ-L5; Sat, 09 Apr 2022 10:14:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649499268;
 bh=tXMARNLA9DskS7n6l1+tRTujZqGhAZ7GRbPO4UYdPRc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IxSVxP90+ZOmEBXLIuvHmUe8+W6ei5skmLQXA7D97rKvQTmB1HlhHuQzya5Yc3erI
 a4798YOY7L2qJg8puehOsBOnv36HJ6akGys1S2MAcHXvqbQILDQOCj+EPW9lpx/Tfa
 KTS5JqqSY/+YGD9UtdBeuYAVK95UoxO8NbgABKPQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.105] ([217.61.154.105]) by web-mail.gmx.net
 (3c-app-gmx-bap35.server.lan [172.19.172.105]) (via HTTP); Sat, 9 Apr 2022
 12:14:28 +0200
MIME-Version: 1.0
Message-ID: <trinity-71c38625-1a00-47d7-8e23-4f33f25a997a-1649499268581@3c-app-gmx-bap35>
From: Frank Wunderlich <frank-w@public-files.de>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Michael Riesch
 <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Aw: [PATCH] arm64: dts: rockchip: Fix clocks for rk356x usb
Date: Sat, 9 Apr 2022 12:14:28 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220409075147.136187-1-linux@fw-web.de>
References: <20220409075147.136187-1-linux@fw-web.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:px9Dl30mP0/QOKo5gWzMbk3rYhC07nGJKO5T6E1xcDiNxsLeEdTFjFjjF9hbV99UMwwOW
 FwsyR+UdSAMRyI9aPH/Q6jkHGxs++t0sjrecW51r265jC8FaAzWna4EvOweafGBa8wV7lxQCR8lK
 mMqTSEa/3iLVxAoTe+d9pQAaRj/LtPCzYBm8WU3gSxC0uusrCPmxpyNFt60RaCUk2P4PUl1GdVIS
 xfJhmMq/kaBHACzFky3DPOQFDCaBGLNvnFj6Pi9KWopYtHc41FWM0FDEnxujYzJhut6xutjtuSto
 CE=
X-UI-Out-Filterresults: notjunk:1;V03:K0:zbENke1MzTM=:YR0ppS2dMTPhcmVvRBMzNt
 piE5Zy31YYywszrY6CK3nUaGlIobuQ0u5wtqrfaYKCmsYa5XHeWAetWC8ZUDShk1UjsmYxN2C
 BzoPrkLehp7/2eSS8rhVpnetpbNTr0wXLTeWwSvWUe8UB9uWEiqVnD1vHGvg6uE/l4bs5QfTm
 KgmCSUo7wcte/A/gJuQQ4iKiOdtmUxciJXekT0ZVMKzdlrBK2hKCNI71AuYI86swJYCan1/zk
 P998W6ZVyQ7eJL2UCk2CC/yb7gAloyGMewbEkCuVm4bBJ99KdAi6FR97RQEmPNquywD+j9/4T
 yxUZzRIbu+RU77lGc5JFMvx7YwQXFGOnZr6utyObmoU/rwCB78vcqeJZV3Xx11M9DB52uL7ct
 iZDbH4D5tS5VfNru8L1sQ1N85oWJy8uuSG7+mYlqMrQGkw/nSZv8eg7+dJttjNaWggij3aer1
 KSTDRwN32q7aTwoZy8RK9Huw/Co88LYYdpOfnMwIzb+dU0xLNoWd0wzfP8imZepslZW6JuuAE
 26xMizivLHaBBjqchgeYAhHGhn2+q793SoupccWjuffQRtz7R73Gsn0hZy3fUC/GBBZgt3K9h
 Ig0cz8Dlblg0XWQb/SrcMC1hRqvN9uYmyXVn55hxEEOm1ESAFirVN/BIKqlG8tOBX/OfRkTyc
 yd1lJSCcg97t18vPJZfl1UVv1dwmxO2wcFcEk6d8+b+RZLpbt2plEglXBqlFLTInZHw5XXSIJ
 bhvWeAq0BZNgRFwwbJWiPogMgNZrNohOlNfcs2ctzZ3AeAo8cKPUIBwjKsITNPhM1yYQWcNbv
 zjcSJP8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_031447_185979_405F2894 
X-CRM114-Status: UNSURE (   9.45  )
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

Hi,

> Gesendet: Samstag, 09. April 2022 um 09:51 Uhr
> Von: "Frank Wunderlich" <linux@fw-web.de>

> -		clock-names = "ref_clk", "suspend_clk",
> -			      "bus_clk";
> +		clock-names = "ref", "suspend_clk",
> +			      "bus_early";
>  		dr_mode = "host";
>  		phy_type = "utmi_wide";
>  		power-domains = <&power RK3568_PD_PIPE>;
> @@ -280,8 +280,8 @@ usb_host1_xhci: usb@fd000000 {
>  		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
>  		clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
>  			 <&cru ACLK_USB3OTG1>;
> -		clock-names = "ref_clk", "suspend_clk",
> -			      "bus_clk";
> +		clock-names = "ref", "suspend_clk",
> +			      "bus_early";
>  		dr_mode = "host";

this is the patch breaking it:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=33fb697ec7e58c4f9b6a68d2786441189cd2df92

suspend clock needs to be renamed too from "suspend_clk" to "suspend"

else i get this error on poweroff

xhci-hcd xhci-hcd.1.auto: Host halt failed, -110

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0FDCC0502C
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Aug 2022 09:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yH+RB7F9GHMUrrlVaeF6DRLEDZCzxUJeBiuyffVmpho=; b=mtim9KXkSIdhsd
	7eUdyGY62DfgmVJdyGe2QE1uJ3heMuvk9fDbvf4yNn2yNLFmkSAaPdKNlL08Wc4pQhfnST27DQspV
	8pwrqXnkBu21JsN8XFP+WR5z0OoTMFJP8Ua4mYv2ve1D1Nr+28MYIqIxu+AhQSubsl2zoef48Ha+f
	O1LyzKnmiXw6oK26NjQIS5DYsmlbYeDheYnwTtJz0Y8hL2O405X/KkYJ/zu5krTDu07PieFPOzUqh
	Hyk63nRuSbyS2xLszGMXq3o392y8c4fHhaI9A54Y/K1BOvS2wICkg5BUOBBdt0o9O+pEIXD7PpJye
	ZpPP0lNlWe/SO3eVwVGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRruC-006dyt-7k; Sat, 27 Aug 2022 09:15:04 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRrtz-006dcZ-Uq; Sat, 27 Aug 2022 09:14:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1661591668;
	bh=NSZNt0pLSZJ9ZlUlOlVD0Dm2WlTRFEWZaSBc9PVMkXM=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Pl8eSraZTY4DXGTjdsaq6gtwqr+OVJKUANpAa6+H1YlkdXRRek3B9vGFgS/HEfGcS
	 m2iIa/d3musZtHdFd4aH3T1eMIBHOXDuiDLjx99fall5DN4+ibAINiIxOSKUESNL9c
	 tnsbH5CGIPrRdTPO9BQgy3gXOmVYc2bZFz7p4Fxc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.78.141] ([80.245.78.141]) by web-mail.gmx.net
 (3c-app-gmx-bs16.server.lan [172.19.170.68]) (via HTTP); Sat, 27 Aug 2022
 11:14:28 +0200
MIME-Version: 1.0
Message-ID: <trinity-9006aaf2-5bc2-467c-a86e-ba43efc692e6-1661591668494@3c-app-gmx-bs16>
From: Frank Wunderlich <frank-w@public-files.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Yifeng Zhao
 <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>, Peter Geis
 <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>, Liang Chen
 <cl@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Aw: Re:  Re: [PATCH v5 5/5] arm64: dts: rockchip: Add PCIe v3 nodes
 to BPI-R2-Pro
Date: Sat, 27 Aug 2022 11:14:28 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <ee6dc940-8b90-1f57-28b7-6de8e3483027@linaro.org>
References: <20220825193836.54262-1-linux@fw-web.de>
 <20220825193836.54262-6-linux@fw-web.de>
 <cae915f6-c951-ba97-346d-00922c85067d@linaro.org>
 <trinity-88fbbdbe-de76-4479-9580-70edc34a4181-1661590200169@3c-app-gmx-bs16>
 <ee6dc940-8b90-1f57-28b7-6de8e3483027@linaro.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:EdE3dMgQkeItfCXLp2Op6iNlE9dCZFWvP+6GZ5Udzg6rm0Z5A5fq0aMTQ0emWe+gAoe4j
 t7TkMNyLxEnmzto60dAl00LWbo+PP6iOE590JSOqZN378EZiaIL17Rv8hCUk4wqqGyQl/a8lCgIy
 mPmhqhYVdeP/ciB5VSq7p76QTutOfPyepuNdho/Xn74oKlpgaTgz5MiJ3DeEY546TdUhkH2ZDHh4
 jPEH/XNfLWvoFLc9izMpcib8jGI5NV/t0LlAr134sMOvrlmptJgra+yoD8ZdrO1PkymjtokormSS
 yU=
X-UI-Out-Filterresults: notjunk:1;V03:K0:W6rPTGCK/7g=:9e/g9j/+v9yPoCSnbrSh7O
 o9q3W8hUCmfdr5FchIgTSNBRplDGVZgpOKCPZa8SGSHBL6pSivJPkPzjP5THduegnJ5CfY+jh
 oDz8Qlsn+MEk4JiZb386vpjlvTUPZ93QSgrn3cZbx7dMGmqrkMLBUwYTdvQMMd54P1FtkzpiU
 7EfQ8cj23pBhd80Fd6dJ8e80mMy1r96G+gbG6AzzDUzVri6IDBgRgmlV7PsBGsSIbo50II/v+
 Bb86I86KisG2VPasQGJkL+5CfmA1brBukiAN91GeYJBJjsIZpwdi3nJhJdgLbjsQ5QXv/nakS
 8yOHHqsLR3kyUO6C5UhV8LMWUdiCtB6tugALinG9xMBD7ZRygQwRavSmjKXl++EH5uWmqwSDh
 tM9XmYDU/WfQz0LThoJQMyEME6Hiny0RpOSWKnf0J1uTV7ssHkNCBVVxwv2BBiv39avQ+tiPw
 KZsWuTTMWXfGXcVjmCwP8303TKQgyWHwpt//Vx9udMrwBsrBsyOBQxbc2Ejm/lFCDP6jAMTnW
 UmFwE2Im61BoUEWWh/wprXN8SasHvbkNjoAgwLlKET9bpfDLbc/MLmcK1REtvi+OfbPOS6t/p
 XmjmXxFQok7FKl1Vuj+ppusdMy5VzwtPkUbrprOznz+CXgSHI5mP91EWVVAzrOIq3ny+ZCF/W
 C5I1Q/+nZ6Y3DtgdA9wLUh51SZRl5m/Lxr34XQehNndnFDSGXVg7NGT++kYMIyKSJLlnhARYP
 OuHrR5SQVLQNynVKhML8t6jk3oRhr3JwDV0t3aL6BAmP3WdeDAgzog4W1jraxOTCvU8Rve4KH
 Rztdx2s
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220827_021452_317597_35DA52C4 
X-CRM114-Status: GOOD (  17.23  )
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

> Gesendet: Samstag, 27. August 2022 um 10:56 Uhr
> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>

> On 27/08/2022 11:50, Frank Wunderlich wrote:
> > Hi
> >
> >> Gesendet: Freitag, 26. August 2022 um 08:50 Uhr
> >> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
> >> On 25/08/2022 22:38, Frank Wunderlich wrote:
> >>> From: Frank Wunderlich <frank-w@public-files.de>
> >
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> >>> index 93d383b8be87..40b90c052634 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> >>> @@ -86,6 +86,66 @@ vcc5v0_sys: vcc5v0-sys {
> >>>  		vin-supply = <&dc_12v>;
> >>>  	};
> >>>
> >>> +	pcie30_avdd0v9: pcie30-avdd0v9 {
> >>
> >> Use consistent naming, so if other nodes have "regulator" suffix, use it
> >> here as well.
> >
> > only these 3 new have the suffix:
> >
> > vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator
> > vcc3v3_minipcie: vcc3v3-minipcie-regulator
> > vcc3v3_ngff: vcc3v3-ngff-regulator
> >
> > so i would drop it there...
> >
> > so i end up with (including existing ones to compare):
> >
> > vcc3v3_sys: vcc3v3-sys
> > vcc5v0_sys: vcc5v0-sys
> > pcie30_avdd0v9: pcie30-avdd0v9
> > pcie30_avdd1v8: pcie30-avdd1v8
> > vcc3v3_pi6c_05: vcc3v3-pi6c-05
> > vcc3v3_minipcie: vcc3v3-minipcie
> > vcc3v3_ngff: vcc3v3-ngff
> > vcc5v0_usb: vcc5v0_usb
> > vcc5v0_usb_host: vcc5v0-usb-host
> > vcc5v0_usb_otg: vcc5v0-usb-otg
> >
> > is this ok?
> >
> > maybe swap avdd* and pcie30 part to have voltage in front of function.
> >
>
> I prefer all of them have regulator suffix. I think reasonable is also
> to rename the old ones and then add new ones with suffix.

ok, will change these to add -regulator in name (not label). and then rename the others in separate Patch outside of the series.

so basicly here
-       pcie30_avdd0v9: pcie30-avdd0v9 {
+       pcie30_avdd0v9: pcie30-avdd0v9-regulator {
-       pcie30_avdd1v8: pcie30-avdd1v8 {
+       pcie30_avdd1v8: pcie30-avdd1v8-regulator {

how about the swapping of pcie30 and the avddXvY? In Schematic they are named PCIE30_AVDD_0V9 / PCIE30_AVDD_1V8, so better leave this?

avdd0v9-pcie30 will be more similar to the other regulators, but inconsistent with Schematic.

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

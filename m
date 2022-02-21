Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4804C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Feb 2022 09:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtZQLp4MRX1n39+VjenbBFpEtFdXi8I/fc2J1fccYX0=; b=Y+Ch7UUWv9y8Cf
	0HoEffh4TRZBZ8MP/JirRDzXFg04xEZ0Bgm2EEysECdiOfkgp1ldb9ZOTbMhPcg9uNcsM/aSpeM6i
	nMPkM9GKZZAWisnQb6r1gDa7xAvxAB/N+ODZpRfmxiNxXIAeewRNkhWfI7G3DSo17BsMJFqF2xyfN
	vSxqwM3f1vbwNn2kpdd+qoOqMrFehAKS6Oo8uP14GY19b05zIGWO8+u0Vk0dNhJTxlVDLXRuud0dY
	fjOdNQ7iejZoSxjHHpJ0FISdcWctAvPRBWWdROUj6KW7nlr+O/iKnawA7Gj2jBQi8kcOyol6frJIt
	xufJamnMp+A3Va6biYVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM5P7-004haS-IO; Mon, 21 Feb 2022 09:54:49 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM4T9-004Rks-9m; Mon, 21 Feb 2022 08:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1645433669;
 bh=Z8EpCecM7RhGma2bC7EtfcMj8Tocmigz2nMw62yYXOI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SGP/t2lI+xhMg/JrfB13WY4xxriDcSAHgJ6ylum/H9flWMPRdIgPX98DGQ/1h6i3Q
 qairigJXYCvXvVFnp/yDTP+h9lWb9PEJfSmaS5aqGry3mW27en1R96IHha5jvJWvL+
 qu5OOcNGUpraNYgoYe2Z5euBaUOZK40LBlFXjLxY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.156.188] ([217.61.156.188]) by web-mail.gmx.net
 (3c-app-gmx-bs60.server.lan [172.19.170.144]) (via HTTP); Mon, 21 Feb 2022
 09:54:28 +0100
MIME-Version: 1.0
Message-ID: <trinity-1fb35fb4-c954-46bc-ae87-02d5df121a01-1645433668183@3c-app-gmx-bs60>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, Benjamin
 Gaignard <benjamin.gaignard@collabora.com>, Michael Riesch
 <michael.riesch@wolfvision.net>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Peter Geis
 <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Aw: [PATCH v6 17/23] arm64: dts: rockchip: rk356x: Add HDMI nodes
Date: Mon, 21 Feb 2022 09:54:28 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220217082954.2967889-18-s.hauer@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-18-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:x3LBl6EdmehdGuwhuzd1xOiFb5z5EOYnOHMNPxoOy2rR8Mp7JmyFo1r/Het2WBDJ+/P/C
 MbmK1DBWnywY9nPp//MWoUl0xvSo2oFozeETajq/jVz0zEjHvB8ykHCkzW7YiAG74BlX4x6IKiyJ
 ykAnSyyPrbCPT438/Jx32+Zl/DaxIVQbl7p0P6yOye/7si/IiLDQ+qkkt+Dt7Ttsr2PEr1u0BJ0p
 cLwZzSo1tEct6iqdXWkPu3nprszone4sbWeWnDcadvyteaibWI8AbYRahHEstwIQjQWq74mTVvoZ
 fs=
X-UI-Out-Filterresults: notjunk:1;V03:K0:DwdkB/65TKg=:HKvkpn7knmxoBuuiGPVqAX
 a52f8isbXjpRDRLNOGCNM74lVG9WMh/GmZaZqg1g2Y6WUvSocvo8X6OpfMrb+kH/epU2SqxaG
 Y7TUYu3SamCGVywdGnqbSey7MI0noKv+mmeTEXF2bKSnWsDz5BjcuaD6lNsxg7fWpLPWXqLdo
 q0YNDHYn4XZ/wNzVIC4jBKiJwM0w5UNRBDWiZ2WT0Hn73geP30gdDbfF/P3W5RHZpl3HUvOzI
 5gLlwXgOzajIyabSo57wTRTHeYjX/ll+Ev9WBKdiziKzt6UnhU695W5nWhWJtjtUjUFgg9Xtv
 u3kJVcG93Sqo0gkiXedAIiAgxNsg9pxhBAySNczCCgPfZhwahFsgNgMSkWQ/668LAmPtj3DMr
 PAkdnsiDMUHJ1VBUZBn9jVlQ2DteRFw3AjOxJq+fEF2HNA+T+L3z/EC7G9TW3lNaFgk4CeDjq
 rQmthDdyPzoVE+9N2QXeLkqTlvUvoDqYI0Op7Y92VWeSiODLkoOrzXL3TZDBVVx22jbpJ6bHR
 XGUcLyDTRau47Z7BUzzgjdWcYlwu6qJ1d9g/+5YhOVe63hEfy4xkCejUWVtRb7oqiaZnHd91T
 KmCQC5cYSjNz/m4sSFFdrb+EOa0A3P3rB4PkGm9stkHLg1e6d5Zd3VSIYQnO5+uDWaFt1Xpuj
 ztMk1+oqEUPnl1E0lV3o1Tm6H5msgDGQuHP8PbuV1JrzaUshTR2Qpif8slsHA/jwaYEt9BHTX
 uImMXEI9pDkYEp8rw3zxNI0Qc0TVj0AvIrLEaTJlvjO5BepPQqjpGxtVpwB+cU8Awj1tfX6dR
 4SoFCOx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_005455_666556_27198E01 
X-CRM114-Status: UNSURE (   8.45  )
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

Hi

> Gesendet: Donnerstag, 17. Februar 2022 um 09:29 Uhr
> Von: "Sascha Hauer" <s.hauer@pengutronix.de>

> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -10,7 +10,6 @@
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/power/rk3568-power.h>
>  #include <dt-bindings/soc/rockchip,boot-mode.h>
> -#include <dt-bindings/soc/rockchip,vop2.h>

why dropping this after adding in part 16?

>  #include <dt-bindings/thermal/thermal.h>

it looks like you moved this to board includes...imho this should stay in the rk356x.dtsi, because compilation will fail if a board without the vop2 (and missing the include) is derived from rk356x.dtsi.

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

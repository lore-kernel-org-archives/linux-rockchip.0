Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A3C8C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 11:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yf5lGgil5nrD0qxYAnsOYI20K1gWsf7BG9DGJwgDjP8=; b=UTq0k0E0k3wSod
	fsUc9Xn5WNW2nw+SGQwqfbTJneSRo/F1gQhMSrGxEpaRE1Dr461ZufpyBG7yx22Qp0e04iXHu0HeY
	rMma+MauAJbQ8iASeA2XfCG/NLH5Dd1rAQ7k++hnOIv0pE1+yi/REOVSmK70G3DSoGgsEmgouB+0J
	D0NmiVN7FKG6pP/UwAU0Z9lxWpNx4iT5EoV7CNeGfpsIRgsDjnMVN1IFHFdnZ3Fv9cld86waX863Z
	QQ/1JwVEQjx+1pUxQPBMICy6haf5P+itFLjrrhVohtyDW6i5eZZnmp3zyLC7potpF5FwK5ICzFxfE
	CD4bn05WQjJtWMHOf/AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxoke-0056aN-EB; Thu, 16 Dec 2021 11:16:44 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxohY-0054w3-Jw; Thu, 16 Dec 2021 11:13:34 +0000
Received: by mail-io1-xd35.google.com with SMTP id z18so34663688iof.5;
 Thu, 16 Dec 2021 03:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3TbuArxHhnw2NqzqpC678dLXDest9qrzIVawU/F9j8Q=;
 b=c7c5AUqscKuwonxjAAu6GNkrIrX/IF7LrlWWVMPz5UemowmrXucK7FkuhZIGIRGzt1
 GQJPYBo5Qt6nhgS6gT6fBSiQtets2bXuqlFAnLAFN70TZNC+gG+EAHejVr5ce+i8ovXG
 Os6j1vre3Rl+jpAFdoVx3iUab3zIjVJtqnvU1iZ//JYFc3AMDyS+pfXirWE1ZY2SlUa6
 8x0Ba2EUvmM0M8ErtWryT8gSJYvP1Jk//AxnTONrq5haRQXGXy67tGDP2VWNfd1G3j7Y
 fp09JwuwLqYZ70VePxar96Mw6w66JsT6MdUkerjlUtdwfaxuWlR/qip4LRzHcjOpd7uK
 NwqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3TbuArxHhnw2NqzqpC678dLXDest9qrzIVawU/F9j8Q=;
 b=RCMAYNGj1/g2h5eqBGBoWvI5hOvOp5vGUfwBp7hVrR/oyNGZ8qDBVs8Vzo3XR0lTt4
 YV7c5TIxUS1usczXG3/bNkVFKm4Q4eBUSF9lfJ+l2ACAzJ37oV4nBOh2LaofEQXBdoWT
 qifkpyLiXE28Qu44R6kg96lcB3nIbvsx0I3ghucmBWEM7T9ivoCmZ9DVvjkaFvQv9+ki
 Rd9oukf53hmjXeAsT4k3c3rOwHpYhP6nWiZBuy4Hjb0PjgFuO395jyNVdxII8a3V+32C
 lNg0ebCPtaFKYH2wulavOw+Mg5HOsaa+50DDgcGhIy3u3sWh+zcHJS/9Jct7s7nsxxuG
 9TFw==
X-Gm-Message-State: AOAM532AA6v1EbNmO+yumOGsFlJ1biymLTQ3A95wP45odAMGcoobUG9W
 U9FVkZgWF1hbtxjxlXSnNLM=
X-Google-Smtp-Source: ABdhPJxedNBamHheqxed8H6owY3Y6xwLktxG1rqCkzncbtyaENC9+7PwVJWipBKw16ZRt4uLl+pOZA==
X-Received: by 2002:a6b:740b:: with SMTP id s11mr9121160iog.120.1639653211807; 
 Thu, 16 Dec 2021 03:13:31 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:fe22:1652:55f7:5197])
 by smtp.gmail.com with ESMTPSA id h1sm3090946iow.31.2021.12.16.03.13.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 03:13:31 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: abel.vesa@nxp.com, aford@beaconembedded.com,
 benjamin.gaignard@collabora.com, hverkuil-cisco@xs4all.nl,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH V2 07/10] arm64: dts: imx8mm: Fix VPU Hanging
Date: Thu, 16 Dec 2021 05:12:52 -0600
Message-Id: <20211216111256.2362683-8-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211216111256.2362683-1-aford173@gmail.com>
References: <20211216111256.2362683-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_031332_777334_5F709700 
X-CRM114-Status: UNSURE (   9.26  )
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

The vpumix power domain has a reset assigned to it, however
when used, it causes a system hang.  Testing has shown that
it does not appear to be needed anywhere.

Fixes: d39d4bb15310 ("arm64: dts: imx8mm: add GPC node")
Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index c2f3f118f82e..f13d31ebfcbd 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -681,7 +681,6 @@ pgc_vpumix: power-domain@6 {
 						clocks = <&clk IMX8MM_CLK_VPU_DEC_ROOT>;
 						assigned-clocks = <&clk IMX8MM_CLK_VPU_BUS>;
 						assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>;
-						resets = <&src IMX8MQ_RESET_VPU_RESET>;
 					};
 
 					pgc_vpu_g1: power-domain@7 {
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

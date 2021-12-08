Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 327C4C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 22:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQ3CzMPa8FvslAh+xobBFY5of+cOzN1Un4GkOwXRcVw=; b=FVgFKWazWSfLJj
	0XpDltfyMHt4dfn0AkHvaiMqMxEUUedgKQ6UxH811+3cXd+kWxKMoYTB8dT3BQIqsdRz49ASZ94NE
	wuYobussaXSSl3t97eBAY0j83n9w/0BEwhzxpcSqdUGWlE8K193uGbxPpW5JuSkLDwL4EPPF+Ptzx
	ACoppV5ZNFXtbqTlaIftGwJfD5qtOw+G3kPj2ypsoaIBOTsvtKOnJZMeGrf4KfhdvS7XE+ywKzFTQ
	WOb9118yc53TAmHa9wKGMFyGUa+yXy53eNgMShDWgZu41hRGIZs3VABaEASL7bb7+Q0vgHVLJ0odT
	u9sGOYmVW/9N1jir5oMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv5oG-00ESoA-G5; Wed, 08 Dec 2021 22:53:12 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv5m2-00ERXM-Sh; Wed, 08 Dec 2021 22:50:56 +0000
Received: by mail-io1-xd2a.google.com with SMTP id z18so4604084iof.5;
 Wed, 08 Dec 2021 14:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CrNumwISLUpkzDEc0TVgaptJcWoPniM3pmiYzi2RbfE=;
 b=Fj6VpvXikYeBpUY3sac3yJ39RVxk5IUonJwvZgE62hZzJh1g8rF1GAOIhXAWaSkfiE
 XmJlE0U6MQJ1fG17Nfa8iqI+RmfFhq7IzckfnyQJJVvGJRhFtobH7ZnL9N8cN5/51k1g
 Xt4QA95/53ihaR8NBmcrYngNnoKhVZsxJJHCO6uFsCr+5WkxjgHDOQxW56G9K0FRn5Xx
 8UH/gsESc/zJi+ObAZ1Bd9ujFD0uTC4gyI7jw72C/b47isugWCc3OsWbK+PAUqD6DZiI
 ZvXHF+1hkgxNORUBJTNz1eb4Nma4dfz6C8dS5yssc0IQco2UE+8dyUUGlEj92s+hmD5h
 4BEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CrNumwISLUpkzDEc0TVgaptJcWoPniM3pmiYzi2RbfE=;
 b=QblOeVuCjnlfSegguXcy0yo2J8JAe+UV08vXOFNj59QgPpJZVcmvMM0pRAYmlKAZux
 2OSK16TavaegRtT99GurkRGS5IojUPUOOFTDoqyb9x6W9bXnEmHUMN9g89ouELM/DiR8
 nFEEOv+dJKd+cEBhLO6erhk48bJE0sjFA4v0QmAlkjIN70V0FuN/eogmoBbCHHnSB6iw
 ndiRhdEteRQ0SNIS6UFhP5B8BO1CIlKCKg/KOwZYsCQCVCzEUADly0pcCJLOs1EkKOXT
 6cmsyWeMwxiOuVWCKL5eWd3+AbsFbcFJNDFCqyLGYX4Qhf5sZg2tkqmBau1IipiKkYV1
 3sAA==
X-Gm-Message-State: AOAM532n6CVf4HvtR6BbL6VDYR960SRNExmuSHwQOKzV3olL4XR7ZzXB
 BoDDAae9N7mAhEYSyDiVyNQ=
X-Google-Smtp-Source: ABdhPJy3Fw9s3P+tqSX21rd0Q8PHUJ8JDm/ujxjgd6QaaXBU9HU3PzKf3iIs1q8oTPSXKUJpcKLmdQ==
X-Received: by 2002:a05:6638:d46:: with SMTP id
 d6mr3444633jak.129.1639003854249; 
 Wed, 08 Dec 2021 14:50:54 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:269a:1aa2:f1d9:8dbb])
 by smtp.gmail.com with ESMTPSA id t6sm2378751ioi.51.2021.12.08.14.50.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 14:50:53 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com,
 aford@beaconembedded.com, nicolas@ndufresne.ca,
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
Subject: [PATCH 07/10] arm64: dts: imx8mm: Fix VPU Hanging
Date: Wed,  8 Dec 2021 16:50:26 -0600
Message-Id: <20211208225030.2018923-8-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208225030.2018923-1-aford173@gmail.com>
References: <20211208225030.2018923-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_145054_969639_114B8EA7 
X-CRM114-Status: GOOD (  12.10  )
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
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 -
 1 file changed, 1 deletion(-)

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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FCF8C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 11:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cX1io/tzjg1WoYAcQPCgUID2TTnWnB9UKoj4OJDw3Cw=; b=C2QSgU/kmKRwul
	2gK/EWNiNkVZl20WurrYqHIYjxe1eyAr7DciU7TFkXRmU0YFIgEimMCuz6QPnhD5Ft9ltqxt68cAy
	8qoW0ngm3yuKGBY+OzBKrEFhsbp+2Q0pYrQQb+qse4XQGoTe/8++6O1x6WOdboGy9AQE7aYh7pGH/
	hSIbbegu6vvzp3C9+Bl00dNwmQ+UVC22DNKNWTeHCZd3pBnTpL9cXx7IGDvXX2+fdy5HblNCbdk/k
	OpgoHiNkBvwquV5dQX+JD5DQkKatJ+XACU1cfJSSbldPEwXroqvXlKBZXh876xMandUDIysr6bwH5
	QWq8ysrGa2YoXsPjDWJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxohr-00559S-9Y; Thu, 16 Dec 2021 11:13:51 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxohI-0054jl-SU; Thu, 16 Dec 2021 11:13:18 +0000
Received: by mail-io1-xd29.google.com with SMTP id q72so34615010iod.12;
 Thu, 16 Dec 2021 03:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ci/iieSAzRzH/2rNrz9vVPVHZbfFcrg+DugyyrDVWRg=;
 b=avulS/IasZOsM1IErPUXlsBP9HRJ/FmY0hN2g7eFCyffTaOijll3DLWB3r0MBj73lh
 N+OA0lK4XQH5RLgynwNhZm7QUUtsJHKeOxvHflyujgtADBKCSoj3rx1aWsIDjpSzUXSo
 EUeYFs/pSRMK9oY19clTmBz1yxbm1y8P2TzGXAkeDXNAx60qcga3j1uU/K3iJQj1tG2k
 jKeygqbKwxMviXQ9XBfFaFxHz+9zz8GEgnVAd6giqbthw3VJiOGWuoO0JNN8IMjGEhHh
 n+0oEmuJqnqNqhXKAjCTIpTM5v7Nxq+5xd0OYNUNchTm8Vm1tZFkvpqDa/dqKeN9/asr
 7eUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ci/iieSAzRzH/2rNrz9vVPVHZbfFcrg+DugyyrDVWRg=;
 b=8AP8LPewrnb6Q7mjTlqUajAA1c7w45e6TM/PVw//LehlSCoqfdtkOTFGjvGGvkH5uW
 3sR3mIigZWzGCGUnW5zb/NdXFWL1wwUcqoUhsW4CrbsHfzLzaH3RYMdQbmMvkibEO7QS
 REe2QTYICBGB/qD2dNso/sYhC54b7OJOtowecWr5elxA0WhgJjhFsrXE/WNbj4Lvx4ZS
 CIII4ZyC384Jsge30Rb/OwNpQGcYpd3EpzDQ1GUBW3QVTB0BYfCWNWPP6eeMSFSxdbLB
 wrHdlWDg4dTaRv2hTFgBpj74BXwk6cRF4BetZXis694VbqZBUzPfsIaeT1GyKnosQqsi
 7X+g==
X-Gm-Message-State: AOAM531ivlR4VRgflLOw6QYs6xMdKKAPq4edfyN60utkj9zCkjJPEui3
 3JGkm0hFtJVreNwfMzynozw=
X-Google-Smtp-Source: ABdhPJx1Pz6IYHOEHrltpVoTw61dTFcY60VVPwhS85F3uFkPQ68JSVa9jDbF1/4mjZxQuXQKK69RlQ==
X-Received: by 2002:a02:ceb9:: with SMTP id z25mr8847344jaq.121.1639653195540; 
 Thu, 16 Dec 2021 03:13:15 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:fe22:1652:55f7:5197])
 by smtp.gmail.com with ESMTPSA id h1sm3090946iow.31.2021.12.16.03.13.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 03:13:15 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: abel.vesa@nxp.com, aford@beaconembedded.com,
 benjamin.gaignard@collabora.com, hverkuil-cisco@xs4all.nl,
 Lucas Stach <l.stach@pengutronix.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: [PATCH V2 01/10] dt-bindings: power: imx8mq: add defines for VPU
 blk-ctrl domains
Date: Thu, 16 Dec 2021 05:12:46 -0600
Message-Id: <20211216111256.2362683-2-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211216111256.2362683-1-aford173@gmail.com>
References: <20211216111256.2362683-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_031316_943705_AD2B677B 
X-CRM114-Status: UNSURE (   8.28  )
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

From: Lucas Stach <l.stach@pengutronix.de>

This adds the defines for the power domains provided by the VPU
blk-ctrl on the i.MX8MQ.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

diff --git a/include/dt-bindings/power/imx8mq-power.h b/include/dt-bindings/power/imx8mq-power.h
index 8a513bd9166e..9f7d0f1e7c32 100644
--- a/include/dt-bindings/power/imx8mq-power.h
+++ b/include/dt-bindings/power/imx8mq-power.h
@@ -18,4 +18,7 @@
 #define IMX8M_POWER_DOMAIN_MIPI_CSI2	9
 #define IMX8M_POWER_DOMAIN_PCIE2	10
 
+#define IMX8MQ_VPUBLK_PD_G1		0
+#define IMX8MQ_VPUBLK_PD_G2		1
+
 #endif
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C0C7C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Dec 2021 01:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cX1io/tzjg1WoYAcQPCgUID2TTnWnB9UKoj4OJDw3Cw=; b=JQmGIAziKXGaw3
	pZYbxasaK5jY64QFPoUDsNqC7PH5KGOZHv9W/G6PZ6nZmR/qNmr0lFRcXBQevpGmFwoTlcUpzEROI
	bwUcpDUGTexvXVvBiSM34QdKDoQkd1vAeiLQHwoaIVRnrTSi4smWKchF6l7KLnT7GQpdyGGrx42WU
	odc0jMzHWExbLc5DL4y0Lw9+6e2YDDDSvcoSWv16sMzvQxjy83HbLjK1M6HQRAovH7ulHk2sZAct1
	44lPvgiPg1Rby6BlU35dqbQJM8CdZsdkAMNDeZrKAN7c9i3CTZsaDGDViP5HZbUYVsTFuJOEDQOIL
	zBoH/KA2hOuvn57L9CNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muPhk-006ee0-8d; Tue, 07 Dec 2021 01:55:40 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muPh8-006eEP-7H; Tue, 07 Dec 2021 01:55:03 +0000
Received: by mail-io1-xd2b.google.com with SMTP id p65so15263321iof.3;
 Mon, 06 Dec 2021 17:55:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ci/iieSAzRzH/2rNrz9vVPVHZbfFcrg+DugyyrDVWRg=;
 b=LDfFHWx0sLwtOI4qmb+rJoZOe3pMc8wQmCBWVmAQyJe6fufpXB+EUy1UM2QqfrxD1S
 FXC9srcLOLwLdw2EH7fkdyPKJSNENNFpOo/oIt2DTrdW+0h7cfD2QfSoXLOOncr1Yc7J
 FrL938kbZFvzOSxGblv7OIzvTIRqVJeF6u6vk7EZ+cC6Xhh7SzGnf/KdSfu//7mv63Kl
 90qyoceR959mHeXesbrzKHbn5wiKggCNyUGuDZPrbGW40yqJBnGqqGVMcP5tpdRchk/Z
 agaLbMKO5DzlfSXJ1sh9VQ/i2y8EJEyn3PIFKr4kzGEYx7K9+WsuS5lfGfDo+/uWJWC6
 jidA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ci/iieSAzRzH/2rNrz9vVPVHZbfFcrg+DugyyrDVWRg=;
 b=QqKgOnMUu6opxlLBaAGBNDy8v76VVF07IcOxYo/NJKJ+2o/IxSCvkFUC/dozFvKZLk
 KyjgURjtMxBJpc7JENkicVHdiXqQRQMXgFY19lDexMctvJRimG2qcZyIVeJkkb1YLx4O
 F5jyHqXawb3M5SzM/2jGqZJuTFSvD9q7p4Kyl5pwgjMmxygKqqFyz4qABzSURz8YqfgI
 rAFCeGD9ECvxGLfwkWr5rVyVSWSq0/aK6zo1N7ss3BIbG36WbPvhI3tGTlfvw9G9XTr2
 +gYaX0bvAR7UImHo1hpP/av4TZegJ+DoBIaFcyByiLt2TKH9Yi2is9/oCk/U8cnnkYRK
 lSuw==
X-Gm-Message-State: AOAM5338TLj4SCJWTtQX7vGDKP8HmOd2WBvVdUbWgORxASh9TAGFYtC6
 Y3dbktfOszCuL8Nqi6wH4hY=
X-Google-Smtp-Source: ABdhPJxJu3EIBppxy4TsSMZ5q6LJjK9+uo/vPJKjyNFfJtmW/D5eNatcK4jPy9Z0hq8LzNIXiJgFkA==
X-Received: by 2002:a05:6602:24ce:: with SMTP id
 h14mr36594205ioe.87.1638842100890; 
 Mon, 06 Dec 2021 17:55:00 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6db8:c9e4:6f6d:f38e])
 by smtp.gmail.com with ESMTPSA id j21sm8623639ila.6.2021.12.06.17.54.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 17:55:00 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: cphealy@gmail.com, benjamin.gaignard@collabora.com, hverkuil@xs4all.nl,
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
Subject: [RFC V2 1/6] dt-bindings: power: imx8mq: add defines for VPU blk-ctrl
 domains
Date: Mon,  6 Dec 2021 19:54:40 -0600
Message-Id: <20211207015446.1250854-2-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211207015446.1250854-1-aford173@gmail.com>
References: <20211207015446.1250854-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_175502_313807_43BE4A20 
X-CRM114-Status: UNSURE (   8.10  )
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

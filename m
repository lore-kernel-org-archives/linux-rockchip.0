Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370CD606A321
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 09:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0MrBDQHr;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=samsung.com header.i=@samsung.com header.a=rsa-sha256 header.s=mail20170921 header.b=XKgNHmBr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Cc:To:In-Reply-To:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2nXo3MquX3L1IlsWDduHFLA5u0U0UScaOwfKv0RpKVM=; b=0MrBDQHro3tHjFeamN8UDWSeOd
	F7JzLm9dPgcgCaAParHABzxack+93q+TmT7zvnhHaP8dY5D1r76qlzOw+VeDRvHwqFUSUsH3KfKkC
	mt92mcL9M5dQ2unpUSS5ER/+srDWCIyv+eyqBp/JDU5uO8d6hfQeWDIp1FKwn7iZEAIvSJZ11FneZ
	JpUQ78Fl0Dmd1HRKATK3109ZcVitwP+R5x3L52Ed2cstCNe9+/hDzoyR/DPct49SDHarRVOSCl0RF
	JLhf0Y36u91G2KV1OQY2un7yqmOhAfnw91R3iupHhilrfWLY4V4t9q6CK7I0paHFlOaylrxfIDgKf
	zCd7HBGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnGT-000000068wO-1Cik;
	Tue, 24 Nov 2026 09:56:41 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnFv-000000068Q2-1CCQ
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 09:56:15 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20261124095600euoutp010e327f0df4ccee2bb603fd4c7f01f7b6~q8p2Qo8bZ0406804068euoutp01V
	for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 09:56:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20261124095600euoutp010e327f0df4ccee2bb603fd4c7f01f7b6~q8p2Qo8bZ0406804068euoutp01V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1795514160;
	bh=SSQUWtraceJTHXBtVhiuGWIORZtWx2UwATdIbhdiqtY=;
	h=From:Date:Subject:In-Reply-To:To:Cc:References:From;
	b=XKgNHmBrZf+1w83i8YldUhiLGgzglAFBZm0qU2ivf0bcNpLBSb9/S4ONZU3bwCYQy
	 pOXWRsHhZieEg5+VTArPfOlJ7F2U1xny+w+ddtzYcllTeMJO4NkjGjE2VkWPp9ORCI
	 tbsfd9sqoGqEmqoeHepcqkQ/Jr3zsFoA7RS51/hc=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20261124095559eucas1p2b14a7a7741e5a14d56ac9262ab8a919d~q8p15Dhtb1641616416eucas1p25;
	Tue, 24 Nov 2026 09:55:59 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20261124095558eusmtip2e972cc4d20d18714817d581be64c4390~q8p1FvR4v0412504125eusmtip2F;
	Tue, 24 Nov 2026 09:55:58 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Date: Tue, 24 Nov 2026 10:54:02 +0100
Subject: [PATCH v8 5/5] MAINTAINERS: Add entries for the Innosilicon and
 JH7110 HDMI PHYs
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-jh7110-inno-hdmi-phy-v8-5-5e3008122cba@samsung.com>
In-Reply-To: <20261124-jh7110-inno-hdmi-phy-v8-0-5e3008122cba@samsung.com>
To: Vinod Koul <vkoul@kernel.org>,  Neil Armstrong
	<neil.armstrong@linaro.org>,  Manivannan Sadhasivam <mani@kernel.org>, Rob
	Herring <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
	Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,  Emil Renner
	Berthing <kernel@esmil.dk>,  Hal Feng <hal.feng@starfivetech.com>, Dominique
	Belhachemi <db@domibel.de>,  Michal Wilczynski <m.wilczynski@samsung.com>,
	Andy Yan <andyshrk@163.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,  Marek
	Szyprowski <m.szyprowski@samsung.com>,  Icenowy Zheng
	<zhengxingda@iscas.ac.cn>,  Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Joshua Peisach <jpeisach@ubuntu.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1562;
	i=m.wilczynski@samsung.com; h=from:subject:message-id;
	bh=ZQaAxGYox2BJ1OpbRDQi15xD57Nk5zN+Rfwi1TWQD8E=;
	b=owGbwMvMwCGWumv6zndzRCIZT6slMWSzxmu+WTSjI3K2HZfX0y+L9yyNSclVWRLGvzkiXHXrJ
	sWItUo/O0pZGMQ4GGTFFFnObow2kvzH8LT8+ONfMHNYmUCGMHBxCsBElpcx/K+Q5w9asDwyPLoj
	8P9CJ5a506eWTP/8qfr/Er7jvd9tduUw/C9r+M3r49Frd2t9ctSEI3un7ty+8TR3j9lbh8+LIgq
	1r7IAAA==
X-Developer-Key: i=m.wilczynski@samsung.com; a=openpgp;
	fpr=CDB15B3219FE00E577C7E3FA65BA97B9EE9C1459
X-CMS-MailID: 20261124095559eucas1p2b14a7a7741e5a14d56ac9262ab8a919d
X-Msg-Generator: CA
X-RootMTR: 20261124095559eucas1p2b14a7a7741e5a14d56ac9262ab8a919d
X-EPHeader: CA
X-CMS-RootMailID: 20261124095559eucas1p2b14a7a7741e5a14d56ac9262ab8a919d
References: <20261124-jh7110-inno-hdmi-phy-v8-0-5e3008122cba@samsung.com>
	<CGME20261124095559eucas1p2b14a7a7741e5a14d56ac9262ab8a919d@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_015607_983808_28CBFC3F 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add an entry for the common Innosilicon HDMI PHY library, which the
Rockchip and StarFive Innosilicon HDMI PHY drivers share, so that
changes to it reach the people who can test it.

Add an entry for the StarFive JH7110 HDMI PHY binding and driver, next
to the other JH7110 PHY drivers.

Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 MAINTAINERS | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 93abbb315065de00c29cc02de16c38eac58ac5a1..118e13d5e4d9bdcad0561191128bf1b3e7975278 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13181,6 +13181,13 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
 F:	drivers/gpu/drm/bridge/inno-hdmi.c
 F:	include/drm/bridge/inno_hdmi.h
 
+INNOSILICON HDMI PHY LIBRARY
+M:	Michal Wilczynski <m.wilczynski@samsung.com>
+L:	linux-phy@lists.infradead.org
+S:	Maintained
+F:	drivers/phy/phy-inno-hdmi.c
+F:	include/linux/phy/inno-hdmi-phy.h
+
 INOTIFY
 M:	Jan Kara <jack@suse.cz>
 R:	Amir Goldstein <amir73il@gmail.com>
@@ -26731,6 +26738,12 @@ S:	Supported
 F:	Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
 F:	drivers/phy/starfive/phy-jh7110-dphy-tx.c
 
+STARFIVE JH7110 HDMI PHY DRIVER
+M:	Michal Wilczynski <m.wilczynski@samsung.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/starfive,jh7110-inno-hdmi-phy.yaml
+F:	drivers/phy/starfive/phy-jh7110-inno-hdmi.c
+
 STARFIVE JH7110 MMC/SD/SDIO DRIVER
 M:	William Qiu <william.qiu@starfivetech.com>
 S:	Supported

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B03ACC001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9bDfXspJ/hTGVtrmgokoLHRj19xEooMrn9v7+LEoY8=; b=iiQU3SEq+vVzGZ
	9ARLNFS5mnU6XmaXzI4L9LcajLunZxCmrD0NO6Id1f2rcZB3gCW1pHQL9/Xv10o+hC4PUJl602p2W
	tOwt96+Fyb94SyGIjMtUgjqg8aTcbk8y5Rl4rTGhTCVb6+IRvsnZL6gu8g5wXbdbPas+yIJsTchTy
	JaBsojIwnCqyVcfxF3FduabsvU2c1uczri2SbLxFAIUNROM37DtvBi2iN5HoX/cO6WjXBnKerAK1r
	+lw3bLwjgNOe8MibX4B2TP6hoyOZMk75CE1NzfTY1l1ijUh6lwOASqmsPSGiFH0r9cq1+HzO8rN8V
	Ff2x+tzcGns0O9z2WkEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQeo-00FFHX-12;
	Mon, 31 Jul 2023 11:01:46 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQeH-00FEhP-0p
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:01:18 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1bb84194bf3so26309855ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801271; x=1691406071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ox/FK2P0lsJq99wswpzCibIx03qccyvz1J3mu8W2wUQ=;
        b=qow5ffPvAWaxlqjzA8290F9X2gqLaAj3afo/Do/vlMgtdugifywh3qfdXdttNFfWF4
         1YqMTv+WPm/elZMhjXoNiXxzpPYuBf61dnKQ+JWjzOdyjyHMLwSNAH4pxPTFFpMggI+k
         hsqbV+Q6QdOsy62Z4uZwSbZVIi2R3SwUmwrPRGVvVlBq0Jp36B8xvWThgoKtY0hOXwKI
         1bw78OxPWJ4a4YkbeFEcXV6BLtPbrtuHSv7fnoihzvPCcJY2Jd8z/xi4G8yhRUN59brk
         GQCVwr3sTnrcKdemDh1wSjzIu15BDbuFmy5tYNTVV2avBCtnQgQ5IpHvdgObCtSZcaNa
         NyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801271; x=1691406071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ox/FK2P0lsJq99wswpzCibIx03qccyvz1J3mu8W2wUQ=;
        b=Z5M/S3hIBGxWALh6AzhPz/oJc1CHtlxaG0puxtAVkewtsZuRMZ4RND8ocgTZnGJirW
         bshwVMuUnXCHzuaHrakCwWNWuS1KPsBC8/9IzJOf0EE+8pVVEiyxNl/6q2fyLpmZVtej
         YGSzu+0izk9BCc4XKzwgYgDKvSc8BXA8koJPDFQWcGo6/K0gDKCH7G8fisRK4aZ5U0kc
         IVDOb/gIh9EQ2FzE6WqVLHpIvaJHKErC+wS+ZAl/DcdS6OJM6Q22Z0mRTpJzBufA0fCu
         ZJ/+namB60b240y+JO/wTZ/+90dQvHbhY/61q7oPGm0DRCuASwHjt6zQ6jZ49mq4efjH
         lXbg==
X-Gm-Message-State: ABy/qLaR2qqXKGSdpaZ+gQVhGEH9Q9Cl9BOOkkNnuoDBhodCSeA1aiwe
	eOm0DbIg49TbQHxbEZ26eU7BQw==
X-Google-Smtp-Source: APBJJlExKEYw6Js1ULnYXnGZZffjGgT73Dy7xzDgYbAtztUSQpOD9OJlAbxyil1D7dH0K546tCZJVA==
X-Received: by 2002:a17:903:41cf:b0:1b8:ae8c:7bfb with SMTP id u15-20020a17090341cf00b001b8ae8c7bfbmr9579444ple.17.1690801270832;
        Mon, 31 Jul 2023 04:01:10 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:01:10 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 13/14] ARM: dts: rockchip: Add Radxa Display 10HD overlay
Date: Mon, 31 Jul 2023 16:30:11 +0530
Message-Id: <20230731110012.2913742-14-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040113_328592_9417D353 
X-CRM114-Status: GOOD (  14.08  )
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

Add compatible string of Radxa Display 10HD via DT-overlay.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 arch/arm/boot/dts/rockchip/Makefile                |  1 +
 arch/arm/boot/dts/rockchip/radxa-display-10hd.dtso | 14 ++++++++++++++
 2 files changed, 15 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/radxa-display-10hd.dtso

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index c8c8e1292650..0a275549b213 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
+	radxa-display-10hd.dtbo \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1126-edgeble-neu2-io.dtb \
diff --git a/arch/arm/boot/dts/rockchip/radxa-display-10hd.dtso b/arch/arm/boot/dts/rockchip/radxa-display-10hd.dtso
new file mode 100644
index 000000000000..7393b9417647
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/radxa-display-10hd.dtso
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Radxa Computer Co., Ltd.
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ *
+ * DT-overlay for Radxa Display 10HD compatible.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&panel {
+	compatible = "radxa,display-10hd-ad001", "jadard,jd9365da-h3";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

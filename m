Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06F87C001E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UqWRai/uQEcFRPHBL6vO52Nc+Hi6yl2fNCZnw+rRgKg=; b=EaDoPwVnlF5iZM
	W8uvwhK0NGULmA0DTNYjxChIEPeY3rxhBUrhyluAoEGHiTFAI6L8cjOF6ORy7hkbmNuNL4ESQBRTD
	MZ8qCRr9dn7kZMvvNuiYigtForDncXISGYS2TSsMq0rTg8XATCMmwasB+H64UgI1c6VDpfECFfF1l
	LNfB8BePTJOLOuXn5InIm1zk9/6Z2onaE9TPSLhu7g8E5qCD9klu8LMsBuKVVDb1sWM4JCx3RmuTD
	d9p6o2rZrX9TgcAHo1zdKx7RCWEloBVmWtBXVm6jx7kg89xgaUavB/HnmK4h4hM3fJGXG/2Xn2LQa
	4sIAaOwi5c8qchsku7Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZ9w-00HCBA-0d;
	Mon, 31 Jul 2023 20:06:28 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZ9k-00HC5g-14
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 20:06:17 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-686ba97e4feso4887581b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 13:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690833972; x=1691438772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j7NR4mctBMygjQMCC3O+eGMPCOVHsdjewzIZM1ealZI=;
        b=CqF8i08ecEa52v28OqQ1AElC3oWrQcyn7XiCGNP6jmo+TsE8DlxW7XUrHqAqlFGwDp
         7b3h6or3cZlZXqYyvTCX8vgP++fAXLKfYLtpg4lEliJlBOwougHUq52OGPuRx7f3y9IT
         Wlb0TwFLJA93+svIFamT/ZToRjeyLX8JGhRUeUp5kikoqyFBWmbTUVat2G8bPPegsdq7
         FskgEqhKzNstHPlwo5fSOC6jKlWA0XLOzkewJngpcKeY86uIuHYJcYobAu6+lU5Rl+Qu
         MajrHqRbXWoNk++ayny8n6jw4ZC263Wdk0ocwMAKqDY2URyh4y/OV+NysNEzbWUuGPS3
         mDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690833972; x=1691438772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j7NR4mctBMygjQMCC3O+eGMPCOVHsdjewzIZM1ealZI=;
        b=BBchTs56Al8Ym1Ar8f96YUPkqa4xi8cnXahOtTgeT3L2ZWyfMEmpFWovouL+yhOQyF
         u3wKy/VXObmK7O7CQ7wcO5DJob5aS712mKvWFL9Ntcm3EkqC4r56zfPRKncI69CVimUs
         Uh4hMroSzACn1uClBqcR5n1ian49QkZVj9kP8JGm30haEE4b3qE9dRkNvHJsTdghg5gP
         OZiKdnwvJjNt2a2jL8skMUc0FF5GUpHEueKX230AFUDLkaYHQ/cJjmziBR/Uo+6/XHoq
         vuUxuO3zH1PddwScaZoTXpBN8yBmsc+RBbZPOAztgcymnz4ghN7U4ENao2Ldj2D/6CIv
         TIhQ==
X-Gm-Message-State: ABy/qLZRgGVdTVfucB8DyQr3P8rp/B/Gmrn8mCtvYVIQpPw4UJr531ej
	uz1/KMVM0h+W0Vj0x1VOWPeomw==
X-Google-Smtp-Source: APBJJlGsJlK6Xc338VHuHE9qumCB3CWndtK7e0+Piask8OA2vg/OYeDk2PL5R/aQE7GJri1vumoX5A==
X-Received: by 2002:a05:6a00:240a:b0:64f:35c8:8584 with SMTP id z10-20020a056a00240a00b0064f35c88584mr12941675pfh.18.1690833972637;
        Mon, 31 Jul 2023 13:06:12 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:acc9:2620:699c:d7da])
        by smtp.gmail.com with ESMTPSA id c12-20020aa781cc000000b00668821499c3sm7938990pfn.156.2023.07.31.13.06.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 13:06:12 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/3] arm64: dts: rockchip: Add Radxa Display 8HD DT-overlay
Date: Tue,  1 Aug 2023 01:35:58 +0530
Message-Id: <20230731200559.635629-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731200559.635629-1-jagan@edgeble.ai>
References: <20230731200559.635629-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_130616_388794_1F9FEF89 
X-CRM114-Status: GOOD (  13.89  )
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

Add compatible string of Radxa Display 8HD via DT-overlay.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  1 +
 .../arm64/boot/dts/rockchip/radxa-display-8hd.dtso | 14 ++++++++++++++
 2 files changed, 15 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/radxa-display-8hd.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 3a4c4cd769eb..1b42eef074b3 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -4,6 +4,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-ringneck-haikou.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += radxa-display-8hd.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
diff --git a/arch/arm64/boot/dts/rockchip/radxa-display-8hd.dtso b/arch/arm64/boot/dts/rockchip/radxa-display-8hd.dtso
new file mode 100644
index 000000000000..d42499f8d6b2
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/radxa-display-8hd.dtso
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Radxa Computer Co., Ltd.
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ *
+ * DT-overlay for Radxa Display 8HD compatible.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&panel {
+	compatible = "radxa,display-8hd-ad002", "jadard,jd9365da-h3";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

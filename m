Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B835BC00528
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 20:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qD9vuW1YogO4BQ9haUWFmQtwYPx9+27eix0y0WemuV0=; b=FxvcCoItZB5O5y
	/+C7ifTmCLkRY124huMRfrln7+B1qrI8oP6nUtr5BzIzeYEqWJcydrjDkd4QunGIq0R70whNfHMYq
	gQ/dBKQ4NwDDI8+p8wI5R0zyc1raMoGdAZcGse740uwYDJoe9l8hc2iJbb8csB9uZ88bZp83ARH+x
	8leHCsfmKVBMP6xNJ+Ijy6qdiPtfBhl/MUMK1FyP9xBlqj/bKDhS0HiwA4MYPAJHuRfIzo9zYhLnI
	zrkac2YKoz6sJhsqtUsb+v/K3dqnD+9UVRTLX6N/bYxzwAWIS3nqVE/VkE3rklZqdCDTl6s3VqgnK
	qcic6XdjttI72/5DKwJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZ9x-00HCBn-0P;
	Mon, 31 Jul 2023 20:06:29 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQZ9m-00HC6d-1Q
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 20:06:19 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-68336d06620so4879383b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 13:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690833975; x=1691438775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iQHd57F7akBPZ+5qQ/e7t4EQaiOpzUMTp2m2Ya6JwK4=;
        b=m369UBDMduwKGWqn0v8BT6P/mgkxQEtW2WQJY70npmcr9AnjqXHuoCkc8iiMWUOZBT
         4kNGbxx6J+MszL2i/unWuqMvA0fGZIRAhyOfBQ22CUhlNpaFYI1lHWwmQcP5Og/2gkIH
         JBa+TpxAV0S3weZYi+EjCk9PZeZL2L0FE1E9/R6X34PwvBZKBWvZxQL2foAAIH4rd41D
         y2P0MMyenqWqvCBXQyAqekq76b5QJOUu+phNMQUew4N2T4zX6pB5NPhfAiGb2ClUkEVn
         BqsQTwchxgksQ2VIFJWa8Gt4LmmsQhhes9yGphFu1XzjwyxzbaAn6uh+NAUfmtAFsXU2
         H+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690833975; x=1691438775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iQHd57F7akBPZ+5qQ/e7t4EQaiOpzUMTp2m2Ya6JwK4=;
        b=YK/x08iUTncjHTbT13xY4OJXtgfZcycZR4rat5ay5E9XkJvN1IFVPSuIJcFHQo6nxd
         DUz06uqaIvRp+dX+gi5XccQ5yhgKbgqefXUelZc+3yWX5CHfxvrXT1U8rDDZ1ygCVryt
         Zq1CsLPeVer8d3njgXkhrsYPXLze/Uf8LT5G1zmqs7c7VRmExd1vXq/dLC2II0wWUm6s
         Wv6UdajADYbzI/snw6T9M87mLyGepDkFmflNhC0rBYfvD/2qsy1Gs0cyV419bFbsOxtN
         8ewAfPDb7rMDLHohUb0zxPp/T19TsAWjJpsWNunrBDBVLsmddfnlCTyX57yCZzv0tJIW
         qdUg==
X-Gm-Message-State: ABy/qLaiht2oVFLviSwaO9Rn+lMK2cecP23j1cMlt4VTaJIJCfjpEAs0
	GYXcwiNVO7bKWFNEKDmH/0un2A==
X-Google-Smtp-Source: APBJJlEiRHHmEEINlxyBJ02r2nwG83qA6UaWYlQUMAsyGE4IpKWyFNqy6/LKwZjTvNpKmqWpImvLpQ==
X-Received: by 2002:a05:6a21:3d87:b0:138:48d7:4a31 with SMTP id bj7-20020a056a213d8700b0013848d74a31mr12205151pzc.62.1690833975521;
        Mon, 31 Jul 2023 13:06:15 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:acc9:2620:699c:d7da])
        by smtp.gmail.com with ESMTPSA id c12-20020aa781cc000000b00668821499c3sm7938990pfn.156.2023.07.31.13.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 13:06:15 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add Radxa Display 10HD DT-overlay
Date: Tue,  1 Aug 2023 01:35:59 +0530
Message-Id: <20230731200559.635629-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731200559.635629-1-jagan@edgeble.ai>
References: <20230731200559.635629-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_130618_482831_0E6B2BBA 
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

Add compatible string of Radxa Display 10HD via DT-overlay.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  1 +
 .../boot/dts/rockchip/radxa-display-10hd.dtso      | 14 ++++++++++++++
 2 files changed, 15 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/radxa-display-10hd.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1b42eef074b3..520c7d3c80ed 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -4,6 +4,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-ringneck-haikou.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += radxa-display-10hd.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += radxa-display-8hd.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/radxa-display-10hd.dtso b/arch/arm64/boot/dts/rockchip/radxa-display-10hd.dtso
new file mode 100644
index 000000000000..7393b9417647
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/radxa-display-10hd.dtso
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

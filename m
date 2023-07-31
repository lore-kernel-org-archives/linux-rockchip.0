Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB7A8C001E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLmKuVGMkU32eHZzfcept16mVPdPz3K5Dlvxe3+I3V0=; b=apQ+CUY+SgGCA6
	0VPEgap9fdvpypPWlZqO8pLas/O3yIVEHGrRAWo/TkcAkZnDsAfeevUz41c9yCw4cvZsdXlYzqkxk
	s2I2ESxAn+S3tnLqGLunMrG7EKN8XaE54VzY7E4blub0twKqlHjNhRi8BT4FUCC0GaN+AxAZZVYSF
	a9B69OyynwkzIWqk+VnnK4AEB2UaBjTNyegavZCix39dfa1Gj1MLv9QKIx0a10g9uUKO4qkHzfXg9
	mCisgqcVJ2e0jX0evlv9mYEfvtEK+8RNn5/YuVjPbJlq/quVb9fx9PpJtPtnDRuXw5iUhhSX2J4mM
	BdisI6xjgUdpRHIMbr5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQey-00FFZk-0q;
	Mon, 31 Jul 2023 11:01:56 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQeJ-00FEke-2n
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:01:22 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-26814e27a9eso2384576a91.0
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801274; x=1691406074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vSUkajj9vQk/niNIRcq2pUFOSu5eZnt2RDC8js+87Hk=;
        b=h3Wc5vKtf4P1y1TpzhsWEbSQpbJpkAde9Z0fIZZyyRr8xbzEUP44GgcI7meTeWAnid
         N7Be+cbmSEOd1rtvCiVfrAhLRgdQyWAKB4+2D+VRs1mC8k4ychTzv4tpeuvvKlylNOpg
         55MP2bT3/qxY5kpZE7oaqoGb5dzaI8Ttoe7mWAmZaGiZUbXe/1OibX4TXIWD/a+Zrgu9
         TBFP2JFaOaKunJzQUMP6BDpOLX/nCpZoetS7fPJe2k/9o63whWcuaNtyXnJQjqsM0y1t
         5R7CI5YWGjtTN9LY3j7MS1ImPJIofPozuvTSlLnx4eQ23fzNrTFaOb1SURUhFkOeQ6+r
         LoqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801274; x=1691406074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vSUkajj9vQk/niNIRcq2pUFOSu5eZnt2RDC8js+87Hk=;
        b=Amjih7GT7TPQaC5+0D6MizP+ERc9xXgm8mghxW4lutklkXxS8ikeQehJei/IacjS9y
         YMEcvzH+a02iH0DeTyYrsQolNrrNae+y5Y7Q6FlXtEpt1M3VRv3TEH176osC6L4ZN3nG
         1njjkvo9v1fMIvoRPKtmgtScUA9uUfEUfGsaucCMp1iEE/qMwncuFFSbVaxxWaq/T8YY
         o8XvAmgGQyk55uLVZUiSvaIMzOWv0bEUhFk6M3SA/z8t3k/pHcxOFi9xwQhf5bGl8a4z
         YHdJ3YdI6laP47i4FhGOQ0DYI9BHBfVptN/kcg+CVMlJMWkUB0Ofac22EifmOBx4grkj
         96iw==
X-Gm-Message-State: ABy/qLZywR7ztr+sq0ViipwhvXxvlx+FzSWTL/qrbp5c2dOYvVrMryMY
	kwViuC4nR+Qog4oEaL2QttlnJw==
X-Google-Smtp-Source: APBJJlFv+Auhpp+ucD2nmECue5JQg/g2CIwB//tveGShOF7nv4DbI4vc+goUslqYFxUEf3hdE8vFsA==
X-Received: by 2002:a17:90a:fd03:b0:25e:d013:c22c with SMTP id cv3-20020a17090afd0300b0025ed013c22cmr8567808pjb.47.1690801274239;
        Mon, 31 Jul 2023 04:01:14 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:01:13 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 14/14] ARM: dts: rockchip: Add Radxa Display 8HD overlay
Date: Mon, 31 Jul 2023 16:30:12 +0530
Message-Id: <20230731110012.2913742-15-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040115_919667_6B174BFA 
X-CRM114-Status: GOOD (  13.87  )
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
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 arch/arm/boot/dts/rockchip/Makefile               |  1 +
 arch/arm/boot/dts/rockchip/radxa-display-8hd.dtso | 14 ++++++++++++++
 2 files changed, 15 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/radxa-display-8hd.dtso

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 0a275549b213..053d24978f82 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	radxa-display-10hd.dtbo \
+	radxa-display-8hd.dtbo \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1126-edgeble-neu2-io.dtb \
diff --git a/arch/arm/boot/dts/rockchip/radxa-display-8hd.dtso b/arch/arm/boot/dts/rockchip/radxa-display-8hd.dtso
new file mode 100644
index 000000000000..d42499f8d6b2
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/radxa-display-8hd.dtso
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

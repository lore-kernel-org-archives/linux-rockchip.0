Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFB4606A31A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 08:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=O7bMjcvM;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=aDDQ0dnk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Dyiq5jE5/eP5OPysgfkb5Gb5quTsj1ov7Fnp5K2UySI=; b=O7bMjcvMs8a33WQB0Ek4Winy0j
	khb1RQU+c1tCw221hi6O2D9vXvsbIjvIcML+1otrm5JiYojaK0JIL//RJCD9Hlns56/4VOZH9fnMQ
	p1dfym15KHV3Emej03PGrTHYp56ZZ9u/QrVuus0XZFGCExvw6TtklZLIfEegCMplfojoLX91p9FLF
	toSW7wvG/H3pmB3o8vlDqbhi17KbqR0sTo0ZyDV7bAjTH2VoeJ4FNbhTWYBLRF9YBDb0hpKSDxxEZ
	gsJURxfq/eCgzxhLnG4jEoW9vb92DywN0gg5ayjtS8knVkVGW4gGawsTYEvMd50yKtGpH/bvNyQ0O
	dqnYJDrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLTM-00000008ipq-0IeC;
	Thu, 29 Oct 2026 08:26:56 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLSf-00000008ifZ-1Zc9
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 08:26:52 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2e93e0d86a0so3350935ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 01:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793262372; x=1793867172; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UNWkw8vYb7JpYpnCN3rPDxXzy3LWTgIRTpE3bVdVYK4=;
        b=aDDQ0dnkg0AMSOGn5+hb70tCt4xij1paQuEgLDEvkP2k3eX3NI5w4v3QFPmBYq+Y3q
         A5+cCYtMhxjONVCAKPUnFSbwVXwvY2fW5B3lpO06U1M1+XmNtagN39jbdWbLupAa3x1b
         4aUGxLM6WE2vhwkhl+fciAiWFeyKk+zYaa8afvYZESb1uyBiBSrty6Dc6SFJMBn5ZGg5
         RXnWdjzD+e9LJ89sy+vf48b89WZE+tWxoTR2bpxskF3vKLZT6Sb0SAZ/bZU2doQ3VAEv
         9wvbbHuXqgJIBHYFgchSeZ31qb9ykwelyfbVi22lh9ty1qCIMm5QVUvzAgmjkkiOb1bg
         owzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793262372; x=1793867172;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=UNWkw8vYb7JpYpnCN3rPDxXzy3LWTgIRTpE3bVdVYK4=;
        b=EVOTIslQbjZV3R/7bh5r4jg6NNjBBPNubH6xBkMYiKq5b8Rq2VLMD7ZDC4bPtosSUe
         rjRJNT1g3vRWxDl9qZigXFGyaH+TQfHs5GogfBYDlJeMv75kvVTk1A28gQiITblGjXkH
         Vo2GJm0ba2e/bpM0HnddCBHSoirCFd9h+bVeDZ8sImAx8xGaGF24NkgGxTZXL5XgUuY0
         iaTj89BmFkT5BSm2P69/RkutKdFgITy4eUKP4B/IkXfkCzolnE1/EamlElAesiiR7Mx1
         RBu/MwwgOCwKFtUmnBi9N55PE7lItHBB6Npw/rgcSlEZmBXPH0CpDLNOEmMjBklgEsfx
         9SMg==
X-Gm-Message-State: AFq9FYIFTmXTzu4SYSoo45DoWd4ZNwkR21QDO2gJmDemQJUuVYHzw2bY
	OA4G0at70Qf7GDkoEeQFIEb43HpOymVK+Js+Ivs6FMFpqatWRN7ZQRiopwRpRHZfFLo=
X-Gm-Gg: AYBFou16euZq5zf3KnQrU+jm309OMMYa9a7UpR/0dYrG+HTBwPF2NXcXHc7ubXOXBYj
	08pIvJ+46Vi40GWQZ6OL591rNLQSfzD320BU31rXFqY+ZfS2nS4c3wRczs6s+BRjlprSl+bQWeX
	6SSBhIGQMCOoK0njMT1dyqx8toITk4LkKBkRnefmjm/Gw5dHnQc2c5mSQY9siRPl89sXwtnk4WG
	iuZDdDkhS5vfYG5IF6whsFpTH7yjjR4AujvCyMPxUfyUDR5eyMyoxVMrYae9av+3KWcrfJOSiHK
	EY/zbdIr4kfvPR9zqiTFZSqDCjV9WCIi5wB/Rlgs9icOUuh4KbvpAk03VLXxXZ/st06TSkSzmSB
	HaR8IRliSrepjcUcXhCI22axtMZKwlQOaYza+ILcrOyb1FwqFa0HRMU58kQBSXlLPAj6p747rPz
	7iz4Eu8mvQRLuWJfM3tSud6cyKias+cqCQ15NaOOAcR5Q8WEw6l1eSx67e5jSMOTkcfV6B+BqRw
	IUJEleOT0PFWoCoeOuhlnKjxzaHz6ilJ6AuDOI7Sg9HT1HdjSYOpIK6Q1Ip1Sn62QFjWC8050hv
	9b4z4gZGHVMrjX3gdmw84qHQcUO9/6yz
X-Received: by 2002:a17:902:f545:b0:2e9:53b1:a3c8 with SMTP id d9443c01a7336-2eaffe75f83mr68645205ad.0.1793262372227;
        Thu, 29 Oct 2026 01:26:12 -0700 (PDT)
Received: from localhost.localdomain ([240e:36d:b08:2bc0::a60])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eae6b7a216sm30031585ad.16.2026.10.29.01.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 01:26:11 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Amin Gattout <amin.gattout@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add ArmSoM Sige7s board
Date: Thu, 29 Oct 2026 16:25:21 +0800
Message-ID: <20261029082541.469999-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261029082541.469999-1-liujianfeng1994@gmail.com>
References: <20261029082541.469999-1-liujianfeng1994@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_012614_076522_E6137903 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The ArmSoM Sige7s is a rebranded CoolPi 4B. ArmSoM purchased the original
hardware design from CoolPi and confirmed that no hardware modifications
were made for the Sige7s.

Include the CoolPi 4B DTS directly and override only model and compatible.
This preserves the Sige7s board identity without duplicating the hardware
description or changing the existing CoolPi DTS. It also preserves that
identity when a firmware-provided DTB is replaced by one shipped with the
kernel.

Add a comment explaining the relationship between the boards and register
the new DTB in the Makefile.

Link: https://docs.armsom.org/armsom-sige7s
Link: https://lore.kernel.org/r/2a1c33c9-8971-4054-a463-60f3ceddd627@cherry.de/

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---

Changes in v2:
- Include the CoolPi DTS directly instead of extracting a common DTSI.
- Explain the board identity requirement in the commit message and DTS comment.

 arch/arm64/boot/dts/rockchip/Makefile            |  1 +
 .../boot/dts/rockchip/rk3588s-armsom-sige7s.dts  | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 442d322a20cf7..c8a5a88a0e46a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -231,6 +231,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-turing-rk1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-vicharak-axon.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-vicharak-vaaman2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-youyeetoo-yy3588.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-armsom-sige7s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-coolpi-4b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-gameforce-ace.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts b/arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts
new file mode 100644
index 0000000000000..c3282581b42d2
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * The ArmSoM Sige7s is a rebranded CoolPi 4B. ArmSoM acquired the original
+ * hardware design and confirmed that it was not modified. Reuse the CoolPi
+ * 4B description while keeping the Sige7s model and compatible to identify
+ * the board under its marketed name.
+ */
+
+/dts-v1/;
+
+#include "rk3588s-coolpi-4b.dts"
+
+/ {
+	model = "ArmSoM Sige7s";
+	compatible = "armsom,sige7s", "coolpi,pi-4b", "rockchip,rk3588s";
+};
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

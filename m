Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DBE606A320
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 07:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jCE4rBjp;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=cdVaEk5e
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Cc:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tzF8wqt+zC+GgYIx7lFWRNOeDrlWmaVqVMjjqprlPkc=; b=jCE4rBjpT/C0HzMPIoTH/2TGrM
	qRa9niUXntWWPQKVXZtE3vidjWUZdmc3j4J+hAdCYXgj31sfby8BULDW1TB2IBN34b7wss2j9pjK9
	nx2zqAvtXvC28N6PUTr4KT0o8glQioeCG74v+TsTjQnNuh75o6b0/NNYVqCYB4bw+5nzko7o0IBzg
	Sgt8bqxC7GiBYp7/F1tW417JSc+IWK6TMv6rkGtFwbP0fZBX1IdoSZwDW6CM5AkyriBonqpw92hJh
	pEoX8s4lyviXUuWrp3KCVQUvcelMK9HhTs1ZCrUA4yDPg+KCrRPZ337vZWpX3OWMsZLtpa+XZJIzW
	/GCAUeMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUfat-0000000Gqch-3r68;
	Sat, 21 Nov 2026 07:33:07 +0000
Received: from out203-205-221-149.mail.qq.com ([203.205.221.149])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUfal-0000000GqYM-0sQt;
	Sat, 21 Nov 2026 07:33:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1795246373; bh=J+dcPkcXZ3s3MrRG1MQfLHmivGBQKC1Xk8mvOi8nCLY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=cdVaEk5eAIPmIOk5+F6iMsEjzv/6emr9/7h2mxKPmyKZLAUvRxaK4ZINgaScYjX8E
	 5qUruKO6tpmBZ7BiX5sgmPmY+nvwdXQFxI/bgQlLEoRTS5Fgrq/bhFwCU6eLTzD69j
	 ZWwlvXhWWmreQC3PGSWE87ou6cNTxlG5wW/cmTEg=
Received: from jerry-PC.lan ([2408:8249:5f:7101:71a:8713:56b4:5043])
	by newxmesmtplogicsvrszc43-0.qq.com (NewEsmtp) with SMTP
	id 830284BE; Sat, 21 Nov 2026 15:32:48 +0800
X-QQ-mid: xmsmtpt1795246370tpq3bznqd
Message-ID: <tencent_E24973E955D1A26CF5A4F983929F8F8B0006@qq.com>
X-QQ-XMAILINFO: OATpkVjS499uL2TWbxEEsFmnEnc19DykXbomcd2rucq3Q6VPPxwPpOeHB46Rxg
	 npusd0Ly+Fokip3MjyxvihICinj3t8vmi16KbS+EOadnd+Pendf3RXwhFo7NgyNQ2bNs1H/C+KMw
	 mVGG7wUFNhi/kv01GV2CUaCFeFj1FH9zUoPrE8TomhHlG/jx1Z7bMJbkV6dsxYoI8fZE9H5FQ/un
	 W4il3/9nuVDr1++Js9FwfFTxFofpJiKcb0eMNNZ/O+Hc00Lh6xc51JRm/IpJN67BMeD+wTvjpPVR
	 OKmcs6pGNAzBqRsosgX/UOFCJM83v6nNtmPx67Jbvh8vjOtLKJYmXECPmCGS5eiC0RrT+ryhBkiR
	 BV/clgdO53uRIr5ppUPA1RGgLgLaT7x0qU47/6pk247M+3sLAFF19/wr4IozDoahbm6csbcg1WWJ
	 F3GhZHviwUT/DNBTv4mbW+qLUj/4jaobcMu+78J0RogRxxMBt4AlzgofwAeLUcqS7UpAfu+7c11p
	 mYLKVOLzDO7Lpkw/6m8cekqwfDZs4qvP/hnT+Gm21YdCv//eAbBgjgPsxX/b4TVLxDz7Ik0m/5An
	 4y/V3J2cu02gSUBq411+z7aFIwEjSxL9NwXtH1H6nPMMCo2SVen7wH1FwLRgo6GNqXYbtgwwP3qp
	 UWcfdBh4Uc0o/seo/OhrLgk7sWFsyQfjkKsGYt9cCeXDlYrTQ15nlqkzjDVSXHr3AoPnJyLabg/Z
	 2O595qusTXNq3sG8wtDaHeyN9vCFCVqS/KPWRV85Vr6HN4Nj3u4qkDySk85w192Pr5md2E/iTgEJ
	 piEiue83T/I9qW7B4XvsBKgXO2FZZ4FvrQRlrzcOksliwCzxNjIlDFSccFIAlo7RYKVkxYaj15J1
	 D/nRnNybZnL86uEs8ILw1GE21Jw9a43FGVcChcVt++IJp3vrSHR1RbgXotjixOHpBRiKj+ebx+H3
	 Edgg9Y0RiR4/FUi31QFHviFszp8+Q+rjuruPKhct5Pky53qHrFBkohkO+8VmGqePK7Q0Pt5mUSOY
	 m5d+V3na/Yspj1jjf751kzbRrXkTIEliA/YC6cDXQyJHFSIDKUHi8ZcEfTSWtqv0pDGAoFoA0RFe
	 KB7byoRic0F++fgksk+yFnEZC/tQ==
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
From: ZhuXiangyu <1194781887@qq.com>
To: Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ZhuXiangyu <1194781887@qq.com>
Subject: [PATCH 2/2] dt-bindings: spi: rockchip-sfc: add RK3506 support
Date: Sat, 21 Nov 2026 15:32:46 +0800
X-OQ-MSGID: <20261121073246.1233736-2-1194781887@qq.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261121073246.1233736-1-1194781887@qq.com>
References: <20261121073246.1233736-1-1194781887@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_233259_674505_E67F475E 
X-CRM114-Status: GOOD (  12.15  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Document the RK3506 FSPI compatible with the generic SFC fallback, and
the rockchip,grf and rockchip,max-dll properties used for the
power-good handshake and DLL training.

Signed-off-by: ZhuXiangyu <1194781887@qq.com>
---
 .../devicetree/bindings/spi/rockchip-sfc.yaml | 30 ++++++++++++++++---
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
index ac1503de..428740c8 100644
--- a/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
+++ b/Documentation/devicetree/bindings/spi/rockchip-sfc.yaml
@@ -13,13 +13,27 @@ maintainers:
 allOf:
   - $ref: spi-controller.yaml#
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3506-fspi
+    then:
+      required:
+        - rockchip,grf
+
 properties:
   compatible:
-    const: rockchip,sfc
+    oneOf:
+      - const: rockchip,sfc
+      - items:
+          - const: rockchip,rk3506-fspi
+          - const: rockchip,sfc
     description:
-      The rockchip sfc controller is a standalone IP with version register,
-      and the driver can handle all the feature difference inside the IP
-      depending on the version register.
+      The Rockchip SFC controller is a standalone IP with a version
+      register. The driver handles most feature differences based on the
+      version register, while SoC-specific data such as the power-good
+      GRF offset is selected by the SoC-specific compatible.
 
   reg:
     maxItems: 1
@@ -44,6 +58,14 @@ properties:
     description: Disable DMA and utilize FIFO mode only
     type: boolean
 
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the PMU GRF used for the power-good check.
+
+  rockchip,max-dll:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Maximum DLL cells used for delay-line training.
+
 patternProperties:
   "^flash@[0-3]$":
     type: object
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

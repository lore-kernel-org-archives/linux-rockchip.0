Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1EBDC36002
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Mar 2025 13:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LGyzic+jlbu4Va6Iju+U3f615KTfaIBUf/qbWHeR6+g=; b=dmr3ABLSf1HPUG
	BYGDO4IuYCJtveIVtei3CIZR5qtCIgSfC1mIe0kFZ2H6vuTcb3Rp3zjeSL/xcZwl0rpS7AHhpeLJ1
	YeZnSVQ1JLv2EDNdHeCZSsv/KkIAf1u8TBQMFKi6KgpkoHqbhysoXRuEZsVsd9DC/zg0pLpSxqkR+
	CKNhqQf2vGkiflgwzhUMSyglRmK9AAWA85q8ChOdlmtPFzAs0lVaaTJSg4XeFwVYrP4Uj0tMsvJiq
	1r4uK9WJpAlSovbb1oxJ+eJO4BCefD7br0L8QMNWKJBHSRVmREIKEss30bPpLjwOKEakhRDPU7sTZ
	xdoOKU7iSFp/g5nMF/bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twhR6-00000003B7C-3X1P;
	Mon, 24 Mar 2025 13:01:48 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twhHv-00000003618-40fA
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Mar 2025 12:52:21 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-43cee550af2so1753915e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Mar 2025 05:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820738; x=1743425538; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YmgPaODJNGvBgG/4ktzRCLfPHcR/ClhvCHwJ0srwcr0=;
        b=Th00YnAeRWuZm/bP8XX3YXAr9Iz3S5FHy3iCsoxuGzQvVEYu88g9sQPl0nfNZ1NWdZ
         sEIGbVH6wdLkiLVZ4IXIgb1omnLvz8AyEHR5KtCMXWmkihGoh3dIGR2vh+Sr9gbbJYtT
         CHDytOl4pDHjDlTW57KxUB/lXPctuj85Pdjhp52h6YGs/AYnCVZ3WQRGRygRO2sSddiM
         NvYTA6tnHMJOC2d4TP3kNAGWYTLs6ueKtxuaSwdUpzUIcvk4xTywhZ+0W0m0FLyS8MCq
         nmcfuihhALrIwcwKe9t3P1OpTolxadOZbRtcuk1L6xDO0mu22iSK3JSQYTFR/IfFsk71
         DeDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820738; x=1743425538;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YmgPaODJNGvBgG/4ktzRCLfPHcR/ClhvCHwJ0srwcr0=;
        b=Pc58RPs7hvnZumgE5b258qJ1MbrbYolZADZh6E2Tf1aRrfRnClW9P9j6Di4wzxdz2G
         O+kv4HgLQXB+cv5pN29szELKKtZ8KZqQYYvXi504G5LEtlY5UxrsSDBmKu/3WK3Y3234
         hQluTWqNtMB6fFveDFxDbAS/MlPuZtiguH/ZcviaOwSktRlYS6V7/1cNDslFzbA7kiPg
         Rj2Nx9l7CZavI5fIYecetL/J8VYc4fxN+0onQ/AwLgjksV1etxbSQ2xOeKqsfp1Xb6Fq
         eQF5xRe6It4Hy4CwVGWlWejKIsg1Nbr2cfcqJbZYA94U6rafx7CmQD0L4mEqOUWMo0Mz
         9kuw==
X-Forwarded-Encrypted: i=1; AJvYcCVwaYvXNFofkLQWyLcnwT36+WrkTcadPsmaW0s6q21HBCLkL8GuS6ow2p15QdTHV139LqXKEOfJ6HjEYxhIVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyNgpl1qPSckrWVJbHwHx6u3Lgx5qlID4EzyJq9QKwO7r3b8heK
	OS628Dbig6OOi7vffUUQUSiRCQVYibZQdqsXNFZ3zBc8n9cFkQA06EvBdExQBpE=
X-Gm-Gg: ASbGncuMBmaFm9z8wjln7dSwf4bbI0h0f80aglb1ZTVDPF9BAWMmqMn3wMISKCd3YyG
	5zoigwHu6+hFPmEebCq2yJigWkvevossaRO+GSbZmI1ogYuyXiQzIeQj7/tlq8cNm7QTVtCJCbo
	/39XqqDF7WEkpu6l/wJ/HHjGtCW7/tgDWVclb9dPW3HngtXZhnZ1F6WM0yYeCUP2m3z4bYsohV5
	IthKZX9vfJfgjOo1jNejAOdP7bDEJxi20QgXFdtHb0uyjpdtZyfkrMUF3+ujNQvodYx+SC661rl
	ns7vLJt0qdLmJlewxO9d86BpSIOo6j/F2wtPTaVaFM+QBnr+92Hsy9ltMg==
X-Google-Smtp-Source: AGHT+IEdhY6sjyudCupWSNHVoMtEE08tS+Gsw4HB1HrNezGJ7bnExp/+sj0jdITIMdTxs+m/86N54A==
X-Received: by 2002:a05:600c:3ba2:b0:439:930a:58a6 with SMTP id 5b1f17b1804b1-43d50a4f961mr35834435e9.8.1742820738094;
        Mon, 24 Mar 2025 05:52:18 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9b5939sm11135148f8f.60.2025.03.24.05.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:52:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: nvmem: Correct indentation and style in DTS example
Date: Mon, 24 Mar 2025 13:52:14 +0100
Message-ID: <20250324125214.82028-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_055219_987605_8EA1D8EE 
X-CRM114-Status: GOOD (  10.34  )
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

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.  While re-indenting, drop
unused labels.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/nvmem/nvmem.yaml      | 60 +++++++++----------
 .../devicetree/bindings/nvmem/rmem.yaml       | 20 +++----
 .../bindings/nvmem/rockchip-efuse.yaml        | 20 +++----
 3 files changed, 50 insertions(+), 50 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
index 4fd015d402ce..c24e3667accd 100644
--- a/Documentation/devicetree/bindings/nvmem/nvmem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
@@ -50,43 +50,43 @@ additionalProperties: true
 
 examples:
   - |
-      #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/gpio/gpio.h>
 
-      qfprom: eeprom@700000 {
-          compatible = "qcom,msm8974-qfprom", "qcom,qfprom";
-          #address-cells = <1>;
-          #size-cells = <1>;
-          reg = <0x00700000 0x100000>;
+    qfprom: eeprom@700000 {
+        compatible = "qcom,msm8974-qfprom", "qcom,qfprom";
+        #address-cells = <1>;
+        #size-cells = <1>;
+        reg = <0x00700000 0x100000>;
 
-          wp-gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
+        wp-gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
 
-          /* ... */
+        /* ... */
 
-          nvmem-layout {
-              compatible = "fixed-layout";
-              #address-cells = <1>;
-              #size-cells = <1>;
+        nvmem-layout {
+            compatible = "fixed-layout";
+            #address-cells = <1>;
+            #size-cells = <1>;
 
-              /* Data cells */
-              tsens_calibration: calib@404 {
-                  reg = <0x404 0x10>;
-              };
+            /* Data cells */
+            tsens_calibration: calib@404 {
+                reg = <0x404 0x10>;
+            };
 
-              tsens_calibration_bckp: calib_bckp@504 {
-                  reg = <0x504 0x11>;
-                  bits = <6 128>;
-              };
+            tsens_calibration_bckp: calib_bckp@504 {
+                reg = <0x504 0x11>;
+                bits = <6 128>;
+            };
 
-              pvs_version: pvs-version@6 {
-                  reg = <0x6 0x2>;
-                  bits = <7 2>;
-              };
+            pvs_version: pvs-version@6 {
+                reg = <0x6 0x2>;
+                bits = <7 2>;
+            };
 
-              speed_bin: speed-bin@c{
-                  reg = <0xc 0x1>;
-                  bits = <2 3>;
-              };
-          };
-      };
+            speed_bin: speed-bin@c{
+                reg = <0xc 0x1>;
+                bits = <2 3>;
+            };
+        };
+    };
 
 ...
diff --git a/Documentation/devicetree/bindings/nvmem/rmem.yaml b/Documentation/devicetree/bindings/nvmem/rmem.yaml
index 85f9f5de3906..dc714309e7b9 100644
--- a/Documentation/devicetree/bindings/nvmem/rmem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rmem.yaml
@@ -38,17 +38,17 @@ unevaluatedProperties: false
 
 examples:
   - |
-        reserved-memory {
-                #address-cells = <1>;
-                #size-cells = <1>;
+    reserved-memory {
+        #address-cells = <1>;
+        #size-cells = <1>;
 
-                blconfig: nvram@10000000 {
-                        compatible = "raspberrypi,bootloader-config", "nvmem-rmem";
-                        #address-cells = <1>;
-                        #size-cells = <1>;
-                        reg = <0x10000000 0x1000>;
-                        no-map;
-                };
+        nvram@10000000 {
+            compatible = "raspberrypi,bootloader-config", "nvmem-rmem";
+            #address-cells = <1>;
+            #size-cells = <1>;
+            reg = <0x10000000 0x1000>;
+            no-map;
         };
+    };
 
 ...
diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
index b80fd8d1ae5b..aa93ebc41a8e 100644
--- a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
@@ -58,16 +58,16 @@ examples:
   - |
     #include <dt-bindings/clock/rk3288-cru.h>
     efuse: efuse@ffb40000 {
-            compatible = "rockchip,rk3288-efuse";
-            reg = <0xffb40000 0x20>;
-            #address-cells = <1>;
-            #size-cells = <1>;
-            clocks = <&cru PCLK_EFUSE256>;
-            clock-names = "pclk_efuse";
+        compatible = "rockchip,rk3288-efuse";
+        reg = <0xffb40000 0x20>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        clocks = <&cru PCLK_EFUSE256>;
+        clock-names = "pclk_efuse";
 
-            /* Data cells */
-            cpu_leakage: cpu_leakage@17 {
-                    reg = <0x17 0x1>;
-            };
+        /* Data cells */
+        cpu_leakage@17 {
+            reg = <0x17 0x1>;
+        };
     };
 ...
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

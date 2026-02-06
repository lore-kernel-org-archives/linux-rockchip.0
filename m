Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87DD2EE6B48
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 18:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgqRaAE4Gx5nHv5mfadDZmVDz2ZEOvHF0EYKcSl+ZvQ=; b=w/sPYUQdyuESXn
	Kic7zKf2GIpllstBLGH2z0qUpxUakt8ZFnYjLv3M3ELUEp6gD85DtNJ8VUAaJa39G1rJVBE1nOMCa
	XS/km4Uv6OYjFPmg2OqsVCQqec3gmXWcPKS66QH9bJgq8vWFQjQnjDeJQ9k5oqpDAlXQfyLBcCKxj
	8Bh2lvwPBbx9heCUe89SWdnGuFHcGOC4njAscC9vhpdw5HviZEmG3X1FnaEvHD6DYNkFwnPtJttS+
	O1IT7p2/d+9N8H+Retnz/06h43GIXTTQ31VwoFhWZKT8tDVeqsjdyKgjG2aWndibq6iRz1XiiEvZB
	1ua0O3YrlV2HamsQEH+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQKd-0000000BejH-3BRF;
	Fri, 06 Feb 2026 18:13:27 +0000
Received: from mail-dl1-x1233.google.com ([2607:f8b0:4864:20::1233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQKa-0000000Behu-3EPJ
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 18:13:26 +0000
Received: by mail-dl1-x1233.google.com with SMTP id a92af1059eb24-124a635476fso3566266c88.0
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 10:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401604; x=1771006404; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W62an0abMcrLJ9IcEAjj5au+IY9PVbDUlIRL7uo1FT4=;
        b=X9eM5z6i1oFf5kb9/cKhhSBAs6sqWoDpqeXiqj60XTJGsayhCB/A+ip0RK+1z0jalU
         ylSHtt7KF1cBGULaH+TXhZq2kgLSqqcsKybtmwq/JrjGgPaMsVl8zX3RuF4PxNaZusDb
         rQPpY4hqomXK6wHRX6xutU64slBhQ3jGLYFpXpz0bxIIF7Gcu28Rx3MK2CDr//iG+MtN
         3Cc9taQffCPru+kjVL0cvmWPxrKaquLTFlCjn3qHdbaWxh0hczMiB9K9eHITOFhTNGgy
         f5dCHmkimRtQqwHoFDdKmGh54sglWoy7qElWSbmnFUtNKHsI+3rBpJFVfXwuC8381QxJ
         vcAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401604; x=1771006404;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W62an0abMcrLJ9IcEAjj5au+IY9PVbDUlIRL7uo1FT4=;
        b=eWy/qFwOis+1nvQccBHpolbEiA2rHccGXI0OMgkwE7bkKMy/OFSNszAWnE4bp6z+OR
         X3EM4aOBg9U32RQt6Q0qxoNskKnp4CsMBk0YMTnSQtMhbbBaSNpOTWPqy6OUbiSgjxaZ
         ascOnImexvRUiIzH3ogz1l0Y9FIrWM3jaXBTRc7sQFPDJDpxLSfvImYcWs77xLrecYrE
         TbsWDE9ZOr2qIsQ6Yxn+9j9G+kA6wcjcz7/WGZABno8OlR9qAJfnJ7xuBwu9z5hSuH4G
         16RmGvyaV9QZNahJzgoTvaAmG1dt/4H41ZuuoSvVfcGS1O/DiIC7c8az2HBJfCsjVtXI
         jlxw==
X-Forwarded-Encrypted: i=1; AJvYcCWR1S7tPK9tLc1S8IYDUCqJT8ofi06VsKo7rY6PJcMAfj15uUZKCoqPaBx8O01K9M+glh3PqRUbktnHWPilow==@lists.infradead.org
X-Gm-Message-State: AOJu0YwrW78GJv7O9YXXXT2dyLdIViw3RkRHTustpfdNN6VWCwrwDg2v
	wi6tOUmsdthNU+pqxu40sx+z8jVErTRldXeyx+Xgr1Hu0FD7hIdvQgOp
X-Gm-Gg: AZuq6aKJ2pdeUP7fCwpFBcQRMYK/Oq5A6bb6lUrXx0wZ8eZCvmKPKBGpdB3MmVsYJMO
	YMY+u+A4t8TFkZWzxyoFQnzI8mFy4Wq3+CZTUsp+eBbQ8Y1Y6kJkkf27UJMmimfjILk+k2apcw6
	k+pwTg4lIvc8gCBdsHjpg/egxGXZrA4Lx9IdizIpwXrNZgEzPEfvgoIyjA1wloDIeq2J/MA7yni
	/KQUeCeH5KvjD4odyV4GdXQrPtZAI5YDKrTVIn+bSrOBhhYpGrpKz9qDOJnjJAZ87AJVRwY7HyB
	baWINXMPBucY0bCMdPaI6+/1Dhys4gxUQFDIel2CBi8t1ijMUxeeBmsRa1JBX7MDeCb/1whKrfz
	s5gVkq44st/f7PCZUHRKqh/fduc9ZeuocNHSJiPy8lnvU8UyZOgfCmcxOEiyNUTLrCO01GGiUGw
	mV0Nf0iRLuctGyiuSsO9j8BEY3
X-Received: by 2002:a05:7022:6611:b0:11b:a73b:2327 with SMTP id a92af1059eb24-12704074607mr1378821c88.30.1770401603758;
        Fri, 06 Feb 2026 10:13:23 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:23 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>,
	Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 01/11] dt-bindings: clock: rockchip: Add RV1103B clock and reset unit
Date: Fri,  6 Feb 2026 15:12:59 -0300
Message-Id: <20260206181309.2696095-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_101324_830666_CBFF9286 
X-CRM114-Status: GOOD (  14.60  )
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

From: Fabio Estevam <festevam@nabladev.com>

Add device tree bindings for the clock and reset unit for the RV1103B SoC.

Cc: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 .../bindings/clock/rockchip,rv1103b-cru.yaml  | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml
new file mode 100644
index 000000000000..fa7298955aea
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/rockchip,rv1103b-cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RV1103B Clock and Reset Unit
+
+maintainers:
+  - Fabio Estevam <festevam@nabladev.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The RV1103B clock controller generates and supplies clocks to various
+  controllers within the SoC and also implements a reset controller for SoC
+  peripherals.
+  Each clock is assigned an identifier and client nodes can use this identifier
+  to specify the clock which they consume. All available clocks are defined as
+  preprocessor macros in the dt-bindings/clock/rockchip,rv1103b-cru.h header
+  and can be used in device tree sources. Similar macros exist for the reset
+  sources in these files.
+  There are several clocks that are generated outside the SoC. It is expected
+  that they are defined using standard clock bindings with following
+  clock-output-names:
+    - "xin24m"   - crystal input                              - required
+    - "xin32k"   - rtc clock                                  - optional
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rv1103b-cru
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: xin24m
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    clock-controller@20000000 {
+      compatible = "rockchip,rv1103b-cru";
+      reg = <0x20000000 0x81000>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

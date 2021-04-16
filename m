Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70170C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:43:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BAD3261152
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:43:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BAD3261152
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7debzzuSAmfItyUo14aIHGyr2QaoP1SLTpWloKGgcdg=; b=Zps/yX/174hw8V3pmQjQr5ZAZK
	U0/XL2jqB/7oAwBhtHwVNQ3+YShgRl6O1EDbEfV5+nKSBWwP6PKm25ymrmpVaQnltpcP8xh7eQSma
	DLcrsns78AI6jCGhwyEmDlbNH3CTaGRKIOfsBzD79kMRVGs0ieQSva+kH/YhGjDQF2fMfshtGMzBO
	DakuSZh4qcbKB21ve5Ko59D56vZCPHKgNcxYIL2BcS8yWbTFc9vy/WfQHY3U89vLzsTxJ0Sl32Ewj
	oMj+Y4g4QO9qUrysYKySkZTYTVxtpbLo6eUcldrA7tVJoRUgUbZ+eiTQdQ0YWDluwj9H0e8Ng8cWH
	YOSdCJaQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXK4P-001PX1-1K; Fri, 16 Apr 2021 08:43:21 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJW9-001HfB-1O; Fri, 16 Apr 2021 08:08:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JB/6AfI4ud8q47U6IB+7D2XVQS2wvjRMG+o3isDfwPk=; b=AlrmFUVhQ+6QJ9DNJ6Q9TP7vUl
 qsQpBkIZvbbgL164YWZBXYSwFfKAuMTRDRNZ7nrorCq/derhJacGTEMCPPr2jR5y4eA6i1DlfzT3o
 HBXxw+bNUt2IIu0NsRkcKadmkLunS7mHh9YB+Ke9fvIpeLZgHKs2Ruk0TdT/vGh60P8r38x+4awZ7
 Y4th+JC8zY/aj+Fa7zd077kzCIBN79/iXJPnxM/gH+2CbpRCxUMJiXe6iz3baRMkHetDijo1veIRP
 1yarn0OtRa6JI8r1MsCACOYjGngEmgmCiLVTtN75ziqqEkmkJg6HC89MOrEDxy+Tp4Vb4/GfhCcXf
 QAtSAE2A==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJW6-009B0Z-DB; Fri, 16 Apr 2021 08:07:55 +0000
Received: by mail-ej1-x62d.google.com with SMTP id x12so20061461ejc.1;
 Fri, 16 Apr 2021 01:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JB/6AfI4ud8q47U6IB+7D2XVQS2wvjRMG+o3isDfwPk=;
 b=gX9kjeKTIrlEdDQZhJ3nxnCkByo/W5bezm2SwwaIQFgr1v6e/AQYEKYc88mVWvDbev
 3nOCQcc6ycWLc314y9oz8HfO+f7/ijdTQfJNEm2j06jrAMpkEi+biFG2bEEmhQbGYnLX
 FyMeW+8ckeUDTmYB4yG6dB74BlSnwHdZrs7uG1Jyudbr0cXCxTp+kWn0xdnXfImfLIv3
 YZ8GscJY3/63egkVdR4iFc1NxBG3u3lY2LlQElQKavGsHKe9NHFrzFpjCpLtwK8cxMbF
 m95rVOwN2XYBZMeGCTCl3AdTZO8nucKiTUDY6gempDR8ZPEs0bHkB6Ai78GNatJAQP28
 Y1OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JB/6AfI4ud8q47U6IB+7D2XVQS2wvjRMG+o3isDfwPk=;
 b=O7nYgaWMHjHonwbM6/QoBXnfILs907GOvd5UUF4aVLhPHhiZqu26swJKn5aCnTCWoV
 kzZqRLtAvoVnwk87E+7crEAXfje3JMwTmyl4qwKPzvKuWQcV1Lj0Vm3nEGbvo1WeRpSF
 E9dr7xrdhrUbtcdoij9t3OG7KqPsyEHVNo/5/UWEf0ZyYWU5wcHeAIffcD1tjWYYCzFL
 Ciu3qCE7mCHpU/pRm7StpIc7jDjA2ehz/Vw6BCkvBWAKjg1/Mn7BfBcYxoAe66Ht6xoQ
 gaksJ1Ou1uU2nFIDuThqiWfH/DLsW0m+OosdxjeHCnTsBj5tGQ0tnhIGAbCegUv2vKXq
 8GGw==
X-Gm-Message-State: AOAM5324tdzZNr9Zg9cvvyZZceRjL8QIShY7DmbXukfwoHz8ghJaAgOW
 fx1Rnd9V5pnaosTmw98TGkA=
X-Google-Smtp-Source: ABdhPJz0qwv5UviIlnsK3nx1HPlgfkqcRasGMe4EXUnjKGPYp+ZNof/CYOEvlKn0P3kjoEnQ5iIqoA==
X-Received: by 2002:a17:906:e84:: with SMTP id
 p4mr7194244ejf.248.1618560472807; 
 Fri, 16 Apr 2021 01:07:52 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.07.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:07:52 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 11/15] dt-bindings: arm: rockchip: convert pmu.txt to YAML
Date: Fri, 16 Apr 2021 10:03:38 +0200
Message-Id: <20210416080342.18614-12-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010754_464080_8D5EF146 
X-CRM114-Status: GOOD (  17.33  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Current dts files with 'pmu' nodes are manually verified.
In order to automate this process pmu.txt
has to be converted to yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/arm/rockchip/pmu.txt       | 16 -------
 .../devicetree/bindings/arm/rockchip/pmu.yaml      | 49 ++++++++++++++++++++++
 2 files changed, 49 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/rockchip/pmu.txt
 create mode 100644 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.txt b/Documentation/devicetree/bindings/arm/rockchip/pmu.txt
deleted file mode 100644
index 3ee9b428b..000000000
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Rockchip power-management-unit:
--------------------------------
-
-The pmu is used to turn off and on different power domains of the SoCs
-This includes the power to the CPU cores.
-
-Required node properties:
-- compatible value : = "rockchip,rk3066-pmu";
-- reg : physical base address and the size of the registers window
-
-Example:
-
-	pmu@20004000 {
-		compatible = "rockchip,rk3066-pmu";
-		reg = <0x20004000 0x100>;
-	};
diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
new file mode 100644
index 000000000..0b816943d
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/rockchip/pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Power Management Unit (PMU)
+
+maintainers:
+  - Elaine Zhang <zhangqing@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The PMU is used to turn on and off different power domains of the SoCs.
+  This includes the power to the CPU cores.
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - rockchip,rk3066-pmu
+
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - rockchip,rk3066-pmu
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: true
+
+examples:
+  - |
+    pmu@20004000 {
+      compatible = "rockchip,rk3066-pmu", "syscon", "simple-mfd";
+      reg = <0x20004000 0x100>;
+    };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

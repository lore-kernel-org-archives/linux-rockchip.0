Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1952C61DD6
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 13:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYbd/brKer16SgEovzOx/3WsyLSwRXPswEJfVYERjG4=; b=Jtliw8gk9B4DXm
	PLbogszLHGqAiTOH7+qiFe4lxkR5/C17yrx+NwxoY+kvFG46ZlbxerYcdO6/n5NfiLNfFYNyUKVCk
	TLSgI3wbqdhZel7b/3Sew/7lmo13CJRsbI9XoY/oQ66AAq+VghMQsjhIGcCxDYceRW82Ds5AVihLY
	Qb1bPe8FtAgpjaf8gfwYJVi1GiGlEr8bO0L4eTBEgQiRYjOu4pnrUbWXejd1waJS5qDbPMZar+qya
	YGYugppoAGHds9OwKZa4LDTkwYf1Br0NFLb11V6F27iFz2BA4hbNFZxXzFact0uBvz0XqzTyP31Qr
	8wGcJKGIcrdrYyW42/yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Tfe-000000026bo-2otE;
	Fri, 04 Sep 2026 13:09:30 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Tfb-000000026YJ-3yRC
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 13:09:29 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-499db1740f0so397205e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2026 06:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788527366; x=1789132166; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WkYtc8Zy+X1nQtQQfmPXyE49NKh145BAfNH3nX3cWHM=;
        b=r3QdrH+m2BPWCjRLkaR96wkwXqfl3tVD01UfL2gb8tpnV3eNoFL0gs+oNsGXDaQy2S
         sBtP7mFl5D+OPiF/L3sMmzZ8tzi3ZhEl/PGwqT1fNeiiIe7CcB6Ec6Ji2ltQFfmZOLQ+
         Q34MLDbsDTutF0doM7VF16JxvoS3Kvj4iqNVbff7HnFnizAafGmp/AgFOqyAdxTu+XVD
         eX1tlgwKElqn1S1BUszBw9fJuqRy5aHmKEG1cqSe9SRplKa5ufh+M2MFw6bg+/n/VOer
         iXUg6MGz55Q3ENXbpEMI0qqQiaktFd8VhDEpAthCYi1h4HZNZkQh0Jr97QzmBYQGGqgG
         203g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788527366; x=1789132166;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WkYtc8Zy+X1nQtQQfmPXyE49NKh145BAfNH3nX3cWHM=;
        b=GRDIrgX086uOK10+996e/aP4itCAoCulo3VC6Hy4+IgifnX+Lz/m4Usnq46yT36Gbn
         dvT2xF/BbmKQ06jlbIK+JQldsbPyTkU99EWvtYq6yYhALTe8bkCtP9OzKAWF/2YFS5W1
         s/IUWDSEz9bYz5m+HMd8koL69ZXx27DNc/3pxFqjxeMgPZZK40jQqHOcvW20BNS5U21S
         XSNNacdj0I2QyGHDdjUFfd+qQMH+wthT+BtxvnzLUsW7GvGelW1G37w6s8LgecHNrbeW
         uSyeKT+mrW5jpVzUTN5Bm+/vkRFoAFgd2OaNlqNMw+fQbVtHsGQkLBacPVCcW2frPyVc
         hoPQ==
X-Forwarded-Encrypted: i=1; AKwUvBxPjx6qIvhucttE4drLwqVE+k0v6x4dNw2XCccxy3zHw+dXB4FGcC94W9LZSIhSp3W+I9WR5nKbPv5TcJRsaw==@lists.infradead.org
X-Gm-Message-State: AFuF++nMueKR1WJQrjNKqwDJCZFXgwyB2jWAuGg85omSu9pChpdS/blu
	fpBGdT5886kRcgyAUNIId1QmXileKPfK/V1+dZabPj8ghzhhbrWNj82H
X-Gm-Gg: AYBFou1TCKGwi5Ozn5OEeIQk0iyKfQGA26gfi2mKm8+zNX19HMfKAbRZyXsF7x23W6/
	dU3hfacnd1BaLQZ4AwOw/mVJM9V71JdhjGftHdq2xmUQ+XRLy/VqlPKLTSdn+QoWzEt31OKocOd
	mNQxtYmkVM9ZZDdREKLf03O87A46xxA0zurCSQGk1gV7YeYbGUExvNnycqqqcWLSY7HMCd8Otuw
	N95knpOW4UKMMUdwT8oohPckRmVtD5Y8Ua6EO5Zn+wM8MtU3qVseqqDv3HKVjKoT7mZR0U+de7e
	efiA784CXsPn+1Ei7heqKtElV4fgwIWdyVAiWmH/XOH66oJjB1eeTRsNLHsL01Tt7axwuFaxJP7
	l3cudC1MEZ89wIFRwV3wEScqiaXiTcaovkpWnYuiI4wtuqtuR0Tgmhu3ZkXXnGpdb6mn7nPrsCK
	+VY4Pn+L7xzzCvMPRK5XPiIlH/gjiutxkEdsdub1KlqmtxaWTjeTFWrYStaaBNXM2B3d67Emg/s
	j3mryZS0v4NKqPrLC5fWFs298q3BTTV/jtSLdyLzKi8b/gx78A2rf0Q5fa6VoLyATIIRsGyXrwl
	eLL819gdW8dnbIo=
X-Received: by 2002:a05:600c:34c5:b0:499:cef6:104c with SMTP id 5b1f17b1804b1-49cf823c012mr41127815e9.1.1788527365941;
        Fri, 04 Sep 2026 06:09:25 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B871500CB6EF488A18F9C42.dsl.pool.telekom.hu. [2001:4c4e:1b87:1500:cb6e:f488:a18f:9c42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce554d52esm135575435e9.3.2026.09.04.06.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 06:09:25 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH 2/7] dt-bindings: npu: rockchip: allow DVFS and thermal properties
Date: Fri,  4 Sep 2026 15:08:53 +0200
Message-ID: <20260904130858.27803-3-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260904130858.27803-1-royalnet026@gmail.com>
References: <20260904130858.27803-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_060928_003339_1A641E78 
X-CRM114-Status: GOOD (  13.94  )
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

The three NPU cores on the RK3588 are fed by a single clock and a single
supply, and the firmware accepts a fixed set of rates for that clock.
Describing those rates as an operating-points-v2 table is what lets a
driver scale the NPU instead of leaving it at whatever rate the bootloader
set, so allow the property on the core node.

Throttling the NPU from a thermal zone needs the same node to be usable as
a cooling device, so allow #cooling-cells too.

Both properties belong on the core that carries the shared clock, not on
all three: the cores have no clock of their own and cannot be scaled or
throttled independently. Naming one representative node for a shared
frequency domain is the established shape, as in "Cpufreq cooling device
on CPU0" in
Documentation/devicetree/bindings/thermal/thermal-cooling-devices.yaml.

The schema cannot enforce that placement, because all three cores share a
compatible string and a node name pattern, so which core carries them
stays a devicetree convention. That is the same situation as for CPU
cooling, where cpus.yaml does not restrict #cooling-cells to cpu@0 either.

The example gains #cooling-cells; the operating-points-v2 property is
exercised by the RK3588 devicetree later in this series.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Assisted-by: LLM checkpatch dt_binding_check
---
 .../bindings/npu/rockchip,rk3588-rknn-core.yaml        | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
index caca2a4903cd1..595aacfbf8608 100644
--- a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
+++ b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
@@ -42,6 +42,13 @@ properties:
       - const: npu
       - const: pclk
 
+  "#cooling-cells":
+    description:
+      Present on the core that drives the shared NPU clock, which is the one
+      the operating-points-v2 table below is attached to. The other cores
+      cannot be throttled independently of it.
+    const: 2
+
   interrupts:
     maxItems: 1
 
@@ -50,6 +57,8 @@ properties:
 
   npu-supply: true
 
+  operating-points-v2: true
+
   power-domains:
     maxItems: 1
 
@@ -100,6 +109,7 @@ examples:
         clocks = <&cru ACLK_NPU0>, <&cru HCLK_NPU0>,
                  <&scmi_clk SCMI_CLK_NPU>, <&cru PCLK_NPU_ROOT>;
         clock-names = "aclk", "hclk", "npu", "pclk";
+        #cooling-cells = <2>;
         interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
         iommus = <&rknn_mmu_0>;
         npu-supply = <&vdd_npu_s0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

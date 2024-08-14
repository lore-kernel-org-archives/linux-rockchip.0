Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B974C52D7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 22:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vlePW9IpO/xFzPL1PLGXrvrwd8xHz1esFz5/7or3+c=; b=tpRYKJ/GCUbwxV
	GBaJ//YS/YxBaatmmj04GWgaKQPanmADYPMtyfzFBVpNmE/fj8BAmZgtUz81yShtMZ3kOXMa0pSca
	oQNnxBLdxuhQW1C6l4VhtvG84VmQ/wmg/ShYEs6Fj1e10jOEcYDYVtVAezkBvFkPcPGmiZdiybeWO
	zMGSHctydiXL1Apn4Dt5nVcJkmaTYoi1Xs6hVpCTvzGzD40cbiEpbWUjNqdELKlxnrCedE5p4r7hl
	YoqxcEO5TM+1Etdi+Dtrcg7d1gsdLisG81ps6LVc4g+thzKMumng23LUCFEs6Hd5h8VNiVQgjeZHe
	reRKXZpnGbG+gkQCiBsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMSb-00000008S13-3OsJ;
	Wed, 14 Aug 2024 22:27:17 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMSU-00000008Rz5-2So0;
	Wed, 14 Aug 2024 22:27:14 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723674422; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mfx93T741fEjtPvM/XY6JEMfqbh/b4dSy3OvqsihugBO8gFpOYuUJ+GqX6FH8ixfIZlPyKrgt2jaxmIMuHhx7A129iwrLHHhkX3U8+7hE1nZD+sqbsxPwKDnoeSipgrfG+/FTkxAvtfCVq31r40vIrCaqyNgYmM8l1zWkTgSB4k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723674422; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=jtk6kXHLiWSb3fabpSTdzCrxBw81ky2Jbh/22xPfH74=; 
	b=BNrByHHUjJ/MIRKKJnu4Hh66f+z/U5eLYv2l9oZRutvJcKKC+iEbslcSUX2vMqS3+RnMW4df02okb3vUV+Sz/HcyiGi40AUi7Z9iJLM9q0IK4Z9G/Thl0VOho/nybi5AfwimOPSKRTE+gl93kFgYxjAgSn/C6JULikE6eFO4VTA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723674422;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=jtk6kXHLiWSb3fabpSTdzCrxBw81ky2Jbh/22xPfH74=;
	b=L2WDxHTSM0Uh3td0K1yE9nV4mTOKV5kVDOvMZ41DoLM8E4599XtCCsIkrzTBieTt
	TakR+bkENl254HQB/Uy+jk9rhYbz3Q9ia1TYKIRu3LjkNGFQgcBJphDtMHnixhDJsh9
	M6U6F9TdOtG7vh1lzzAZx5SV9lkdGzICg+s6H8io=
Received: by mx.zohomail.com with SMTPS id 1723674420081557.4306191685197;
	Wed, 14 Aug 2024 15:27:00 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Jagan Teki <jagan@edgeble.ai>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/2] dt-bindings: power: Add support for RK3576 SoC
Date: Wed, 14 Aug 2024 18:26:41 -0400
Message-ID: <20240814222824.3170-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240814222824.3170-1-detlev.casanova@collabora.com>
References: <20240814222824.3170-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_152710_697098_DB12B6EB 
X-CRM114-Status: GOOD (  13.11  )
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

From: Finley Xiao <finley.xiao@rock-chips.com>

Define power domain IDs as described in the TRM and add compatible for
rockchip,rk3576-power-controller

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Co-Developed-by: Detlev Casanova <detlev.casanova@collabora.com>
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../power/rockchip,power-controller.yaml      |  1 +
 .../dt-bindings/power/rockchip,rk3576-power.h | 30 +++++++++++++++++++
 2 files changed, 31 insertions(+)
 create mode 100644 include/dt-bindings/power/rockchip,rk3576-power.h

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 0d5e999a58f1b..650dc0aae6f51 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
       - rockchip,rk3568-power-controller
+      - rockchip,rk3576-power-controller
       - rockchip,rk3588-power-controller
       - rockchip,rv1126-power-controller
 
diff --git a/include/dt-bindings/power/rockchip,rk3576-power.h b/include/dt-bindings/power/rockchip,rk3576-power.h
new file mode 100644
index 0000000000000..324a056aa8512
--- /dev/null
+++ b/include/dt-bindings/power/rockchip,rk3576-power.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+#ifndef __DT_BINDINGS_POWER_RK3576_POWER_H__
+#define __DT_BINDINGS_POWER_RK3576_POWER_H__
+
+/* VD_NPU */
+#define RK3576_PD_NPU		0
+#define RK3576_PD_NPUTOP	1
+#define RK3576_PD_NPU0		2
+#define RK3576_PD_NPU1		3
+
+/* VD_GPU */
+#define RK3576_PD_GPU		4
+
+/* VD_LOGIC */
+#define RK3576_PD_NVM		5
+#define RK3576_PD_SDGMAC	6
+#define RK3576_PD_USB		7
+#define RK3576_PD_PHP		8
+#define RK3576_PD_SUBPHP	9
+#define RK3576_PD_AUDIO		10
+#define RK3576_PD_VEPU0		11
+#define RK3576_PD_VEPU1		12
+#define RK3576_PD_VPU		13
+#define RK3576_PD_VDEC		14
+#define RK3576_PD_VI		15
+#define RK3576_PD_VO0		16
+#define RK3576_PD_VO1		17
+#define RK3576_PD_VOP		18
+
+#endif
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

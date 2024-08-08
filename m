Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A092C52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 16:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0GgbbNa3Z42loZXq//RugBSrJUdlWgg4gr0KlYr49M=; b=QtCbWo0Y3jRYdy
	QqGNefHUiXbhF2dlpgRLSJoA47v/t9hQFbjZEy7UQB66WGU6WY/bDBeVcgNeg1Xj0Up+7x9Xh+6Mp
	TsOJnsPntJiZjp+jmz0g0pNkh4COVaAJdUpfAZrhE4Hz3B2EerM/WbrnknqExDd9x1Qp42Foy1oiH
	Dlz2rtDoT43d6tRAmQG1FmbVu+9IjdQvGglDM3oBPyM5KGqLGddW/0U3i3gqlJRo9ddkZRpIorLJx
	Pm1i6LEde/M6/Xs1gRaRhBivttmLgKozopKDxiR/nOBv460xwlcA4lrJt73sBcCQ38/CptPwBUaGQ
	z7IyocCUtrOgXen2Nshg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc65J-00000008xV5-3V75;
	Thu, 08 Aug 2024 16:33:53 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc65F-00000008xSV-0Uje;
	Thu, 08 Aug 2024 16:33:50 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723134818; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=WEU/cEHl7no+OufB895Wcx4cmnUUFZXcE9N7ppbGThVX6q2ExlZamXmtNjFBNktLoixBaPNOfAUq4nkJGvLlJFjUEspeY9b7VEStwnTDtHOoMZPlwBnaR85gHrNiMoEh8gYOQo7JyXtc2sRHHlV3sw2VQqehJ69XRwhaQfUOH5E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723134818; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=RyCepvyWzhp8Bg9hhu049ivfAGgOO+ujHi0U3uQVpzQ=; 
	b=ZVy7caFIR1AptdRp/7y5Vuw18m08/jEmdj7hXpezUdFMQi7Ks1mMQ/DuZKDEuDWzbNXupklQC1Y7FNA0cLvI2BPH67C0cVCVozeAEV12qNKRQ6BIgX/LkfFFeCXs6NhISHHsmwLj+LQuVvneFnElmJ5Rrk59SrsUOuP160qdW0Q=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723134818;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=RyCepvyWzhp8Bg9hhu049ivfAGgOO+ujHi0U3uQVpzQ=;
	b=Snv7pVN5ww1a7qVUz0RvQepSkMx5/QlMLoO8X/c6BNNWIadNyjQjLCqg21DUllBo
	N1c1lAcZEhmgMi1uxO9Eza7WkO/NEFH2MbqAw9IDjSUuJoR6p8AD1d0jWZjRpMe6yu2
	zNB9KQQutdVrXXoGS7y6Uk/DbxXdaiFjwb5hnifo=
Received: by mx.zohomail.com with SMTPS id 1723134816403244.22942005210552;
	Thu, 8 Aug 2024 09:33:36 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Arnd Bergmann <arnd@arndb.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 1/2] dt-bindings: power: Add support for RK3576 SoC
Date: Thu,  8 Aug 2024 12:31:04 -0400
Message-ID: <20240808163451.80750-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240808163451.80750-1-detlev.casanova@collabora.com>
References: <20240808163451.80750-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_093349_242370_CB10A7D2 
X-CRM114-Status: GOOD (  13.42  )
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
[reword, add yaml]
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
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

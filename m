Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25C09C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 09:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kenfZ2XmUs74fxkTIMgtMzqjY6iS425QnnC6I+HnpQ=; b=0SszqRnae08Ovw
	euxWrFvN7LQnN9v1e7Uj9+HfzLLM4+RYxqNcZytYqkambVltRPHy/lHMZWRo67TBp+rkdJkgRhQEj
	YeSkfSowdqca8H/26m+q57nw+RU+vwkh9lI2w2sBrHlRfCkPmtqu5WJmrd3hT/SzhGU43xDuUOwVm
	A0URPhCIEZ9ZJCVzWXADg33NN7RR+HJsQYHXx/fGPZnIPGhzo+tfTqhTzmb6lR1+k6b7MdnINME7j
	1t9Xda+3DuZzc0PrNIrCX6yuxiHRuYnXOZpwqmFgA7GcSetVimSE2IA72DlMJ+oGF63jf32MBfhsZ
	cRZrBZklVmGNUObSVzYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDK29-000000036xz-27YA;
	Fri, 09 May 2025 09:28:45 +0000
Received: from out28-172.mail.aliyun.com ([115.124.28.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDJXe-000000030R0-2gSq;
	Fri, 09 May 2025 08:57:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=coolkit.cn; s=default;
	t=1746781032; h=From:To:Subject:Date:Message-Id:MIME-Version;
	bh=3ZXjjEkHeGITH9J2fWd0u7vufG50QXwj93RzEehOzDM=;
	b=eTa8eGyV8tlGgL3NpmKMkx+sOq2GdNmdjWyBvNtLVhewSf2HqD48vCKuq/Mf2mfrjP/y4OHAPwDB+xAgb2EwsdFiI7v5m937XmxyZKEiMfLpPMCPjRWJoVslyvYe3Al+npX0iLSXYJgPPml8KKvgli91j/tHqQGGcApM2O8YGQ0=
Received: from ubuntu-z.lan(mailfrom:hao.zhang@coolkit.cn fp:SMTPD_---.cjnlknc_1746781026 cluster:ay29)
          by smtp.aliyun-inc.com;
          Fri, 09 May 2025 16:57:09 +0800
From: Hao Zhang <hao.zhang@coolkit.cn>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tim@feathertop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	"hao.zhang" <hao.zhang@coolkit.cn>
Subject: [PATCH 2/2] ARM: dts: rockchip: Sonoff-iHost: correct IO domain voltages
Date: Fri,  9 May 2025 16:56:57 +0800
Message-Id: <20250509085657.309934-3-hao.zhang@coolkit.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509085657.309934-1-hao.zhang@coolkit.cn>
References: <20250509085657.309934-1-hao.zhang@coolkit.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_015714_852272_C4DDB3F4 
X-CRM114-Status: GOOD (  10.16  )
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

From: "hao.zhang" <hao.zhang@coolkit.cn>

Modify the corresponding vccio according to the schematic of
Sonoff iHost. This change aligns the device tree with the actual
hardware design and improves peripheral stability.

Signed-off-by: hao.zhang <hao.zhang@coolkit.cn>
---
 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
index 088a069bb1a8..1aedcd3a2167 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
@@ -323,15 +323,15 @@ wifi_enable_h: wifi-enable-h {
 };
 
 &pmu_io_domains {
-	pmuio0-supply = <&vcc1v8_pmu>;
+	pmuio0-supply = <&vcc3v3_sys>;
 	pmuio1-supply = <&vcc3v3_sys>;
 	vccio1-supply = <&vcc_1v8>;
 	vccio2-supply = <&vccio_sd>;
 	vccio3-supply = <&vcc3v3_sd>;
-	vccio4-supply = <&vcc_dovdd>;
-	vccio5-supply = <&vcc_1v8>;
-	vccio6-supply = <&vcc_1v8>;
-	vccio7-supply = <&vcc_dovdd>;
+	vccio4-supply = <&vcc_3v3>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_3v3>;
+	vccio7-supply = <&vcc_1v8>;
 	status = "okay";
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

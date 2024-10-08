Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F754CEF17E
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6v/7ZyJbzwMpYqaqQq1Ua3jwG7m8M8p8LFRSSVVKfzU=; b=jK1YAVd1C5qbnz
	KotTQyepod1Yh4GASlFh8cIOjW775rKcfLIf8ScsQOmNHxBP175khvhlKYs/vPtS4uaWnlOtSpD07
	P2UixfQRgdOLp07p1rOSdOrxpJE11kc3MCJjfpelH28RcghOXPX6J8mruP7gVa4mvDZKtLpccpx4/
	9F1schel8NX/3+tp3EH7v+x4313R3t5RlCZ753lrS7XfGaazTzo9QApYhGh4YazRpV7yctIdqlAxe
	YG3H4XNuWhL7uFAbsUEa0PRhQnVYmGsNwSTyPJnoX4sNH88BEo1U5gaGV9NXayDT2DpzDaDVbaB6C
	8EJQ0mxH22dcwLSmOqrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syH2T-000000075ey-471v;
	Tue, 08 Oct 2024 20:42:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syGzs-000000075AO-2GMD;
	Tue, 08 Oct 2024 20:39:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MkCaKskrO/nF9QQnRoBZ2O5aN148arkIhAAPWOoj440=; b=1svss9TRSdDFMG59J/YDEISSGa
	DOGQzSUOW37901EZPDKCM/9xQFAX5VPyIMy6vaI4LXnXWnghjEOhf1hL2L1vtgRLWimAGucn7uuUE
	6E7BQdgDGlA9I4Hi5kD0PF7zyM6ztcceO31pxSFfi0ab/yUFMyReIDcYXojRI/ljzDR1nIxREMoTf
	ebWrnrPpu5EGL4mPsZEpDNeVaAR2IpWPEXsTUokPVPJfzvcoi8Hhl220yS/vzep/hkQEriz8RK8zT
	Q9N4AJL2cfu3atZDdiVuIqZEyHBu/9tcdsjRO3UAcdl6SiWfH/tF223VN3VJ+etExe81tI/YJpPVV
	lssjVf3A==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzq-0007ua-7Q; Tue, 08 Oct 2024 22:39:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Furkan Kardame <f.kardame@manjaro.org>,
	Elon Zhang <zhangzj@rock-chips.com>
Subject: [PATCH v2 02/14] arm64: dts: rockchip: Drop regulator-init-microvolt from two boards
Date: Tue,  8 Oct 2024 22:39:28 +0200
Message-ID: <20241008203940.2573684-3-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_133956_602986_8FB756F2 
X-CRM114-Status: GOOD (  12.40  )
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

rk3568-roc-pc and rk3588-toybrick-x0 re-introduced this property despite
previous patches removing older instances already.

regulator-init-microvolt is not part of any regulator binding and is
only used in the Rockchip vendor kernel. So drop it.

It is used by u-boot in some places to setup initial regulator-state,
but that should happen in the existing -u-boot devicetree additions.

Fixes: 007b4bb47f44 ("arm64: dts: rockchip: add dts for Firefly Station P2 aka rk3568-roc-pc")
Cc: Furkan Kardame <f.kardame@manjaro.org>
Fixes: 8ffe365f8dc7 ("arm64: dts: rockchip: Add devicetree support for TB-RK3588X board")
Cc: Elon Zhang <zhangzj@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts      | 3 ---
 arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts | 1 -
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
index e333449ead04..2fa89a0eeafc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
@@ -272,7 +272,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -285,7 +284,6 @@ regulator-state-mem {
 
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -309,7 +307,6 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
index d0021524e7f9..328dcb894ccb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
@@ -428,7 +428,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
-				regulator-init-microvolt = <750000>;
 				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0EA4FF8870
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 21:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mp81nY096WVuRxBePbXywSw+irUk6bgkMg6Ub7fDFc=; b=w06Iz2SmzjJkPc
	Jekge0ZxFFTB5/cz890jvM1bZEbgs4pO7XtKndXP33K6WCf58kWm4TM7QQ02HGywjREUa22H6Dr+n
	0H15ZiNmdDFbXZ5k5/R/MQCBWTe/HAl4SL/idxTpwHPoqNUt8eSA9OOAsqUhkQakvuDQxo5tDuyhx
	sq1BX3xVPlGM5+uKPlQLn1LpiMkN2b88/21CQ4CqwERVDTGGFdpenJSJfcptB0qxSAJF/uZRSbThg
	1hVjDRkclSvXWwAlAeCfUXdwb4EdVKAROOGn9Rx3D0N6yQQulliLASt3J1wrATZHOB+ePrvYPtA/d
	et9CbpG8N8ESmqGin7og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTxw-00000000Dj3-1V2e;
	Mon, 27 Apr 2026 21:58:08 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTxi-00000000DKC-08Mr;
	Mon, 27 Apr 2026 21:57:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777327071;
	bh=L8fHGnYJyQWq1k1jHm8DfO8Gn8xMdJZNXES7wUUBo9c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Ggm058k0+YbgMqt05i7tTW6pf9RqHbyXgydQijp8VJES5aK77XPSjSp8n3kvNBXBu
	 ybZaEsDWpYpcmmT0S0ZoF8LQUxgDjPQBcbRF2sobpdybIiIE95AFusregoagXVzFMd
	 hdsKanc1SMBYANsyAymDv5DYG6+/SXU8jv6HRzR72faobSg8KFf5Q0h1pL4cUjNhv4
	 i1nX74FGneWfPx+koeVN7igKgM9IBVg+a72u8rzQChW5/bJ1F9xSrX2RggYK1gXxQb
	 clUnpmpMTS//Ox6/abwtN9cR4hLfVHw9qS9/ZTnYIfBK/gqnAFqwZASInrWndT+axD
	 phl00X6KJ0CoA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id ACE4717E1562;
	Mon, 27 Apr 2026 23:57:51 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 28 Apr 2026 00:57:29 +0300
Subject: [PATCH v2 11/13] arm64: dts: rockchip: Add missing pinctrl-names
 to rk3576 boards
MIME-Version: 1.0
Message-Id: <20260428-dts-rk-frl-enable-gpios-v2-11-924df9db884a@collabora.com>
References: <20260428-dts-rk-frl-enable-gpios-v2-0-924df9db884a@collabora.com>
In-Reply-To: <20260428-dts-rk-frl-enable-gpios-v2-0-924df9db884a@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_145754_248097_7CEBF2D8 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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

Several rk3576 board DTS files override pinctrl-0 for uart0 without
re-specifying pinctrl-names.  While the property is inherited from the
base rk3576.dtsi, add it explicitly to the board-level overrides for
consistency with other nodes.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts            | 1 +
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts           | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
index a9e3beb3ee5e..05fb4a7f9a16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
@@ -815,6 +815,7 @@ &u2phy1_otg {
 
 &uart0 {
 	pinctrl-0 = <&uart0m0_xfer>;
+	pinctrl-names = "default";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
index c3e8966c09c4..4ac4465e39a5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
@@ -975,6 +975,7 @@ &u2phy1_otg {
 
 &uart0 {
 	pinctrl-0 = <&uart0m0_xfer>;
+	pinctrl-names = "default";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
index 54de3a50571f..8411c16fa471 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts
@@ -776,6 +776,7 @@ wd_en: wd-en {
 
 &uart0 {
 	pinctrl-0 = <&uart0m0_xfer>;
+	pinctrl-names = "default";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index cc054c837317..272af1012ab0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -833,6 +833,7 @@ &u2phy1_otg {
 
 &uart0 {
 	pinctrl-0 = <&uart0m0_xfer>;
+	pinctrl-names = "default";
 	status = "okay";
 };
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

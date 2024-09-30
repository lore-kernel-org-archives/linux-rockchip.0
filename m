Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B6BBCEB2C9
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TAzKwVl8pf/iYmNUWMXp6a5pI5AKWqwBSzcmZeQ92no=; b=xkJEzv1DUBRYvG
	Ytinw9YSP+Ou8SN8W9b7xG44of0ajseHD5lCH3vIKl1x+aA9kLDXHOCiBo8a68vnSsJQ1Ed6gWsmk
	i0zIuADdEdGOCc2/rV+WxGzLlbCDxn8q6Bj1TWQESw2ryF8Yak4HxO9tp0e7Wvbz9izi45wyfRKsA
	+jyYTaX9Qx8hJGdmIutQNUpQi4nzuv1KH+vW8TtsrfIAkJkv1o4RaCLEEUhZMyThoW04SmLMCx25m
	HM0HqVaTzAPnXJe2AEyjmzs5LDnofbAj2a61iLaeqzwbAS0Cr5qjQz2WjAv+PJqya5ikgk04ah80k
	vzZNa5dpiFg2PlClTUcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svO4B-00000000vFz-0pzj;
	Mon, 30 Sep 2024 21:36:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNvR-00000000tFp-347Y
	for linux-rockchip@bombadil.infradead.org;
	Mon, 30 Sep 2024 21:27:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=YcVU41MkfCiFkC8OXqdSLtIENqHdArH6fh34c9x0FiI=; b=Yy/XkKqRkMsOEDi6lgpSLT0nAl
	5MaoBG/m5EVVLJvoEb/Wqeh/Mlb1ARgdtRwxdLC9He0EYKXXFGV62ntDlFiy2S2KTq0czPe4nI1cX
	huJ+UbL5jCziklReGctsnGluovSQ44OWbwDDmhtkI/Sh3BeJGbd2j6I/aP2zoG59QHdX4IFVOrGx6
	fnWWO9M0+8Jt4bN42E9xoAo9oYtlQBqqdLYzlDgo2E27dI3K5OkUG4JPadPrP2dn/879SQeYnjTVI
	zLtnXl/jdXfTh22HrtYIwt16ysba19Cq8Ft0/nEGrjwKJWF88XRJtYCPTmJbyM1Lre/kv4IpSIA4u
	Ikvj+yuQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNvL-00000000fqN-2xk0
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Sep 2024 21:27:24 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 48ULQoxq010527;
	Tue, 1 Oct 2024 06:26:50 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, jonas@kwiboo.se,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2] arm64: dts: rockchip: change pinctrl for pcie2x1l2 for Radxa ROCK 5A
Date: Mon, 30 Sep 2024 21:26:46 +0000
Message-ID: <20240930212646.1102-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_222720_900674_FEF4FA76 
X-CRM114-Status: UNSURE (   6.99  )
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

for pcie2x1l2, only pcie20x1_2_perstn_m0 is required, and its function
needs to be GPIO to avoid freeze at "pci enum" without PCIe device on
u-boot.

change pinctrl definitions for pcie2x1l2. no functional change is
intended on Linux kernel.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changed in v2:
- reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 294b99dd50da..841ac9a30628 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -310,7 +310,7 @@ rgmii_phy1: ethernet-phy@1 {
 };
 
 &pcie2x1l2 {
-	pinctrl-0 = <&pcie20x1m0_pins>;
+	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
 	pinctrl-names = "default";
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_wf>;
@@ -325,6 +325,10 @@ io_led: io-led {
 	};
 
 	pcie {
+		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		pow_en: pow-en {
 			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

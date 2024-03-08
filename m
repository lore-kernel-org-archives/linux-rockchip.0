Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9FDAC54E4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 15:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Il6+Nq+pkCHyk/wYd0mi361jGwZvqGdqsW6AdefX8/c=; b=1dJwHWejtyjchE
	7TDk4RYG3U2RZPMQ9orrsf1LzL2JuG+27fEja7piX6OuQdeajb8em4o9x+nL41vA2sn8SiKzea4we
	85+IXy/FzxY9KII/44xWzv+JG2QKGc6NCCL+Z+NNFcnJkv40h35aVywGwpufXsc3AKq2qTGTrQ0nd
	h8+iieKzJrsPsOjURyqM117rYH6FpaclWcBNLxapQGx5UR8Tp74ET6QvtTP4EzJvAVFIKl/fKPHIn
	Ik25ob9MLSyllCd+XJa38ApufAUyClE+NOlM0/bc3dVcd0iu/BuVKaXY6Rh44HfAfi86oYXgoHd3Z
	eOTYcUZ6UFqhuX96DHgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ricQk-00000009xv5-4BPX;
	Fri, 08 Mar 2024 15:46:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ricQh-00000009xrF-2SoS
	for linux-rockchip@bombadil.infradead.org;
	Fri, 08 Mar 2024 15:46:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=0bE3n1slM4C82EoALcJZuc/laC4BI4jcTP5dPsRCiR8=; b=M6CxWs1pHt8CVtYaVVIIAVP/KH
	XrZy9zmRJzCc3zcEHXaI8aAUiLDeUESgQbNZzgBsJzPcMly2rWDCkx38GSNpCQDADG+PyJU/Zvede
	AxMlvvaW0qQwe6jPCFPO0ZqHGbDs2bVz+3cLP8pTFqECH3Sv6PYX2YSHuRpURUUhwXCXqqs0dcN2o
	5Ru+vH6ad+6LCJITQNtFGr8Zo4d2xi3QERc/BsuyfNTJh3fEjGfO+Rn2fsLyqmhl/LGuzKHS9hm1i
	AORH6RrgFn5u/bn82i5Dw6YB3cdNfmxtf3HPj742r+NmeSt0HxSQcBE6XOy5+hXcaBhLtYmiHlyk/
	4+ODT5QA==;
Received: from smtp-8fab.mail.infomaniak.ch ([83.166.143.171])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ricQd-00000007KWg-3tWI
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Mar 2024 15:46:38 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TrrB94fWyz179d;
	Fri,  8 Mar 2024 16:46:25 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4TrrB90Knxzr1;
	Fri,  8 Mar 2024 16:46:25 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 08 Mar 2024 16:46:08 +0100
Subject: [PATCH v2 2/3] arm64: dts: rockchip: enable internal pull-up on
 PCIE_WAKE# for RK3399 Puma
MIME-Version: 1.0
Message-Id: <20240308-puma-diode-pu-v2-2-309f83da110a@theobroma-systems.com>
References: <20240308-puma-diode-pu-v2-0-309f83da110a@theobroma-systems.com>
In-Reply-To: <20240308-puma-diode-pu-v2-0-309f83da110a@theobroma-systems.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Klaus Goger <klaus.goger@theobroma-systems.com>, 
 Quentin Schulz <foss+kernel@0leil.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
X-Mailer: b4 0.13.0
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_154636_138976_913E136C 
X-CRM114-Status: UNSURE (   8.96  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The PCIE_WAKE# has a diode used as a level-shifter, and is used as an
input pin. While the SoC default is to enable the pull-up, the core
rk3399 pinconf for this pin opted for pull-none. So as to not disturb
the behaviour of other boards which may rely on pull-none instead of
pull-up, set the needed pull-up only for RK3399 Puma.

Fixes: 60fd9f72ce8a ("arm64: dts: rockchip: add Haikou baseboard with RK3399-Q7 SoM")
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index a51ebb8f8b80f..2484ad2bd86fc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -416,6 +416,11 @@ &io_domains {
 	gpio1830-supply = <&vcc_1v8>;
 };
 
+&pcie_clkreqn_cpm {
+	rockchip,pins =
+		<2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_up>;
+};
+
 &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&q7_thermal_pin>;

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

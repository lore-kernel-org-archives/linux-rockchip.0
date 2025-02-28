Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4808FC282D1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 16:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xQdTJQsELqcR6N1FO/bY5ktXOZbURADf1r1xBemhfUg=; b=vooedCzARmbMVo
	n5ox2jIlKSwyBmwmmXu7nAb5+cHlkKLHbJaGnW/knxOSLB52NAull3DVh0wR2flLs9dXvFv/EJLsO
	795yCqhJB0aTIFl2MAgvj7m1XzO0CVSqxS1sh2TbZ2FdI6YvQT+s+Ll0ddoO72xEbVqddSCTAMUXX
	ela3jtj+rPhVsCf7MPjuEExvMxFjHQhFA2ls68wvuYxfoa8Q2WfOQ1DcpMJ6RAVpAgunHwcv24lQn
	kHySd9AvQi+xOMG1naakQ+BxXgsHxKLNLn9HJJvIgACUSIe5h27Z3xWKU7nFFB4sbYsDN8AzcpGBI
	zkLvLDAF9StKOHtDTDcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to3Ni-0000000BiUx-32UQ;
	Fri, 28 Feb 2025 16:38:34 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to3Hk-0000000BgIa-0lJq;
	Fri, 28 Feb 2025 16:32:25 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 31D0A259C1;
	Fri, 28 Feb 2025 17:32:21 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mxMkCbQGKZyu; Fri, 28 Feb 2025 17:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1740760332; bh=/WgDmotLNZWIT1LRFDaE6/uBsWpuLYmYcKgtd73b4uI=;
	h=From:To:Cc:Subject:Date;
	b=IBm7uNclD2xtpKvBdOplyoTU9RL0cMbmVskEFxJGSOCFtvK6otlZgJuZUwVpEoaAp
	 j7izJ3JIbkYIn2eUtLkDQMvNvh7mWN0MjaWUuCELvebtuAy+ovKfXNhe+Ej1bpU24H
	 XATQPTSAGUDl5XiPhE/gbOyw83f7hbaEaM9Oq6IMz8nDZWLHBoJhRscuk8YqQ1TYUs
	 1b+VRPLy8dmjUfBbM5XJnUCo7z6wg2MDm+lmj6Gm/Zqw2vE7qj1E/V0AqoZ7IY0wdO
	 +AByPb2FXABEpPAdXfSwAFLSbt3jJl0vhKa/qdstvCQmCX/UN1ijVNKU7AO1PSyVcE
	 St1cZuVAqhu3g==
From: Yao Zi <ziyao@disroot.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Wenhao Cui <lasstp5011@gmail.com>,
	Yuteng Zhong <zonyitoo@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH] arm64: dts: rockchip: Remove undocumented sdmmc property from lubancat-1
Date: Fri, 28 Feb 2025 16:31:18 +0000
Message-ID: <20250228163117.47318-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_083224_637509_6BA5611C 
X-CRM114-Status: GOOD (  10.04  )
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

Property "supports-cd" isn't documented anywhere and is unnecessary for
mainline driver to function. It seems a property used by downstream
kernel was brought into mainline.

This should be reported by dtbs_check, but mmc-controller-common.yaml
defaults additionalProperties to true thus allows it. Remove the
property to clean the devicetree up and avoid possible confusion.

Fixes: 8d94da58de53 ("arm64: dts: rockchip: Add EmbedFire LubanCat 1")
Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
index 61dd71c259aa..ddf84c2a19cf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
@@ -512,7 +512,6 @@ &sdhci {
 
 &sdmmc0 {
 	max-frequency = <150000000>;
-	supports-sd;
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

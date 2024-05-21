Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F615C25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skwDp9QhHML/53cKeMJA4ntxdH0JDPvWg+y0AwoZkKY=; b=xLemnfa2OEjUj1
	q1Xmqc1zEKkH7X63vkTSHs0+taZHdnoyPCLXj8n2qt8+KspSZmzGTUJ2L2Mp2WZlXu3GFMQ1r1QPG
	rZlcUfvEzhl1msU1qGWRsXHsyKxMwfxiplG54h3rzVMHR1dYzqYteIa6CQj5f47a/B9mHh0Pyv9nX
	So1VWCNucfaBuFQSz6k4IFmhVOchdL7Hdh046xsZMFr15f/N6BmLX8KWqxow+YKZozaM7turtdDON
	kUm5/a2e44nLX7sQU6ecu0g2ohHFRHkfY7Vy0cwhGbuxtNZ6D2ax5v2n/wnfryQKb1g5n9Tkz5UCF
	DzyvruVrP7gIjDUrwWHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wmf-000000017ON-2UqG;
	Tue, 21 May 2024 21:12:33 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wm0-000000016v7-3GSG
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:12:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325887; bh=fq2OvK7SXWF/bksH5MfdcoQtqn5vKwKJIs3XwiGaAgk=;
 b=w/yo98BVP39OzhJIKLpQuI7F2gUaq7aIAdr8jQ85Ol0dqo6xHKrk0BG1Lc/KLYsZ/xVnx9+7C
 xJxo08dvhTzxiJY1mHejzwt3FjTv5EFPTyBOqs2lBe2nfInONizylk4QSojGo6At+stDaDYKrzR
 0hN3/7KsKXDtjS9je3+kAVlg7pczSNKebn1+W6tuW3UVcT1stuElJjS4n2LRKSDUZa/RubLKXHc
 MDRQaDRwDyeR9iOrU1k6bO81WHeAZhauu/ZH57M0qZM+f2uPCw51X66xdtgdcpznKtd31ALd1nk
 6PtgzeFD3p8ChKB6GqIvk5A72AF25MiRddtvMZX958Gw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 11/13] arm64: dts: rockchip: Add RK3308 IO voltage domains
Date: Tue, 21 May 2024 21:10:14 +0000
Message-ID: <20240521211029.1236094-12-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 664d0df98b6b0c828344af66
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_141153_828557_D9685A95 
X-CRM114-Status: UNSURE (   8.47  )
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

Add a disabled RK3308 IO voltage domains node to SoC DT.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 6531ede13af9..31c25de2d689 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -173,6 +173,11 @@ grf: grf@ff000000 {
 		compatible = "rockchip,rk3308-grf", "syscon", "simple-mfd";
 		reg = <0x0 0xff000000 0x0 0x08000>;
 
+		io_domains: io-domains {
+			compatible = "rockchip,rk3308-io-voltage-domain";
+			status = "disabled";
+		};
+
 		reboot-mode {
 			compatible = "syscon-reboot-mode";
 			offset = <0x500>;
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

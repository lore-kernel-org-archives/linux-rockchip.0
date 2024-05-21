Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FBAAC25B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12lA1L57VQQXTSyahLB7qI26wSYSVlEJEfDPl+1SArI=; b=zhbMOw0OV+dOiT
	rGealSJ8suUD/K4In/LLKU9EutaTuSWuYLPzz1EyTLSY1kQLX0Qp45H0/+62JuYfITAK2/qjlcI7O
	RRQQacyQ7s5IHRs2sQUzeXfXYWgBrKh8MV/6D3jyt1ds7rl+2/XdB/jn8orG9vkGyaTJFh23jlQqZ
	CGp2dihGkZIijmQbJotj5I55AwfL9/QI5WJbpY7veVHF1t5n9JRWQ9b5zC1+0mnlpSGD8w7RpYIHT
	LURpncGEEbmQ5EeaQBv9P4RbtPOwg1aNq3yY+SQQLYTkfhKqp+7p8w7p7zclbEdgLq9pGnpJQYzfj
	84dMtjgQ5kmml2u7LZ3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WmD-0000000178a-3ag3;
	Tue, 21 May 2024 21:12:05 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wll-000000016l4-3jaw
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:11:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325876; bh=K5yAjzEaLtFOa4kSsCuv53z0xE/nN5Eju4FGamxvgXQ=;
 b=rNL+pzDmC8uQ6XOIaFwDkSd/t0qyPl4sfX5cGEQ+fTvQdfaEXpxqOaytKGoouQDEUUoP/YY9d
 PkfVLAbKvaTRSQZobSd27BRlP7Fq/pybnTEl70pw4x0nUavL67KeHXoRk5RZU4qp8SL/XoE6pvF
 oRZiTaYhNBiwLrcPM/0fsQO9AX3iO6FUY6JyDKeFGiR5xisWpRHCtdqIYmLT1Z+vuBByT+7QKtM
 4GapiCfXprcNLM4ozimh6AQUlM9+y5FAY2uqNXsp1F7fPWite/9jgIC+lcP68FVOOSsCcDsaSxp
 4vlR4/2azrcgfP+RGJtrBIlIlg0kJItJMVa6+7ZiV0Fg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 09/13] dt-bindings: power: rockchip: Document RK3308 IO voltage domains
Date: Tue, 21 May 2024 21:10:12 +0000
Message-ID: <20240521211029.1236094-10-jonas@kwiboo.se>
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
X-ForwardEmail-ID: 664d0df08b6b0c828344af3d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_141138_695830_861EE28F 
X-CRM114-Status: UNSURE (   6.82  )
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

Document dt-bindings for RK3308 IO voltage domains.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../bindings/power/rockchip-io-domain.yaml    | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
index d71fc72d4464..c434277218ea 100644
--- a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
@@ -50,6 +50,7 @@ properties:
       - rockchip,rk3188-io-voltage-domain
       - rockchip,rk3228-io-voltage-domain
       - rockchip,rk3288-io-voltage-domain
+      - rockchip,rk3308-io-voltage-domain
       - rockchip,rk3328-io-voltage-domain
       - rockchip,rk3368-io-voltage-domain
       - rockchip,rk3368-pmu-io-voltage-domain
@@ -71,6 +72,7 @@ allOf:
   - $ref: "#/$defs/rk3188"
   - $ref: "#/$defs/rk3228"
   - $ref: "#/$defs/rk3288"
+  - $ref: "#/$defs/rk3308"
   - $ref: "#/$defs/rk3328"
   - $ref: "#/$defs/rk3368"
   - $ref: "#/$defs/rk3368-pmu"
@@ -194,6 +196,28 @@ $defs:
         wifi-supply:
           description: The supply connected to APIO3_VDD. Also known as SDIO0.
 
+  rk3308:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3308-io-voltage-domain
+
+    then:
+      properties:
+        vccio0-supply:
+          description: The supply connected to VCCIO0.
+        vccio1-supply:
+          description: The supply connected to VCCIO1.
+        vccio2-supply:
+          description: The supply connected to VCCIO2.
+        vccio3-supply:
+          description: The supply connected to VCCIO3.
+        vccio4-supply:
+          description: The supply connected to VCCIO4.
+        vccio5-supply:
+          description: The supply connected to VCCIO5.
+
   rk3328:
     if:
       properties:
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 273CFC4345F
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 May 2024 13:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJFwuvwQ0Xq/prBST2ARC5kAU46TLHW03RGstkaDToc=; b=UF7jxtRY8C692U
	bxX3zM6Sd332gNuMo3xc6j/RV4jVLoAEXEDaMlFW3MIFouedPf48QftMWIEtqcb+XBWpa2xMnGUs2
	DA8Sc2PHNI2MvljfsAS3/nNxbXE77VwcOLX23ae7xUC0lsPU1SAKDXOT3OEikFWwkQ0Fi2H99uQHR
	SyMitD0hVCB0V8hQa0dJx6rJZ+ESJo8N787eCFxWH2wRJd05try8paJKTtUBPRN5fBLwjAQt1+kpm
	HVrI5omKouYQzj+J+yAKFOjyCfr9ntwbNXES7clY7DxO/YdROesUmeeAlDkfDNjqgNUTVG/BVZc7a
	oor6h2ZQam2d5bB9i3yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3c88-00000004MbB-3T5K;
	Sun, 05 May 2024 13:42:16 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3c84-00000004MVm-3cJL
	for linux-rockchip@lists.infradead.org;
	Sun, 05 May 2024 13:42:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1714916498; bh=sC2DBW9DsyOtnzVcYUm2OYE0IAAS+d9fnPjSwTyoSR0=;
 b=Prx7wyujFeTDDNaTbGAU0EwTMH5SWR8fd8YYpjL5Ojfj/1WTjF1KKrsZTUyHxb/PphINHwTzJ
 6EhM1zBBl9WoXFJfl3h0cUxaagGYvfSduB4w7iWjkpfGRpyMnhF0LFzhbymGLSSYzHT9H5ve+iP
 GFLSQF/j6QUw60vjTm/3mVn3sUYX+WSnD2kJSCwKtzNZmsuLAGJjCiT3EG5x4DusDH8VlzBZ+Nv
 7CwTbpEGXdE1ttQ2+RcfEYVcI6W3EUbSAbjg1uTrMrAzQxISJXwFPm8uDFhmQw/F1c0jlNgOlpU
 x5mREPcgQh/KKvEpMkz4VHrrs82Oz3tEr3E3SSy2QyOg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 3/4] dt-bindings: arm: rockchip: Add Radxa ROCK 3B
Date: Sun,  5 May 2024 13:41:13 +0000
Message-ID: <20240505134120.2828885-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240505134120.2828885-1-jonas@kwiboo.se>
References: <20240505134120.2828885-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 66378c9157f92010457d68b3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_064213_417898_7462D81C 
X-CRM114-Status: UNSURE (   7.96  )
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

Add devicetree binding documentation for the Radxa ROCK 3B board.

The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
version based on the RK3568 SoC and an industrial version based on the
RK3568J SoC.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 51cdaabaf0d9..41f2ab79e612 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -799,6 +799,11 @@ properties:
           - const: radxa,rock3a
           - const: rockchip,rk3568
 
+      - description: Radxa ROCK 3B
+        items:
+          - const: radxa,rock-3b
+          - const: rockchip,rk3568
+
       - description: Radxa ROCK 3C
         items:
           - const: radxa,rock-3c
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

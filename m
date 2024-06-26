Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 208D7C27C4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 20:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ogpClNo5gYmjV03gwIpuXfrDqLAFJMVz8RxiG2edGg=; b=x9wHM7zUSiwCPh
	cLJmzEyConVHzAtavcAZV9BOUgupIyajWtkjZzetvZ7s63xON/4hsqQTuaA1Qh8Q+cFxkW+An9amG
	ILEtRyBH5l6S7cJPYakXUBf1ZivQwCLJF4zK9pae+uMPOzwHtWdkJI7HFELJvfr+tPkvCIopSSlvf
	M57CTDAnlcNX8A+wd5H/hpDc5Dvm7xXwvF5SHTNnHcuPhHsAsrPiOmYEwcrSByUpW9FAAqTQ2AYcO
	tQ76bw7/YrmS9xvmNLCWTU2wrtfj6qAp9lbPMaXVh8eqkQ/pyhOa6YMjBCJ+Y8ag9HlkEMUOO2Ni1
	w3wdSu3wLsuGAHyZYCnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMZ4q-00000008B9K-1xFh;
	Wed, 26 Jun 2024 20:17:12 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMZ4j-00000008B47-3gSf
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Jun 2024 20:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1719432988; bh=Y/SoR3uNRek5u3223LJsEVFtFNsd61NpDGA8BT3LgR4=;
 b=nFGMMldP4dIJ00Z5a00cREs3NVAsqHQp7Rk+9MrcwHFuQOqWeT5Fb1+vPt0UbXu8YGS/ImlsG
 2jiH6cx6/YQP5ZIP62T1lItGSewOPbYL5O0YJoD9Ky5RU11004b8/z6RjFVeqC4HegBy6lq1boR
 p3yAL+47GVlws834KTSHCz43Wfaduc0u0as2TQTayc3hIO5fh/mmLdZtlY6uFcIw57GhdxK6zZ+
 iwgXK6Eoe/IH4U179UePJuYDB9cqlNnWr4Jb56Lwf2tRZygvUw1qD8MxHT4rTNNBVxcD18fiJEc
 GlJaeayHE9Cgbxp09L3twc65a3r502z7hce2WalJ6sxQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Radxa ROCK 3B
Date: Wed, 26 Jun 2024 20:14:54 +0000
Message-ID: <20240626201502.1384123-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240626201502.1384123-1-jonas@kwiboo.se>
References: <20240626201502.1384123-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 667c771ac7901497dbde75d4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_131706_194654_7E5F16C0 
X-CRM114-Status: UNSURE (   7.43  )
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v2: Collect a-b tag
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d2e887415d5d..bbb2d7c217fc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -811,6 +811,11 @@ properties:
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
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

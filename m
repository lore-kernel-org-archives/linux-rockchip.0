Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90433C25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9Qy7LR6HUhIzKqrCMkbfKz1BFoG/p1LSR/klns0GH0=; b=GgKhwwer/R54Ex
	kZ08MSfxskxVx4yhli2kamyu7InR6TlPX51OBX43hvVNZPNFIvZ8usUlvgj/L89tItGNMTejgyAD6
	AMSCaEB3LhfELLxle/SmZcLkB93Il+61Va9HB/VgNSsHcvmplwMGQU/KvhQTsXYuwuxBJD6LFU5jk
	Oe+qNQy3LMCzVn42I4BHtsQ0iR924OYyCjQDjLEoB5MHty/LPYy3jogxCJktHFVrY6M285MB0tk7b
	mIoqeIFh8TEqzGLstmGah0KjiQSil2swKDuwIv5OBJthDJfZVNWWXj+ral+6H7IzaAh1ib7xZZbCq
	QGUwIhhTHwEitkn/tEgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wwy-000000019MD-14lE;
	Tue, 21 May 2024 21:23:12 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wwv-000000019Kj-2Kfo
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:23:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716326581; bh=OoiAXuzNmsgIuRUNSx8gF6sy2Z92yBxfUE4RrLaG18M=;
 b=QrKLhziuMDQ4WXW2rxPIAUkfZjoo6FbCUKzPMLgkawh7j+t8r/XGQIPpXFlCywRGyRd8CbR76
 SAy/9dqUTyC7kK9xSOS0VvKYQlVSP4jItWsbpbhcL0Wu91B3JOYqhKfxNprUHiEkiOLzXGdm475
 O8G90AMArSOiWio9nghee/eDWJ80zcgAtFI/qYlhkADunJA6K/gt3JUbcUYL1nJgdma3dIRieC3
 xqDVGOxsLfFioMZIwMd+dNUxq+498uUR3zep5bp0fzljZb+y/eNtfyblT0J6Y6h5RnmZvEp6jFU
 QKNgZdxOdc2m1qYhV1+0DWRoB8oX9qXuf6qVYZB1sAlg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Radxa ROCK S0
Date: Tue, 21 May 2024 21:22:42 +0000
Message-ID: <20240521212247.1240226-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521212247.1240226-1-jonas@kwiboo.se>
References: <20240521212247.1240226-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 664d10b18b6b0c828344b0fe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_142309_832442_F070DD1A 
X-CRM114-Status: UNSURE (   7.77  )
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

Add devicetree binding for the Radxa ROCK S0 board.

Radxa ROCK S0 is a single-board computer based on the Rockchip RK3308B
SoC in an ultra-compact form factor.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 51cdaabaf0d9..77469270b271 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -814,6 +814,11 @@ properties:
           - const: radxa,rock-5b
           - const: rockchip,rk3588
 
+      - description: Radxa ROCK S0
+        items:
+          - const: radxa,rock-s0
+          - const: rockchip,rk3308
+
       - description: Radxa ZERO 3W/3E
         items:
           - enum:
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

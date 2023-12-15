Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48D2CC46CA2
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 13:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUnigXhH0Lj/6gVAlqGcjNfdwSUNMtEWSCIbrY+0B1A=; b=Gzrgnrcgy8g0RR
	8B9iASC7CF36dvYnxck01/JYSLXOanThVzwrvgQZJ8njpCualL8nzpo8GZuWy69cngDbeSJlSOX2g
	YPRIHQPwuTz7V73SrmtUur2TdkZQkXBsgeMMUoWQfcBEy4UorBDQkcxDlfX0S+8kg4Z6EMuZkAYs2
	m9FI9U4x14owBu0Qc29xKZ4S4UpGqk3iBZ3m+8VIGKHnTcl4aE3eogQUBQnkUsdVs+ohNFK2xLEtZ
	SAqL6e9zPd3ZG1s92SN96VplGl4gwxOFiSUiZA6Vl9KOE9kx7MFcaJ7ts86IAmUrHJdXPS53hyJN+
	8Qw4OfhkUFP9WNSEBtaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8fn-003RuT-0D;
	Fri, 15 Dec 2023 13:56:15 +0000
Received: from forward502b.mail.yandex.net ([2a02:6b8:c02:900:1:45:d181:d502])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8fd-003Rov-18;
	Fri, 15 Dec 2023 13:56:06 +0000
Received: from mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:96a1:0:640:9109:0])
	by forward502b.mail.yandex.net (Yandex) with ESMTP id 491F55EAF4;
	Fri, 15 Dec 2023 16:55:59 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id VtlX2gDOoGk0-mNhFxpE2;
	Fri, 15 Dec 2023 16:55:58 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1702648558; bh=tCST9mJ/gflIVf+DhlVo0Uo/peyZKqwGk/Zu1s1LBcs=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=hi9nMHU8ztTIEhTHwvKPw/q4RsMrH8boma7k2OXDJb6887JZIe+SWXWs6qnBWhmCB
	 e/irka2kmzEFaizmu8iSpVhb3mK7hM+SDlaeGWYpmClEhLBJBR8vPm5umAIeK/d0Tk
	 Oq/3weDvKaDoltBQPHqHad0beOYxc/VvA6uZ0Jyc=
Authentication-Results: mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: efectn@6tel.net
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add NanoPi R6 series boards
Date: Fri, 15 Dec 2023 16:55:21 +0300
Message-ID: <b74f5b91693d9b1ec525fb22e06c0a8311c7cf05.1702647349.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1702647349.git.efectn@protonmail.com>
References: <cover.1702647349.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_055605_585137_F8E5F18B 
X-CRM114-Status: UNSURE (   7.33  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ee92f0535..07c4eb828 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -225,6 +225,13 @@ properties:
               - friendlyarm,nanopi-r5s
           - const: rockchip,rk3568
 
+      - description: FriendlyElec NanoPi R6 series boards
+        items:
+          - enum:
+              - friendlyarm,nanopi-r6c
+              - friendlyarm,nanopi-r6s
+          - const: rockchip,rk3588s
+
       - description: FriendlyElec NanoPC T6
         items:
           - const: friendlyarm,nanopc-t6
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

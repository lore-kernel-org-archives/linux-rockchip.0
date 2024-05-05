Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD5D9C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 May 2024 20:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oy93cuK/ehbtYtnKSCH/enFasE7FJEvzwnfkrULyUg4=; b=RUUkyLX1WfiAv7
	t0Lj07zWR/o4krOqomQPbo3+M6pm0G3lIwbvjZcG3wsIcYLJapj/McDCQMs59wcQgAJwuScIh2yrB
	obI+BPg/SqtRkfmJGDKV8/ik8JOHvHN4gapS9THJX49d+p/ruHfQCmbXZ1wX9GvQoXv1edIBJCw/I
	OsARH4fStcRynZk+ORBHzK0zJRlZK8NE7PqF5EnfpIFAL0SvkBpmYrpY6TLxt5Yo2+wtd2cA9fIgP
	Ozmpreq+8JHAgIPQUa+wDAw/J9UCrd1cYHjY4aa4bgf3llSf/vI3i5liTzubzVbUeZXuN2l8l0FYa
	oLL2vOFUeYoF+GENAAsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3iQx-00000005Ejb-3gz9;
	Sun, 05 May 2024 20:26:07 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3iQu-00000005Egi-09xz
	for linux-rockchip@lists.infradead.org;
	Sun, 05 May 2024 20:26:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1714940738; bh=i4SmJhSn7nIqLNI2tUNIKILhDLfr3uj8IjRBMWg6jgs=;
 b=qO5GKi2p1mBrWQkQz0/Dh6Gjygw3N+Esh4sWWaea83kDvXwq1qYPLdfS7gDxfBTL6uqbAZpw6
 zKaMr5BCyxRyaO5SnZWjFpGu6chs2Dk/35fZerXPEb3wGlldqvkmwiPpg5A7o4jaNSdJ3UnW/GQ
 lJ6of1Om5XhU/1uI3+AVrZmbOBingDnzruWukRioCDqYxqrsXTp6neEi0tT8GRF/24JdaDBsoKe
 oL+y8USw3upJFuDvXxQCHOtC4fdOMF6acVIawSuuOIZ3J7SXQ94i3uFjgX3AYf5QQRFFONvhB3L
 rYOVOcFoDjFeoy7DbVleDOOc8a7FWlTGH7fp6TCLWlmg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 3B
Date: Sun,  5 May 2024 20:25:16 +0000
Message-ID: <20240505202522.2999503-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240505202522.2999503-1-jonas@kwiboo.se>
References: <20240505202522.2999503-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 6637eb3f50d779b5c30d1136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_132604_792923_B053B056 
X-CRM114-Status: UNSURE (   7.19  )
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

Add devicetree binding for the Xunlong Orange Pi 3B board.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 41f2ab79e612..acc0534ea0ae 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -971,6 +971,11 @@ properties:
           - const: wolfvision,rk3568-pf5
           - const: rockchip,rk3568
 
+      - description: Xunlong Orange Pi 3B
+        items:
+          - const: xunlong,orangepi-3b
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi 5 Plus
         items:
           - const: xunlong,orangepi-5-plus
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

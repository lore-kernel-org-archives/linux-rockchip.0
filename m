Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41ABBCCF9EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 12:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7z8LU0/G0v5BZqXxUVVPdNmeUZ/hh+3C6gjyBKYVqh0=; b=O9PmyM+6cTRU9U
	zInHeNlcPNis7Q7VTSHXXv31m4Z2g0thGzTqNS9PgTePO8uZfwGrs1lwgCboC1xWmehFi2A6Vp1aE
	Q+KtE3VA781BE+aTdfxe4//XJ4TzVBHqgQt48/9s5Q3OCbPtyUAHYFjW71fl9iz2zswpkPaawPUF0
	UgkHo9Xaz9VP7npHCFd/9z1NCqpJKCpBwAuWczY0XEKtwycJmbO2A8ewB64UmBxcjBer0BVjG4fxe
	GBkbeT1qPL2ij831trzCpBVLqcT+bmR7ptMQqhXUiPUnD0mtK1+2fVMvQrAewyMc1d5p7sb5+GmkF
	3kp/KJaJPk+tNbk3WcpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJk-0000000DtOH-3pYo;
	Mon, 27 Oct 2025 12:27:20 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJh-0000000DtLI-290D
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 12:27:18 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqc031809;
	Mon, 27 Oct 2025 21:27:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 5/5] dt-bindings: arm: rockchip: Add Radxa ROCK 5 ITX+
Date: Mon, 27 Oct 2025 12:26:41 +0000
Message-ID: <20251027122641.39396-6-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027122641.39396-1-naoki@radxa.com>
References: <20251027122641.39396-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_052717_765249_9E4A5EA2 
X-CRM114-Status: UNSURE (   8.17  )
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

The Radxa ROCK 5 ITX+ is equivalent to the Radxa ROCK 5 ITX at the DTS
level. Therefore, we'll simply append the "ITX+" to the existing entry
for the Radxa ROCK 5 ITX.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eef2b8061101b..c51399470abea 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -960,7 +960,7 @@ properties:
           - const: radxa,rock-4se
           - const: rockchip,rk3399
 
-      - description: Radxa ROCK 5 ITX
+      - description: Radxa ROCK 5 ITX/ITX+
         items:
           - const: radxa,rock-5-itx
           - const: rockchip,rk3588
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

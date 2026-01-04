Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF08EC2A069
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jan 2026 19:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+sx78akEEZT8KDwSV96U8jVMjYq7z4Yp1MmIUO0CPis=; b=w5X/Ae5a76Ewbq
	Mwbm2uMgRZnIE0xxhbgUqxUfYZSCVKry8hcxnVO/glWzcztXap7RG22jL4Zvwdm0tgr1XBHWuUA8+
	PSEGy806xhEtSnyu+CeZ0y7K3zbG35+wZ7TTwNTSi3OmxkVCX4O+6lbGHqKyj+93oeWWfJqdGlbZ/
	IluneneWZE6JImunMTuBvB2ius0I8TO0x1rwm1uXVoo6MOX09m4bIkX0cDZhbDmLStZYnFA/ZSDyu
	EzaMQvamNWfqNVlD6d/tiLjg8we4l0aayfl4Kjt+dwK1WfhQYdQfnICRPYh/kBrYwO7aRD6u0849h
	4dXZ1zsit6U69Ypvy49g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcTZL-0000000AOlw-2sRn;
	Sun, 04 Jan 2026 19:15:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcTZJ-0000000AOkH-0fME;
	Sun, 04 Jan 2026 19:15:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=krUEwvQtFBfxhDWJO7NHKWidgy0n/k7HYBmF9kBHcZE=; b=AWUKqaRfrM3RISkMVZSYaY9A3x
	XI7aSWnAnbPEIj6zQDEwGRwHFWR6lGtDZRIkkKnvGBm5Xf4DYvohsQ9cU+Oml50Avbirc0IENKy8+
	ryQ9MHuzLxpY417KcdMEDH1fXxTVwinLhJsNZJGMgzsnDXp1hWeR+j0zppRfcf7vYbZcLOxD6RpoF
	ZVrhXnEnQxLuUu1/jwlZ2a9GGzb/yISVseMw/EWXnz+l9pjwPEYgvQtLOKGa4wy8juZ64axr2+AM4
	0LFoHgNuf//upg/IV6C9eJ/p4W7/wWKC6dRHWfosNx2DzpeG/geY7B3Mtp0jI4xhUFvIjNEQHsQ54
	ASNQNEHQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcTZG-00000007HIC-1054;
	Sun, 04 Jan 2026 19:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=krUEwvQtFBfxhDWJO7NHKWidgy0n/k7HYBmF9kBHcZE=; b=o4Y87TThVKhJGNENMgptNDzxC9
	0Bos1zVLGBH7Y/NT4m5kd2ah+v+0u97/rug+/6f1SmNQsoN0W+LfyBCSr55sQkWVm9aHZKXsiLv8D
	fWB3amjeQh7UdMj6/+qOyH845mWSVirpS66Ea5ZAwK6wAv4JEJFEB41463xXWjqTlGm7jVe58zLkE
	72kavU9ayuFFVbCvOmZByoo1yumfkPD0pbBdpO6tZgU6gjWFIU+73cQCrjWOpr9TrMInvtJ8ToykK
	ES9WycngaP0ViBhok1b361V8kjVanRxHTIuKQEmTANX54fQj3LjEFfFVdwvPuy8aJqBznzvQKZ/vb
	bCZMcOcw==;
Received: from i53875ac4.versanet.de ([83.135.90.196] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vcTZB-0012Mf-IS; Sun, 04 Jan 2026 20:15:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	uwe@kleine-koenig.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] dt-bindings: arm: rockchip: add TS133 to RK356x-based QNAP NAS devices
Date: Sun,  4 Jan 2026 20:14:47 +0100
Message-ID: <20260104191448.2693309-5-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260104191448.2693309-1-heiko@sntech.de>
References: <20260104191448.2693309-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260104_191510_382980_912C49C0 
X-CRM114-Status: GOOD (  11.40  )
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

QNAP builds a number of variants of the RK356x-based NAS design.

Add the 1-bay TS133 variant.

This one is a tiny bit special as it is based around the RK3566 variant
of the mostly similar RK3566/RK3568 SoCs.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/arm/rockchip.yaml          | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..2a5105be3d34 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -894,11 +894,15 @@ properties:
           - const: rockchip,rk3568
 
       - description: QNAP TS-x33 NAS devices
-        items:
-          - enum:
-              - qnap,ts233
-              - qnap,ts433
-          - const: rockchip,rk3568
+        oneOf:
+          - items:
+              - const: qnap,ts133
+              - const: rockchip,rk3566
+          - items:
+              - enum:
+                  - qnap,ts233
+                  - qnap,ts433
+              - const: rockchip,rk3568
 
       - description: Radxa Compute Module 3 (CM3)
         items:
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

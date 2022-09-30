Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84066C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 05:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lxk6qL+v3GwxInYxY/aiDMyrYCGlsvN8JaGXJocwagU=; b=XMBk4gHLbfQM2g
	6coze1gpjZ6dtevAVPzlrWqAVlTnX1YJ5BtJbQq4UTyezu4B/895+OFLo/xhgq7KwmvLkAZqeAWpW
	krxJxNBKEDVDdWXmFu6NOd3OxI6dI9LgFEaLh2zVCgHMg++zXsaFTCFCxoXLapnOG7P+kMWOEmpfU
	dexReWrAQHOXh7naxKdye0vD54FkZ4q+AIVbQV9mlXyc1l3KbXNHyc5I8F3Pghgk62OHUCdpUc0zD
	lHYGz7jk0M3PJ4goTeLKSz8SyblUxLYNMW5kWdFhnPiNlwINTf+fOaLCwv1kkA5my6KBJxV/GfjHs
	gIi3AGPNT/ZawaZYHkzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8L4-007D95-Rj; Fri, 30 Sep 2022 05:13:30 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Kh-007Cwn-KW; Fri, 30 Sep 2022 05:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=EpyJR1O+18IlesRb1sVxkR2L/tT+4AYzN+FinO47AbI=; b=ZdNxBDaGzRZRVvevF+crC2ukEH
	JM3+800dHLclZWsuDVo+v05NhK9QguDiTLB59afD19PT7dMm1T0wPHIx/mfIp5z+kPMm3may05vS8
	9p0UJzWQLa+4tTejAMUeujLxydrvZDP/4yY7PxqEZZfAIwI8kuZxRGSEZ6zdXhPsqUN76ckGDZBBv
	vp32aSJGPRC9wjzkgcRtv5OzSH+1OsQQFrIBTvmVa/KcaYh1S+FlpAGhBU7qyF9xBiaxrURfiPjql
	tmM9ejBVWCXmLnOklaQnxnsITGvfpurDnxjNwjuvTBWS+NGdkthWnxvNVmUPIUjI3rOgFAD6BveZX
	qXoAEvNA==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kc-00Dje4-0V; Fri, 30 Sep 2022 07:13:02 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kb-001duJ-1d;
	Fri, 30 Sep 2022 07:13:01 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Dan Johansen <strit@manjaro.org>
Subject: [PATCH v3 01/13] dt-bindings: rockchip: Add Hardkernel ODROID-M1 board
Date: Fri, 30 Sep 2022 07:12:34 +0200
Message-Id: <20220930051246.391614-2-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930051246.391614-1-aurelien@aurel32.net>
References: <20220930051246.391614-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_221308_858491_33043CFC 
X-CRM114-Status: UNSURE (   9.39  )
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

From: Dongjin Kim <tobetter@gmail.com>

Add device tree binding for Hardkernel ODROID-M1 board based on RK3568
SoC.

Signed-off-by: Dongjin Kim <tobetter@gmail.com>
Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Dan Johansen <strit@manjaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..a704d5389a82 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -432,6 +432,11 @@ properties:
           - const: hardkernel,rk3326-odroid-go2
           - const: rockchip,rk3326
 
+      - description: Hardkernel Odroid M1
+        items:
+          - const: rockchip,rk3568-odroid-m1
+          - const: rockchip,rk3568
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

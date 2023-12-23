Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C58E9C47073
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Dec 2023 15:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vb/QSwcm+6hH/Y7EMEq5Tk8N+rBL6JOFkQShPlQZWo8=; b=ubTqlsgri81fL3
	84h+GgR19/WKSroBTVnL/eHeLHMJKOcs0Z4w3PT08/88WOx/lgASoU0uQIbPTfzt87TT5F8nzrBaM
	4qbuTEAuS3PdTv9sXkKkXloC886WLlkWbl2ejwAqD4fk9FdTdcvP2KGBd/Zq6ptdyxmnVirGlvBfP
	ut7pW+d4iMdciRKQQkHL2MlrcDxb5OGO3JF7db3qWMZscTMuoGCZIn1VBi7WunL7ayxhEbkIN1MTP
	BLiP2QoHaEm0n7v2k+cyjkdBRhfmAMZYnGlOL9T2d6eFSCB+pR92k7XOlXVaTSjwL31g56gjJ0tDo
	bTMUp7gFMgV8ZEyu3XKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH3o7-0085VW-0O;
	Sat, 23 Dec 2023 15:20:55 +0000
Received: from [2a01:4f8:1c1c:934f::1] (helo=mecka.net)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH3ns-0085OM-3A;
	Sat, 23 Dec 2023 15:20:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1703344839; bh=vgxRANyqwlVPMwtKO8SOOWvi4Qkx3vypc5+xq1xEr0U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZINjSLDVY0OoHXbxsj9YVKlz0LOOm9CBTp/aoSExKjl06wgL0kU4GkIObtM7RUXki
	 S3/p5U8JKktj5a4hl9yv7EfH5KGQCEhlKjqk/RMKqWE0bsOH2rZ3Xudn270WM8lU64
	 mUNga7cCa7tXazKqjHKYP0A2a38TLB7xq8/jQlqVju6i+6+eHAe3gnPYdoKTAYzqra
	 JIakXUHd5/plWKjpuF1pZSm21uFpLCDMmOX2dSu1xL7I5zg5bUnGBGkZ8LVj5sjcwO
	 3VuFw3d7BgvSblpUof1N3XK3ifq1tM99pnH7xhpZ4s5hdpc7yJjWB6lqyuzKOjRPsu
	 mSdCy6tV9075w==
Received: from arthur.fritz.box (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 1F08237195B;
	Sat, 23 Dec 2023 16:20:39 +0100 (CET)
From: Manuel Traut <manut@mecka.net>
Date: Sat, 23 Dec 2023 16:20:17 +0100
Subject: [PATCH v2 3/4] dt-bindings: arm64: rockchip: Add Pine64 Pinetab2
MIME-Version: 1.0
Message-Id: <20231223-pinetab2-v2-3-ec1856d0030e@mecka.net>
References: <20231223-pinetab2-v2-0-ec1856d0030e@mecka.net>
In-Reply-To: <20231223-pinetab2-v2-0-ec1856d0030e@mecka.net>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>, 
 Diederik de Haas <didi.debian@cknow.org>, 
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>, 
 Danct12 <danct12@riseup.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_072041_173395_766B3637 
X-CRM114-Status: UNSURE (   7.86  )
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

Add devicvetree binding documentation for Pine64 Pinetab2
which uses the Rockchip RK3566 SoC.

Signed-off-by: Manuel Traut <manut@mecka.net>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..96d54b0587ab 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -635,6 +635,14 @@ properties:
           - const: pine64,pinenote
           - const: rockchip,rk3566
 
+      - description: Pine64 PineTab2
+        items:
+          - enum:
+              - pine64,pinetab2-v0.1
+              - pine64,pinetab2-v2.0
+          - const: pine64,pinetab2
+          - const: rockchip,rk3566
+
       - description: Pine64 PinePhonePro
         items:
           - const: pine64,pinephone-pro

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

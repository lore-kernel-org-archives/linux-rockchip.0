Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6F20CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 04:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tj6l+eW4wLlr9v07v4tc1vQ5vWDjZdI2kmHdE9bjTvo=; b=FF+lRX2NBEI5SP
	RZUAnRo9vNxcBotOFcWnn4A69dQDPoUauh7b7SaB4Ux5N9ez6MBCF4WWIkcrowFmGcQH8F8mfFdZO
	wScB9nXs74uvU5tXa+SvjVflbLYwozEjtAG8nbi3Yq3/dOFI5pbu9B49X5F3w3EoqRPMDW4iHVoUf
	u9KWn7S4foPC/NDW8uEFpATwzNpZ1efjRoM0BFgkhIGz7D+0Ahdd731mFQiwfNGHyq6pvLiu+zH66
	JgoHze32/tURpJw4CDQg6srk041ChpKYtrCk2pjN0VG1deIAyfCS30Sp8IydNMzHXSmG5wviV3+8b
	mSKoTsKOscXG5NcPabxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHwKu-00000002uGW-2U1Z;
	Wed, 29 Apr 2026 04:15:44 +0000
Received: from mail-oi1-x261.google.com ([2607:f8b0:4864:20::261])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHwKn-00000002uCp-2JQP
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 04:15:40 +0000
Received: by mail-oi1-x261.google.com with SMTP id 5614622812f47-4645dde00a7so356930b6e.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 21:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1777436136; x=1778040936; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cUANSDjJgu1WXHjNheDgVJfCwB+h6we7yJfErm3QH3E=;
        b=IUGzzLj63dR29Iok2GgPOzfKAQvDAFBouSXuj55YYicyhdIqF+GFzVRYZoSUZerUQY
         iG2oYxGV9Di+Ap/Y6qN6lSyEx9nch+nm9RD4VJxmX6JLSqh6ERNCGJoinoKupHi+pD8r
         M9+tMkRxdDieYymKzLAitHIk87K2yww6KkfHMemhuuAjTyVlWAgfM+DASSZrkjfznPNp
         NTXdafcuXQzsyD17FVoFF96b2SPQg2/gYtCMXUrA6Z2SpVv/1xq2HHVi50SV+Dy2UwhF
         ZoB7pOiaiqImnYMDwgWrcafHWDwM8vwe2rhl9Pml6Z/DjZF257oF3l1iBX2kn/KS42cb
         Jqbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777436136; x=1778040936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cUANSDjJgu1WXHjNheDgVJfCwB+h6we7yJfErm3QH3E=;
        b=XedC4vcIIYA2nJSTZ/SzOdI+3hvzhl/5nK7aaVG5weA4TgsnUMeymwvxrVXEzmgVmg
         r3B5/7UiVZj3MJTHK8g73lpxI7DhbWijlFs6jypv4GZ1Pi1XWuwuxR1IVZEDMx4wlfMD
         iJsWWxG4Sc5ShUUfqcnXJEA4z44ZTD8+iUsQLDGsftSOhz+BT6vx3Gcx6WfdaPGXULkU
         XP17xmabobsgTYB26lTWsQF+3s+T4YgP6ZgqukADb4wjOGMs/8MGWhfmUwfnz2pje3Li
         jxboxn7F1my1hrTqMYM0udWGIhdR0wpg5VldMIKMIxJe5TLPYY1F7HEMsqHelE65PIuH
         UMOg==
X-Forwarded-Encrypted: i=1; AFNElJ/g2YubhFzSNg7NBsq747BzbPanfaW+tDHjWgXR9GrPPtiPuxPqDui8E4kVCI/nANcO1PSRJaoWUXbpSqEwrQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzdAJtXGsr5DvS14A3s9D6jNgqvXXY+mmiyICI14kN59ns8/ekg
	B9v+fAl31dFG+ePMVzJGFRXGNfTADDNBPZ779ERPL5KLmLgBbT9RkgL1UgwBpm4AU1DH1+BMllT
	IB2T7p29fpw7n7yL45ues1SqS4VQkfQSIRqW6
X-Gm-Gg: AeBDies0mbr63ZkNOOaZojy502rfG+nbBQpSpkVWJM5vh09qqIwKIynKSLtt4un6zQ2
	t3LJBZY1NMJkmwYkiLskTiuv9CRXM2xeLYptyUITSNMKkmxgrGdE6D2FDV/JZj8KXWhxo0Scy6+
	suhOyC1N961RV1HKz+y1sq58jijI3sGGA+ZUqA67Iep3k7WmUkU2q4fzoCHVR4vD1j4GORRcl8m
	fvHeLW9cWwOAcnr05pe4zgc8rQIhbDRSnaOx1iWlRHn9kMJBhZf5yQslOFlWywTAPRTv7vE6zTH
	mrtp6K1Zs66tUXM9cEIesg+m1W2WR6GAgBJbApZc9N2gUOKROHKqlYyHy9vUtSHmTtHWerNV2e+
	vjdYLwhW213QsRP1bj04Rd0zLzV36j1KmqoDuUEz8IY5tLNZR56I9wqg=
X-Received: by 2002:a05:6820:2210:b0:67e:2a62:35ba with SMTP id 006d021491bc7-696699b7162mr686474eaf.15.1777436136286;
        Tue, 28 Apr 2026 21:15:36 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 006d021491bc7-6966baf952asm41557eaf.9.2026.04.28.21.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 21:15:36 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alexey Charkov <alchark@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Robinson <pbrobinson@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Dennis Gilmore <dennis@ausil.us>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/3] dt-bindings: display: bridge: simple: document the Lontium LT8711UXD DP-to-HDMI bridge
Date: Tue, 28 Apr 2026 23:15:26 -0500
Message-ID: <20260429041528.558254-2-dennis@ausil.us>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260429041528.558254-1-dennis@ausil.us>
References: <20260429041528.558254-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_211537_591608_2C4C24C1 
X-CRM114-Status: UNSURE (   9.03  )
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

The Lontium LT8711UXD is a high performance two lane Type-C/DP1.4
to HDMI2.0 converter, designed to connect a USB Type-C source or a DP1.4
source to an HDMI2.0 sink. The device can be running uncontrolled or it
can be attached over I2C, the bindings describe the uncontrolled mode.

Signed-off-by: Dennis Gilmore <dennis@ausil.us>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/display/bridge/simple-bridge.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index e6808419f625..752c736c8f85 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -30,6 +30,7 @@ properties:
           - algoltek,ag6311
           - asl-tek,cs5263
           - dumb-vga-dac
+          - lontium,lt8711uxd
           - parade,ps185hdm
           - radxa,ra620
           - realtek,rtd2171
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

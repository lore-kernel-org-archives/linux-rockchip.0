Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8695AC44507
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NwvSBMsLmKC+o816Rln4ZEYF4MIXf9iGb2nBP+FBBsg=; b=bCgRRg0DrrFz/Q
	glgWBJafJAbmSHm8l0AqNFc1ZG2cVHsz1PzmnRZo/zCSPJjqXvJe1Eyn5NAywN0K844xGAn3f5kVb
	BuLTFK8WoDfTDGBQ4CONodjUc1dg5HFfOoliCmOSw4O9GbOoBskoyb1afQviaoce08Re7JKsU5UWQ
	Y9+m9TGLUwdfIWsr0BetukSw5tZzKcqOGgpoRewJzVsIlNfAEX+abKnAA08liJj++abxD0z297zPm
	+ZW7c8gG93cELJYzPaW/5UVdoQSb6FHsg0JIhBNkoMYkDkSPzaIZxjjUjvHyKM1/4KoI9s6wG8AqT
	PWxlbVXISoLzdU/E0t6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjicc-0000000D1M1-0sEV;
	Tue, 14 Jul 2026 19:16:50 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjicZ-0000000D1Kg-05Cy
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:16:49 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-499f6e0bbabso1036647b6e.0
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784056605; x=1784661405; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xuXRtMtsCrbKtroiJGCdttoDF3tRJIUhOu4EeJUBsWE=;
        b=bzi/DBAIqnWYPgQb7mnXX18hTFu5x0ug5o5rvdORly6OKy3zZX3iXL2MtM7zupmS8p
         Eka3y90zRynvkTxV1R+rqPaI0yRofY4mPF9BckPc7f+SvzI4WBoivEdvU/wTNt2YrSfO
         SqEjBbrBYDs8F9PINzzvqm/l/CnFwZuLLC+0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056605; x=1784661405;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=xuXRtMtsCrbKtroiJGCdttoDF3tRJIUhOu4EeJUBsWE=;
        b=brI0H5T1qYFwk+ShxCHSBFnzjR2v7zee27Z1MlZ7nIDfcaKoya3h/ZqPaf1owmFCTU
         fW9dnLoB0Ipo2eomgbGkOtbn/eSUxcl80JNi2tAGiaW6liGijtcKFLgSfwgFc9+y+nPp
         D/UwgR0T+JfbRLJXeOH6AE1goeiNIG+oGhItnJD5Qir6Rdan0bTHBjbACrRS2jLhR8w/
         +5SveeaOJHwxh00xYMeUbX4efolUWyaDqpkSjQuJ8jWSA0BHKCI6pJc1tK4SyGidiCmA
         GhgtNZje/N3kDDYljpz0/vSA0UyQNRg8OgasYtlXGtPclqsKf6TimiAbb8KpP4gQxiVN
         Uw4Q==
X-Forwarded-Encrypted: i=1; AFNElJ+lQe/ReX4pYs6nPDLxIK5G6qlegUniKK4o6ryRs0i4junt0OsjRbofzwY6u2GGCc2Pb6ZPNFPWXMFV9pLiKg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxU4OvlS9r2CAm0b1vOZWYqLA01GPKhmWcuSBXPzTRO+1KQKgRP
	qZ8DCnkuDmuxTFmnD//Bl9UBMNHIOw/KftkwUArf4bb/NEZDDJXyoVsJgdHuHzq/kw==
X-Gm-Gg: AfdE7cl0vTva0rbaIy6zhXtjeU+gfrQFteavjwI6ai3aRHgDBfbrPOm+LCA9ABBelU6
	Rz1Fxllhc823Q+IPVQ+1SpDu/MP0gg39+awkC/GhvRXnUsogG1SkwVFhuuMr9jMLqjW7BYOSxHE
	GXUACubXBYI7GzM7dW5LkPssY5rmrwyh42Kumh0DjTaeaaQGSlQNGgy8i42mAHuxNO4fqPN8qFY
	cNsOTgo+QbQFqxxAgCAKYITMs0h45f0HsFiJwoh0ZwD9LuOjttKPjgnsuAIp1LwMcIWIOUJlK0b
	9OEBNAwiltvnJAq30UVe12KVzSgKoXGI8EoIastphfOrWaSoto7B5Knp19cJpP9dNYrzBuuXdjY
	jCfF6B+Xw3jvHMT/yAvglThIWMi4mIt/5LOBwF2CfPgptMOPzcNAOz32hEtjZeYaW680MqhJzYj
	FYVlJPKp8=
X-Received: by 2002:a05:6808:4f22:b0:4a3:26b5:7c3a with SMTP id 5614622812f47-4a42ae048e3mr10469731b6e.15.1784056605373;
        Tue, 14 Jul 2026 12:16:45 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a1acc82f3csm14767236b6e.3.2026.07.14.12.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:16:44 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: iio: adc: rockchip-saradc: Add RV1106 compatible
Date: Tue, 14 Jul 2026 13:16:32 -0600
Message-ID: <20260714131631.v2.1.0b846080833e4b836793c43fc26d1c6d817cf9b4@changeid>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_121647_094631_B1D78A7E 
X-CRM114-Status: GOOD (  11.08  )
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

Add the compatible for the SARADC of the Rockchip RV1106, which is
compatible with the RK3588 variant.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v2:
- Fold the compatible into an enum together with rk3576-saradc, since
  both fall back to rk3588-saradc

 .../devicetree/bindings/iio/adc/rockchip-saradc.yaml          | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index 6769d679c907..f0551d665916 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -22,7 +22,9 @@ properties:
       - const: rockchip,rk3562-saradc
       - const: rockchip,rk3588-saradc
       - items:
-          - const: rockchip,rk3576-saradc
+          - enum:
+              - rockchip,rk3576-saradc
+              - rockchip,rv1106-saradc
           - const: rockchip,rk3588-saradc
       - items:
           - enum:
---
base-commit: 3b029c035b34bbc693405ddf759f0e9b920c27f1
branch: rv1106e2

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

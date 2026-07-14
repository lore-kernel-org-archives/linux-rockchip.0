Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4F8DC44507
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpvXIuv+OwFiWKSmaVMNI8XqU04XfxsuTVDxCEeJfug=; b=uE9+rjt/5sIb52
	4GWmMhC9dCUD9tEFWoST+VU9Ep50scwWkE0fI+8ZbQKyjeUSIyi81chlFHck2kv81T3xqCqOzfbsN
	2+vz6nws34GAhsSzv53OXVpDwH6d0U+vsobqGON/ZLz+X96rl8DG1t0ld0bJ/3e2SJ81Gt4vEjWC8
	ivB3hlV5mGRtd/UIfh/lq90x1FIvwNvY+pWtKDusM5VAhFmjslCbeH1M0N3v0Bh7eWwfGQcdqEJ2f
	Xat4NhEEhnL3+twsmLKhBrzUNyCjCU6Y9aP/CRwaGxhHOlxUxDT9XAM6AgVJSoAllNDLyY61B3Czs
	JORyzuk66olTCtwCiQrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiwW-0000000D8Ao-1RYE;
	Tue, 14 Jul 2026 19:37:24 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiwL-0000000D82N-3Xvw
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:37:17 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-7e9ecb1e13cso3539449a34.3
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784057833; x=1784662633; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ehkMFoWgqIg1ow9atROFZYSGr7YDspw2tJRq5+hr+pc=;
        b=f38mrf/Rd7soPhRyRj4NJzbwZ7nCQxTfeYJ1KJKOFEVMcgTUjkF4HCa/xSHjIJ0cZ3
         e56utRQzNG7Lx+LreL7vROLq3CBUGvFRnVyYX8dtK8oF0pWUdw9H3CpJ9lBibVs0GJaO
         MSkFw5E086YxalMjUwvSB0bltBwPZEQ2pXjrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784057833; x=1784662633;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ehkMFoWgqIg1ow9atROFZYSGr7YDspw2tJRq5+hr+pc=;
        b=bZVWPMvMOZQMWzfhMj++ctnvBObjISqU/g1uRNZwAHtfzRpyZBuvoXsnMFznylc9BK
         7daOBK4+YFyt23ilW2JJfImyyMxLddhG0nnWGzgGisZu7S1YQR2Hnhm7HD/hNfaTefbX
         uAuDJOqT+rfIsoubUIPnDefBsDjRoJFFozCqEkd14GPgOV4Oqv6RqJb0cNx9JRaVTbws
         +0J8RmnMFh0UhUQ0wiNzEUBw9zPcpYjtOdu75iM3ncK52O4c6KIWq4xLkU5LdWy8Y5OA
         uY06C6aLl8UPsfndj9kUwq6ovM3KPOcVViADKSqTztGpNGps5NC5xvgKBCOvVTV9oDaZ
         JGdg==
X-Forwarded-Encrypted: i=1; AFNElJ9ZenLuZ84KLLJk8EK+tJUGtmIvD3/47r1M8/hkVX3sKLtJ6fhAtAIbAwgiXN97bQjPKgMv/iH1NV2xjLI1yA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxOvHcmOsKJdNCBzrJRtYzzOhw0UeNt4lh28aSgELX+iu+lAzpk
	Fk+E3FCpT4OwftTMJ9XJ3ME3HsSo2zH67OuRleqJsfFrfwW02Op9LiB3h8pH+WzOug==
X-Gm-Gg: AfdE7cmhzog7u7dce+GkMorxmoDUdWUEFLTdzt4S/6v4IwMxBgwCB1WH0icAnSRe3K0
	Bpw3Mg0KFXNLa3wdJYtKqYM/5WGzRJeinaqbreEwBbvzxXGT8+KA5FznQPFHdpLpGRj1ViGFzfo
	PXhntoEe6zhCVFjpgO795BE6xzS1Jv3mES97GMAOTXpPxK/SjjtwcOm+zpcbYsVMyRk2h+AaSAD
	IOD2IjkRTAXb0rLhd3cFD3qaGN/JKkiJeAW9clRw9Wvq/pYUkMVpeMVNBNtDf+SzR+42Z7hjIs1
	kirtqqa2uUeqJLpnXlt4Pwrk7Q1+wM9LlIS7oHMX2uA/MvzihCeT06UGa+8B9VLswp8nVlSIbEH
	1ZI4STsMcYi1c4A/k74X67s03+GYZtCyFnaBPPTE+PA0OVUjJvNnR7M88zA3faawHn1nZPJd8Cj
	u5WpR2Z3g=
X-Received: by 2002:a05:6830:3805:b0:7e9:5de:cb93 with SMTP id 46e09a7af769-7ec59d40cb0mr9721a34.18.1784057833072;
        Tue, 14 Jul 2026 12:37:13 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcaf742e1sm16004026a34.8.2026.07.14.12.37.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:37:12 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Fabio Estevam <festevam@nabladev.com>,
	devicetree@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Yao Zi <ziyao@disroot.org>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/6] dt-bindings: soc: rockchip: grf: Add RV1106 compatibles
Date: Tue, 14 Jul 2026 13:36:40 -0600
Message-ID: <20260714193656.2196447-4-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260714193656.2196447-1-sjg@chromium.org>
References: <20260714193656.2196447-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_123713_929599_703ABB19 
X-CRM114-Status: GOOD (  10.49  )
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

Add the compatibles for the general register files of the Rockchip
RV1106: the main GRF, and the per-bank GPIO IOC blocks used by the pin
controller.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v2:
- Drop the grf-cru clock-controller child and use the syscon-only
  group for the main GRF, since the CRU now provides the MMC phase
  clocks
- Use a single gpio-ioc compatible for the per-bank IOC blocks in
  place of the ioc and pmuioc regions

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2cc43742b8e3..fd9235ac1334 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -64,6 +64,8 @@ properties:
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
               - rockchip,rv1103b-ioc
+              - rockchip,rv1106-gpio-ioc
+              - rockchip,rv1106-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

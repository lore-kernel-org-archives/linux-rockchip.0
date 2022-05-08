Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 003A8C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xsLhbsZbEOfRDTUgbBE/4xrHFTPs5WwQWqkY3YwOD7Y=; b=Zz/TSeMrECzKms
	EQMn2yzSJ73RVkqAWuRyr2Uosu4ndvfwM2YtdG2SBf9+RMxglSD/bcBzqK1UxmWu3F1q1Z4B+zMGH
	zzSvcwhHpY5alA79voy7A7iABQv1zdUAmRl5D9etwMMhzKDyD7INWhv4zSsB1C4tMpwggXM01K7ub
	UG7cAgdDKmH+HJbnjqRplKvab/JYAhxQw97NS2Cwmo5DpgXFGsrUwvu0CXph5K+z4rku7BhpMBO/Z
	IRLpTHRRXA8Nosc4C6hmNS8uTajL0bGBp65MbgKX9zFpMprQiKcSd7/jTm00WaGXqGZAECFN5yWeH
	ExPAJKyXbyXZxGrAP2NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnTf-00BKjC-GY; Sun, 08 May 2022 20:26:03 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnTc-00BKgr-LJ; Sun, 08 May 2022 20:26:01 +0000
Received: by mail-ej1-x62b.google.com with SMTP id i27so23259638ejd.9;
 Sun, 08 May 2022 13:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dls9wx30M8vanff1di+e0hUY3FreOPnMS2PbTpSJF+Y=;
 b=AWKEbn5j6vYe+ERbURHm63ghUCUdskHzA+tWJ0P90OrMViEG0+GSPC5/0yAA+U90e0
 IA3vGWZ4gmIMJh+N9eJTwjKp3J94S1uj9gkWx+A4xn5oNGaAYPVSKE0Q5BnWHXnAjPZy
 we24gpVfD76gjJk3P0COoalrDYmq+2EARzu/lf8AJ+sK4WdHMjC/GyiUJ3sZxL5PxzUn
 KdoOkB67trCPsGwxVhMjFFTLSW1pR9UVeoOoj8QiELM99mNkbKWVLsOddRFkqp+hA1S/
 OUtaj3c1eqbdFRtD2accDjdX10hbUuTPOC9oqHV64TigwmQqqUJ2uzyIbRd1+PsbMADm
 gyTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dls9wx30M8vanff1di+e0hUY3FreOPnMS2PbTpSJF+Y=;
 b=im4RCDKmiYBI30kWEzQvbNsUD5Nbiapu9ikWWt054q5EKpjM6vz4OkOk9TAgPMj00L
 KC8XgTN3oGFn/+5DgSVvOCzxfW7Y4e9Vi2TwY0Eq1foHy1GQeOelclyrFYZrzTWfEjfo
 8wuyW6lKrKfv70hx04VQAWFAYM66S+cLX3PEuczIO0UvXAtsAFUBGBHptFchNRJC6N13
 3LZnS/Gq1zrM/zjDNnuLt5MiMAECToD8hNjI5aQut+C0NbERaPaTV90rjUa+49AkBrGv
 9U/QeLjPwRT5z6YVouDbhvvR3WkcsSefLuM+pQBxWjakUm8YxkTUB/7SoczXCKP7vxWb
 SsGw==
X-Gm-Message-State: AOAM532ko5NoKncrmFQAaKWMoNnxwZy12Ln9lOVMdijQXsjOGh7UQ+K5
 Rba58SoUYl9U3g1MVxh1wQg=
X-Google-Smtp-Source: ABdhPJyVbXNW970OhlMSwPXQgso3Y3BHest5yP+ACGD+ENnnXybEOjqBzDgDbBpJiJGGZXLvHpyrsQ==
X-Received: by 2002:a17:906:c10d:b0:6f4:a770:846e with SMTP id
 do13-20020a170906c10d00b006f4a770846emr12135921ejc.497.1652041558580; 
 Sun, 08 May 2022 13:25:58 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 eo10-20020a1709069b0a00b006f3ef214e1esm4341459ejc.132.2022.05.08.13.25.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 13:25:58 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: media: rockchip-vpu: Add RK3568 VEPU
 compatible
Date: Sun,  8 May 2022 22:25:42 +0200
Message-Id: <20220508202544.501981-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
References: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_132600_735645_8321FAE6 
X-CRM114-Status: GOOD (  11.49  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
encoding. This patch adds a compatible for it, and also allows
the bindings to only come with a vepu interrupt.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index bacb60a34989..4045f107ca4e 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -22,6 +22,7 @@ properties:
           - rockchip,rk3288-vpu
           - rockchip,rk3328-vpu
           - rockchip,rk3399-vpu
+          - rockchip,rk3568-vepu
           - rockchip,px30-vpu
       - items:
           - const: rockchip,rk3188-vpu
@@ -40,6 +41,7 @@ properties:
   interrupt-names:
     oneOf:
       - const: vdpu
+      - const: vepu
       - items:
           - const: vepu
           - const: vdpu
-- 
2.36.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

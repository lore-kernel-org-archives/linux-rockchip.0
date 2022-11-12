Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC70DC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 16:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yACekEpTvbQjPaGlNSjZOYKiDdXBxFzBORK+psoJXBI=; b=BenbeNq5ODxLHA
	zBkFP0IVHYLn2VSGHyL1xqbsUTZeadCyG3uaOfeiecFGXwlHOAPX0258QtciPhMAmWeI3Sn2Cprzy
	xicn2O+5N3s+c+COwS/JgjhBNkaKFsqSuqC7WIDexzop5khCqOo4StD6mtf+eE9hzOQ5yJnP+BiIO
	kzcYSWvkeREP13WPE9Zuv6qvMGPW1APiQxsanSdJoM9sMgrS9ITVMs5JP+p7vWJRpRAKD/I4ZC4R9
	EW+MARuO5OW9gx5o8NoRrj712psA3NegTF2VsC3XwKD4UE9kqhlrWsjJO+EmeV1rdNSokyfhaLfRq
	QnkrA8wz4TVzpW9Fx80Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ott15-006dh7-S4; Sat, 12 Nov 2022 16:05:59 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otszj-006clD-73; Sat, 12 Nov 2022 16:04:37 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5so4586562wmo.1;
        Sat, 12 Nov 2022 08:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oo1e2pdndrGc6hVcKePpw8O0AQvGqHawFLLzPC17yeY=;
        b=pP5PuMeTMje8MHtJrs+dShOCpQSTLDpgsZzH09YamX+H1RoikyDCjlk9vvfHT2/aMU
         FiWuOMH7TsXRfzFC5GfrEoCvF/NRd64KxpbkWtgMVsIyDVgHIh05Fz4jrlvmjswSPeB9
         AInStLhIx08ygaA4RWh9iPga0eID/dZM9qYqn1zDR4bOKsVX17XcTHGQ7U+Z7SjlSaJ1
         SGkQQOdqktLJCOWzbuQIe3RjL8hQILzEOr0/mp88mKElGzqKho4yxJZMclHdb/7Urty0
         2DTGpD2IHN1Z4nZ9838i/YtDtwrhqRU6lRKsHsicqpZva9vwfrUEa2NuPUmGtaUlbwkY
         5ttA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oo1e2pdndrGc6hVcKePpw8O0AQvGqHawFLLzPC17yeY=;
        b=olXmm9p+UpufewfgheXOpT0U1+E2mfWgKF8wjk3SqL8psAo3UCQM0uIFoCpfyrLbcF
         YDYjOi5cwtfA5KOz8LFy621OOSNeFRVNTsc6DnjG5XksayYLzh47zGP4FmRD/Vzggivg
         MkNqB+BhyELbjV7gHzDHAbvqIg+subYsecIaTdgkfxLn8qqsVyp92FfdPZdqv6uLNVDL
         VtkgLTdHz81LPDIFFW3HjH5gZQ4IuZ/eGaWzRIsyoJQREBM7wDCrS3UDfGMEzhzqHUgz
         hNXqa3QWi8PmPhi4pGmJddiV8BxoPv8j4x/NGw1bEsTEiVskgyTnbKaRgIagdiqLu5hz
         vVOA==
X-Gm-Message-State: ANoB5pmSt2Ac8Ba7K7YQYluCxNAsGX81hgAWfMtyJb5AgOW9is9w5m42
	/csFnATJvl+XWpd3S+w1HmE=
X-Google-Smtp-Source: AA0mqf6gNkLJsyCFH5GzLpe8VqEmtAK/h1PHEytwQxLYAAuYv407DsjfvhExhFcj2H9GE3FK/R86DA==
X-Received: by 2002:a05:600c:4b16:b0:3cf:77a6:2c2e with SMTP id i22-20020a05600c4b1600b003cf77a62c2emr4084324wmp.179.1668269074086;
        Sat, 12 Nov 2022 08:04:34 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id iv16-20020a05600c549000b003cf87623c16sm14605752wmb.4.2022.11.12.08.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 08:04:33 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/6] dt-bindings: arm: rockchip: Add SOQuartz Blade
Date: Sat, 12 Nov 2022 17:04:02 +0100
Message-Id: <20221112160404.70868-6-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
References: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_080435_270683_969F1783 
X-CRM114-Status: UNSURE (   9.29  )
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

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 244c42eaae8c..fc5f14fcd007 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -579,6 +579,7 @@ properties:
         items:
           - enum:
               - pine64,soquartz-cm4io
+              - pine64,soquartz-blade
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

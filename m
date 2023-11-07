Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CE3DC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 15:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlCrAlcXsJv1WERplkJ4EJH2f+b4HWbNg7vrTMXBB2g=; b=rzbBD4YUPFBGWs
	diOJ81PQHtjqakSsdPSLCbHjjZxXknAG/yZuuKz55V6QlDW0Sl4iuhrGdkPhw6T56MTeGHAAkGy+N
	3GwbxMTrIrquvLuh4NzqHNGLsJ9Ti3xi9SQcGspoBpDlOhCNV3aMNY1b839nQCnIiob5b/eTSYDH2
	vH7YIhNaxqdCSpFcBzHbWxxgPeL/BUx+Pk51PsaQjzuTMRPz64bebE4hk3bGSZ/i0FC4daTJqGgfo
	JK4ztoWLARbouzgmhoV3EbQhHG+rK6P/ICnbVuJWv5OQlSpz5sQdVBxaYqg0u/i4Y5PWaLzQI1HOw
	0tL5Xg7Ufc78CWLB7oxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OQl-001vJT-0R;
	Tue, 07 Nov 2023 15:55:55 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OQg-001vFX-1f
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 15:55:51 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40891d38e3fso40848095e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Nov 2023 07:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699372549; x=1699977349; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BkfSHGrIpem8wzkvHrBk/3Gkd85Ebnq+lcLBg87ITvo=;
        b=qKXZFPyT6UP8nNkcPBaIJaN0mdDYWB0Ey3DckQIBTKDIDetpLo4K3mzCllQKBshV6D
         eSUzrg+Z5JzcuKuYLip/vNKywrOUXv44HHbZvgLc8C3F3AvlCCd2sGa8qoR98caEPNWx
         RyZISkd0dXDqdLR52gW4o+HjIeSqQbppjH+wEY4QDfAvjympueNv8/j2poXGpMK+XBKL
         l5/dbrkH6L4NepsAzQ6JNNFy3HcWNdSpS5Tio1WQ7jpyTSedB9+KG5O4K9Ylor/kpazg
         MJiTP0n9DdjP4k2jnJfaHhR2VRIdSY0umSR7Tm7rZRo43OLyJNIaLNIXOGlJhhuGHJXr
         1ILA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699372549; x=1699977349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BkfSHGrIpem8wzkvHrBk/3Gkd85Ebnq+lcLBg87ITvo=;
        b=WtO2OlPwKn6K7+BL50YMfrhfr33rfdpazjMpsO7wGfQY9OtNGh1bI8i7Fq0v0moHxu
         NZx23NNnuWJGsV9bptt4RO7N7h5Q0CJnEisZF4x8oQijS2as4yxgHhMANP7RXmIVtT7h
         31tlJ+XynCj+E+/gXBd/N1r6OB30yN1ySyzhjLU3mbL5oyuikGOLCuQyJLHEuEzS0Ac0
         sdUJBpi3l7FWzZtcBdRiNY0Je9Wzui0UN78T/Dq0urpr9mvFc9vEzPisw58ufDBWB8lt
         hqmpYaN3pTZPXq1YAKyxOUUHTPJMSQWkcc5S0sV7WeOnm/DahOXUn36kuTzgkIAvSOLE
         mY5A==
X-Gm-Message-State: AOJu0YywMSPyniKg09m6GS3Nl1Ah/yNdi6OdNfoYWVoVh8Nvtyr5l9ow
	/u1SLOxv8n0ZYzIFrQFdVa7Ttw==
X-Google-Smtp-Source: AGHT+IHpnyjFtHnxiqNRaHl8atDMuhe0j+p3O/OrAQ+Bopbx3/CIOAepx72DV4yXbiUhAx69OJKUiw==
X-Received: by 2002:a05:600c:1913:b0:408:3cdf:32c with SMTP id j19-20020a05600c191300b004083cdf032cmr3353377wmq.41.1699372548745;
        Tue, 07 Nov 2023 07:55:48 -0800 (PST)
Received: from arnold.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id f6-20020a05600c4e8600b003fefb94ccc9sm16579085wmq.11.2023.11.07.07.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 07:55:47 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net,
	heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: ricardo@pardini.net,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 2/6] MAINTAINERS: add new dt-binding doc to the right entry
Date: Tue,  7 Nov 2023 15:55:28 +0000
Message-Id: <20231107155532.3747113-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231107155532.3747113-1-clabbe@baylibre.com>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_075550_555587_C07061D5 
X-CRM114-Status: UNSURE (   9.18  )
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

Rockchip crypto driver have a new file to be added.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8a43b16aecaa..f9ae35a13e70 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18697,6 +18697,7 @@ M:	Corentin Labbe <clabbe@baylibre.com>
 L:	linux-crypto@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
+F:	Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
 F:	drivers/crypto/rockchip/
 
 ROCKCHIP I2S TDM DRIVER
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

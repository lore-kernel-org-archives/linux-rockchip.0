Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82DADC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9lWxulFP2oGwwCboiVRRZ5A/EcGlGX+IuygPN5/G6A0=; b=STrEwEHAR6FL1+
	C/zujFPVOM+PIEAZKjOhvH7wIY/34/pH2CKBb1ib5yAOVaSI1vDGalkFb3pt3TEomZ1vCvIAvAh2F
	HxtpPQMU4XA1sy1Y+G2CMJnkKDFKO7+o+U1EJx7wdH8H5c2IQyU1yMIvWWRaAOHqHKvDu9SP2YOk1
	8AxOgLbpTudWnw+lQHZMQ/6zNAT17z5ap9ubFmmIb2zUANoWWAXU9kMTidO2Wz3tt//ZICh9IyzQN
	//6snbFovtVqx/NiXyyQpTIUovs1e7LAIRqI5RHCutWE2Y/5TtegIBrQ8QpUDFpVMF/lpMV5vJV5L
	AOO9v9EVR46rpPmKN2og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWny-00Dwqz-Dq; Mon, 14 Feb 2022 08:33:54 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWaP-00Dr81-MI
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:19:57 +0000
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6A64D407DD
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826792;
 bh=twEcMK7D4MpQMmFx/xz45Xek8jdGQn3r+1Fp5P1lKZI=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=TeG/jb3lwXluq02uJzsB4g9rDDLf951RPp4W9Ai2gjjj95POLOsRyAPZ+bRtMR5Go
 FPH7nI1mF1W3j1dggfdnAaIcr5Gzfld/EckrP+ClVCC8JQWKXNw9Fews2Dg7kTy+Eb
 Pa5CnT0pezzQEb3JDGxRPIweXCP0k6XlCOcyyvg7KXxg4eC9o39uh93oXkyMJaa7mB
 fhXZAgSoeIiLpDMKLlHHQ/7N9QcrG2PH6Zp97O17ajgw3+wIWrqQBp3lrfP0TBcxuQ
 vOpmJs52ztMtpbqkbZbsTBkH6yrdVVbaIpRynKxitqS87VxAnN4+b3c/3mhipur7vy
 mv6Rja+7WhByg==
Received: by mail-ej1-f69.google.com with SMTP id
 ky6-20020a170907778600b0068e4bd99fd1so5486283ejc.15
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:19:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=twEcMK7D4MpQMmFx/xz45Xek8jdGQn3r+1Fp5P1lKZI=;
 b=VAazXX5Ynj3jA7UtiqeWRXZSPZ4ZurJyX3Qtl1ShzWYaw8KEEGocIb9R0oqL6wF0Vx
 M6VKNVfC7vd7Up/aja1GEwVUuRuKnJ3WZmy+YArzXfAkghGUMhiipIWEpxuzsdp2aelq
 j+kGcZXT4WOC3eoyNu0DgQms93/yYluPGBxZs4kibIZNR5pu+w+AJ7j4HxqWquBYQ1y+
 2t5lIIB8xyGdgK4Kq3AN7bfL9zXmztk6WHXoSExTfmW01PHeHhWRE762kBAw8+H5hx7W
 P0Pho9GcjSV2kNHFewOCNrJ8+HKVEIfD0rFXcM3OfiGTvqa9o6rOgnuGw09VRX05BFqp
 38ig==
X-Gm-Message-State: AOAM531EjMaSr8CgkUNUU6ATFDNr2b7zcuMQR3Rp9cKKTqaOHTvVrbPa
 AVNdy0C/dypjO948hz/hGIl0O67JDo5IEsWfgR+zMdUu2IiKMb23Od55lS527jUmShPLpPZLlRM
 GfV350JimTqEbVvAU8hzSsIQiPRZ9JBaAaQbPzadA3sMvrN6DoA==
X-Received: by 2002:a05:6402:490:: with SMTP id
 k16mr14100044edv.204.1644826791991; 
 Mon, 14 Feb 2022 00:19:51 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx2KcC8ZeDmmjUgfK6kq1aeD1UrtI7pu7omHRR58fZiRCylZRo2PHSaI/KjoBiBhqpeH5FfTA==
X-Received: by 2002:a05:6402:490:: with SMTP id
 k16mr14100021edv.204.1644826791865; 
 Mon, 14 Feb 2022 00:19:51 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id b20sm2022941ede.23.2022.02.14.00.19.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:19:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Douglas Anderson <dianders@chromium.org>,
 devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 0/4] mfd/pwm: dt-bindings: google,
 cros-ec: include generic pwm schema
Date: Mon, 14 Feb 2022 09:19:12 +0100
Message-Id: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001953_902185_9222FE4A 
X-CRM114-Status: GOOD (  11.67  )
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

Hi,

DTS patches are independent. Not tested, but I really hope no downstream kernel
depends on pwm node naming... If it does, please change it to compatible. :)

Best regards,
Krzysztof

Krzysztof Kozlowski (4):
  dt-bindings: pwm: google,cros-ec: include generic pwm schema
  arm64: dts: mt8183: align Google CROS EC PWM node name with dtschema
  arm64: dts: qcom: align Google CROS EC PWM node name with dtschema
  arm64: dts: rk3399: align Google CROS EC PWM node name with dtschema

 Documentation/devicetree/bindings/mfd/google,cros-ec.yaml    | 4 ++++
 .../devicetree/bindings/pwm/google,cros-ec-pwm.yaml          | 5 ++++-
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi       | 2 +-
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi                 | 2 +-
 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts   | 2 +-
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi               | 2 +-
 arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi               | 2 +-
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi                   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi      | 2 +-
 9 files changed, 15 insertions(+), 8 deletions(-)

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

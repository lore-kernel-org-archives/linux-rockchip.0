Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB497C47084
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:43:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 87805613E6
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:43:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 87805613E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7mtzqXYDtPf9V1Fu8Lsq3BQ3txq/2Umm8fhQRviFfY=; b=qgDVrObGfUDjFH
	5LHi++pMGXOu3BKqzPyC26PoHSAZ8DE/coYPQMTvAwz8y1ORKCVcwQ20fUAgJ95RHkQAEtEDAc4u1
	gVM1Z/PsS2nuMqgKW6UnqlnfjQo8k7B/dad6zfXSr3pyeX2kCJM4Z94esi+4Q4qmGxo39mTtcawQH
	xomQ27WP1zwbt+ROuavUDaKXuMuh44GeG0Hv8lfCuZZThiKLXmgiPplaHpykT6htU/LN+jbRtzwX7
	8jy3OdO3qMa2keVH/XR5V0XE4anoGLYbKsJuH6JtJC5ptiCYOCOVfqECqn8jDTnR/OPl7mZrjGpQa
	Ozk9MDmfXYtgpmzXBFZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llZCv-00667i-1O; Tue, 25 May 2021 15:43:01 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llYtS-005xOK-0s; Tue, 25 May 2021 15:22:55 +0000
Received: by mail-ej1-x632.google.com with SMTP id f18so17788900ejq.10;
 Tue, 25 May 2021 08:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZLkyDyqWj1CZiuS0iYizljfWHH1n3/to3p6LvPj6158=;
 b=jw7y4JYPCW8W44lrRsqYaEQnU5CeQlrs+LImSYZnPS5yhxAuFDdy+siVIp7F3Frdnz
 ka66/Zqdm+626O2jPve1O1Y0jlu+siGG7E3mckiLIXAbUdRtZbPjjqZ1G75MkybmazY1
 rP24AQIJxWx2c/4sUeFtX9jK+4bbYzxIeZhMyjCjMjcudjGCGcohjCCvWQvu1ZAvToVP
 QpOAbuV+lRgu9lyxRgTVBePi6Q0QzxM5XNCaxmSDOgm7Yet77o9/nHlAgWy1bcBc6CNA
 +5uLy4icLvrerIvsk/3f+ZdHPJBjWZJmC1lKj+hwsV9nlbWjRxT/JxNy856e5apEvgcV
 atpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZLkyDyqWj1CZiuS0iYizljfWHH1n3/to3p6LvPj6158=;
 b=erPV3KLlYpqP81Yu78G3favLWF4zWWbNCvIK0WBOmGDusPNqGKTJh6xQyW5TRE3GJx
 4lfObk0qmsiFkwovnFDqYyabCezmnwplGOYJaIh7vx1Z2Uv1csxW+v6xD2aEtdWXu3TP
 OESNfOTcCMBzj91BdSbLDPNu76esDdyhLNIkwcCksBPtO9aZiTylVvbNpREHLTt8g6MK
 rN19ptkeMAmAIkMZj2ZGoyXmUdP9v32Hd/7QWv6/b/ruKxU7GYnCdUcTjxrl7/naEqdG
 SNW3lQgik6OK5VSaDwBuKbid5aqWcw22QiLnE6uupZCBhY3U9b5bZlyLs7JPI2rOHjbm
 zNZA==
X-Gm-Message-State: AOAM533WzOk4NHmKHWRjnV12gRD+rZe/1t7FO70P5NfIKz2kzMjwBJcJ
 V0MlLIIZwMxFt+F4qpeilw==
X-Google-Smtp-Source: ABdhPJwzCu+InKX5nF/IaZU2v8nNyrs5B4uj83Sq8mWbpWSrBmmQZ1nLC3SWyNJew3TsZfv2s4xGAA==
X-Received: by 2002:a17:907:927:: with SMTP id
 au7mr30004348ejc.267.1621956172296; 
 Tue, 25 May 2021 08:22:52 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:b55:da44:4fe2:2760])
 by smtp.googlemail.com with ESMTPSA id
 e23sm11212945eds.2.2021.05.25.08.22.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 08:22:52 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH 03/10] dt-bindings: mfd: syscon: add Rockchip RK3036/RK3228
 qos compatibles
Date: Tue, 25 May 2021 17:22:18 +0200
Message-Id: <20210525152225.154302-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210525152225.154302-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_082254_110458_FD34055E 
X-CRM114-Status: GOOD (  11.42  )
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

Checked with:
make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index f14ae6da0068..ad1121620e15 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -45,7 +45,9 @@ properties:
               - microchip,sparx5-cpu-syscon
               - mstar,msc313-pmsleep
               - rockchip,px30-qos
+              - rockchip,rk3036-qos
               - rockchip,rk3066-qos
+              - rockchip,rk3228-qos
               - rockchip,rk3288-qos
               - rockchip,rk3399-qos
               - samsung,exynos3-sysreg
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

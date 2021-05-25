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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AE74C2B9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:53:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C158F613F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:53:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C158F613F4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DV6sI+agdObVsdgYtXOoEKgEpcTBbZ3eg4tLkC/NJAM=; b=ih/mSEBP0GtfTn
	tG2OBunHmltp76gTa0gqed6LszXOO7otfcAKAYMjfmFB1ucvKZM9CEl+TnkUkM1YrkVrUSZ2K/68Z
	0IRq0NM9KKHIWjO/sOLfLsSEvATVbFw6fCRAorIkWI01DvTYzWtPkz+I4DysjsVOQJf552r+hb85h
	o4ZG9VwOsVkCCl9N07gHsOAt8ufEeVrvewNOo0QrRcssyLgnzVJsByD1vdbfvMa/NE2mhfAMv66va
	gmWS+CdSirlV4XEtFLsXQGy33WAbnoR2cXIBw079IMuVijTfYWHrTNyR/IlBX7uiRrFcseBn7z0i8
	pK24AHL+PQ4k/7WkEuXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llZND-006Aie-Id; Tue, 25 May 2021 15:53:39 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llYtb-005xXW-Sv; Tue, 25 May 2021 15:23:05 +0000
Received: by mail-ed1-x52a.google.com with SMTP id r11so36649055edt.13;
 Tue, 25 May 2021 08:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ko27frDbBXLhAvgfacRGRR+4pUjzfALcpf9gK/LPa6o=;
 b=gvY/8YrnRNatJA/dSudBIKO9l/9Ko2aqFGsWwpgz3p++VlSDxsryN7GZkOcPiScdI5
 Z8m2KBZhuabszpIvvTI6h67J3ClD8n9hM02W6d5btsuyqRxG/PoaEU7cmyqiIqlB39Al
 W7aZ0GhMnhfOx86vMJSOswKnGK/r+G1+YS3eJ/QarYCkaRwf7AUGd9DFflMQejQkGllC
 DwE0+mglMa+g5PMqlsNhRlDuYqkcZL+wtgi5F8UfQd11AAkyxbMah+hpp03xsBMnHm4O
 xsN0NcV4h1UBlTLwO0vMwO8wL3fLjwUT5NgAwaOkFeRiQwVsLwMJH14dQz88CZR/+Xy9
 gEfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ko27frDbBXLhAvgfacRGRR+4pUjzfALcpf9gK/LPa6o=;
 b=LWeBrMbN2Wo+wJKi5soiTuONow3WKe7qOi4uOYgvv8nl3+w4d5HzTG1jOwQA1p6Mmf
 xa1keolJEU+/RdaHhpOJN2xF2pQi+UUOd7eZLD5roHdQ7vMG2wGoRze7CQ2b+wRq1/5d
 8+BSnayXolrBtfR8D39bhZNAiyaDek+KA5cSxZv9uj5fEfoogrgUC/FzaZUlJo5erm1l
 LPlDxHSkuD76pF+EyD15FusYHlFxrUeWY0YUHJMpug0XKDZRxAZFzgPI+LFCtkOI5Qqb
 pcxPxf1JybYKKf8+r/dmRVq3an3IgfIUusGrvNMwn3ahEov2FNFyxijCugzmGteto2Yv
 +/nw==
X-Gm-Message-State: AOAM53071KtePv83BIMWkFKKGSQ3dYVcpyQCpwXN9GnN/pLbQD5nr1L/
 rZZg9JO/L/r3g1ONWbHNbQ==
X-Google-Smtp-Source: ABdhPJxaOWTiSa4p4wqC2Gva5726GgjctkSJ3UTwEY+X1I0Eb2deWBV7kEuBJcunzKKhyVivrRgjow==
X-Received: by 2002:a05:6402:1295:: with SMTP id
 w21mr31060225edv.60.1621956181896; 
 Tue, 25 May 2021 08:23:01 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:b55:da44:4fe2:2760])
 by smtp.googlemail.com with ESMTPSA id
 e23sm11212945eds.2.2021.05.25.08.23.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 08:23:01 -0700 (PDT)
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
Subject: [PATCH 10/10] media: dt-bindings: media: rockchip-vdec: add RK3228
 compatible
Date: Tue, 25 May 2021 17:22:25 +0200
Message-Id: <20210525152225.154302-11-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210525152225.154302-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_082304_175854_0F7501CF 
X-CRM114-Status: GOOD (  11.98  )
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

Document the RK3228 compatible for rockchip-vdec.
Also add the optional assigned-clocks and assigned-clock-rates
properties.

Checked with:
make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip,vdec.yaml

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 .../devicetree/bindings/media/rockchip,vdec.yaml       | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 8d35c327018b..fbcbc93dd1bd 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -15,7 +15,11 @@ description: |-
 
 properties:
   compatible:
-    const: rockchip,rk3399-vdec
+    oneOf:
+      - const: rockchip,rk3399-vdec
+      - items:
+        - const: rockchip,rk3228-vdec
+        - const: rockchip,rk3399-vdec
 
   reg:
     maxItems: 1
@@ -37,6 +41,10 @@ properties:
       - const: cabac
       - const: core
 
+  assigned-clocks: true
+
+  assigned-clock-rates: true
+
   power-domains:
     maxItems: 1
 
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

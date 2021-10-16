Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670B7C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:54:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3AAAC6023F
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:54:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3AAAC6023F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fxec0Z6dh4JSgO74d6uhH25X/flwWh3XsgHruw5GIDc=; b=DBEdmT9aFYoW2D
	Yb3v7+s1aCt/F546mBbLf8e5Ntl3eXbt9SuVsHX4kSjELHd1W5VS+43u3CDB4VZ2YC+mewmb1Jl8T
	RkDWaFm5DLBfetSalhTLJcSYOxytqqNlERf9HjVj+yllfrE+QG1I14ztfyN56lz6OciS7On5Tq4Ot
	WuNZWvAKjmusqc9N5cY0lqE8JPzLfLNQtGr9bbMvMWoR3k1nYreLg0uBL866NmgsBRXVxnMx5N6Nx
	ABTVcKxCyoKWK2f+rCP0euqJfFaYSyY4LyKp+7HcQ5mE34i5FWcSeuqtLZaPD0zMQrg+hzxPufGMi
	e6AzmhG8WoVYpvLxfrLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbhL3-00AP31-N3; Sat, 16 Oct 2021 10:54:53 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbhKj-00AOtt-5r; Sat, 16 Oct 2021 10:54:35 +0000
Received: by mail-lf1-x135.google.com with SMTP id j21so53697419lfe.0;
 Sat, 16 Oct 2021 03:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y+9bOnIXUtzWVh6jBYBC6CeR5DMs4Q+9HtnUCVf3acw=;
 b=Y8DwMJemYcnlx6P+YftUdk8rxOVY+oN0oN+w9IT2y0dmmjr6h8QRNCn2Pn49r5v/l4
 2DKzpzPjJ4Xwbv5tAkAo/CMmPoR51LIjT7XZH2HyogOWz8ilfprw/WcGZ4FdSg/jBgG4
 gxFA2LFwpBrqVRXsil0OWJkhCX+tevmoV96xJIa8sPJ2paw4J/HPrXfbuL2osgtrBAYo
 WgC1SPx8lFk3/5BEnFv2AaJuU/TSuExT5K9YaNPFbNgGSN03YgpG0CjRFe42wCwXhcsL
 np23VuYCvILThoi7s0RGJzfNsPgu1z8C+UBR/RTr+1rXEOoSU3B9hsi/LlKU73y4AMRK
 H1jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y+9bOnIXUtzWVh6jBYBC6CeR5DMs4Q+9HtnUCVf3acw=;
 b=6iRCyWF5adZI/5bnrVDBMp90MjQ5zheBDDzpwK21Pzd8D9rT37nvi+2YEZU8OkxMYl
 8M1YvpVqXg1NsVtSmByadELpAnQbx0B5QMH3ZL5iPia+d9qG3Btw/pnpJVtJuXDgL2g9
 QKO5tRa60M44DziawGqERdbpMPPxywOYLtbqWP12CA4M81QKKBUl0Q6Tz+8S2d4B/1Rx
 iAMaIa7nhUj7Lgsu0aNafSR5oQUPFCaGRv5L8QSCjYotDzkvEN5gX3xyi14PVIfVDULm
 TfplZe5rFJOS+zOlLSW6uOHD36zAiC3o1tABMvLOMURzcA1xvqJwsyP+sKccGtBSL4D+
 nvpQ==
X-Gm-Message-State: AOAM532aiL4xBJJg4kRQ/og49gWKp1u8tUWG9v70Coukr7kowXDDIVCK
 HPYiZiwU170XIf2yePgRu5uzohg60HU=
X-Google-Smtp-Source: ABdhPJylXH+nWmjZF01140Heh3m/n1DiYce+4V6jSo5B/7WqbKmJi/0cw7jiUYbX6TptgPDy3DEgsA==
X-Received: by 2002:a05:6512:118b:: with SMTP id
 g11mr16986499lfr.353.1634381671808; 
 Sat, 16 Oct 2021 03:54:31 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id r3sm814224lfc.131.2021.10.16.03.54.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Oct 2021 03:54:31 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] ASoC: dt-bindings: rockchip: i2s-tdm: Drop rockchip,
 cru property
Date: Sat, 16 Oct 2021 12:53:51 +0200
Message-Id: <20211016105354.116513-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
References: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_035433_270069_F0FEE7CD 
X-CRM114-Status: GOOD (  11.90  )
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

This property was only needed for a driver hack, which we can
remove. Since the bindings were not in any kernel release yet, we
are able to just drop the property instead of silently accepting
and ignoring it.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../bindings/sound/rockchip,i2s-tdm.yaml         | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
index ce3e18b50230..6a7c004bef17 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
@@ -82,12 +82,6 @@ properties:
         - tx-m
         - rx-m
 
-  rockchip,cru:
-    $ref: /schemas/types.yaml#/definitions/phandle
-    description:
-      The phandle of the cru.
-      Required if neither trcm-sync-tx-only nor trcm-sync-rx-only are specified.
-
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -144,15 +138,6 @@ required:
   - rockchip,grf
   - "#sound-dai-cells"
 
-allOf:
-  - if:
-      properties:
-        rockchip,trcm-sync-tx-only: false
-        rockchip,trcm-sync-rx-only: false
-    then:
-      required:
-        - rockchip,cru
-
 additionalProperties: false
 
 examples:
@@ -177,7 +162,6 @@ examples:
             resets = <&cru SRST_M_I2S1_8CH_TX>, <&cru SRST_M_I2S1_8CH_RX>;
             reset-names = "tx-m", "rx-m";
             rockchip,trcm-sync-tx-only;
-            rockchip,cru = <&cru>;
             rockchip,grf = <&grf>;
             #sound-dai-cells = <0>;
             pinctrl-names = "default";
-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

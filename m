Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32C48C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 14:37:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F0C75611C8
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 14:37:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F0C75611C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nk/wEMBAgzRTK9AWA4w5ci3w2nC0p3YUDhE9Dgf5bHE=; b=o1XvXzPQCQQTDT
	0FAXVTh8eWGFat2Ju5FWkK9nPb9/aDSwYl6aDyaXLfPKzx+iv4NGdRQGSzXoR7DseBDNtb/Uk+Af/
	NGKHZZoFl/OH5AsYIwcNeqpkFCb1uFeF5NdOV5g3RQzgPpx+u+8Cvll59lUUKekK3XEXyPpzP+ii7
	ie15DYSYYxc6HpRTFhVojrMJqYB+dvgswM/hBthG6/UuSsFIdTz5evv+wU7UzAxAEhX9VwnYbIu/c
	qThLzzdgI8qT93dDTXNpRsP/k8Zr16Fn6v46utbIdPlh8OdYP5VcXy/dZ9X1Hcb4t92ZpyUfe1dQ9
	YPdE1wK9tTEXcZFoiN/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbOKx-007eap-Ge; Fri, 15 Oct 2021 14:37:31 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbOFK-007cXG-5p; Fri, 15 Oct 2021 14:31:44 +0000
Received: by mail-lf1-x129.google.com with SMTP id y26so42718785lfa.11;
 Fri, 15 Oct 2021 07:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BOWkhXmRLradAC/GQ4VVcC6Y/gPQpSI6S5P1Mpfnvk8=;
 b=pmwrGi0629rfj6pWJFXZmdRQx60ZnAi+RezuMqoV9xHr0Moh8bpARW9ZsUFfEyEAy+
 xJCN1guTGVbG4ldgdiJKnYfCOJtkEw/BcPhS02+uRpuAkG8+ALUSU0EgLfApGqvjoIC7
 RFOcJMVZtsvKkdmsFFW8zJiKahdSun5IF2BDzPrV7W3uvcdH+2/Cy9o99gjZ/blLOpMh
 D+XqGp/jW6uiSobidR9H2P3P7xK8yiS7MOtgDCvbDe9mQfmozxiq3CLLQle5G9e1BNQf
 jb6/qumiVxrHnvaqVm0fN9p0sLgZbT8Tecsmv4p9WcbWUuQvSMs1atN0bApMvJWpPgr/
 tVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BOWkhXmRLradAC/GQ4VVcC6Y/gPQpSI6S5P1Mpfnvk8=;
 b=vzfEX7J/DeZfR7G2AX+3hEk9J+e35cWf4kIK7CBtj3+f9ozX2c+i2Kj0oCmE4Zd1uA
 DcPqXYp1/YDgSUpw3SjGNc+e9TSEpu+ae8Wc/S/rjvayB06MA1bQTLTX4yjFz1+QHWFn
 u1YMlQ6HZQmy/wqcaoBXaIWug5jmMnACuVZFZVsSf4Qb7lNm5G0kf/B9MLvtaI8bUlU2
 FPYGE/2U5dXTNEP6Rc6UPMobN7ea2NznaKAzk04JiQKREm45ffzai+avF4CEXqz/8X4A
 qMuI0aLOWvFu4U7/y5iJPVrXFrD63RWqXkJexLaN25yItAIwKmDYUTcQxDbDfAkgplNm
 lY2A==
X-Gm-Message-State: AOAM5306fCkyRmAMlRRvAgjkz8dsumTE+Tfd6L35YodtIH3SPVDc1ylF
 BIKSvxake3H86dKT2YmepIc=
X-Google-Smtp-Source: ABdhPJyb7Io5HBfOR1Od1nJE8cceEaoAYKaT4OvEzqEQBBRoD5cqfwoaAwdgJNzZqfJWySJA7xQiIg==
X-Received: by 2002:a2e:7605:: with SMTP id r5mr1552093ljc.301.1634308300111; 
 Fri, 15 Oct 2021 07:31:40 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id b18sm616475lji.99.2021.10.15.07.31.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 07:31:39 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: rockchip: i2s-tdm: fix rockchip,
 cru requirement
Date: Fri, 15 Oct 2021 16:31:14 +0200
Message-Id: <20211015143115.1445707-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_073142_292208_3873C2DF 
X-CRM114-Status: GOOD (  11.24  )
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

The behaviour described in the bindings is exactly the opposite
of what it should be, so this patch fixes the description and
adjusts the if conditions for adding rockchip,cru to required.

Fixes: 510f1c133aed ("ASoC: dt-bindings: rockchip: add i2s-tdm bindings")
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../devicetree/bindings/sound/rockchip,i2s-tdm.yaml   | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
index ce3e18b50230..93f5221e9381 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
@@ -86,7 +86,7 @@ properties:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
       The phandle of the cru.
-      Required if neither trcm-sync-tx-only nor trcm-sync-rx-only are specified.
+      Required if either trcm-sync-tx-only or trcm-sync-rx-only are specified.
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
@@ -147,8 +147,13 @@ required:
 allOf:
   - if:
       properties:
-        rockchip,trcm-sync-tx-only: false
-        rockchip,trcm-sync-rx-only: false
+        rockchip,trcm-sync-tx-only: true
+    then:
+      required:
+        - rockchip,cru
+  - if:
+      properties:
+        rockchip,trcm-sync-rx-only: true
     then:
       required:
         - rockchip,cru
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7656DC4453C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 11:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iXVfJibGa5phDz89wiKmQ2oCi4ceDeGqADx+A7IeAs=; b=D9Wt/tXjAQ2Dks
	Ie7SE/d31Lt/3jkYZ8WL57Wcw/XZ+Fg+FuVEsfxpUifVehXsiYkbfFekesyTEjZYePgBWpIyzS8CK
	wTpthxqpATNM8HZdjMZOVbxxZPESlfpuGf+FPuvV0XzDBV69q6/BNVFt2zCV9LZn2XhPj7eYPYr7B
	6Q7wAONWWVN9xy56lAiWNrjXMlHdJf5aEmRc5jz7AizO2o6+W3M8wsUWMwgDoZ/TXvuTS+SvTY5EB
	bDkfllPgyjAHgCVNV3K6XfwZxD7u49MPWq3YqegXyralbhdWIzzkFItmC3F4M49hl/pyC8v2y8Eog
	KywbeolR1BAxJ1L7VwNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVVg-0000000BgjG-1FsW;
	Wed, 22 Jul 2026 11:53:12 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVVc-0000000BggZ-1BUe
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 11:53:09 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2cad4170e8eso177653275ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 04:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784721187; x=1785325987; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Torbo9QkuXmjC9uhqrdt2cyIRnXWvhPFN491HA78teQ=;
        b=ewAmflaquGa6D2OCls/jvmxeJeFuye37rczOwnSyp5kC+6OH90rql00/YZJr2o2CeS
         YcKw9/0v2kCq8yP6WR1rPzN9TSJ+4j+dQe3rzFroMzP/PK0LKptEKPnTgkK3F9H+KRUw
         FNK1eAV6OeQzcP0N9q1kRa6XwnkU842FiQ0R5Fx3BAFvDP6lNpN73Hc3Cu290vv9ujmn
         rH8sNrZsFwBtIffpTEZY/XRsbJ9qdxl22zzZmmOGUiSMXn7BkjO6d48AcnA3bAh5Ecvq
         NygSfc0gFmKchYuwkXdZqW0/UdvYpTS4oru6xXghSy/gNQoqhQ9gA50yNIzJyWnaWvmb
         uK/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784721187; x=1785325987;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Torbo9QkuXmjC9uhqrdt2cyIRnXWvhPFN491HA78teQ=;
        b=OMB9BJPHTyZ97hbsbsTTmJr8A+D8W2hcYGoeU/Glb+TwX9cgZJ9cRQO+qGkH1aaBt3
         mqjDvWLPSUs377NfsBGKHgbYHGNeMnwS5aRS1Q3sun7K4DlPt/J3G/mjAK0mL+nU1g/u
         Zu/W9E+Oy9UUiUyWgnZ8JZfsE2QpybmENEIGxO+QzyYnFq+jNmizR8jJAR+QtZNBsQOp
         RBq1zI0K1QB4LMd1HP2iSpBZhaH44ENfWJCfx4IdHcDTJHKaZKaqZencqR824giSjU7I
         RuVgOF4CbwoYRsvgy2/U/EOI+2Yk6Wh0oJXhgezAAoNgORSOdlEZp2Jk40g9U7eNUDkC
         KmCw==
X-Gm-Message-State: AOJu0YzQe0iE8MI6mBQGxEWGe1idhQDqcBN9HHXwMuaCDRFaXru2Jdz3
	tJTW4Cwi3Zfwb/huc7MH9K7IDa8NZ21JvBRD3pzKy796o+IRqT7RUHT7
X-Gm-Gg: AR+sD10ZtuPUpJa2pBRLPK55xzYU64AKhe7UwwKc4nQAkqF+qFVHDRvrT8LgILd+E37
	PBe7XAqdHp5SKi/C4FTvz2/qpnyw6vvd5QCsXmrIwNSvZP8lsBocn7dsEeie8hHM3zqrs/PrETg
	tLuGbZ9rmF9yRUdpTU/Fo8SZwlZrLVsf9yfhg01pHrZFXUMFR0rsHR6lW8E8P5G6DCHoL1S/umU
	i1KLdlAk+l7+w2J1NcYF7Hwr2f7XLO+T4m5gBlpkhQch42GJerIlCV/fk+HDglzzkvGlDQUtjFX
	2g9Yzs7MtSplCAwkfod01QyEcooNjPHGrPlLRa2/cccR1K/kERUWtoEB1S4ug0Y6lhEDx6/zTUO
	utiz0gfmXxNP7TOKZkgSganoZ1BPJMm5RpPhj+1O4u2aSvwy7+3+hdkaXOJ40iFfUF6SQxUoV+q
	4jaGo+3ot2Y338tj+K9fZS9lBx1BnFDn4bl2js
X-Received: by 2002:a17:902:ce83:b0:2ce:ceef:6632 with SMTP id d9443c01a7336-2cf34948972mr262802425ad.26.1784721187139;
        Wed, 22 Jul 2026 04:53:07 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2cf8f2e6247sm13376205ad.54.2026.07.22.04.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 04:53:06 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v2 2/2] ASoC: rockchip: rockchip_sai: Fix runtime PM state after manual resume
Date: Wed, 22 Jul 2026 18:52:50 +0700
Message-ID: <20260722115250.62588-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260722115250.62588-1-phucduc.bui@gmail.com>
References: <20260722115250.62588-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_045308_337766_EDEE5ED3 
X-CRM114-Status: GOOD (  12.68  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Probe manually resumes the device after pm_runtime_get_noresume().
Since the PM core is bypassed, runtime_status remains RPM_SUSPENDED even
though the hardware is active. A subsequent pm_runtime_put() therefore
skips runtime_suspend(), leaving the device permanently powered and
preventing autosuspend.

Fix this by calling pm_runtime_set_active() after the manual resume
succeeds, and defer pm_runtime_enable() until after the device has been
manually resumed and marked active. Also call pm_runtime_put_noidle()
on error to drop the usage count acquired by pm_runtime_get_noresume().

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_sai.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_sai.c b/sound/soc/rockchip/rockchip_sai.c
index 9a80e120dbda..55d17536c3b5 100644
--- a/sound/soc/rockchip/rockchip_sai.c
+++ b/sound/soc/rockchip/rockchip_sai.c
@@ -1474,11 +1474,14 @@ static int rockchip_sai_probe(struct platform_device *pdev)
 	 *
 	 * NB: we don't rely on _resume_and_get in case of !CONFIG_PM
 	 */
-	devm_pm_runtime_enable(&pdev->dev);
 	pm_runtime_get_noresume(&pdev->dev);
 	ret = rockchip_sai_runtime_resume(&pdev->dev);
-	if (ret)
+	if (ret) {
+		pm_runtime_put_noidle(&pdev->dev);
 		return dev_err_probe(&pdev->dev, ret, "Failed to resume device\n");
+	}
+	pm_runtime_set_active(&pdev->dev);
+	devm_pm_runtime_enable(&pdev->dev);
 
 	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
 	if (ret) {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

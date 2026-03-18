Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 001C5103E190
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 14:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BnUoT/ZeiSOZozxArAF+/ZOFCVxvw1BN/WjCYFxDeXw=; b=AwH7iHIymHX8LG
	dN6Aze0KyeAXusQlw+ySeF2liHOPZOuwtdLyl/k9AIViKkvGVjd3eECR/LR9SbXwHcSCbuTChx3h5
	e8HzKe5sr2/GWlR8RkVw5gAfOEd4o+wQ9GdR9ocMVudJfs8chn6Uan8NdAZUygbqmEfInbI1GexVf
	sepi+A+5h1cIAWLFkaoFcbxbU/n8NQ6qBppN+Guc3aMPOU+bDIxSSMO/bhs+HKx8XpRFZP7YC8AKB
	royVehcUWUTBPrAx1nm6KP78oJhXydwppueibNTwZ95qiG1EbtE1d4vjDDUqevmyGZwER7awQV8OQ
	3kfTra2C0S3K+FqOEXbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2sEN-00000008d7Q-1jjH;
	Wed, 18 Mar 2026 14:50:43 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2sEJ-00000008d6E-1heo
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Mar 2026 14:50:41 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4852afd42ceso59267025e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Mar 2026 07:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773845437; x=1774450237; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v4jx9be2ixpeez8G3+677w21LKJvNvIiDEiSr10SzEQ=;
        b=ofJlLKAwWFSbQ8WCvldaXbodhbqdUDzBNzhWvj/iQ5DdAF5jIvlie45CWA9pXj4qMg
         SBWgpSFB4Zv7K9BhBigxLNf3Mu1lcU1K8fFR68CzjDRnRuZXMyRonCljGCncAXojULdl
         GRA8f7EWWbYbN0jf2//hQkV1eM685PGMysE354oxAVqr2ApM2gVDPOkb70olevj8P5F3
         2TdCGgeXTSCpOz9nF8RUjJUDSa/ArJLl0u3+2vyW00pZn9Kg2hr9jjZ8e+8GLg08RadV
         /xp6jqqqn5yz8J4B9KDsks5gZsxr1LyGx5p2/2WbxeUrNLQLHGb8SLfCRl+hCXb52mS6
         Jw1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773845437; x=1774450237;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v4jx9be2ixpeez8G3+677w21LKJvNvIiDEiSr10SzEQ=;
        b=ezYvHjux9cJKk8eUxmnZDOkwIcVMmxb2DO44V6vN5704OLJtVgCSOAhfQeq4W91aHz
         TwcvlsVtJJeKloKWWBW+bjwIIIav/ipufRiRrkhW1v12m06I97Uo/0AYFhETOpkPG3Y5
         sTq/eC4/keN/c8J6v6yFoBTs9YsPxwaAttjxFF/IzwihvzLclHlnMLS+TNZGBGmBOhQi
         jb1/ocnqa2Q3jXPflrlXP7CvhQ3FvOvnJ69fc8CK2WcgG6S8lr6hg4h5a8vbETiNm6gw
         yO6i/zT0wqm2yLFCiWs2K/iSPxftnoLyT0Ht1GirJBUvUeX0n+dQHJB9hQaxppDnzdE/
         fnIg==
X-Gm-Message-State: AOJu0YzzJ5tTQdUM5eCj8pstRIoMMcS/EJDuyotf5CgIalNvMwRcJ8gj
	pWmTT/XWdXiNqMPHbgTkR/Al2myRAQPHtBxJR9dEpNxGZIi1Hi4K4FgZtbzCmv+/8Do=
X-Gm-Gg: ATEYQzwhcS0VjL/ACp8UMv2FpiVIhz0XroXDs0MJ9HvHx9OqTeHbonef8d1A/ABYBB1
	M9CDFvKhRH2VHK9Tyyhi5ctU3Ujupc1vq3un3W0mIeWdoJbkezW7n16cZIjcROfTB/FHZ88QvRA
	6zS6EGqS7jQ0ivib64q7yEfftmkLuXrJbuZxTD6I7D/c8i9xrMU3YwGlr2PEUYXYkwpDh8ZZ15G
	pNsDM4erncDCXSVYD0vrNe0z57kDAHbc1Jsslbk5eMCpH8Ea35wGH5J0j4+hAdgUXu4SbO17fDo
	zV91CXPt8pcf6TEy3eYXOeNevK0KYtreFGExIhzB4xPreR2P2eabwD0eY9U/CfgHRAZ7JXYJz3C
	0fbZJzCSWBqj4uDA8HaW5YbNbMa+EibR51M9sjyarMS40iCTjD7FzY+O7juQTx+qh2R4EHWt0kI
	w03noOKlONvVM+q6V7dSmQzDdwKDZz0aznoEeTXXGwNFp0rjXUE14IOYuPPhzi2G0DfIjSDk30f
	Tdv6w==
X-Received: by 2002:a05:600c:1f13:b0:485:3c05:24dc with SMTP id 5b1f17b1804b1-486f4465ec5mr61165625e9.33.1773845437260;
        Wed, 18 Mar 2026 07:50:37 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f421a6f2sm64455665e9.8.2026.03.18.07.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 07:50:36 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 18 Mar 2026 18:50:25 +0400
Subject: [PATCH] ASoC: rockchip: rockchip_sai: Set slot width for non-TDM
 mode
MIME-Version: 1.0
Message-Id: <20260318-sai-slot-width-v1-1-1f68186f71e3@flipper.net>
X-B4-Tracking: v=1; b=H4sIALC7umkC/x3MQQqAIBBA0avErBswo5KuEi1EpxwICycqkO6et
 HyL/zMIJSaBscqQ6GLhPRY0dQUu2LgSsi8GrXSv2sagWEbZ9hNv9mfAdjBEvnNaOw8lOhIt/Pz
 DaX7fD/krs4pgAAAA
X-Change-ID: 20260318-sai-slot-width-378eed5c22cd
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>, Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1654; i=alchark@flipper.net;
 h=from:subject:message-id; bh=NLuWlcb8pDVc/jx4hn9f+1Y4XpERqSPMPejDpC3HkM8=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTu2r2LQXabQmNxUOTmuWuVZk1xYDH7F7xj3tm5YhsuT
 d5751SZX8dEFgYxLgZLMUWWud+W2E414pu1y8PjK8wcViaQIdIiDQxAwMLAl5uYV2qkY6Rnqm2o
 Z2ioY6xjxMDFKQBTff4ZI8P3KSv/KzEcnL3vu/K+l+pbFh3xStZe+UPM8PKzyZlhs3YwMzLskdU
 R9W1wm3mARX752pKM9Qv8kr5alHXePbncc8pXtio2AA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_075039_453686_AF7BCB51 
X-CRM114-Status: GOOD (  11.43  )
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

Currently the slot width in non-TDM mode is always kept at the POR value
of 32 bits, regardless of the sample width, which doesn't work well for
some codecs such as NAU8822.

Set the slot width according to the sample width in non-TDM mode, which
is what other CPU DAI drivers do.

Tested on the following RK3576 configurations:
- SAI2 + NAU8822 (codec as the clock master), custom board
- SAI1 + ES8388 (codec as the clock master), RK3576 EVB1
- SAI2 + RT5616 (SAI as the clock master), FriendlyElec NanoPi M5

NAU8822 didn't work prior to this patch but works after the patch. Other
two configurations work both before and after the patch.

Fixes: cc78d1eaabad ("ASoC: rockchip: add Serial Audio Interface (SAI) driver")
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 sound/soc/rockchip/rockchip_sai.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_sai.c b/sound/soc/rockchip/rockchip_sai.c
index 1bf614dbdf4d..ed393e5034a4 100644
--- a/sound/soc/rockchip/rockchip_sai.c
+++ b/sound/soc/rockchip/rockchip_sai.c
@@ -628,6 +628,10 @@ static int rockchip_sai_hw_params(struct snd_pcm_substream *substream,
 
 	regmap_update_bits(sai->regmap, reg, SAI_XCR_VDW_MASK | SAI_XCR_CSR_MASK, val);
 
+	if (!sai->is_tdm)
+		regmap_update_bits(sai->regmap, reg, SAI_XCR_SBW_MASK,
+				   SAI_XCR_SBW(params_physical_width(params)));
+
 	regmap_read(sai->regmap, reg, &val);
 
 	slot_width = SAI_XCR_SBW_V(val);

---
base-commit: 8e5a478b6d6a5bb0a3d52147862b15e4d826af19
change-id: 20260318-sai-slot-width-378eed5c22cd

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B26E2C624A4
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 11:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9Zq/SO+jMA/fl6h0FOaqfixiApMLb8ZVgD0IU6lzj0=; b=BHthjkGCYftgJn
	zEnFL99zRZUSpldEPxWngFk3v0pRnvWECfSJ5b72Y1KYvebRqo7ryQ8WwzxasgQB0LKQErQY4J3Zs
	Y4hvHXc+842Kk9V82aUyV3hISqqJbMnqnROh9QdrOWuZSbRWIkpioPq8n684V0W2F2eAvm7r+kA8j
	3EtmzAMbtuanE0qYnRPF4/RzkX8bZW599hVE5MMUde1IBbhSlneH0/Sf8axKtjewl5Y0ASvtjQ1Qi
	30ANI6Aya6SX0VXlaJWw5r+0FUkh3KwPmqwepoor0X8pnDt8baSbMfXefhCfa8/w4LuZJWPrsMzVf
	S1MDv7kzaZte/Ah7kblw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x25bw-0000000HChj-1l6e;
	Thu, 03 Sep 2026 11:28:04 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x25bu-0000000HCfs-15F8
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 11:28:03 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-8557c3f270eso1372546b3a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 03 Sep 2026 04:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788434881; x=1789039681; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6DSDRRDoLPHiKnDrwS7cordsPoUIfThuJ85SX43JJJA=;
        b=Zm7cx+p61l7a7ENPfcKW+UC9ophd0YVuLdzXyzicThqLO6N4+IQixgG3kluUg6BAQ2
         Z25wbT9/sCkR64pr/ox/7AqmILtjiuhym0r0v58MugQvfcA82wEKoGWJ3ZTK1o82CpH6
         SfqPkc3nS6RI6MPuVBJuV6Ta2knp79DXAZyFcD9EiKR3eZN3QL1BOt+cCHmhonCa0sig
         2l1hQOGmyBjxG/IwdqpzoHfRsIXVBHDxZrjBdNZSx99A/nxvNwJKmKF25YbY/WIPOe3o
         mKXKMiBzO9pvYBW8Kvum9bkCoEdr54SLrKCoRUZVS17eK5+GoinfwEtu1Ci4DwWHiTZo
         WbZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788434881; x=1789039681;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6DSDRRDoLPHiKnDrwS7cordsPoUIfThuJ85SX43JJJA=;
        b=FuJ5g+OAmn62Z5jhhZnmTjHnXlQdSGXf+hlR5aitTK4rBk4M+qHCy1J7Rg2Yh//lC9
         rCHN/F5TbGRL+DH+1nshKk3iE5LHFRglhAqW0voFSpJ4HvEPK6uNUWNC8Chu7Rpam/4x
         1cO74oGV4GpghBxFKsGupVqzxngP8xbJf1Uw5e6Tz5KcYHnZGEEbhKleXVv6zA8oFDdt
         7eZqTW8gzARcLk9HuLz9nogKcm9DmlIukiYovA4GlfU1V6V4nfz9INzzAcFM/Cf7wkZO
         G0Hddd4BH+Qsb9AO95PaP4WrLbJllu+M65gqk8W71ryBIBBiWe1pc4vUvKjKGGlXgrrj
         llYA==
X-Forwarded-Encrypted: i=1; AKwUvBwU/tVXACX9ijxGPpxRQH5kOGE/IpUCU/rRkWqrMSrczzdoCqJt+J9cyZL+DU0pP4YQy7jr5TiCecCbWdhjNA==@lists.infradead.org
X-Gm-Message-State: AFuF++kYoSbOvuXDwfdjkqryD2ACozWJpodwe4YYOtlVpLKvKFlnfz5z
	LF6/rA4nnDPrn2T3t9B3S7iCXbc71UCpVycNjxWN2SKAJrjd9rI7oOiN
X-Gm-Gg: AYBFou1y19QW6q921mWg+kWAljCPyqq7vtVI7vRbIbxX4YDMubzQQYqPVTTFgMb176n
	2bNjOzkXS9vNP/ME7sh4lVFfUL5DpxE2BDZQ3BbaoBol4VFs8Twp9k6d3EyUt44nGnxTirPWHRs
	9mOSL7j3EBjU6ONnWW3XvmSre3+EXoszUse1y+2KCRlxTslnikkjkmQsqxvb++c91DQVTlpjJjV
	OR+A41uDGjvyB6VrFjNCPnlgrkzf0fh7vSxzeGmE2PgNTODouJS2heZ+6ISouCfen1eGrz/mOAJ
	6XlGq1bkW7Sk3RA2HkhVIMVkQCKptp35LtaNkWUL3xDaG19n0k5lqx48wVjY+dL3xv7WxiF+6hP
	39aDwZa9YMNQ1t+K4n/R36ygeQr8lcuRdvYgDFBwIGLuLSMnyAX7e0Gwhhxfk5tkSlMPpj8jezi
	2Cy8Nbd+XNcOVH9ls1g3uiZPsN1lcYnXHu/tKyhMNQKPnrkMTrUV1W1VMKAPcJBiP5kpAZkZQwK
	nrGT9hk4T4EEG6CK5Q6XaKffRvnBujS9X2lDGIyF35gyXusMmwfpPMN6o9M6aPNv88Bfig+n+A1
	2roM
X-Received: by 2002:a05:6a21:9e0f:b0:3d0:9590:7148 with SMTP id adf61e73a8af0-3d9adcc7c15mr18547929637.17.1788434881320;
        Thu, 03 Sep 2026 04:28:01 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc43d467134sm856084a12.30.2026.09.03.04.27.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 04:28:01 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>,
	linux-sound@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 2/2] ASoC: rockchip: rockchip_i2s: Handle runtime PM resume failures in set_fmt
Date: Thu,  3 Sep 2026 18:27:39 +0700
Message-ID: <20260903112739.373621-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260903112739.373621-1-phucduc.bui@gmail.com>
References: <20260903112739.373621-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_042802_300695_160A8036 
X-CRM114-Status: GOOD (  12.02  )
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

rockchip_i2s_set_fmt() calls pm_runtime_get_sync() before accessing
hardware registers, but ignores its return value.
If the runtime resume fails, the function continues to perform register
accesses while the device state is undefined.
Replace pm_runtime_get_sync() with pm_runtime_resume_and_get() and
return early on failure to avoid unpowered register accesses.

Fixes: 53ca9b9777b9 ("ASoC: rockchip: i2s: Fix regmap_ops hang")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 261f36d4c2fd..e7ea71783e37 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -244,7 +244,9 @@ static int rockchip_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
 	unsigned int mask = 0, val = 0;
 	int ret = 0;
 
-	pm_runtime_get_sync(cpu_dai->dev);
+	ret = pm_runtime_resume_and_get(cpu_dai->dev);
+	if (ret)
+		return ret;
 	mask = I2S_CKR_MSS_MASK;
 	switch (fmt & SND_SOC_DAIFMT_CLOCK_PROVIDER_MASK) {
 	case SND_SOC_DAIFMT_BP_FP:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

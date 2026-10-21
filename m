Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA5C606A321
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 12:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uk6NDPnH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=jxnNk48f
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4SGAIvJGF3Ivq9AZIFwH9XaGQaR1khS6xJueVL6zBac=; b=uk6NDPnHliW+18
	gCxOrjmF4Giejy6GV4wxkfZhDVR+d7rmjJhsAby6dhwHESRNe/tA5V9G616tLDOpnyCMPqS7cqtZ/
	7i8OSqOm0fcbCjlQtlbXP6oWUUed5mR66JuPAhMqUAtTXvZ0CD1FrWoKFsDyvY9e7g+a7QVQzalcz
	7PincNC+EkJfaOFfmvpgQ7NpVKvn2kkXT1KVOreFB+uEQsPRAL7JFjfaAoLSmtSKYDf5a/N05VY39
	NCk8ssaiXgMvVS1r5jrSczXBKPrw3Ma6BEqd+NubmyDOOK3FoQJReEiqyllGyMDbbI92RdJUmOuaw
	6/rC93LJJpP+xNu9qrmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJVhw-0000000Bpbn-2fFP;
	Wed, 21 Oct 2026 12:46:16 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJVht-0000000Bpac-2Oig
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Oct 2026 12:46:16 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-8a06b44bd01so363560b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Oct 2026 05:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792586773; x=1793191573; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=8cMpNSZYfsYlTclwX1/iQuhdswpG+2A2KBsZGqDHCHs=;
        b=jxnNk48f+cbl/XM3WCxWH3nzuwn3IY/3FAcKO5Dn5tI3qNj7/NGw3pPMqJiPN7J6l9
         wl8zwZjY1QNbbw4gwecK3SCQZydzrDcobfsllyLzR3VpqQmCdvVEeWlva/w5Cr0lY4oA
         H8sWtsWdvwvRHNC+8E+7HWQ3gyitruMXQWiCts8pniBsd/wA+YeDYIxyGNZjYb2C18O5
         SyLgvgD/jb0GjITojCJeMUHVR9meAMSZUqsrspGDtBrk0jfAkErJfaZuTrzaMLvtc4NZ
         tGOkj8vBgA247o3i1SJvl78ZGz8n+nHFmxMRQGzHA2ZfZ45T0AMR6VConjKTtm9O0djL
         sjTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792586773; x=1793191573;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8cMpNSZYfsYlTclwX1/iQuhdswpG+2A2KBsZGqDHCHs=;
        b=rZTvVmtopstZASvvuRLaKB16ZeIb5kaH0BfY7kZURGux/q3WoWF5GSKz7HsxwGG51d
         G45M1/HnG13wTg4CEreI4RKTHDJV3KUZkkCkt8ZQGpCpuc2sYHF4yMjtg8Nkr0C0t+im
         nKXUcE97MqLuq2eDXe1Kxj8vuGKDkJx8uO+MojmMni4R/T+SHpO/3NHYulTqX5ZfmhFF
         GCDl6odyVgitQX8YihpSBN27JcDayxvu9qzrFOcMO26bMk/0pzvW9visIThbZag88TLK
         7STY9fyrsNUScxGC4PsC9x78aEpqL9pr9KxmSKY1VEgFFt/oMwaOrfav3rhhNMfg7Tnd
         icHw==
X-Forwarded-Encrypted: i=1; AKwUvByAeuXloYNilnhQseDt3XBfhJREWIymunF+n+rPwbb2ZfgvWkyQOpgI0T/BYEuyehnsm1yN0KrTjzvSxCfgKQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYLlz04Kj3DxV1Ep0bYYzAJJu/8hLq+YtJZri0PwrPZKMHWze4n5
	l0iywPA0gQvNKOLpVHAvEWlxpARyps2CztAM0jpr00udH82Er6+N0ncI
X-Gm-Gg: AYBFou1kyz8jW4/5YvaWdwNXpY9syJzgrDbh3cbBjYnDnFlA1+lT4POAOBru8IuA/nx
	EM2Vj1x787pjwLVj64UvmRUCKMg6L/Vod3kahsN19TG9sJlH/j3r4EsKgFeJtcTzmsCKVi/WdaG
	ZzEYAnHSy3zgmZ3fOtBzMf+uAZbo43Qq4PWtZ6yOOGfCTkX8GAvh0Rzl/prhXtKv2EqzcVrSWBJ
	1kBbSrDDpvqj2YdJSJbXUVh2dKrSevM1Kbho2bB9KmpT4Y51csy7WXMhAOV9zsmfCq9nY3MCz3g
	vCaPZ77sCkJxMD7G9QnYxmC1BmCligb5MUP4A8MI/r1Gw2kwcwvCPaXR8MQv6VGwpZsrtcS6KfT
	3U4JwW2A9xQ/CRp6ZiOBIIQNblYfNyIt3DlUsnvXizETZrk5fdVCtvHcy0P3lajWKFer2JxBAz6
	n0gSAxucc/xxMJkp/4FffHbr7qJX4s3GioYZtnIM/FNdMxmbUnLh/AGqQB7H4e/R3B9c0/jGsgp
	I5sFp1DL48JD3Na741VZvsR244Ey3SEo8sW0NyE1KX9aMqQK4t7H2zk0ECMT9hPB1V3/0zjXfX1
	9w9qROJcA7aeA48=
X-Received: by 2002:a05:6a00:ad82:b0:899:632a:9613 with SMTP id d2e1a72fcca58-8a089d2c36bmr1490501b3a.40.1792586772365;
        Wed, 21 Oct 2026 05:46:12 -0700 (PDT)
Received: from arch.localdomain (123202092053.ctinets.com. [123.202.92.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8a08960fa88sm832964b3a.53.2026.10.21.05.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2026 05:46:11 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/2] ASoC: codecs: Add Everest ES7202 support
Date: Wed, 21 Oct 2026 20:45:46 +0800
Message-ID: <20261021124552.767218-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_054613_613290_C23133B6 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds support for the Everest ES7202, a 2-channel PDM
analog-to-digital converter controlled over I2C. Patch 1 adds the DT
bindings and patch 2 the ASoC codec driver.

The driver is based on the Rockchip BSP driver, reworked for mainline to
use regmap and devm_ helpers, probe the device ID, and report the actual
per-step PGA gain.

Changes in v2:
- Drop the hard-coded 30.75 dB PGA gain from the power-up sequence; the
  PGA keeps its power-on default and the capture volume controls apply
  the requested gain.
- Keep the PDM outputs muted until a capture stream starts, instead of
  unmuting at the end of the init sequence.
- Re-run the power-up sequence on resume before syncing the regmap cache.
- Handle the regulator_get_voltage() error return as an int.
- Drop the unnecessary of_match_ptr().
- Fix the copyright header.

Link to v1: https://lore.kernel.org/linux-sound/20261020143135.623897-1-jerrysteve1101@gmail.com

Jun Yan (2):
  dt-bindings: sound: add Everest ES7202
  ASoC: codecs: add support for Everest ES7202 PDM ADC

 .../bindings/sound/everest,es7202.yaml        |  56 +++
 sound/soc/codecs/Kconfig                      |  10 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/es7202.c                     | 367 ++++++++++++++++++
 sound/soc/codecs/es7202.h                     | 131 +++++++
 5 files changed, 566 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es7202.yaml
 create mode 100644 sound/soc/codecs/es7202.c
 create mode 100644 sound/soc/codecs/es7202.h

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA89FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 15:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lx2lp9ObQvfpJJxrt/pWXEBP2eqMLhiPwiYyXtioFMs=; b=1rKzKnAlOVsxFf
	Br1Hi0Ri6zaM5xncQs9fffLqPbWILAmNXB/BvVCPVQBlSQxEo0nfOaK+e0fZoP0KdzQHJFL8vjJsa
	LzbJ5albe8/KSartnCwDjaUGj+e5QNH4INXaCjOCyVk6Y/sY4lp3HGmKcQV+nFhVS4esK5dfIgDOT
	Q47o+Avm+AEpM8GVvshTKt3L/uVLxjFRnGf87o8n0ZwSO4Vhg5bAq+7YSHIFd0VYnNJTR/nmi6ICO
	TmC6Bgo5TJ4DRgwlQrtEcLJkpbqFcTOcw+z+ZSQeRv2bhn84S9z8AqyQph9VBMXk95moXf6o8WshX
	3kw4ns3UfMcdpqJ4aGfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1rtj-003Gnk-Lg; Thu, 16 Jun 2022 15:59:07 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1rtZ-003Gdh-86
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 15:58:58 +0000
Received: by mail-pf1-x435.google.com with SMTP id x138so1856592pfc.12
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jun 2022 08:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dt7moyOGq/wGPX6up0TVePAZeRh2KcSmjYDlmf94HxE=;
        b=etAzaLvBUF3LEk3BYYPg9CD5v+EkBJJTvunVknq9iG/wLOY/Le32cBqexS0UkwiMlm
         ETzSnFjod9eT57QJBIyjiwXD7Ji0tFwwKHTkKj1Ize6vtPyw2HENYoBzT1QYSCFPVmH1
         oC8sYIl2DMZmXaRla94BaQApJ2Rdu8zrT5qdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dt7moyOGq/wGPX6up0TVePAZeRh2KcSmjYDlmf94HxE=;
        b=PMxBnnHQKy7LuWMHYKCN8pyvafM96FgXGwBfakWdqRmagsFsB8n1CnOFhvO2F/xqkl
         9ju9b4OfrMv7v9t6wx3TIrGjBCDO0KEDU0fvzBk3mTJUtgy0DIejkHrCgTZoXFXStJwO
         +PT3iY6GP5k7zHQwenu0uF8C95DjvOt9IiHnkSC6YDIe1tkYjVU3aZmErDwJJt31pKf6
         sSZX7wCTebDyK3LbYlQ8fvBiNJw5eLWgirORjRr1FQENlv/br1iI2N4yfwPPnRsWzRra
         GUjgjTzZsKkwLXC8wvyWyl4VABuUm0aBKBQVdtdBprOah58uobimCjLFTk2ZIF8QNO+k
         Oy2Q==
X-Gm-Message-State: AJIora9thYgkBtyVUYg4lUXT9CBQnaztQeByXGf7814YlZSBYkb9keI1
	j6Q4zAQ69eWVXbDgRv+Yt9bdbA==
X-Google-Smtp-Source: AGRyM1t0X7UHlN5X6Tiqx+yKhBWm7VLeGVTI8ighHLTVurpkRre+vuBb+6E5+wGZ4rm7QDhfp1ipTg==
X-Received: by 2002:aa7:888c:0:b0:505:7832:98fc with SMTP id z12-20020aa7888c000000b00505783298fcmr5333501pfe.0.1655395133562;
        Thu, 16 Jun 2022 08:58:53 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id f8-20020a170902684800b00161478027f5sm1779797pln.150.2022.06.16.08.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 08:58:53 -0700 (PDT)
From: Judy Hsiao <judyhsiao@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v2 0/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Date: Thu, 16 Jun 2022 15:58:33 +0000
Message-Id: <20220616155836.3401420-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_085857_319451_E4D80AB0 
X-CRM114-Status: UNSURE (   9.48  )
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

The patches series is to fix the unexpected large
DC output voltage of Max98357a to burn the speakers 
on rockchip platform when BCLK and SD_MODE are ON but LRCLK is OFF.

Changes Since V2:
    -- Add documents of i2s pinctrl-names.
    -- Fix dtsi syntax error.
    -- Include the dtsi change and the driver change in the same series.
    -- Ensure that driver gets both bclk_on and bclk_off states before using them.

Judy Hsiao (3):
  ASoC: rockchip: i2s: switch BCLK to GPIO
  arm64: dts: rk3399: i2s: switch BCLK to GPIO
  ASoC: dt-bindings: rockchip: Document pinctrl-names for i2s

 .../bindings/sound/rockchip-i2s.yaml          |   7 +
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi |  10 ++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  25 +++-
 sound/soc/rockchip/rockchip_i2s.c             | 134 ++++++++++++++----
 4 files changed, 149 insertions(+), 27 deletions(-)

-- 
2.36.1.476.g0c4daa206d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

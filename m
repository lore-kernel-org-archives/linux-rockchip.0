Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2B3AC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jun 2022 09:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/2Q/meY96vBQ7FvmjBH7TZtq7jGA90M6ccCF+Fd+qKY=; b=vZZjhMwftgKJwP
	uD0F3jFupZmScmEReHwTXVbePZQZQ4bxoT/N3ZU8YAOINyjEhg+IW9Wc0jiU30RfpfIJD7R8amziR
	f9w6GB7lSc9/5VUyZmZ2KhFKjaLdB64Voy+PliqZgNxRJDvYBBWOQU5KV8I/8Ow8RaX3DQqCsqkXB
	OAj+0YWHxzarAEFfUNlG29Mo169ZArQal8mn4XRpWg1gZQLqPErutdw0XfnmddZw8MOshzlOEcraU
	YdbeBrEjIo24OTN5NjYll2nm5qDXtjLctBBeJdbRNq1e6ZH/qIx9XwgenOouqvy13aCy7QCmYJU5p
	8SxalfquhwToYTBSiByw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2rce-00Dnv5-4d; Sun, 19 Jun 2022 09:53:36 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2rcb-00Dntw-5K
	for linux-rockchip@lists.infradead.org; Sun, 19 Jun 2022 09:53:34 +0000
Received: by mail-pl1-x62e.google.com with SMTP id m14so7345477plg.5
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Jun 2022 02:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kR0nPmihBKg/JVQtdlu4B3iD3y1xFJeR/L3hKnfirkg=;
        b=Ujfw05oCO6CQHlxIt9U1/Vw2jZz2wiVAu2MidO2JcQLF7s5nkeLtX+pXVg0r+JG7Rq
         bspYGi4fxvj/xaZ96AGR+/2wKEL8/NTtY2c8USzvxw8l9fcUpS41zrHtRVsNA/M50cgw
         jGn6RF4QAyzCyK8+RxV6AHBAabXA7pT2Kp29w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kR0nPmihBKg/JVQtdlu4B3iD3y1xFJeR/L3hKnfirkg=;
        b=OdkpMf0F9nHZx7t1y1lS+32H8v8Nqly9hMOKZh8aWxIyHHk2PJUSbBVHCl79Mz+7BA
         9oQllFdmEMaPGBbWmOqTqsOlkXMRG3eUpewUHuDfOZgtcLsdojzY2W134S5AXas77znF
         /EF1hTL+8YFO87H/uAns28jcRlrPjF6Cc40VzjekdYc2dahsgKpPf3DYTuxRKY+uC/wY
         68aLv4TCVz0dMH79jDAm7TlTNhMnGDBACt62X7K6rd3MiCpV0aOv5wLKBPKgELata7VB
         X60bHznLOfC51itZ3Ctwbxa49CD1S9bIFdU+67tfC8vsSAKmFwqsfTFNzsvDlAIFIJys
         kzzA==
X-Gm-Message-State: AJIora/eWYIJNxHEAXIW6YnYnZsnytGiPwP2GOtBbYKvBKbXVAaEzyD4
	pEtNOoySC+wJc/x8E3+T9Ha5zg==
X-Google-Smtp-Source: AGRyM1v7zPmyGbZPOSnbb98hniYzON8YpxLeYV5xLE/gaU76OD8LpMvcKXf8EiPwhBviJK2jxy4o0Q==
X-Received: by 2002:a17:90a:e418:b0:1ec:9908:d5f0 with SMTP id hv24-20020a17090ae41800b001ec9908d5f0mr3170210pjb.7.1655632411623;
        Sun, 19 Jun 2022 02:53:31 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id 135-20020a62178d000000b0050dc762817esm6799971pfx.88.2022.06.19.02.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 02:53:30 -0700 (PDT)
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
Subject: [PATCH v4 0/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Date: Sun, 19 Jun 2022 09:53:21 +0000
Message-Id: <20220619095324.492678-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_025333_273806_6630120B 
X-CRM114-Status: GOOD (  10.06  )
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

The patches series is to fix the unexpected large DC output
voltage of Max98357a that burns the speakers on the rockchip
platform when BCLK and SD_MODE are ON but LRCLK is OFF.

Changes Since V4:
    -- Fix indentation in the driver. (Align parameters with the parenthesis
       placement.)
    -- Fix incorrect return type of rockchip_snd_rxctrl.
Changes Since V3:
    -- Fix indentation in the documentation.
    -- Put pinctrl-1 right after pinctrl-0 in dtsi.
    -- Fix indentation in the driver.
    -- Remove unnecessary dev_dbg() in the driver.
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
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi |  10 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  25 ++-
 sound/soc/rockchip/rockchip_i2s.c             | 171 +++++++++++++-----
 4 files changed, 165 insertions(+), 48 deletions(-)

-- 
2.36.1.476.g0c4daa206d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

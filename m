Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3084C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 02:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2fUS/VyJN6YeCkNQb0jraVv+un+v5Gen1BkMG/JvUec=; b=wMjN5V3uLNMW9/
	YTDgf8F5keYPL2B8zgDH0oB6WIelHyQbinhyX5UEbybn9GEJ74fiubeFwO4jdv3p77PjYvZ6KPUyP
	YzmBBJIWz83f9h7hqBPuFXbv5D2xdviysQslz0yW1grh+LUp7/3Nu3uuCoFHjx/BT+YK46w3EXT9k
	qIutVcNJkY4u4SzLsiXOQSIkMrGWr4dFd/hwXizVh67e3TaCYi5uZ80x/eIhu80gGi2QuUFgOdkRI
	lUvTeUqzmeCBzanJBxHEb6D+uBWPLtOX4OCKmJZmgiKnEF86RvgqIG+aUgeTfbFPoOrXWT1CzUJKC
	BQ2/OzZzeyy5WtqdSxpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4CTd-00CxH8-IX; Thu, 23 Jun 2022 02:21:49 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4CKA-00CtI8-Ah
	for linux-rockchip@lists.infradead.org; Thu, 23 Jun 2022 02:12:03 +0000
Received: by mail-pj1-x102f.google.com with SMTP id b12-20020a17090a6acc00b001ec2b181c98so1109496pjm.4
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jun 2022 19:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hRLTpselmSzOmfEMzptO0DKyWBgV2uZm8FqGFEjaV8s=;
        b=BR2naSce8Q38Guq9+xSEESPiRtMPfWntr5oX3C6t9VIHlwzBOfmM9RhSLX9CWTsMYW
         2gUyBX0+UTMKdPEfxtmCJ4CA1pEbwNKXe4xcp3Vq2XvN3KCbwROgQnoECWpG9Sb6mwL5
         ysQgodcgLMBdNiZaq+cVygPxvvgpSBqG3a8w0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hRLTpselmSzOmfEMzptO0DKyWBgV2uZm8FqGFEjaV8s=;
        b=y2pta5wLMtpAGTQpwacqy1E66JisQdpZ3l/XRY7lFAFm6vnJnqWe+JAfcCRIyln7Ff
         FmoOILq1h+v+4T8wusHqWXWF/aiUPuNSE85Q4rS7E6IBObX2kOBMCsFj8EmtHhcmsyGM
         uZ/9YLp88mHaEGs7h+Y+apfYgXW/FnnzBO+4DeowRppy0YbggsVylS8uFpFriNuNor8u
         mTmA7QS/QH5RdHSbt/9fw8uNma59rYrrMmO/smyJGy0+wFJtZJHThvnsAPf/8hbbciaU
         PzrXaNdkQHjslnNc5tyKK3jgSJlNr4IkujG9gFuznZg1cEkl1kA3YjGf5oRNWtDb/AoK
         muAg==
X-Gm-Message-State: AJIora9/0/sZd1PD2YBDNg4x1CGfqEMComV8b0cIkUnYsx4P1TXakE1f
	7Y7HQw/ILKVXuaLyh/Dx5Ptdhw==
X-Google-Smtp-Source: AGRyM1to8GFgYWhfCWzgrps3P2NpjJ8gdP3iEDZCUi592P2vqic1MM8S2D55xH9pxFCZWiiBnYgG1A==
X-Received: by 2002:a17:902:e848:b0:167:6ef7:b093 with SMTP id t8-20020a170902e84800b001676ef7b093mr36677142plg.154.1655950320778;
        Wed, 22 Jun 2022 19:12:00 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id m6-20020a170902768600b0016196bd15f4sm6194000pll.15.2022.06.22.19.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 19:12:00 -0700 (PDT)
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
Subject: [PATCH v5 0/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Date: Thu, 23 Jun 2022 02:11:50 +0000
Message-Id: <20220623021153.587423-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.0.rc0.104.g0611611a94-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_191202_459228_2DAF01D8 
X-CRM114-Status: GOOD (  10.18  )
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

Changes Since V5:
    -- Check i2s->pinctrl is valid before using pinctrl_lookup_state.
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
2.37.0.rc0.104.g0611611a94-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

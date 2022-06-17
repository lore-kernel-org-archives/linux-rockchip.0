Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D4D2C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 04:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAcFNO8d84RUuEa18q04Av2YgwI9ZqBxwOThc7A1rUs=; b=HzNPvxirAUUdf6
	E5zU6zoLgx7Bg6snGFbB3DJWiv4VlEaK+Vx+6SvEh3IeR9LahS9qQhZwXnez2IvCJVMkseHG0MP2F
	IvIuemRD6PtQg8YBRntdqwrqVkTUCXPn0VX8IhWfH83vK+72cKz4Nwl+w0iAg1/Bj9JEvrBk4RDaF
	5bjlPEGjRSRkIY2DLDTPU2QFORhoaA8d7p9eneBrKPYnGXi3rQAh2pfYCjBhDWegIYJ8WoWaGdnGi
	Dk45qFalGyB15KHffzyGgCd6mInvuzVIR0FREf7AoLJJ74pGVpv40Pa3KewmkZPYbJUnd7B+9nspP
	8KFr84CrRF5wBC+Gk6kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23pA-005SYP-Af; Fri, 17 Jun 2022 04:43:12 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23oy-005STX-OR
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 04:43:02 +0000
Received: by mail-pl1-x632.google.com with SMTP id m14so2929047plg.5
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jun 2022 21:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4V37PzSSXKazOVmuV/1IU57ztToNtg94rlJAvJFD1sQ=;
        b=dQmHVotLw4IesOZ7luY0HR/iX+MrLDKT0ZKGWEPGigCk429QtveK90O7Q50azInkN2
         LdghawqCiFx8bDhHgYBUkHrRGvSpcMnMtmkWqO6MJh6vKH5PO9fTMMZEn4XjZGmOi7Gk
         UddI65vmRAWvgoqiD296wWV9lO1yfEKCTUmbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4V37PzSSXKazOVmuV/1IU57ztToNtg94rlJAvJFD1sQ=;
        b=W9nRx4dKAmTYEnkJDJ1/HHD0RYApdLCrVJ8WJEvECFTcZpacwU5Px3eQ2FRkIS4glF
         tw2lrn9bXZ93ksw1r6qI1L4hW+rBAj9NUYO2QswmOonzHJo0rsCFYa5cTcfgCPIvT2mi
         hTttu1oVuTSR7zVQdIl5Gbca1ncx5joV02Gd7HoDo2Sk8v5iuZe6F9CnqgnN+ztuLBfb
         Sdv2J0dOkFdWDIAKkAoX69JG6IGFSpXBzrzVrfKWRNWIr9/jGMU2CVdJsfJP9vRM+MXf
         m4ss5Z7gJAi1B92aEd6HWripXNhQVFnaSlCTaxdJyY4PFhYfIPHfXRs7abaRrXHTm6bn
         kJ9Q==
X-Gm-Message-State: AJIora/Woud397XkYuoHfHZIzvDgw/fIqMFF0L+DvEZbQJVGlxO2z6TA
	xoUHcoz7nj3ho1+mZCBEqwKkiA==
X-Google-Smtp-Source: AGRyM1vSY638NYPK/58DYP7fId8cCruqCOjRTvP813l6kM7Fv/q2/SYgdJpIpHsRjUmSGDZua0Ht+A==
X-Received: by 2002:a17:90a:7841:b0:1ea:3f61:7673 with SMTP id y1-20020a17090a784100b001ea3f617673mr8761152pjl.110.1655440977740;
        Thu, 16 Jun 2022 21:42:57 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id v8-20020a17090a778800b001eab0a27d92sm4491030pjk.51.2022.06.16.21.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 21:42:56 -0700 (PDT)
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
Subject: [PATCH v3 0/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Date: Fri, 17 Jun 2022 04:42:48 +0000
Message-Id: <20220617044251.4029697-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
In-Reply-To: <20220616155836.3401420-1-judyhsiao@chromium.org>
References: <20220616155836.3401420-1-judyhsiao@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_214300_858712_3AD5BA94 
X-CRM114-Status: GOOD (  10.29  )
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
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi |  10 ++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  25 ++-
 sound/soc/rockchip/rockchip_i2s.c             | 167 +++++++++++++-----
 4 files changed, 162 insertions(+), 47 deletions(-)

-- 
2.36.1.476.g0c4daa206d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

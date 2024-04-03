Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C6BDCD128A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 15:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a9zUuqqH77NZnhtRVK2bu71P+wx0ejV32SpQM7nVUgs=; b=wa94KbrhtH9TG7
	gq2sWgkyjq7sdnnW0kt98PjaLaUv++qK5rKpqzUXnLEB1l6oL3qdmesox5ZD8NBt95NKOt6co45BM
	WJ1of8+7bI6rKA4UUMZ8aed++RMblvoMGBT9035ahcGr5qZv8uiu5hsusf4SF9E7VBAYVz2LM9CC5
	r0OfQAN6GD53DJORa9PwLgHsvMd0gHnXhOir7p2RDKBx80jPCtJCJLQZF9FA+ubTbhEcEwNG/JB/G
	y00gMumS6Ev5dLXXaLeTKBnj1J06kSI/dIOBXA55I88e6Zth8zmvGYNs99CGrrCVtW70grPIZeqGo
	nKCW3JfdcZd+sa/0jaYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs2KV-0000000Gg9r-1tZe;
	Wed, 03 Apr 2024 15:15:11 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs2KR-0000000Gg8j-3ynI;
	Wed, 03 Apr 2024 15:15:09 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-513e134f73aso8558982e87.2;
        Wed, 03 Apr 2024 08:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712157306; x=1712762106; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l0UnXIFWFvFekuBRfpEmUMyu/jbDLvMT34GdY2MCbqY=;
        b=lKlJMEYcLM0v911pqn0INeScAS+OteFuytp7c9v71HYa4mLskNjq+MgXdP0T2yvoTB
         f5MPFkDb/Zep60WjAi4W/M+Yjxvs6v/4SmUPpeMqKx2C9ydXw2HeAMKqLezLMreRly8W
         O+vyVGjCUClro2ZGeTetQbBFkoa/WAWb8qflrlZBDsEINfjD1lI65Dkfj++Cf7WoDMSq
         ZbHDRONwUs1eeHXYz4Htn/w7iE8pI0+ZWYv1eFNL/XEPc3xXv91TQGHdq9bPAoqsmoyl
         3vKsIpXzWp+w2jdKIIEFJr1ekaGWsnzXGIRH+eX95oPnHwNzaULwCRKE/IQnVOHE9TQj
         MheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712157306; x=1712762106;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l0UnXIFWFvFekuBRfpEmUMyu/jbDLvMT34GdY2MCbqY=;
        b=QtGADaorychKn66CIc8vuHwqLcYRnDbWkjNVPiiL0NEF8b1cdQE9e9p0EieDf46yaC
         epbDSxrdjIym99kwkCE0KRln+SuVxSFOoF1RXCet3if8PwKfpIU/uCqE+eXJxiTBAPd7
         2+/2ZknDerX3knsmdnu4RFRtPgNLC2rFeF5DI/lRRgEKutHzX0bozquipq5BsB4HrRPS
         H3/iZrWxE4tqarQpic+rDI72/E5N5mW0VyZ6l0lE/vPQFDzXYR9QoyLUt7Hh6AlOPhdc
         2/jJxz8ZYF1AUBpow/o/G/+7IhZm/nGRKrajblKvipG/q61Ct34n1zOw16zS/excOyRH
         8psw==
X-Forwarded-Encrypted: i=1; AJvYcCXW/a6198kTgJ9IcVM39Hg3jPSsgC7FWfcCmvuOQj+lkUbB28V9PJh+wVJbdxCpFPOtURrZ/CjMoKSFb9z6f1X1wpHZ/6+cEqoQE3N5xN9dirBBEXtEgwLTJ7mY+cA4pYRvI7Zs4sft4m9lr8Lm7uW+2nTifzJYMng=
X-Gm-Message-State: AOJu0Yxc0mLHqIEhaDSsP+XCAznHjMvwf0SnppTuVAW+77ztqXmKtGk0
	sJkcj4NrOlkNnIrt5np3GTd6kKCWnm8WKrqMaGPuT+O6LLoY3V2Q
X-Google-Smtp-Source: AGHT+IH75StaU8ogu0GxyZE3WtrOvlufmCkqvJQSA5reLsG08AdbtTHZDIDj5OVE1GjN2uAQANQggg==
X-Received: by 2002:a05:6512:36d2:b0:515:c17e:ddb1 with SMTP id e18-20020a05651236d200b00515c17eddb1mr11784578lfs.50.1712157302621;
        Wed, 03 Apr 2024 08:15:02 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id d6-20020a0565123d0600b00515c1b1fb85sm2055092lfv.233.2024.04.03.08.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 08:15:02 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH v2 0/3] arm64: dts: rockchip: add Forlinx OK3588-C
Date: Wed,  3 Apr 2024 20:12:26 +0500
Message-ID: <20240403151229.30577-1-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_081508_016211_C6E90952 
X-CRM114-Status: GOOD (  10.63  )
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

This series add support for Forlinx RK3588 based SoM and carrier board.
Devicetree split into .dtsi (FET3588-C SoM) and .dts (OK3588-C Board).

v1 Link: https://lore.kernel.org/all/cover.1710506373.git.dmt.yashin@gmail.com/

Changes in v2:
Patch 1:
- no changes
Patch 2:
- rename dtsi to rk3588-fet3588-c.dtsi
- reorder regulator nodes
- reorder properties in sdhci
- drop regulator-always-on from vdd_gpu_s0
- enable tsadc
Patch 3:
- update dtsi include
- set more generic names for tca6424a, nau8822 and sound nodes
- reorder regulator and nodes in pinctrl
- reorder properties in gmac and sdmmc
- drop vmmc-supply from sdmmc and update max-frequency
- enable gpu (depends on for-next branch)
- enable usb_host nodes

Dmitry Yashin (3):
  dt-bindings: arm: rockchip: add Forlinx FET3588-C
  arm64: dts: rockchip: add Forlinx FET3588-C
  arm64: dts: rockchip: add Forlinx OK3588-C

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-fet3588-c.dtsi   | 558 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588-ok3588-c.dts     | 409 +++++++++++++
 4 files changed, 975 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-fet3588-c.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

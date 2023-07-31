Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4840BC001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gd8toNi53nzUEuVvztAg309TMB/sfX5NptqYLpLBb7g=; b=Li5TMjxOCMkuYZ
	FQ0gJwRQ1LnRrK5foo5KmIRe6vx3g5cYo3ceMSfCEpoAksiDOEEeO4cEWTlGgAKqiWg0FpBzwxfXu
	JnVIvIJab+LMtcLkT/dA8tjlSyXPPitwkQN013Ck2CnASP8av4gupGqgIP2vjj+a8zS0aEj7HxEy4
	5wNEtPUDP+bX9bmX3LXlxrgNx7dBXP8BskGLFveRrG65ci3JUI/Q//VGDtq+m52sAbX3WFYHDulKw
	+kr+OJ80YGBGiAHI6DLSxOuzT2FPySSVY0d58DeomD2ISt6Vt0OBB6EZHdbX5zMhvZtojU3PnjqvX
	R0bQ9Qc1hkyQ4bNVGufg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQFb-00F6TR-17;
	Mon, 31 Jul 2023 10:35:43 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQFY-00F6QK-13
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:35:41 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-686f94328a4so2409885b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799739; x=1691404539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PpuTfvpNbaiHi7FjJWpTV2z2GCdLawICavCFR3SGTU8=;
        b=pivHPfp8i7TJx59hTCjDLYw1mzJ4j0dSdS8KrLtpMC0RY/YEVI7Tzo/FDz9CzrD8oO
         +XHRz8wedIjm6zt/GFFkA7M/M1iFtpe8ajLJYQ56oMZuHkEf75Wq3V3UAg/P8OXuDsTX
         rL6ttWMw/FGssyo+mebFoI3NukIaMA077xA2GBxdAeXJzy4+1elWzeOP7q/xdKXQRyYu
         3F4eGpRXrKsLiEEblgFrgcb4R/uzgqkJ5x0bAgRIwYzA9sXI5sk2t4XR29GRRnCftuVQ
         gG9ZUms4AVqjR5YkA0sfQ20oQPkioXpziX8A2B5+r1n+Lm9bUnfZEnvrJ5F/yIjtCW30
         /Bwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799739; x=1691404539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PpuTfvpNbaiHi7FjJWpTV2z2GCdLawICavCFR3SGTU8=;
        b=SZJhY80mrM8oKWVy2gfuocaNjpUqiv0KJ2hhrxWO3EysROBI/HTP0LdrkIlbaRsxzc
         sDXh6PiNKklzmRJnqObz4EJKI1JORam/ymBbZc38EtLL1aYgwpcvz7DSdoPyZUCz/dxC
         NL0P2TDbui0wZkNO6XCQSrOLzeExf4aGJmeM6ECRwBPJdzp4XkvM/FosyS6n4C+NDt+D
         J4KpKxnugNBxq67ZZb1qr8uwH1jNphAp2VBt6t/VxuM2JYGGPfcWoeO0Z3MrlwjMs+m1
         Ezk0mYOS+IEwfCHbfteQJvY3iHR5WfCaWOU9ON6HGCzMF6Mgyb6Fjj43Jo+PuraS3HDC
         AE7A==
X-Gm-Message-State: ABy/qLaIkQlPdSRl0oL3g6wHm6jTRuLpNa7Lv5Jo7Hgs0uIDyGpU6AqD
	jsH/M2pQbSebcTUg111s9b5GnQ==
X-Google-Smtp-Source: APBJJlGnn8CdqmcO0D5mjF/TfARHUJ0G4Czt4OgYWAaCzAOQk05kzmcFFRyJ7roJCFjOpOP32BdsSg==
X-Received: by 2002:a05:6a20:a11d:b0:12f:d350:8a12 with SMTP id q29-20020a056a20a11d00b0012fd3508a12mr10678017pzk.21.1690799739055;
        Mon, 31 Jul 2023 03:35:39 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.35.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:35:38 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 00/13] arm64: rockchip: Add more RV1126 DT nodes
Date: Mon, 31 Jul 2023 16:05:05 +0530
Message-Id: <20230731103518.2906147-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033540_379159_8FC424A6 
X-CRM114-Status: UNSURE (   8.99  )
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

Patchset adds more DT nodes for Rockchip RV1126.

Jagan Teki (12):
  dt-bindings: pwm: rockchip: Document rv1126-pwm
  ARM: dts: rockchip: rv1126: Add pwm2m0 pins
  ARM: dts: rockchip: rv1126: Add pwm2 node
  ARM: dts: rockchip: rv1126: Add pwm11m0 pins
  ARM: dts: rockchip: rv1126: Add pwm11 node
  ARM: dts: rockchip: rv1126: Add SFC node
  ARM: dts: rockchip: rv1126: Add FSPI pins
  ARM: dts: rockchip: rv1126: Add uart5m2_xfer pins
  ARM: dts: rv1126: Enable pwm fan for edgeble-neu2
  ARM: dts: rv1126: Drop EMMC_RSTN for edgeble-neu2
  ARM: dts: rv1126: Add 3V3_SYS regulator for edgeble-neu2
  ARM: dts: rv1126: Add 12V main supply for edgeble-neu2

Stephen Chen (1):
  ARM: dts: rv1126: Enable SFC for edgeble-neu2

 .../devicetree/bindings/pwm/pwm-rockchip.yaml |  1 +
 .../dts/rockchip/rv1126-edgeble-neu2-io.dts   | 33 +++++++++++++++
 .../dts/rockchip/rv1126-edgeble-neu2.dtsi     | 27 +++++++-----
 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 42 +++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        | 34 +++++++++++++++
 5 files changed, 127 insertions(+), 10 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

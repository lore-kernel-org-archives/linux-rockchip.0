Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEFA2C46CA3
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 18:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9vRjsKY3wEs2kQ70Q84Rm2HZdBX0gJJqoHN8KOB1aG4=; b=nIsJjLh20XaLOM
	PEkt1rUbbcug+Vx3Uzb7NHZKcU+l3Fj82gu/9Qy0XByEl/N9kp8JE+d8dQV8uUBrem3zYwC88qs7u
	GefWlHkB7ACCHtJqDGCVWU0Y1E64BgqKC15XpV30JFBcDKkWJUm8GReVYnsndiWvw7OVmcljdu+im
	P8U3WFpoVHBeyg2rRbRnxnrEoKYRkmaj40GDZRVY+y2/1/wv3w2AZZ156VHGJht+uT9cSD25ax7WH
	sn41fjYp8WJZrN8PzK0uc5CfsW+/de1Kt7Vg4jWr/mtSKBf5W7M3eTOJaZR4KMRGlUbvnk3N3sRZw
	JHAbQBIq1QuaAbqJ4V4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8I-005NnQ-2f;
	Mon, 04 Dec 2023 18:57:30 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8E-005NlO-2o
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Dec 2023 18:57:28 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-58cf894544cso3215483eaf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 10:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701716245; x=1702321045; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m3EZHczOx7koya72sYXSi8rdiO9yIL2IVq+1IfTnxCg=;
        b=c6TFefS1Clf0vvDEhsRq69rzzupDbdSm4lLrBVs2lGQqQO80A/KVx07Q14Lgn8n6P9
         M0sBRP9+WGMUhs+PrrXlDySXeNRwUHkBN+XhHl/r/pGynZPR0mYZgpBk8wKOfW4rK5vE
         HIlwo66OtVsIClJRaP3wVzbxu8IKy7f65P1V9t7+Et34yVxcpVDkn8TpoYqLwUhJ7fK7
         pNZOXESCwuPlOW3wApirabSzh1lqsT6u4CLr1h6qZrHFfdKuz7tfcr6Awv9uQk3FvVUm
         ZZ+Ax+WsGllmrWxT7kXDBv3CqeLk2G4jpamCg5bv9xma/O9wpSUj8sPN4OJciqhl3cWS
         Uoaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701716245; x=1702321045;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m3EZHczOx7koya72sYXSi8rdiO9yIL2IVq+1IfTnxCg=;
        b=TKqgoiDYTnbRJ4K7FdV4BbJHXiRmf3KKz04BNdv6NUYgRYSl4KBVtoUzMxkEzJJAxm
         2QGzbW10UOeEBO8JqOML2fZwRWfBr/pdQpmbsAOz9Wnv4OKrF7i0Psyg26asYR4jv1G+
         ymY3qJANU9PFAuTNXLVQhIc4vCLhK4dKt7NhnOzUr8OlHrmxO85obx0MYyHGiEzyZazc
         vv+NDriCgpeN9KydOPAlygUC7UU2rPcfie4B3t+c7b7mG+xkCXCRDhl1WiBiegWEScre
         RQQh88lOIdeF3jX6bUm1KQn2z0haGSUbpJ6HE3p5nbjGNNMH9YEPmW2HnD1iPVxYfid3
         IGyw==
X-Gm-Message-State: AOJu0YwqckRPFHaPprDvsaHZaxHkHJuOxorc7hBW+5VO7IVJ042gcgiQ
	qg2gApJTwzmzKbz9bok0I08OVtCv5lM=
X-Google-Smtp-Source: AGHT+IGsVHwRrAfqq4xLIPsN5oERcixtArTe5wxe1Vzbkpi/n7S980Z81B1TUUr2Z5wVehMBXeBH3Q==
X-Received: by 2002:a05:6820:2c03:b0:58e:1c47:76c7 with SMTP id dw3-20020a0568202c0300b0058e1c4776c7mr3120244oob.19.1701716245016;
        Mon, 04 Dec 2023 10:57:25 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y25-20020a4a2d19000000b00581fc1af0a7sm2073303ooy.28.2023.12.04.10.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:57:24 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 00/10] rockchip: Add Powkiddy X55
Date: Mon,  4 Dec 2023 12:57:09 -0600
Message-Id: <20231204185719.569021-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_105726_906852_9EDFB850 
X-CRM114-Status: UNSURE (   9.51  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Rockchip RK3566 based Powkiddy X55 handheld gaming
console.

Changes since V1:
 - Corrected a bug with the DRM mode flags for the video driver.
 - Adjusted panel front and back porch and pixel clock to fix
   issues with display that occurred after correcting DRM mode
   flag bug.
 - Add a new clk frequency for PLL_VPLL to get panel to run at ~60hz.

Chris Morgan (10):
  drm/panel: himax-hx8394: Drop prepare/unprepare tracking
  drm/panel: himax-hx8394: Drop shutdown logic
  dt-bindings: display: Document Himax HX8394 panel rotation
  drm/panel: himax-hx8394: Add Panel Rotation Support
  dt-bindings: display: himax-hx8394: Add Powkiddy X55 panel
  drm/panel: himax-hx8394: Add Support for Powkiddy X55 panel
  clk: rockchip: Mark pclk_usb as critical on rk3568
  clk: rockchip: rk3568: Add PLL rate for 126.4MHz
  dt-bindings: arm: rockchip: Add Powkiddy X55
  arm64: dts: rockchip: Add Powkiddy X55

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 .../bindings/display/panel/himax,hx8394.yaml  |   3 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3566-powkiddy-x55.dts | 926 ++++++++++++++++++
 drivers/clk/rockchip/clk-rk3568.c             |   2 +
 drivers/gpu/drm/panel/panel-himax-hx8394.c    | 180 +++-
 6 files changed, 1085 insertions(+), 28 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

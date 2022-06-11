Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44EDAC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 06:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1wxkAE18dx37UYciCgtvCrVKWrzCghizsjHPnCV10JA=; b=cBVxFsnxFxG/Mf
	6WEkoD7W+xU5RgynGkS9gpl6qzRQ067j/D+pePhr1jGl1p1jm8d/Md0O+kowJ01jqYr0ggNl2bMw5
	taIgfaSmoHI+nxu5G+8SX966jf5LQ3BfGnM9sQG5BRpkGsdRALN604rj3R45YQ/Q+XUq3gl+4uNgy
	/thowqMzdOt0mfk7aCSdTFvwaoaj0BxD8nLkvDjF0OasmllWrtKp21spiVnvDMWpnQhcIQvg+IJwf
	ljNiLHUD9o8FDGDfkpEp3RsIpw22VeuOaG1eteNEdOWgGPoVMhU4keKMiUq3u70x9QwPO25U1aj8c
	GdNwY15MzinOm210Pdiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzuzz-00BjWH-VW; Sat, 11 Jun 2022 06:53:32 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzuzo-00BjTR-CQ; Sat, 11 Jun 2022 06:53:21 +0000
Received: by mail-ed1-x52f.google.com with SMTP id h19so1435394edj.0;
        Fri, 10 Jun 2022 23:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zc/ja1DOr+UGSYNswkfus9lzkrP7FkDW/slHx9/IKhM=;
        b=Db8030kntC6z/HKCADKmfWp67SFTAkL977Rd3mAm/AQQQSWW+d6OSVqJjYoRJN8+be
         dZ5H8VU1hpJLBorBdqziN7fYo7ZPMfjibfv7BGTtKAGanOgF8GK53m6mt8X4BTnsfxeI
         Np+bgEM8laZjxd09uHDPm0c8cxHzwyNPFVu91JO3uUsmHczWoQZ6P49dWRbJsto+28ek
         ZYtzgQE5KZDT0lQOqthpozIzwd6SUbcAah4nJql59dD8Bfq15KEIoDzmYkPLuw1/ueiU
         pZMb8tPoNzUFsAv02BIuUonfnphYeYCvSUk3deI7Oa1s84ifD3/d2WQXbV7JTUdTMg8Y
         572g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Zc/ja1DOr+UGSYNswkfus9lzkrP7FkDW/slHx9/IKhM=;
        b=t8EnOIwq0K68DGJRJxtheg9wPKXvl0bV1KErIxbNHskvm39tShUo5/JjzSmB3e4zcH
         njGos5Y0yQmCovHUzm88haBfwdUjqe/vkV4zD1Le5paxooFntH/skKSn8JWn8usb4Puu
         UbatGnRJVYa895ttxD3sAENqvWN7LLDRq9i9DYlDRedO6KVnZ7BVy7cT96yo+KZC1M9c
         Q62Ue/ilGtwDY7RiiSwu7VxynP69fF2npUjfJpNrwKRHSD3GGyxwzwPJpuyaq3x576qC
         wBZfeyr9oGRl2SNTkGzo142JxkmA/wEJn5Ltse7EtWTQ+OzrFy4nklysgaWc8Sie7flH
         +IQA==
X-Gm-Message-State: AOAM530a01e2pGRGV+pm8+482V/d9SXbmFr/nOQoTp966lDdjdtCO3II
	yc3vrsVfs8TVdqmr50mf6fPM+zkSEzM=
X-Google-Smtp-Source: ABdhPJy2mjZchvrqJCiCFKl1zY7F9clkLHeO6YhJTJcF13tJU2Y1Bw540m7desgHARD+bCdkZ72J3Q==
X-Received: by 2002:a05:6402:5191:b0:42f:b303:ed61 with SMTP id q17-20020a056402519100b0042fb303ed61mr44123860edd.233.1654930397719;
        Fri, 10 Jun 2022 23:53:17 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id v14-20020a056402348e00b0042dc25fdf5bsm874261edc.29.2022.06.10.23.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 23:53:17 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Liang Chen <cl@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] HDMI Audio on RK356x/Quartz64 Model A
Date: Sat, 11 Jun 2022 08:52:58 +0200
Message-Id: <20220611065300.885212-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_235320_479645_5A057284 
X-CRM114-Status: GOOD (  11.10  )
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

This enables HDMI audio on Quartz64 Model A, and the RK356x SoC in
general.

i2s0 on the RK356x is connected to HDMI, and only has one DMA. I've
confirmed this with the TRM.

To test this, one needs a video clock, i.e. there is no audio if your
screen is off. The framebuffer console or something else needs to be
running to get audio output.

Changes in v3:
 - rebased onto next-20220610

Changes in v2:
 - reordered nodes in rk356x.dtsi to conform
 - reordered properties in rk356x.dtsi to conform
 - add Michael Riesch's Tested-by to rk356x.dtsi

Nicolas Frattaroli (2):
  arm64: dts: rockchip: rk356x: Add HDMI audio nodes
  arm64: dts: rockchip: Enable HDMI audio on Quartz64 A

 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  8 +++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 33 +++++++++++++++++++
 2 files changed, 41 insertions(+)

-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

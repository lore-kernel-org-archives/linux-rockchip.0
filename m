Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E55AC001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GbyoqJWWBE29QxukMd0VwYlxE8FDnN70BtB7nzjNkXA=; b=J2/rFq1Ezp6QK8
	rzE9fiW1B5MBDdCJ9RyK6Bm8orf+gcTSxxnB1jyygl2DG9Bf4Z2LicdQ7YPmu4+QOd9GgK9m1Nqvi
	yBEMpdGo2YHFku2P2xkLN3oplZ05ROo8Li60xvW/wA5ZHW7oqfkl3/8lebBiFmveoTEEoaA5d6sEj
	y5g17ij70dvHo4Ogaud4e+py1QpA8vZNicMkPvbwnMdP6rmo7CHpUY6kk13wwpFOK6iQtXerucRkn
	feaPpYk4LG5TxTqv6EhQzdMCsgR4kmZaoFuC3Lc9DPumm2J5Mh44BZKxoCUMCZS6N20nS8pekVPzz
	BMKIpwPTl90TKcGAldqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGs-00F7eG-1m;
	Mon, 31 Jul 2023 10:37:02 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGA-00F6zB-2F
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:36:20 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-686b879f605so2804996b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799778; x=1691404578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DioTasdys/OXmMLgOafZ0sLUPs2ereraMNozwT0ZB+A=;
        b=O8yw416rDQmRoqq5bQ13jt8/lTK5CR3edCZtMjn7eHFOvdfiK46iwYh+TJKVtitvGj
         7U9CucDU21LyFootDCq4vVHu1q7RD4HFtfUGMiMmq3Yp/EzsBTg9hCkvEoZgndTkVHub
         kuIIB6PnpVCnoiII3Qb1Y3mWYt/0jeZBwoNJvVaOqSPaYTaTSt8R9uuvkAsFAIASR5om
         t+iCr64CzvjayzM1hBUdZpOh0tkbL4JZO3522SfKy6vUYq8NWnjCECD5Aplrofa6xQfT
         7AzS0IeJT2wI5NBP0XHsM1n626j5vEOw4L03SfMWJXk/6EvLRogR2Hrieb7YQLt2tfUJ
         8yLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799778; x=1691404578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DioTasdys/OXmMLgOafZ0sLUPs2ereraMNozwT0ZB+A=;
        b=eAcrHKokurQKNnuPkfQoaYMJsM4od13XIO5J3o+uCONxCHocsEl6UPja9SO3uCqwyP
         C2IHEUG2U/uHIXk/eZnjLXUCr+TZJp7KpnnABeqiFinFSnYND137Ok1Aj4wTzfJeFW6p
         B2W4BIjCn6au5AEYFZYgjhWeyzMViGxL0OW82QWXzq53M0sXXlZGR7NKVr0hO04e+9jh
         E/y/8qN7iXEqmmohCG+KPx4hWTFH6iI1YBOCiJPNgtq+qIbTaVvNSUK5WnvzhSASWBMP
         wmRXapc1+PNlHwz6oz5a+5Jr3gRkd+rzM99nH2wHhvRAc8H6PB4/roq8EY4VNlAbysmQ
         AAQg==
X-Gm-Message-State: ABy/qLYzqdJyJZT5b+YzKNgu8YAIjC+osU5L0/o2aRT9EsMsFYUau9s4
	1m4x/BUgEtmVSm39qYbcVwpi/A==
X-Google-Smtp-Source: APBJJlE5MlJ+FgJj9kFGmyEg+iQJdeInkOsMRld/t+dbgm9A5XGIKfQ7skcTBPFIppCYfSlJeOJHyA==
X-Received: by 2002:a05:6a20:4409:b0:134:9b83:9888 with SMTP id ce9-20020a056a20440900b001349b839888mr11126070pzb.0.1690799778061;
        Mon, 31 Jul 2023 03:36:18 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:17 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 09/13] ARM: dts: rv1126: Enable pwm fan for edgeble-neu2
Date: Mon, 31 Jul 2023 16:05:14 +0530
Message-Id: <20230731103518.2906147-10-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033618_784228_F7B8FF79 
X-CRM114-Status: GOOD (  10.75  )
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

Edgeble Neu2 IO board Fan connected to PWM11.

Enable the pwm fan for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
index 3340fc3f0739..bbc1cd50a1f6 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
@@ -59,6 +59,10 @@ eth_phy_rst: eth-phy-rst {
 	};
 };
 
+&pwm11 {
+	status = "okay";
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACF81C5ACB3
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 13:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZcKv0SQ8gxHlsMrsDp/GJuH/nYM8s5rlo0xXYEHnM/s=; b=HGdRM2kNr++pUB
	5B6aEO+TLxk1PLoewAC+jImkWuTOS6yc6nDglizmM/9aT8cZtfoS6ezpjHaIOtzZ9Tsbn//VTiX9D
	h5J1+we82qhg2XI4Jii0/b/Qm5rzbPpJAXy2QR/J1QMzR+mw1xJqeZDLMrLZNH1Q7CiRhoLZDDeS4
	pQMPVUYRUIgPT0fy8LuWQvNf79zcfGJcROdwS8uXZezZq+bHabDcEoZMTkxmfWS0r/uw8sQV2P+Q4
	EIjNKFZftvk3DQCMe0Bc6gdfNAVEE4KsIrHqduGyxhdSBa+FlLZ6pP36Vj+lznrC8wVWt7d7b8buV
	lnT+TcHyRotX8GCuvJkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4hTW-00AC4P-1V;
	Sun, 19 Nov 2023 13:04:34 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4hTR-00AC3r-1r;
	Sun, 19 Nov 2023 13:04:31 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507e85ebf50so4479502e87.1;
        Sun, 19 Nov 2023 05:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700399067; x=1701003867; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zP7dCzocUVh4qFf97xC71aXva/0AFLOJoQWQWCRF4fM=;
        b=d7iibNZ3Ijj8CYD3bO8PQntBxV55bLt20X4xMei0sXmh1sd+cRcSxOnKg9yhpUXns8
         0RqTABREJQdkRSj6SSffY4JWKUpLJJ5u9BQkrCdlo8sf7XoWWSlM5yl73jNtgt//Oyj1
         grml2vMMd8NmfuKiY7GjPWiMYXcK+yDQDkCHtIOYTeKOJBSayjO0w/UC01sHyV+rmeUT
         86nTfx4JTR5tYI3DT4Pj86goCLuJxhvv22rUb/eyHmpdRl0ByIB8gPyt7sfSZR75AWRM
         PNYyLPr0OrNOcB/YR/8MsghNJqB3VMg63zYSWcY9VQAzw51tX3+mA4mUqGovwybHJcNd
         Ffcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700399067; x=1701003867;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zP7dCzocUVh4qFf97xC71aXva/0AFLOJoQWQWCRF4fM=;
        b=RMo1zvIJ9d1CgJ3fK3hXT7IOMLZ8p6ow5pUCBhw7wPlo5NVaH8erL8w1ETlVWnTT+7
         zY81If36yKwnkHzz6K46gu4LBS59AJ9K8Ah5QQong/OQkBQvrU002F7PrHPjznyzjCUa
         +G9Xg+AaXOUI8z+I+3z9IUtJ52ooI1iGJ4SEsrmjOi3bG11ysowFKMw5ImqghjPF26zq
         IKN4qJe+piBZP4CcP/uPwMB51Tuav4kodv8uIbYCjMeFnrKfqSXeH8mmiyZkrO8pqjM/
         alIOB5p4jz8a+eFZU3gFxsmSRPhY75xpDBFsi9uIL4+QM6a4O9fBOFKEYFMDLPQyHx1t
         kaHg==
X-Gm-Message-State: AOJu0Yzj85Nf/naoHU0FLey/TFCrAnrusqKgYJodxldB3ITPqHoskbFT
	7CpnARzzrk4q9LxG4GYWzHiwfuye4g==
X-Google-Smtp-Source: AGHT+IFFw1D0jjPGC2PZaMsI6F+bUzIABnBmKjG2xRzT2rKj6n+5Zy0g8TK1aiDHb8uH87JEQ+H8Hw==
X-Received: by 2002:ac2:5316:0:b0:50a:6fbe:fec4 with SMTP id c22-20020ac25316000000b0050a6fbefec4mr3582233lfh.33.1700399066958;
        Sun, 19 Nov 2023 05:04:26 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id n8-20020a1709062bc800b009dd8473559dsm2827866ejg.110.2023.11.19.05.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 05:04:26 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/3] Add Geniatech XPI-3128 board
Date: Sun, 19 Nov 2023 14:03:49 +0100
Message-ID: <20231119130351.112261-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_050429_670985_A32938A7 
X-CRM114-Status: GOOD (  13.20  )
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

This series adds RK3128 based Geniatech XPI-3128 SBC board.

Please see commit messages of the individual patches for details.

These patches have been part of the pretty huge RK3128 bring-up/fix-up
series [0] which I've splitted-up now, as suggested.

[0] https://lore.kernel.org/linux-rockchip/20230829171647.187787-1-knaerzche@gmail.com

Changes in v2:
 - drop nodes from board DT that have been part of the initial series that
   are not upstream yet
 - rephrase some board DT comments
 - refine commit messages
 - added mmc-ddr-3_3v property for eMMC

Alex Bee (3):
  dt-bindings: arm: rockchip: Add Geniatech XPI-3128
  ARM: dts: rockchip: Add sdmmc_det pinctrl for RK3128
  ARM: dts: Add Geniatech XPI-3128 RK3128 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts | 397 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rk3128.dtsi        |   4 +
 4 files changed, 407 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts

-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

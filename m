Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59313C001DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lv3medWqgx2ynaQ3vWnGaqT1hfA+ch83gebTpf+qdOs=; b=qIdX6wSbXJ3lxK
	ITk+nWneOuUwE7WoYgH+Uu+pycUXkkopTfGRCTTRd12pW39n+zfhXaBSJAlc8b8YcLUvoBV6MDoIQ
	C6Bzd7PYDR0aLk5YYi4Hj1IV1iX+NEW/HGigt38331u97RnUHk8txCyudAQuI9aug2xczU9ceFUul
	53rN5powEw34Rj1AprH9NZWGHXABUk/YqE0J0CLTvV0vI46ug+ZtRaQSDbfk961wIg35cY0v1dkPl
	rVggr9OPnP0Vn71+NH7KOzlXKRIvCqs/VNDBP15HfhyCp9P4LpNerOp9kh1UVDvpIACVSX1NhQ/7x
	+aJ0Id2LtiV7BZy3lueA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGw-00F7hn-0D;
	Mon, 31 Jul 2023 10:37:06 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGJ-00F77g-0h
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:36:28 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-686f38692b3so4114526b3a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799786; x=1691404586;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BbDc3vFd9mDjJk+G0DxzOOHRpawNqHj3WeQNjvGFd14=;
        b=qK1nZSkoxT+iouFJXd6HVWIhueUqHCGIpFkAd3uUwljYkGFVG1Fb4zW50qPIRXdexA
         yuJ9vOGnbTmQl3qA8vKc6lqou9ufPaz/QKMRvp1IlWCO5Dte3sn0Zfh328r0hGOJ7eND
         1M7+AQCgaNKJXq7oxgrAbyWjBSOQytgZzsa8BLdhinfQX88DRv74uk8Tg1pUYgMvD0lK
         jzCzFZFsoRRy8xbTR8AnZM0ivTH9UIiyEMvrd0OccHM/+yG+Qyakg+Rc689uZnM5MiFt
         ak1PupLVUGOVSd/Y/kVP8lOVdfqsdWDZYuBGT/ieDP4DfNvkNWIFOT5f/FwY9ZiKr1Pa
         x3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799786; x=1691404586;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BbDc3vFd9mDjJk+G0DxzOOHRpawNqHj3WeQNjvGFd14=;
        b=HDWp6c6/tz8ygzrgmSShUfJFJ4RAzG9nEF95SEVHsz4pHw36vuDhgw0SL/Dllls9bF
         MCI2gwIy5faKk1IqnT/hWcvN9Bj4cm6H+Hoho2w0u2d7Sg0Kk+gm7/lhnSnWlLBbMjo2
         POUAkcYpyNdiiosB3Wn8YK8fwsXVDmEXpZoElFGmms4OKyXsJiWkphPOLjNf40OARQKG
         X7xaAYvzIQdFHmKna1ZFE9km2Qxyxj49ptzPrUbV23vRpzf8kur/sUgHJ9zG/CVAfDbF
         eKPFlw2G35avaz7vO4HcuuaTRGv93tJl1ctB4cP1IkEvE2gRgxc2UfRe4MfIB9h9d3Le
         yKwQ==
X-Gm-Message-State: ABy/qLYDANyizfRNMqBLM6g8soba0dgVCsd6paAWGKARgAS08oX79WEl
	aJXZ1hjfLPiKXWqGzfpSUZZ3IA==
X-Google-Smtp-Source: APBJJlG2jqcU1efaCPDs9Obe3awP6I8g3DMsPLnl96Ttp+090wFN2IHHAAGXatPJkM/yvavSs8a3bA==
X-Received: by 2002:a05:6a20:8e24:b0:134:76f6:e9e2 with SMTP id y36-20020a056a208e2400b0013476f6e9e2mr12100972pzj.58.1690799786682;
        Mon, 31 Jul 2023 03:36:26 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:26 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 12/13] ARM: dts: rv1126: Add 3V3_SYS regulator for edgeble-neu2
Date: Mon, 31 Jul 2023 16:05:17 +0530
Message-Id: <20230731103518.2906147-13-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033627_272534_9BBB7886 
X-CRM114-Status: GOOD (  11.04  )
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

Edgeble Neu2 IO board has 3V3_SYS regulator to power Audio, RS485,
and 4G Module.

Add regulator for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
index bbc1cd50a1f6..1c6a6a134131 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
@@ -20,6 +20,16 @@ aliases {
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
+
+	v3v3_sys: v3v3-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "v3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &gmac {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA05AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 12:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nv+FsLd0zdr1UyTmdNQ+svsxG94TmhHPR7klsESJJ6Y=; b=GjLCjqs1Dd4/b/
	9Lf/MSo3xEt9rA6Dtj3BE26a8hjGhpxm9Mo3XnmblzZdQPRse0iLcVh5ZwOibK2AwJx1rSxlVqagf
	7I3U0RrNHlWTWCeF8phe7avt+tncjkUvc2vYNlLRIFXu8UL6C8VSjmB4moHpuLOpRBV6Riob+ZZlH
	rCwgtQF3r5uleYnPp0WqKXAzKsk5FvpzPwwXVsmId4NSksWHmS6PUpCIAJn2v3UrDc/yBAuAZD1yj
	7J4wH99EtspcYdgBeye5r4G4oWvfbtPquolC0cdMA9tG9oggKwJnWlSNIGcbwTxAB76yIfXpQXVGF
	/nAxbdSfcKw27nm8rVQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZXpW-00FtPn-VG; Wed, 30 Mar 2022 12:53:43 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZXIT-00Fe5i-01; Wed, 30 Mar 2022 12:19:34 +0000
Received: by mail-ej1-x62e.google.com with SMTP id bi12so41209239ejb.3;
 Wed, 30 Mar 2022 05:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qb8HyCCIY1mm75j/97/iX1g/WJo7T0j9+GwbZZhw4sE=;
 b=DKRaoGpGxTy/s0SW9SYdZjbpJyfAQTHQy2WwEfeo1cOw0oE8dRay+/FVp1oOYl95Oc
 ZHswDuR5Rz5EBcejVNc3Ckx5EP//CJ+8HLltn+DZzBiyxn1e1s7vowefVUk1/dj9YLRX
 tX80/29BV0pPDv2+QZz+fco65go/6WuR+aeCmPHys8esvzcU0esgQxz+10T5TZjVK/X1
 yQCoJUj3/OeA+kdd062qXk3HEtzk+25MW/bozw6bzEI4a7LS4brKKCog5r59DqYzdtsC
 OnHlluEQGcSxqx8pfm+D5tmkzayeh1Qjb/c4JMRD46Vwm9O1wBkw9SZPX3WFt/PMAod5
 gzGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qb8HyCCIY1mm75j/97/iX1g/WJo7T0j9+GwbZZhw4sE=;
 b=CF4AM7tVUfj3SSsVdz3B6wB/Xxw2KpJ0iseLoT2JyYT/ywFFBLYMuFt5D8IyvAYwOL
 6A22irMvJjE6CSKlIYC2eD3aCfU6ThCzEI9cTFz/5zzuT8YObeq9BtVqS1aJsSPphnve
 1qYbVeu0b7ubi2M87qpjZljCxmvLu4ZzmGG3YhrWLSrKw1d+FckQT1geAF6tF30T/JPG
 TEIwUAju32qmuQTlZ8u5vG6lFyw6Y79kRjaRWUaLhbf49eQxovwUxj+4p0gMO3yj2l0C
 kElzguxFC+ShU0Kbg+oU58PJFAmR/ki46F6R7Pi/hcMXUnbmzRsJmjnxTCdkuL+WzR3d
 eTzw==
X-Gm-Message-State: AOAM5305RXr798Y94VBgeCfEjrm69gu8a3516NaiKaughsn+lc85/nL5
 ixXhv5oR3PmQ6JYM8+HNoVw=
X-Google-Smtp-Source: ABdhPJyJmqcIe58bIjV2K/BFgQhWOAt68nvMsEyokZxKqnWQPPNwBIVmAz2ndEks7uramUzGlUdu7A==
X-Received: by 2002:a17:906:c10d:b0:6e0:dc2a:338d with SMTP id
 do13-20020a170906c10d00b006e0dc2a338dmr24335993ejc.538.1648642771254; 
 Wed, 30 Mar 2022 05:19:31 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 j21-20020a170906255500b006e08c4862ccsm7288778ejb.96.2022.03.30.05.19.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 05:19:30 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] ARM: dts: rockchip: add clocks property to cru node
 rk3228
Date: Wed, 30 Mar 2022 14:19:22 +0200
Message-Id: <20220330121923.24240-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220330121923.24240-1-jbx6244@gmail.com>
References: <20220330121923.24240-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_051933_084240_1CA7C600 
X-CRM114-Status: GOOD (  10.72  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add clocks and clock-names to the rk3228 cru node, because
the device has to have at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 5868eb512..2547f46fe 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -484,6 +484,8 @@
 	cru: clock-controller@110e0000 {
 		compatible = "rockchip,rk3228-cru";
 		reg = <0x110e0000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

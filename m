Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E4BC43462
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:41:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 27447611CB
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:41:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 27447611CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O8OoWDcq2yn3QXsx4kXuNNO1AxmOLGLZpU8ZcFXM8lo=; b=eTPWO6xDLU//lWoC0+jCZz0bQk
	Y3P2Ym5sAk3+D4NSimcoEftTIobVwQ7Z3Gk0BRDgFsBdsJetL3/t1XD1/H+MbpxnCpq/XxURkXL5T
	6oKjwmFDAXECLFJAEKRoqXN0Y7C54mG8TgyxU56aYu9LySgMwIl53dqih2d2W9hlj+t/fLSxCgqzb
	1LxsZXu28kIhHXPH4r3HFyi7O02Hy7PisGh+GbMGMWWU1xp0OXbon9dOVn+2vTINYty+0+LbjtIks
	lR/7iMslS7I7J1p4MxbZhx9dYb3zCawUud7w9JALTnbE5NnYQ6MSaPEbh/rurw7hjLpG2GmZFOoJ0
	onIDcLIQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leHm8-001K2q-H1; Wed, 05 May 2021 13:41:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHle-001Jxc-Kj; Wed, 05 May 2021 13:40:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=; b=n1FG7+OZ5rgkKxM1qa+rLtae/z
 +zTQFZcILP7Xiu7YC1D8YG9dbvgZ5aiBjR0tPm45LmxdhuvW8zexWxSZAQDOQw4I1FXKBZSfdOVkZ
 z3RJDm3ni8XjmAxdF377x2m60qZe+W+pUizD8GDtQAgUzc7S7Rddw1UUfw3+blBLF01TN8ShsyH75
 SdExBl9Pd71W6UklgILVsq/aoA0D5iyeWjjcY3nEOgOuRBvaPcmhoVtVOsMYYXiCOOGwbFPFbI4Jb
 kxI6SDOGzP1uJQp4f5cMQRrw/Dz23/sKVcbTovv5FzLpVEgPQCbSIjtNQucOXrq7ycqMEInnxrWDg
 /J6NQjkQ==;
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHlc-004mlI-2g; Wed, 05 May 2021 13:40:45 +0000
Received: by mail-ej1-x62e.google.com with SMTP id y7so2896062ejj.9;
 Wed, 05 May 2021 06:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=;
 b=mEyY35O2TgaSv5n1e1AO9BB17dK4YsG5Oc5NeCy+V1bEp0HejaBNF74DuCIr3JPXHh
 60zWeXixB6jZWofZEeLame1XKoFyz8g5XuBYNtaM8yMAwVsJ+AysdGf/KQJQeOFzYNVR
 6zuLsjjI4832ZF1vyewTnVTpq+BcvKQavTzu2fWdLsIBK94GEuyjiUnfCrrP7EqXTYzN
 f1GGrOBlP9654jNhN/M8WLxcbAjG/UYH8TDsQPXG+CSaEK83PJw3S/Lj0y8yo7V5qIfl
 YF1v5Tc3XTVLhIVfmbgYErumsJqqqsH52yBQXzosJ66/a6KSOyCB4syzDTfzGDevuTYY
 cUSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lihGSNM/MK5Li+Q6R5o1M4YyP4+yQiLVtLIt/qjFJZU=;
 b=AD8U3b+PJCUgzNlSAjb3ODI3m3WBuxSKkv9/pwZPKvpO8gJ490U0ZTyYpq6hwcfz0+
 ZNb/5TwlC80ng5y9ChY0j7rGP+mp6Vor4RP6ckbC9YFitfmffdgH6vaxTlnVE9OMVmEr
 9d6F5vBHhXfx6mL/J/aVKEzWcCBQZ2lPlLOzrIotrEgAFRCn/K5zhTTWbUyivZi5/Rdr
 R3X6BcwV3ximvK+upzUqsilcPWNMRkSnV+JFlstwphOTAPqnlY+qf725zwUIReP2yem/
 C9Oyuv/FLw5TXApZgpA8UIMWzSg/iOg7JvvPjokRk7+/eDi9HI7LpI+zqhGxuvS1Jokq
 pQ/w==
X-Gm-Message-State: AOAM5306Bqoq1BlvvgOf7tTkRNypx0pw2gwVzSQmxE2CLUeJFvkzuiAK
 me/tUoeFyWteDz1T0/xBFvk=
X-Google-Smtp-Source: ABdhPJyKXXDNvfO8leOsdVrYe5pL1L3f3tbyunePMfkdlUVautJzeCi1/Jm2OVCaPk7OPAdpiUSu6A==
X-Received: by 2002:a17:906:5811:: with SMTP id
 m17mr27420695ejq.221.1620222042560; 
 Wed, 05 May 2021 06:40:42 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t7sm15397264eds.26.2021.05.05.06.40.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 May 2021 06:40:42 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] ARM: dts: rockchip: add grf register compatible for
 rk3066/rk3188
Date: Wed,  5 May 2021 15:40:27 +0200
Message-Id: <20210505134028.13431-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210505134028.13431-1-jbx6244@gmail.com>
References: <20210505134028.13431-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_064044_138208_04DF701F 
X-CRM114-Status: GOOD (  14.02  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With the conversion of syscon.yaml minItems for compatibles
was set to 2. Current Rockchip rk3xxx.dtsi file only uses "syscon"
for the grf registers. Add "rockchip,rk3066-grf", "syscon"
compatible for rk3066/rk3188 to reduce notifications produced with:

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3xxx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 755c946f1..c34bc59c9 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -256,7 +256,7 @@
 	};
 
 	grf: grf@20008000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3066-grf", "syscon";
 		reg = <0x20008000 0x200>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=BS4M=LN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA055C48BE5
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 12:15:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 758FD6117A
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 12:15:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 758FD6117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XC/61M9XzQ40vi6YZaF7qyHSmoviNw1z3ViqLUKSjEk=; b=iK3xxUhwPzmaCX
	5eKNzJYjDXcOi0mm69JAxnNJFLa0AuxS9WzRMcIPaYPpFsegGfHNDt7DSbY/Lx5Q437XN3bDCjgzl
	y8xyD3Dm8F0lpr95FhXwUycP5q5Eaik5cstXb+d4Dh+NaCsscx6ws2Ay0nGPp1E4fok1z24D+XIvu
	4T9lVam798i8w+GeJ4p0lMZqzTs5ntNyBEHH+OgmprQMBX/ZvUOiERZc4NayudIzoAT4Dg9gTgOcA
	J5Gq9mr00kBGqIr8KKrIrjxroNXUOCBknhAorTIbJGrlwoiXxvE90LfqG0KNoTz1b0DZSSlgtnx/a
	o1W4xVHL8X07u5RInFaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luZsS-00Gvly-PA; Sat, 19 Jun 2021 12:15:08 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luZsF-00GvjU-OM; Sat, 19 Jun 2021 12:14:57 +0000
Received: by mail-wr1-x42b.google.com with SMTP id m18so13903229wrv.2;
 Sat, 19 Jun 2021 05:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tT6MCWeV6BQgvZ+j2c2HpQ6MvhqUDKTfYP31/O4QO0E=;
 b=M2tK5P0N53k4gpKaGXAvDVOyf3Sb8I106WxSOuZFf6MFNbfCTM0P+HmkAiUkRqy7yS
 aq/jOkBMjrsBC5mBqil/wjupkbT6lKLc9rJ2Q5Lj0j21TbESJD8xI1ks0QBn+pySnDCN
 eEKrSOsaLJAEOP+MKYcYLnpnXbg3xDOEHq83DOK2d3MCKwpXiveSGSc6oGZWjYj43qug
 CQwuQGIBQDib59537sGyy9nPJi6Mqt0Q8/mQHR+QV96+Ai4fGEjPOVpOxo/JOUP+4Lln
 t5mSX8ry7c+SzN9+YIyOZeYZT+o1N1nZXGsi0fckk2EGvK5L/RlVI0edDrG9W+4W0Yzo
 uPUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tT6MCWeV6BQgvZ+j2c2HpQ6MvhqUDKTfYP31/O4QO0E=;
 b=BkgOzfyoeJFTEubujCcwBlLleT4pAJoudnjpumSsC/9kBLk3smWBW/mAeuul920lt7
 5gySGYvQqARH5qZwBZ3vb3ANduUE93NKLKPZ5BmwREAJoO5GVneFO0ql6/sO8imTwiBe
 ykAL8nVo7udh74wTIg5EFe2NZNxNouaGLv55IrAJericA0XY0SvKr+zeEHOoYzTmK02Q
 qYMv7tMOFqm/qGNmT7p17Tavw2IHOKyV3kY+nfIyOfBEdxiwtIOVDqdD1DYkPLksEQMi
 tGSxe/TQvKoWu6gq9sB9lOCTcllgM3L2I5l3CL9ThKMXnk5D1DGbJ3eBcSXzsYDLD20q
 SHnw==
X-Gm-Message-State: AOAM531yphIldA07YKavRK5oLn7JPsX0FEjqoF4IjTFsi9ykAKHJo8wr
 ateURPPSgfbMte1cYUJZUw==
X-Google-Smtp-Source: ABdhPJxUiGMu5WBQ4VXfWg8B7qQiq6uUEWS0R0e+kZAw/OyhE5FL42QCsnsvh8hxnZs/yDUKybmLyQ==
X-Received: by 2002:a5d:5108:: with SMTP id s8mr17806912wrt.311.1624104893018; 
 Sat, 19 Jun 2021 05:14:53 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id f12sm13818512wru.81.2021.06.19.05.14.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Jun 2021 05:14:52 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Markus Reichl <m.reichl@fivetechno.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Re-add regulator-boot-on,
 regulator-always-on for vdd_gpu on rk3399-roc-pc
Date: Sat, 19 Jun 2021 14:14:46 +0200
Message-Id: <20210619121446.7802-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_051455_839190_F24EC8CC 
X-CRM114-Status: GOOD (  13.06  )
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

This might be a limitation of either the current panfrost driver
devfreq implementation or how the gpu is implemented in RK3399 SoC.
The gpu regulator must never get disabled or the registers get
(randomly?) inaccessable by the driver. (see all other RK3399 boards)

Fixes: ec7d731d81e7 ("arm64: dts: rockchip: Add node for gpu on rk3399-roc-pc")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index da3021dc0ff3..8b27ee4be755 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -494,6 +494,8 @@ vdd_gpu: regulator@41 {
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
 		regulator-ramp-delay = <1000>;
+		regulator-always-on;
+		regulator-boot-on;
 		vin-supply = <&vcc3v3_sys>;
 
 		regulator-state-mem {
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

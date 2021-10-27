Return-Path: <SRS0=/XqT=PP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA7EFC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 14:37:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC2FF60720
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 14:37:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BC2FF60720
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wSO+6BXoksUiu+38M+wXLLH3w/8ugpaQq6R1wDX4L/o=; b=uE3c6VOrj198oF
	LsrdLMJDH0HwZENs1ODeXjVpYiz24mN+aAYWhKCz4zFgf//bxUBcMi963XZ+6d9gX99AqUU3S3pKv
	VBAxUIdBAjxbfhuDbE21Z4qxaJs+XNDPyZBbR0clQfJ+vMmSrk62vOPNEOa4aCoIiKFhUznFb53vX
	nKfk2YraVxaZcg/IvkzXEhXnHmsBHPjSnvguXSKDJEdNGLOocYP4MsSFlb/G3m2/Sa3Tc1g0oPs60
	lAQ+KkHbgKpQylHC5yStOkmHt/z7DzQ3UqqE8TJmQjAPzO75itAsYH3+SWCBEggF1qakt5uwKw4sK
	tU6FaCFBgoEF4KKETjiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfk3t-0058nj-Tl; Wed, 27 Oct 2021 14:37:53 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfk3f-0058il-Js; Wed, 27 Oct 2021 14:37:41 +0000
Received: by mail-wr1-x42f.google.com with SMTP id e4so4548501wrc.7;
 Wed, 27 Oct 2021 07:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TGWbt0DaQKCswEBt0ArwqQnvqc41g6JU5zhKYrPiWaQ=;
 b=pDTwVgBFo87UyDGWShmU8Dtev0ZcRzpYvlQV7kt71SdaMb+m9heGBhDyFk+2SBwRU3
 DwfKkUXyW/mCm399z0UXEV8CmFcsM8Hy9CmvXzQDispnVGrO7MVgyy2TR6N3D2Vx5LpQ
 puLeSWTY65hXS8VRkPCtnK6iqDKBwGEBghH9fvn5AAvK9OM0ODR7PK+Xaj2y9Wolb62H
 Q92o7tCS67mWgTPJlp8krqQhrxXBXqIVyh8735JbAq8G2Usb8CNup0wXntvUgfJFI4aS
 LGWimyCP1Uc+kdMGOHCAqLC6It7D1b+yCKiS1R/y+M+JZx1SdMYBXETyo/muHZ6XVFtU
 iu1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TGWbt0DaQKCswEBt0ArwqQnvqc41g6JU5zhKYrPiWaQ=;
 b=jJOuznXtli5Q4BYWIopgd16tS6Nb0jfKf/PVacrReYaLN8dol4AQrSkJmVp1G5mxjJ
 iVnFnRTJA5G9sQ5Y2F9PNVgzWqBOoa2nvcPhDXiNYET+X6S5zgSwRvW1M4pm3wuUvRWh
 MLhgXf0u92Y8cDTXct1rlkPXsaYJ43IwZWzGOm5TbeuTMJvYsFk6avpoUWrqQX3Io8kV
 OVjrprIqZ62DhEVeJX2SVR5oICzm23wxun3KWJ52F0DsLYZYNZHg+21N/692XWeEWvri
 t/U439NqX+ZT6AtvL8dQs2SrckqClcLktwt+WV+SWEqiBc1NXb5oTLNYBwt9X43bytHv
 JsPA==
X-Gm-Message-State: AOAM531fCvrjhikyJQdQUgYdkVrYmvKWXcbbl/AZrxx0a8Ma05qCnBGN
 oIhD+2aqhHRu6HgbSV4L4w==
X-Google-Smtp-Source: ABdhPJwbUhkqT+wluf90XToU2xknGoyv3gvSKRYquezS11x9eVlIvfNpBcu0LsM7zKblTtfbIPXdkA==
X-Received: by 2002:adf:f50f:: with SMTP id q15mr42084157wro.324.1635345457284; 
 Wed, 27 Oct 2021 07:37:37 -0700 (PDT)
Received: from alex-ThinkPad-E480.. ([2a02:810b:f40:4200:8072:4c96:3e48:9ebf])
 by smtp.googlemail.com with ESMTPSA id
 p21sm25866wmc.11.2021.10.27.07.37.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 07:37:37 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: fix audio-supply for Rock Pi 4
Date: Wed, 27 Oct 2021 16:37:25 +0200
Message-Id: <20211027143726.165809-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_073739_684308_71C72073 
X-CRM114-Status: GOOD (  13.90  )
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

As stated in the schematics [1] and [2] P5 the APIO5 domain is supplied
by RK808-D Buck4, which in our case vcc1v8_codec - i.e. a 1.8 V regulator.

Currently only white noise comes from the ES8316's output, which - for
whatever reason - came up only after the the correct switch from i2s0_8ch_bus
to i2s0_2ch_bus for i2s0's pinctrl was done.

Fix this by setting the correct regulator for audio-supply.

[1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi4_v13_sch_20181112.pdf
[2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi_4c_v12_sch_20200620.pdf

Fixes: 1b5715c602fd ("arm64: dts: rockchip: add ROCK Pi 4 DTS support")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 98136c88fa49..6a434be62819 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -502,7 +502,7 @@ &io_domains {
 	status = "okay";
 
 	bt656-supply = <&vcc_3v0>;
-	audio-supply = <&vcc_3v0>;
+	audio-supply = <&vcc1v8_codec>;
 	sdmmc-supply = <&vcc_sdio>;
 	gpio1830-supply = <&vcc_3v0>;
 };
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

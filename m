Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCAD3C32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 09:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bWFqq3Wx/fj5fLsg4yMCbjEQRC4DW0Y5Dyb8ez2vqoQ=; b=sh7N9OiOjy8TP1
	eGt91DEVBq0zP68Ny0hcPTW0O7FFFyfwhLM7O+QEKwD4pHYIG5M3rzkmRrbKLZLdSs6fzLN3OztLl
	y22eGVpA3RwcvphEsBnRskYU10drOAaTkhOe4PVIrlM13WcwqaytJbFoLK98Nw6prbY1Kf78Nff9y
	4cmIYgTV+/on/D2MKKLEKOg+9fDnga+3nrvo+FFK7F3JLvwiO+v9YrD/Cxqom7tBzehscf0sZlShc
	m8wQ5XedRgFVCVK5aJbzsyMkUWR/spJuuvW9R6ml8rFhrkGa+5WL545/7bMpvp9iyfTIEdm9zuto0
	SGyD4vWDbWRK0wweKnOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odT74-00F6ac-AH; Wed, 28 Sep 2022 09:12:18 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odT6q-00F6RD-Ju
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 09:12:06 +0000
Received: by mail-pf1-x432.google.com with SMTP id l65so11978842pfl.8
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 02:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=qM+lTkdECo0J0ZhhLpB7ro4uoQDn3iCVEdOBITAk3Q0=;
        b=PbwktMuA9cnH6kD/2b60Shhox4vCiksy2RgnXF4n0N++WVeqtQP3uKJjbZXmPcWycd
         /oOrdyUzEyfsEbeQXWxqe+8Qcei09CtiKMCcP9eXPz7kIwtNzzyJ92XwOdNA8e7RO/IU
         nO31V7N4yRxU4RDblc7g7j2Vckq6+seN1l8M+CWIveGbZ551OBWVznR6gG8/wKGL4fm6
         Adt2bo9/E+AXUlKIvvKIjquDcHVZVFrq9v4gRU9XY7psNT0JW79uq5LZ308VWMBXdnxY
         GTNP+EgRsUCr1u64Z7YiPD8Rt5VQvg/UrJgLs1Kq6moVWKC8PukCWjHuy0S4bbZoEGJy
         uJ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=qM+lTkdECo0J0ZhhLpB7ro4uoQDn3iCVEdOBITAk3Q0=;
        b=2MTUi9bFoO2lriRqQy/xnfMAJqBR9x1zzytDHjGsg9cOfzuxPWUuBSlJnYgTIXvXQl
         UFK4Qv/5qLwoifqs6As2cnDVedx+sTpcxcSqsEDgEAxwjEdt9YaAcVBmLScL1/YPThhK
         Q4XNchi+w07QtTgIHrE3x8Md7cDzCPYJyzW2UC8+hzDFXZWHxoa/4A2RWcBm7MY9yiQL
         AvKk29jTXVvdzLbYbv1OIJRYzSmZ6C3BUJa/v1QOQoBrdbqPRMTqDc9jDG6Wrz3KSCOe
         cP7+S5KoFR8aFzA+oe6gtOAOhj1Hd9c/oIqSWFdBhDJDDBPJAbThbYE0yK6Rivhxdfor
         HnuA==
X-Gm-Message-State: ACrzQf2ueinEUNHOvBA+isBLfohdibuqUmhl1tMuoln5uY1IP6Wnrxzh
	QTe/4niNYMSxtM2donk9/CsGQw==
X-Google-Smtp-Source: AMsMyM4PI1Uli3TKdfuQ/NqySpdQGk1FyZCpOIAFT1qcz3BBww3dRiGNvNHyp7fzs2YP9h4+dR8/zA==
X-Received: by 2002:a05:6a00:2185:b0:520:7276:6570 with SMTP id h5-20020a056a00218500b0052072766570mr33609781pfi.84.1664356320877;
        Wed, 28 Sep 2022 02:12:00 -0700 (PDT)
Received: from jensen.next ([113.109.77.159])
        by smtp.gmail.com with ESMTPSA id d4-20020a170902654400b00176b84eb29asm3112069pln.301.2022.09.28.02.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 02:12:00 -0700 (PDT)
From: Jensen Huang <jensenhuang@friendlyarm.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Chris Ruehl <chris.ruehl@gtsys.com.hk>
Cc: Jensen Huang <jensenhuang@friendlyarm.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: add enable-strobe-pulldown to emmc phy on nanopi4
Date: Wed, 28 Sep 2022 17:11:29 +0800
Message-Id: <20220928091129.20597-1-jensenhuang@friendlyarm.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_021204_892418_4B0498BA 
X-CRM114-Status: UNSURE (   8.97  )
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

Internal pull-down for strobe line (GRF_EMMCPHY_CON2[9]) was disabled
by commit 8b5c2b45b8f0, which causes I/O error in HS400 mode.

Tested on NanoPC-T4.

Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in dts")
Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 278123b4f911..b6e082f1f6d9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -167,6 +167,7 @@ &cpu_l3 {
 };
 
 &emmc_phy {
+	rockchip,enable-strobe-pulldown;
 	status = "okay";
 };
 
-- 
2.37.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F4236C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 09:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kYmfRCRiZncw2uwESiTwi9VI+Ol8/1to5f0Pnkf/8ro=; b=Zr2pEIXrNI3qN2
	a+DVNo12rjO6DAF727347XjJCDDxP1nhO/UsHSO3/tHekTqCOfQbrtk17YvONjPXBx6TFWcOdI87u
	b1RrKXJk4z1t1xse4J4pqrRTudNU7akDKbSBIp+pU26wZW66SrNknw4NH8MB+BIV77rdQ0ffuGSTE
	tppeuBJyCxHrMUQNRPp51xRfybq0IU1sEjJObGcF1nxMg1oGcjo1C7EN+4hHe5aiTXKSrALEv6qq9
	HesolTgElqwqu0RvZvcVgKKqbbCkn5+MxQBtKBh2+UFKkmiwiXy7+SDrPOImQACDp9GhqRc+rRW/G
	5Ecpr/qeeAYW2AKyqd0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHh0F-00ARml-02;
	Mon, 25 Dec 2023 09:12:03 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHh0C-00ARm4-0w
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 09:12:01 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-68015293aa3so1575186d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Dec 2023 01:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703495518; x=1704100318; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WwyFWCFXg+RYHzHXZKBAWA1/DhFW225URe27LzYqJkY=;
        b=dw1fm9fG7aKh2ENiX0FCna6BoRrsgsteLAaaorFspkiNLZsB65hVQa0eBufE7u4pI+
         sk5zffyvEDLLfSjoztIHehuC1WBXXU7Z9zrNkOEImlKqzg8TpR2G9XKawBuU5+IvBEQ9
         usi0faCnyd+H/RJd4eTlB6zv1h6lfRGHhcxQRb7QimZ2MTEVZFDu/18+eVrI1ngDe5I2
         goglRPLLDP874/Dg1dMhWfAih4rFD1Ty9+8ngKarPmjbP/CCvu/nKukSfOGD8AdL9Bk2
         w1k54e8/37SC4cRFyRoy0h4Ni3dFob+VG+zeUBO9X2kOubMr72zcee/+tWA78kfh1Tf0
         vZNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703495518; x=1704100318;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WwyFWCFXg+RYHzHXZKBAWA1/DhFW225URe27LzYqJkY=;
        b=SIS/8VBF96Ma6oA7EMcFk69kL/ft1XaXvgXll12nqYBJdqdHfMOLUy5DhdEIQLniKo
         2UPq47urI3uyCRHNEH3couuySojDWd8zh8WNeHPZyz2dalN4DVVrysbg7w8DFyxWTm23
         k71ZdM3lpoljN6HKRsEBsjhKtubGvHGlVubliF0T+4PLBL3PfGpHfbGbHWe+SudHg7yI
         PbLF+7eBj+QNbiCGWrhBYl/f8nKAyBt/qa2BZImgYYY83+yMJ22RK3+wrTERhAFyJHZd
         bPoRa5QZzqeIwAE+vQ5mQjWHG3wHH9kEsy+65Jsow0EkIbfyGUluF/CoXaEurpdV1H0+
         Gtug==
X-Gm-Message-State: AOJu0YzdBqt0yj8HCS2RWy3eO7eKnNRWiBI8HRBfy1ACSdZgzEPS9iKH
	2qDnjaOHZ4fjgwjQR1TiufDoO3fKPGE=
X-Google-Smtp-Source: AGHT+IEh25wakSezDtUO4zg7vI+sJeoAWoGHwzWLxIS4wxYSRHGFsT79IHxZ0xN0g+ue3nTphzL8Hw==
X-Received: by 2002:a05:6214:2527:b0:67f:2350:6d35 with SMTP id gg7-20020a056214252700b0067f23506d35mr7865290qvb.39.1703495517963;
        Mon, 25 Dec 2023 01:11:57 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id er14-20020a056214190e00b0067f4886019dsm3670976qvb.122.2023.12.25.01.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 01:11:57 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: John Clark <inindev@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: correct gpio_pwrctrl1 typo
Date: Mon, 25 Dec 2023 09:11:48 +0000
Message-ID: <20231225091148.4396-1-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_011200_331476_31899138 
X-CRM114-Status: UNSURE (   9.37  )
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

Signed-off-by: John Clark <inindev@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 0fc48fb0d34d..e83b71510a47 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -591,7 +591,7 @@ pmic@0 {
 		#gpio-cells = <2>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

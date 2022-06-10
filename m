Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B94ECCA47B
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 13:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fbi6v3u0GGRYC9/Cqtl15Ro0IRKmTySt8BRrhbZ/trM=; b=HIbk2oG4/dqpRg
	eW92hJLfU166Hr7cPb/RuOMzEiBCo9eT2pME1pspCUVpwmt98NJW7XqxHmGXKtbtJlunTZDG5sX+N
	73+hJydJ8e4IjiE87ZI1kU6SQmM/IJPC1DZk+u/QZup1ISgOPruJRbNs+bIoU49Udor2h4vnJ7VR2
	I5Ube70V2GglNRQRXz1hitAzZa7MCA7nYUpDs8ZAYd26Gh37DBZvJKSziyYl/h2fMX3JRF/I+cIrA
	tkglKEfcImj0pW+uyefoTKD8ts6m3tMB1MqaaEsUbefYHQrd0SHCZZTFaAzong6Qk4G2m1KmqRC/x
	QHYTHMN36wVjZAIMPntA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzeeM-008MVP-Ui; Fri, 10 Jun 2022 13:26:06 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzeeB-008MSH-VL; Fri, 10 Jun 2022 13:25:57 +0000
Received: by mail-qk1-x72c.google.com with SMTP id x75so16443891qkb.12;
        Fri, 10 Jun 2022 06:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8sukDbyEo5xcdDaL583IQTHCCE/whgVyUt9NY9aiWLE=;
        b=UCfkLISXPPSYeSjgGZqDfO+y4Neo+B81CIy6P9OkISnZ5tfbMX1tV5EYKqdjTLq6Ok
         RjXUQnH/Skkm6QY1FK/5Latq0i0AeCYBRql+WgmofSHUA7/ffM4qzOktdTG8PEac04YD
         csjJBUciYDdQ4UqKHkWFXNm7Z8N/Prng/BFNo+iTJ8teVXsHvCqPr5JrP0bqlfbne+ZB
         KQW8Zp0G2x+lK3HPi2ISQv31gP9SF8DO1vadvsYZF2h8rXxO1c7lzAGV389I1YjzB0DR
         i1p3vRetcWlWZOqRu8Yb4Yj+fPbYwkwbsPmqivBBQEDtPG04PQF5M8ub+ZBPgYphWYLI
         Nc9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8sukDbyEo5xcdDaL583IQTHCCE/whgVyUt9NY9aiWLE=;
        b=Cae6ia3Nj0bHlthwk5NvZnYC9pvhnAoAgvciNbzpGDiyGc3/auUuThZux0W/7ME2vB
         2tjU3XAaa5aKDFcs6pS5UbCnj0BV294uwTIZ5SoiN/pUwlBstXkNXmCjZbwFmFGsmBl4
         48eg0DgI4LOBBZwa4647hJHqPBGXyVJS63DOso/7ZL10J91+RCmFOqC+2uy/A1F5PtdV
         7HfSNYSC0/hlQgRoegJySUvSiXuvFMxJGcoUQ6C/49b7QMQ93lPI1/pqoeuCnCPNkXc8
         I16bPED+Vf1T4G3zs2fRpqlVMi7C+vqiDbau89x2M05fU3TcaQWaPKSZzN7BJhgcpb4m
         P8Sw==
X-Gm-Message-State: AOAM533OSKysu4IUPt62ZrQdHnE68o3xA0Fv5auHcvyk84VjJ8Slj0Wt
	Erw1wxkkRYFbo9Cgq84Br9M=
X-Google-Smtp-Source: ABdhPJwtF6VIFbozwGhPH9J0MR6+fnBYBm7qIbwqC1jbHL9ckpuXbik1TffFWtfH1rLe1Upf4pRhyQ==
X-Received: by 2002:a05:620a:4107:b0:6a6:deea:ebb2 with SMTP id j7-20020a05620a410700b006a6deeaebb2mr12362586qko.245.1654867553832;
        Fri, 10 Jun 2022 06:25:53 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
        by smtp.gmail.com with ESMTPSA id ay7-20020a05620a178700b006a73cb957dasm2886594qkb.20.2022.06.10.06.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 06:25:53 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>
Cc: Peter Geis <pgwipeout@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Fix Quartz64-A dwc3 otg port behavior
Date: Fri, 10 Jun 2022 09:25:42 -0400
Message-Id: <20220610132542.159978-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_062556_064535_56FAB7CE 
X-CRM114-Status: GOOD (  10.63  )
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

The otg_id line on the Quartz64 Model A is not connected to anything.
This prevents automatic selection of the dual role usb port. In otg mode
it defaults to device mode. Force it to host mode to retain previous
behavior.

Fixes: bc405bb3eeee ("arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 1534e11a9ad1..fa953b736642 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -687,6 +687,7 @@ &usb_host1_ohci {
 };
 
 &usb_host0_xhci {
+	dr_mode = "host";
 	status = "okay";
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

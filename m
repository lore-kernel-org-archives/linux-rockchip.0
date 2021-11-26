Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4918C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3oby7pMfcLdXFiaFEgxDoOVJQz8mJcksTIYxt+vnYM=; b=ijfySfvBN/glhw
	rj0JI+eP1irG/r8gt2qMnIWWp+sR440cCi/Z6svnsCaBwV2dxoc+u2I0GeyzInnvOf2Yqn0FO91yq
	iyjIMNuAtxa+4mwzEHe38kVtr1u31AxhCD+GZtaQ93G7GnkF/54EKpdl7IV+k17ym4OZsApAywdi2
	hVRsHK8zvbQKPNdXfZKgztrpBDE4EaDfoLyNv6Z/aJzpBpB7dDRMNNKg3I4mZHqFnwa7m+/ulHG4k
	YqsQsoFeTCXOlbwR4eQkoaadf3WPLs53a4aIAbd5+6p2WdkQS/oseIUGTfZmrOrz7dOnSNMIBZIJF
	XbW+mIWzrs1cPUtdiUAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqaaQ-00AR19-NH; Fri, 26 Nov 2021 12:44:18 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqaKQ-00AMph-Ax; Fri, 26 Nov 2021 12:27:47 +0000
Received: by mail-wr1-x433.google.com with SMTP id u18so18298044wrg.5;
 Fri, 26 Nov 2021 04:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sonVc1z4s9yp3qxr+30Ehdj21m5HXG+GbXci1EkRyd0=;
 b=Uqz80p3L8NEW/rbj1SDrZzbA7hcMP2L9VMWdr3x9ZaTGxvm6/h532VejkDZJPlaAno
 f9MgLrnbbyUWAylerTMM7saV6+1chfNDltqsTZWL0wyXH7YX6Uj+onUEQVG7+hYQNTPb
 GZUgCt+lH7MbDmm7GAYW8QvcNI44kCvdKG+Rw7dOOvGi3BDUV10pCr/3Z4/6f7i0uuh1
 oV7aAfO1MgsgoS+G00jeqDCKGb87JUqRvZNLMzj46ISLjjZWjP13qlsS9RB0TDuPamlS
 GBjCYtoP2HyAbfkEbxF3oO2wn42N5FMqsv61cQMyTzluZwrOdmnZDmYb7XW1YXeJaTOh
 KKGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sonVc1z4s9yp3qxr+30Ehdj21m5HXG+GbXci1EkRyd0=;
 b=eJ6VBO4VPC4lN6ITu6IhRQE3+m6gkw0VmomKagcSshICGr2vEIE3up9yxOOT93gMe5
 48VhXxGmmUP3Pm6wLkPlRMRcvpAAbaS1DjXFtwjvLk46KHQ3o30gJrDdn/pGuvI5R+KU
 5J4qdcGieuFyFWMTBV12TyVxrern/6Ulu6QXSg8bqvCSj/Jw8tPENu4MJrTStvmeX1cK
 0dEH/9tffE/dMc43HP4GX1pHD6XVNPvrJ6DAR3AS78auCD+IE2Xlgmis4xTiIVXIF9Aa
 zoug6vWF1asgidq4EQ/PZzdszOWSATPNLgTXvTGlDcU7ehtkDXqcGWb+10nfPW1L8Pr0
 jrHA==
X-Gm-Message-State: AOAM533DncG/zjuy1frSCc7BTu+nL4h5xdQtZsk8KkcY3CbUDqo63xYF
 8J9g2dWgpSVOFZm+WHXDA1Y=
X-Google-Smtp-Source: ABdhPJxLoAiEsj9xkUs1FxX2QVzAhJB9SOnP8TF2FqFWAPqf9XSvRl5JWt+sb6SxrSPe1b7EK/4RNA==
X-Received: by 2002:adf:e391:: with SMTP id e17mr13589765wrm.613.1637929664475; 
 Fri, 26 Nov 2021 04:27:44 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id l7sm6821130wry.86.2021.11.26.04.27.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 04:27:44 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Enable HDMI audio on Quartz64 A
Date: Fri, 26 Nov 2021 13:27:18 +0100
Message-Id: <20211126122718.631506-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211126122718.631506-1-frattaroli.nicolas@gmail.com>
References: <20211126122718.631506-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_042746_423282_7C9D1A13 
X-CRM114-Status: GOOD (  10.60  )
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

This enables the i2s0 controller and the hdmi-sound node on
the PINE64 Quartz64 Model A single-board computer.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a4453c82b03d..0598510dce58 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -215,6 +215,10 @@ &hdmi_in_vp0 {
 	status = "okay";
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu>;
 	status = "okay";
@@ -444,6 +448,10 @@ regulator-state-mem {
 	};
 };
 
+&i2s0_8ch {
+	status = "okay";
+};
+
 &i2s1_8ch {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2s1m0_sclktx
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

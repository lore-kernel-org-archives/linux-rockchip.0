Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39229C3271E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 16:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dcARmoBZ5tAKYcRa8+llXYLHJMPgpiOZFYCZz+8PII=; b=RyJs5QHQK845RF
	qJK7/jAo4k5hPJBgGZiyzul75rLwkvDATGIMWSi+9hXTGQ195bdY6V/1R0lbZS3oC2EPFf9oYXvch
	VQrpSoJVdkJ6LGTdjSv0gjYZ9KH3H91HZXcNssoIfgj+DNbBR/ZzdyhUKDXv8CE+cP/qD1iFnN81r
	F7MfO1+xfOyDoy0QlROZ0CTHk5cGACRmnXplYBlQeQJBUSjI+JF7JMJBDzUjyCG7mBNI8t/A2Kp/S
	a99odhnImVRP4ngiu/cGZYoaJqVWNU2IPtnSgq7tnvL5WxfKtpCIe51XNlxsYDoRTjTn9OoxuyS7o
	4U7IvhzcU12r9a+EjyXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPltk-0000000GQmD-2k1G;
	Fri, 05 Jul 2024 16:35:00 +0000
Received: from out-188.mta0.migadu.com ([2001:41d0:1004:224b::bc])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPltS-0000000GQgx-0wVa;
	Fri, 05 Jul 2024 16:34:43 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720197279;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vTcYQTSND+4YUQLaRdcC8Bj5nXpCzHWY+jMRGob+qxw=;
	b=dymdx28zX9Qp2rsw/Wq1BBW1oaLHO6PKiVnhBEuA5tkMTpaqAkG6AEFJVlDY8pRSeokcJn
	J5kKdwVD6OcM0NMfu+Nx7JUso8WEz0PSqHuMGz8EjxKGMsA/eOeJKkvGpuqskTqmffe/gW
	rRnLZBrPZfc9Ki/QpCFy5va83X8iT0HYFbx8NpQ+Lh0qG66IKv7efq+doWgrHo2ws7KpuB
	FLjgtfXhXI3+dq0ki9XaTp1c2uJAsJ/Q+74cRU7ETEgXNIdD0OPUQXSOqt7L5wlOjheI54
	qQDQGngGqZ7epTYR7ql1qezQ2/OEOcM1zHgeAkqmiL4UQ1wV188COAcEHmH1xw==
X-Envelope-To: mweigand@mweigand.net
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: didi.debian@cknow.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: macromorgan@hotmail.com
X-Envelope-To: andyshrk@163.com
X-Envelope-To: jagan@amarulasolutions.com
X-Envelope-To: amadeus@jmu.edu.cn
X-Envelope-To: f.kardame@manjaro.org
X-Envelope-To: michael.riesch@wolfvision.net
X-Envelope-To: wiagn233@outlook.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Maximilian Weigand <mweigand@mweigand.net>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Furkan Kardame <f.kardame@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH] arm64: dts: rockchip: Add dma-names to uart1 on Pine64 rk3566 devices
Date: Fri,  5 Jul 2024 18:22:14 +0200
Message-ID: <20240705163004.29678-4-didi.debian@cknow.org>
In-Reply-To: <20240705163004.29678-2-didi.debian@cknow.org>
References: <20240705163004.29678-2-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_093442_423356_45FC5E84 
X-CRM114-Status: UNSURE (   7.94  )
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

Similar to bf6f26deb0e8 ("arm64: dts: rockchip: Add dma-names to uart1
on quartz64-b") also add the dma-names property to the other rk3566
devices from Pine64 with bluetooth functionality.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi  | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index d899087bf0b5..ae2536c65a83 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -674,6 +674,7 @@ &tsadc {
 };
 
 &uart1 {
+	dma-names = "tx", "rx";
 	pinctrl-0 = <&uart1m0_ctsn>, <&uart1m0_rtsn>, <&uart1m0_xfer>;
 	pinctrl-names = "default";
 	uart-has-rtscts;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 0b191d8462ad..37a1303d9a34 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -738,6 +738,7 @@ &uart0 {
 };
 
 &uart1 {
+	dma-names = "tx", "rx";
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index dd4e9c1893c6..e42c474ef4ad 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -614,6 +614,7 @@ &tsadc {
 };
 
 &uart1 {
+	dma-names = "tx", "rx";
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
 	uart-has-rtscts;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

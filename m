Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64081EE6426
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 02:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XOtgxGeT/PhbgWPAIORxCiMiye1GyWQmFsdUMlPYfo=; b=zxW5PCuczkOVcT
	LK0msmAoq+1wVg/cYeOZzwixHgF/4mAp/IlDEk8CikEzMUZB81zKx0aUeG9gAZuB5omHWLFUAP1JW
	B85nZCwub/t1WfaLv+3avHf/mW9e2UfxinDnBA6vWkz2r+7mOFbRStT2TUnm3AJBVAQ2wY9X/iIYr
	TcOXd1SFlD03F6PqOhUMTIKkh/sdzlRkGBvh1x3C62QrkI18At8yghuWjqiwwQgT34nd6hIlCt0lv
	ASG6PL+67ToIJB9HJ9KWls5RoIcfBtniAQFzR2Fgi1ItiQcGLkQ3LeTdz/ZtesIwasj1mo/EKspX3
	Pwvb+jGu8yWxiaUGjHug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soa1d-0000000Bgcx-2Uga;
	Thu, 12 Sep 2024 02:57:41 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soZwV-0000000BfIt-1omK;
	Thu, 12 Sep 2024 02:52:24 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-7db19de6346so343353a12.2;
        Wed, 11 Sep 2024 19:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726109543; x=1726714343; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UFtA1zNl0EVlgDNkgP1T2Lcb30Px4NHbKM0hs5oTZwI=;
        b=e5oITDbVi2oQUaa5gJSuWsJWLyMw6cFxd8JNdue7Xe5zTXLWZtoYBnjAi5lzrjrvTD
         EjNdUoD+7qxLYSErjSeR/3UvCATHkwtNZmWV4l9eHxKUpoDoZlFfB9w2c/lNtZUcdaI9
         bO6QeB5d4FJPnwiXdlwakJESsEChckc4A1hckj7FnwArY8XKpW8I4RQOSwumjMcvFrkE
         6qL6nFz6+SSEiTKtRtqCVkTpoidR+K7GwCLpPlt799/6OEHGncDg2iA/7dfhYqBCFO/T
         15fKtQxcrXQVg6TLMUwKO6wSs/P+5QcI0WfHio7ZQ/XQ7ZALPdq4u137qQJJFXW2H59u
         ml0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726109543; x=1726714343;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UFtA1zNl0EVlgDNkgP1T2Lcb30Px4NHbKM0hs5oTZwI=;
        b=Ut/yeMX04kJhIc0GFm8v7nVo6RDJdZSil2EeHjroEI7O1+PjWAamIOAV+c2kxiB2Hr
         F10WAf9g2gHb0Zbi06YMjsCzVtU6dqMW+3n+DjQAamnay7kGaFyRt4qocQlY8m+xmiW4
         V0ZLPvcfDUMip+PoPNtCV/iVBaDaRyGop5foLncwWbmnxCzGOwonaCzoQorTlWNmPc3s
         2NGx2OMokGr8HFRuUZmV5XIksWaiYgWhWgyjC04sHu1WkdqVh6v0AtbUcUBw7LsxPSd/
         BStUXjW3sseCAekhipJdlqoajp3r4Y7sLA5rhn3ENOATMH9IBiWoAbu49508gov1qsGQ
         Gq7Q==
X-Forwarded-Encrypted: i=1; AJvYcCV6OXSIFb7GNr3ICBecp6v1qs+TAFf1tutoXJ0EOY3go/ir+0NuTH7O/4LbUqQniHkhor1nwUIMV7LXDCnvfZY=@lists.infradead.org, AJvYcCVZs+VRLxyozRg4O1pwxPGQ7N7zTH7x5eukgcIQar4GDw1E0S0BJtIs9GVQ37oxwrkQDqwreqXvsGUEEOmKK2Cb@lists.infradead.org
X-Gm-Message-State: AOJu0YwN8I6+ZQLCaqPJ7U33Wb54p+VoqsG1UjOm7u4AJOJuE7gmmkyi
	/j70/DkprExQRVZz6K0RiOYlUxAojRynF6HnKkwo8dC31dopqd0b
X-Google-Smtp-Source: AGHT+IForzEpWW/rjBRT7z81T61S+onZhDsyAet84xKc8CSzbJ3Vaqylg0VDpVe4V9IaQ398uZeILw==
X-Received: by 2002:a05:6a21:710a:b0:1cf:2fe2:a74c with SMTP id adf61e73a8af0-1cf761e58camr1685065637.31.1726109542572;
        Wed, 11 Sep 2024 19:52:22 -0700 (PDT)
Received: from luna.turtle.lan ([2601:1c2:c184:dc00::315])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fbbf877sm569023a12.50.2024.09.11.19.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 19:52:21 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ondrej Jirman <megi@xff.cz>,
	Chris Morgan <macromorgan@hotmail.com>,
	Alex Zhao <zzc@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jing Luo <jing@jing.rocks>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Joshua Riek <jjriek@verizon.net>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH 4/5] arm64: dts: rockchip: Enable all 3 USBs on Turing RK1
Date: Wed, 11 Sep 2024 19:50:33 -0700
Message-ID: <20240912025034.180233-5-CFSworks@gmail.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240912025034.180233-1-CFSworks@gmail.com>
References: <20240912025034.180233-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_195223_499910_DF3543A9 
X-CRM114-Status: GOOD (  17.42  )
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

The Turing RK1 contains 3 different USBs:
- USB0: USB 2.0, OTG
- USB1: USB 3.0, host
- USB2: USB 2.0, host

This patch activates the necessary DT nodes to enable all 3 buses.

Future work will be needed on USB0: it is not USB 3.0, but Linux creates
an unused USB 3.0 root hub and the controller also requires that USBDP0
be powered up. However, it is possible to remove this dependency. By
either patching the xHCI driver to ignore the enumerated USB 3.0 port or
setting usb3otg0_host_num_u3_port=0 in the GRF to stop the controller
from enumerating a USB 3.0 port in the first place, neither Linux nor
the controller will expect USB 3.0 capability, and USBDP0 can then
safely be removed from the `phys` property.

Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 .../boot/dts/rockchip/rk3588-turing-rk1.dtsi  | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index f6a12fe12d45..6036c4fe6727 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -666,3 +666,67 @@ &uart9 {
 	pinctrl-0 = <&uart9m0_xfer>;
 	status = "okay";
 };
+
+/* USB 0: USB 2.0 only, OTG-capable */
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
+&usbdp_phy0 {
+	/*
+	 * TODO: On the RK1, USBDP0 drives the DisplayPort pins, and is not
+	 * involved in this USB2-only bus.  However, if the USB3 port is
+	 * enabled in the xHCI below, the controller will expect this PHY to be
+	 * powered up and holding RX_STATUS idle, or else it will generate an
+	 * endless stream of CSC events whenever a device is plugged in.  Until
+	 * there is a way to communicate to usb_host0_xhci that it doesn't have
+	 * a USB3 port, we have no choice but to power up USBDP0.
+	 */
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	extcon = <&u2phy0>;
+	maximum-speed = "high-speed";
+	status = "okay";
+};
+
+/* USB 1: USB 3.0, host only */
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+};
+
+&usbdp_phy1 {
+	status = "okay";
+};
+
+&usb_host1_xhci {
+	extcon = <&u2phy1>;
+	dr_mode = "host";
+	status = "okay";
+};
+
+/* USB 2: USB 2.0, host only */
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

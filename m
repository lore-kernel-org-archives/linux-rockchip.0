Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF0D606A326
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 19:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oQim0SqL;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Q9w04kzF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1rB9PSDulCD+jeRn+m0IJOas3a/nWNxpSdNVH0fmyJU=; b=oQim0SqLOuPv0rYcNXhk6iM71p
	jS/JlfSJZcoqf6ZCpS8zFMeW2J21Y+DKpqwHHT+Ku3KN0KuC5koZUVYaWTUNqvXxS4J/szAT3PLrf
	6f7J0WFVpJB3gpP0X7dny/u406TQeOJ8nmdqFUBW8+O90mtiWsTxbDFDhO3/FdVMCMUCcca5iFRjO
	lWkJBTYD40x6twzj8Nv6VdmL2NTjmzXiILE5miy4zL0Wz55sQTFPYtt8FWyHCTA9Ru5TktAheSVur
	xN+rKZiubuPOastizpNg4YflIIdMFjy3Z8hnwDdq+LXDRbRJcRIMhAOQRItAytrdgKbg8Sd1WHXwV
	0f4DoRzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNbFe-0000000Ep0V-0paG;
	Sun, 01 Nov 2026 19:29:58 +0000
Received: from mail-dy2-x08.google.com ([2607:f8b0:4864:36::8])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNbFa-0000000EowN-3RTq
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 19:29:56 +0000
Received: by mail-dy2-x08.google.com with SMTP id 5a478bee46e88-3678f64d078so3885062eec.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Nov 2026 11:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793561394; x=1794166194; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AmWM5i5bcYLOfgd6JgqgudQuIbo9gKLsDd/ijE1n9kA=;
        b=Q9w04kzF7CyWCpGdKRVyAc3gPMHQcHiyoUaLxFpkOnTI4tdBEijD+WG3YDuIpWqS3p
         1rTXCwrfP13MkmjCwuyw+JFqCQ8yUBryNqY1LJv1NkvbLzNaKO92hIBwuttusjTBhj3h
         4XSihXSxvOCw4nuCc4M9ZhYVW+4VYE9pRxuxW5OuAkjbWo116KWqO4u7xAuEgGvnUVTU
         wfU+zaGWCTAmPiE7NaZaAepi2TYDDEcKHKxfh/Es4IKXv2BiGgK0CAA4erqVcOAOZ1oE
         15rpV9ThSX8jxMYbwyf0SUxMIsNUYUwvknckjmi7a87XWE+t9B52fmf3oPOnj76unKiv
         L9eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793561394; x=1794166194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=AmWM5i5bcYLOfgd6JgqgudQuIbo9gKLsDd/ijE1n9kA=;
        b=pxfIgkOBfZ2MvI+/vI9f7k3zmQ9GfOTVoHzD3C2CzEe1g2LeMyIbBc/HkKanWbaZwh
         zR8Vm14bACcPRHZaiseMnF7BRm3NMOA/0PoXTFKXhNxO3n+t8kwbM+ZyqVbuq51KjsnF
         zhY8iQbnx7Npgxwxd3dbGL2Vzh7Sf6Ze474I3Wo8Vw8sYp4Et7fZAjGdTAUBmEk/FDCH
         FPwCpvaAH7avkuBizK0WPkltHrmm1y0Noh1DAQkZ9cOcvvUMEPmNFBIzkrl/NrecZUiA
         /7WntO5b+hIDxh0VJnHBcmdr/XY1x7BD9NO/yr+Up3TPhvvpdYTi3xrljuulOgZUBZGX
         ygjg==
X-Forwarded-Encrypted: i=1; AKwUvBxG4QK4NxCCAMtvsQwUw5bhpbq6VPaMl7qrYYOMAI/vm/52az+x5wgyiZ+YDSHp3i9ajynscD55nyh5dpaCew==@lists.infradead.org
X-Gm-Message-State: APuU4Z/bCZN5BFtO3T2PaJp8TDzsM3f7vefzjXbHQjIt3xNWFLFFVnZz
	5K7HcXHKP+ZzTqCdpoTd9k+sDHdIoQUgH0mPobAwulXmTxlGyeHZG/lK
X-Gm-Gg: AYBFou1IFho/ohdaaIpTmwu4pFgt/2g+wyZLgDdyh+vEjV4IP38sw8Kv6DV04R5Wsnj
	FYwLBEIS9Tk+f22DdN/gqDjXF4nC5nNU+rPWLEIsgkvqRIXxP3YfKYU9Z9AnF4HFP6jtzeWGjyV
	td+r1SLFZroDdDexf3/0WaSBYttDd6+wnBW/M/lpmoY3PTkcGSlbfkXne1DB7cnTtSCc2DN0oKt
	YbXuZT17hxxIi9QVh/2w/9FdyNzjWS+PARFs75KvtCORhHapkuhayydwSGk/B2c6vmtLDGk4fbX
	W379BngWzgv+06C4oIHqgFjVg87LIq+AvXrswHJutI7prT5skEkvGSxF+P1MS4zgcaSAKg8d3H1
	4C3qXuTF6MG+0jk+qCuZ+JOAENDM8bQv+zLBMX9jBJP8etGh0JHPFNXc7xkSdT09sl7de0QkvAl
	LFvGkOJdg/lrlLAQtFy7Gd3xn8BPn1kRfayypiAwtRGbUYtb809nXsa+bkWAN9IDHEfnfwoSwhO
	V7I5CY25WHYtT/knotNuiJ0/ePDAxvJtHHrqJOohBPFEBpcO3FJ7ImUR+QyObxF698VczSW5isw
	/+lx+eym4kGp9CifJk3aVLecRSk=
X-Received: by 2002:a05:7301:710f:b0:359:2edc:e1d8 with SMTP id 5a478bee46e88-36a422039fbmr11538413eec.5.1793561393990;
        Sun, 01 Nov 2026 11:29:53 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a428af1dfsm31471861eec.7.2026.11.01.11.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 11:29:53 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Frank Wunderlich <frank-w@public-files.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Junhao Xie <bigfoot@classfun.cn>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: rockchip: fix USB OTG power on Photonicat in battery mode
Date: Mon,  2 Nov 2026 03:28:07 +0800
Message-ID: <20261101192807.897562-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261101192807.897562-1-coiaprant@gmail.com>
References: <20261101192807.897562-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_112954_866840_1CFFBAD6 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

When the Ariaboard Photonicat runs on battery, the USB port has no power
output and attached devices are not detected. With the external supply
connected, the same port works fine. The root cause is that the
regulator feeding usb2phy0_otg (vcc5v0_usb30_otg0) is only available
from the external DC input, and there is no 5V rail for the USB PHY
when the board is powered from the battery.

Add a vcc5v0_usb30_otg0_boost regulator, gated by vcc5v0_usb30_otg0,
and switch usb2phy0_otg to use it as its phy-supply. The boost converter
is enabled through GPIO4_D2 and generates the 5V USB VBUS from the
vccin_5v rail. Note that vccin_5v is the actual energy source, while
vcc5v0_usb30_otg0 gates the path; vin-supply is modelled on the gate so
the regulator core enables it before the boost.

This restores USB host functionality on battery power, matching the
vendor firmware behaviour.

Link: https://github.com/immortalwrt/immortalwrt/issues/1534
Fixes: ba124e06ce7b ("arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568")
Cc: stable@vger.kernel.org
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 7e0a2ab829209..bcdfe76000c46 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -151,6 +151,19 @@ vcc5v0_usb30_otg0: regulator-vcc5v0-usb30-otg0 {
 		vin-supply = <&vccin_5v>;
 	};
 
+	/* actually fed by vccin_5v, dependent on vcc5v0_usb30_otg0 */
+	vcc5v0_usb30_otg0_boost: regulator-vcc5v0-boost {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_boost_en>;
+		regulator-name = "vcc5v0_boost";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb30_otg0>;
+	};
+
 	vccin_5v: regulator-vccin-5v {
 		compatible = "regulator-fixed";
 		regulator-name = "vccin_5v";
@@ -460,6 +473,10 @@ rf_pwr_en: rf-pwr-en {
 		usb_host_pwren_h: usb-host-pwren-h {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		vcc5v0_boost_en: vcc5v0-boost-en {
+			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	wifi {
@@ -617,7 +634,7 @@ &usb2phy0_host {
 };
 
 &usb2phy0_otg {
-	phy-supply = <&vcc5v0_usb30_otg0>;
+	phy-supply = <&vcc5v0_usb30_otg0_boost>;
 	status = "okay";
 };
 
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

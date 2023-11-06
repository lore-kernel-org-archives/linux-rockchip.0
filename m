Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 876DEC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Nov 2023 16:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AchISpz19z2+2NVDyYP5u/lg9HAe3Vm/77b/Qerp4TY=; b=1L85xUxDsMfA8E
	ozXTHiXZCkWoApWLenzpQ3D7TMsKBQdgb6yQs3WyZS3e4KIBOjghOO/8huuLzqEG2coRTLXfvae/V
	E7wLB72QnPt7hb10yHdwxbVWeIF/Uv4IOIkn2SElLq6kSIAxaW/tOvhjtw2jnAqzsg7gflIPGlQz/
	POWp/djFdDCN6DePbDjNyBmW82gNmp1G3ixrrYDoOkOF2GMy+FxYPpHwVMfueH0fl4iAxj/CoArDH
	kuscrQ4R1RIgwY83nde7uXkGob6d2t097vbH6GVyEX4AHXANph7EzZn2oywRUK2SLGT/MAX7nfNQh
	difd0+Frl7LnNPAeIbtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0210-00H3Fk-0x;
	Mon, 06 Nov 2023 15:59:50 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r020t-00H3CU-2V;
	Mon, 06 Nov 2023 15:59:45 +0000
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2B4EB6607481;
	Mon,  6 Nov 2023 15:59:40 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699286380;
	bh=tOvg+NAg2DmpDA1isQ5MKe/44qEbV2zy3dB4exZDEuo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XZIq1KquvZIC1/6E2iNIqI5tGUtd3uj8ODqtBQPwI3gFPsdyd9LVNl89bd0n0/Yo7
	 kP1cX2aj71mnCOXPrH2bxabcAUzd4mlFxm5b1LKFmEWTN8Cr50tM5Y8l5mztwelfC/
	 w4WWAw1cZdXDIm+gu3C+ArrortL4xtnHC3+WYqBmWG3gsYw629os5ZyYC0sg+NyzrH
	 fs+K1VlJcYXN68cSbp2x1GK30QBGLzY7fGi/YhWJuAdehGt1GFVXjLSJqRyD3/dSML
	 i+5HDMR9gEJGHbTxh+b7d3IGwXa5+/ADHBNIXeUx6+xsOCPJ2nLa9i6pQ9tBPzRPtU
	 80cTzIF9BCIUA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 982FA480117; Mon,  6 Nov 2023 16:59:37 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 2/2] arm64: dts: rockchip: add USB3 host to rock-5a
Date: Mon,  6 Nov 2023 16:54:32 +0100
Message-ID: <20231106155934.80838-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231106155934.80838-1-sebastian.reichel@collabora.com>
References: <20231106155934.80838-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_075943_966968_0A1AA24D 
X-CRM114-Status: GOOD (  10.45  )
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

Enable USB3 host controller for the Radxa ROCK 5 Model A. This adds
USB3 for the lower USB3 port (the one closer to the PCB).

The upper USB3 port uses the RK3588 USB TypeC host controller, which
use a different PHY without upstream support.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 8347adcbd003..6fb03294576c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -114,6 +114,10 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
 	};
 };
 
+&combphy2_psu {
+	status = "okay";
+};
+
 &cpu_b0 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
 };
@@ -734,3 +738,7 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usb_host2_xhci {
+	status = "okay";
+};
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

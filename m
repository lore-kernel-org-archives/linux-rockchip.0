Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B65E8C4167D
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 12:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJD99dtv99nJ8zPqb51Enc/2li5XVOko3uTHfJHjpP8=; b=QW12iLg82NDgPM
	obTHFLksTe57KlOUkKDgtTB8Sme+bBu0gwk98DJpfgvL/fdKrPdefs843BIq6LeRTW2/70f/0Z3Vq
	+LsHV8ngUBH2j4NeEoeh1V/WrxdQvQH1PVvWotl0+/sIpm2qg7jYvdGwWviMkBBPVX1PdSuNI491M
	dx2ZfD+jxgbQGdgyL+QMK81F2uLxmF9xou09hCRu/81CYuX6yVOxosqKBoLJ5WgLYi8/NcPqxU6yg
	OV+m6HECsb/Y54Y7pX6qAQXXh832zaeU3zV6bYxLZX4E+vuuMx/izm/blim/7dPVX/3i8VbqXR0QN
	ueEl2BGJXAZAYqaTCBzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0L5K-001Ssf-1U;
	Tue, 07 Nov 2023 12:21:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0L5H-001Sr9-1a;
	Tue, 07 Nov 2023 12:21:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EB70E6119F;
	Tue,  7 Nov 2023 12:21:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52962C433C7;
	Tue,  7 Nov 2023 12:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699359690;
	bh=sJvfKz8oWu48VSTzTVbiaDkgpOeWpsluRxOhhd9WOPA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pqt5dWuh8iR/zGvbLiNxbgadOV40oOkqQCqFEpxj/FVoxemWjACbQfcMB2efl1pLF
	 djCaXUbB9auK2/w0KRDzaDaqAcQAIRbOGWbr2Fm+24bObeAKjaTME4FPTeHa3+DhQL
	 4KHn7fbmPAGGC5axyN769C1yqaBwt47PO3Qg7LibawosM6TiWbk2Ls6FduOPznD1pJ
	 MFRB9q0HLjnbdc1/t/UOA786ytiILZT+aUHi8J7rbxDkrJSYUdxGpl9YWRMh5TiC5L
	 soRJ9MXM7C2w5HW8j9Iyc7j2Fg4eREzqcL/IN3ZXUX9tflTjdJWg95OMrt6Acv/0/d
	 kKxwp6eXow6Fw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Chris Morgan <macromorgan@hotmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jagan@edgeble.ai,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 37/40] arm64: dts: rockchip: add USB2 to rk3588s-indiedroid
Date: Tue,  7 Nov 2023 07:16:39 -0500
Message-ID: <20231107121837.3759358-37-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107121837.3759358-1-sashal@kernel.org>
References: <20231107121837.3759358-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_042131_574362_9F00460A 
X-CRM114-Status: GOOD (  11.15  )
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

From: Chris Morgan <macromorgan@hotmail.com>

[ Upstream commit aee432b50f6e15886bddcb6f92028265db4b254e ]

Enable USB2 (EHCI and OCHI mode) support for the Indiedroid Nova. This
adds support for USB for the 4 full size USB-A ports. Note that USB 3
(the two blue full-size USB-A ports) is still outstanding, as is
support for USB on the USB-C ports. The controller is not yet supported
for these ports.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Link: https://lore.kernel.org/r/20230918173255.1325-3-macroalpha82@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 646f49cc9e53d..1e2336d3065b0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -751,6 +751,24 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	phy-supply = <&vcc5v0_usb>;
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_usb>;
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
@@ -775,3 +793,19 @@ bluetooth {
 		pinctrl-names = "default";
 	};
 };
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

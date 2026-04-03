Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BD0BD730B1
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Apr 2026 07:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fFC7/0XLJYmx0AGdQHo85OEK/HbJW1hVxL61XQoxhW0=; b=Pl5p7EhhWTSOjP
	5tZfQ5HiYpn6w0TWrobJrnph5doNNTY/gP+CS0u6JNCuobQ7TgLalo7JkPjzFhUjpxlvCzotTJLzN
	r91RSSQYwtxO7KLkOPIGWIoL9vzYL9G8d3+pHxeEhm0QybVTgkvsy0BYARewXmvglRzfppSdpGl+S
	hsWBObWCltuNH0R+ff+FS2qABGWkZWOs6N/zsQFP1olD9UC2WnaSFMI/RG3owN7Oh9VKI0Uq+juNB
	VLz07FbdStc4RIMu112yOktBdSycaSeybV54soMa9Xo1OLuj9ZgSrHOD0vsqZMuZ37iTtHhS8di7M
	G6M4RWIbOZLMmkJ8u0kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Yua-00000001b4d-1UCP;
	Fri, 03 Apr 2026 07:25:48 +0000
Received: from mail-24417.protonmail.ch ([109.224.244.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8YuX-00000001b1f-2JbQ
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Apr 2026 07:25:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1775201139; x=1775460339;
	bh=5pCTJfDYr/r1hxWMxjtsdEhq89JT5cAfvqasjnMXAVQ=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=HFHWonGpk9aE8W+tG0jj7FT5gRxUI96AMoxWku5LuYlA4y8ck0kEzGzEZ4DXRseQP
	 krLDNeRJOE7LSYPbWZEHj7c6u4ht6vl3c0FslsHAwqwwy5j1W53p76r0Vx2ORjf+y9
	 P+4MvDHnRGC6uiCWN/tuXGz+HPrlBOsbtYECiEfxK9e9O/Gtp0crxSB5x37C5jktYv
	 gNftONlJt12wd0tuPmjswECZgxuLgTB8NhV6ZwrFeQWhns2S/kyciGJwCa6OgT4+H9
	 qvtaKfknhnLUfsVpxrbUyf3b0/no4llk5p+K4h99hF62spJxYQpRVYJixXNTiFjj6V
	 7H/ZJhIYfDO+A==
Date: Fri, 03 Apr 2026 07:25:35 +0000
To: heiko@sntech.de
From: Clemens Malten <c.malten@proton.me>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Clemens Malten <c.malten@proton.me>
Subject: [PATCH] arm64: dts: rockchip: odroid-m2: Enable DisplayPort Alt Mode over USB-C
Message-ID: <20260403072408.44926-1-c.malten@proton.me>
Feedback-ID: 133261535:user:proton
X-Pm-Message-ID: 6e10c726fc4a3142f19f64eaf5dae528a9ac80d9
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260403_002545_871203_16ED1C80 
X-CRM114-Status: UNSURE (   7.77  )
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

Enable USB-C DisplayPort Alt Mode on the ODROID-M2 board (RK3588S) by
adding the necessary DTS changes:

- Enable dp0 controller (dw-dp driver)
- Add VOP2 video pipeline endpoints: vp2 -> dp0 -> usbdp_phy0
- Fix try-power-role from 'source' to 'sink' to allow the board to
  receive power and trigger correct PD negotiation
- Add altmodes block to the USB-C connector with DP SVID (0xff01) and
  VDO. Note: svid must be declared as a 16-bit value (/bits/ 16) as
  required by the typec class driver (fwnode_property_read_u16)

Tested on ODROID-M2 (RK3588S) with a UGreen CM654 USB-C DP adapter
under mainline Linux 6.19-rc.

This patch depends on Andy Yan's RK3588 DisplayPort Controller series:
Link: https://lore.kernel.org/all/20250822063959.692098-1-andyshrk@163.com/

Signed-off-by: Clemens Malten <c.malten@proton.me>
---
 .../boot/dts/rockchip/rk3588s-odroid-m2.dts   | 29 ++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
index a72063c55..dbc62f032 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-odroid-m2.dts
@@ -352,7 +352,17 @@ connector {
 			power-role = "dual";
 			sink-pdos = <PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
 			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
-			try-power-role = "source";
+			try-power-role = "sink";
+
+			altmodes {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				altmode@0 {
+					reg = <0>;
+					svid = /bits/ 16 <0xff01>;
+					vdo = <0xffffffff>;
+				};
+			};
 
 			ports {
 				#address-cells = <1>;
@@ -952,3 +962,20 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
+&dp0 {
+	status = "okay";
+};
+
+&dp0_in {
+	dp0_in_vp2: endpoint {
+		remote-endpoint = <&vp2_out_dp0>;
+	};
+};
+
+&vp2 {
+	vp2_out_dp0: endpoint@a {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp2>;
+	};
+};
-- 
2.53.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

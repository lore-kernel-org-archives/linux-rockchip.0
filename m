Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D070EFCE4A
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 20:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-id:MIME-version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CbbdK5Yw7c7k/E2MQc1RTWGUWMCiS4asTlPdxdFfyeE=; b=ibK0cU3IkysRYi
	eFzJsz8TQmsVxMqNLEyEcjnv0fjjdD/1Vxv0ZFQdGk+oieDBmuEk7vwYGAPA1M6HnLc+E+E/85X5s
	60IKPktbohF8liuPNB3DPDob/BTqqts9MIhpb16Eo8EcEn0kHp4viMJl5Swm45mc16JOJgCs5IudJ
	/5L6SBJqtVe67kAiG4ytwqcErWYYygvTMDcje59XGrsgORomSbdbT9dfwyc/CiPPlbZlWQ8mQmVkP
	t0Xx3HrXgBwMDnd8JU9eP04BUPvPWTtElcbo7TixjOxffKvzsG0P9Nj9hL2sfRHDfmRZrgGtRuXKz
	c53TAD4ITEfuImSno9zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxtAI-00000000TZr-3P8y;
	Wed, 04 Mar 2026 20:49:54 +0000
Received: from abi149ajj125.mrs1.oracleemaildelivery.com ([129.149.100.125])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxtAF-00000000TZI-1x0l
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 20:49:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=pta2002-202603;
 d=pta2002.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=QqcNY84HU56C92q/VUNsNqUbrdG+Xf4zqhVnZIVoFdA=;
 b=SdVK9HkfDJT/a1CF5oULnG/z/ziFxVBZn2qbSRpGup3VlF+KBrhrty2mBYX6xPjqYWliTAk/7RzN
   P41Ism0Cb7aTdigXr7BID5hHa8piaSeDBU+ExytzLvOKpkdfW4CX/qvqhJAMK5hyCqLc3d8IaUvP
   Ry2GQqVPcRClN6Sm9l9ImBfAJWaCdUTOShH5Gr6bjgKp7OPonxvyEfljWWZ4aisBdWhFaEQZuWdS
   HHpaZF9ysF6/Jv+cdbejfYaA5x9plkmNqStYCXBpyq17yb81aYrpGirytsZtaz1MbbqybxTu9SZI
   nC6uK1v7Tt0J4Ngh7DXYzrZvAVM/daXzvWWq9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=prod-mrs-20211019;
 d=mrs1.rp.oracleemaildelivery.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=QqcNY84HU56C92q/VUNsNqUbrdG+Xf4zqhVnZIVoFdA=;
 b=k4eY2CT8TFSvBLle9zzfIUXDv8TnKbxjYjnd235KhdHNua0BF0+KmVMJlve3gwEY0o92uyh1aKFT
   WOusRKqGapbDfpFKGz9R+0ZeYOlSybhI0xaCDPt/TMHs8UyHJkmdY5anjiVvYSSUpIxD8zHHLfE9
   kM1HsDpWdM5nxgtdXDLjdzA8VFWI8WF++u+SFr21cZKkeWOzRrrkKKkNVH3Cq+gScPeKmDluReNG
   4wSzx3vihWz0Ua/rpo6NiPxfYt1FM6OepkL3cblciURiz9TXyhM/iIXhW8xa9G1CeeTZj6z1Is8m
   bJcVNInumTosDb/XTbzQLbXrCkC8r4tFHDOxHg==
Received: by omta-ad1-fd3-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com
 (Oracle Communications Messaging Server 8.1.0.1.20260212 64bit (built Feb 12
 2026))
 with ESMTPS id <0TBE001BK6YGTY60@omta-ad1-fd3-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com>
 for linux-rockchip@lists.infradead.org; Wed, 04 Mar 2026 20:44:40 +0000 (GMT)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
From: Pedro Alves <pta2002@pta2002.com>
Date: Wed, 04 Mar 2026 20:44:39 +0000
Subject: [PATCH v2] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
MIME-version: 1.0
Message-id: <20260304-radxa-r5-itx-hdmirx-v2-1-6567e9e3298b@pta2002.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pedro Alves <pta2002@pta2002.com>
X-Mailer: b4 0.14.3
X-B4-Tracking: v=1; b=H4sIALaZqGkC/22Nyw6CMBBFf4XM2jF9AcaV/2FY1DKVWQBmSkgN4
 d+tJO5cnpPcczdIJEwJrtUGQisnnqcC5lRBGPz0JOS+MBhlGmWVRfF99ig18pJx6EeWjNE1rqb
 GxUuwUJYvocj5qN67wgOnZZb3cbLqr/313N/eqlFjbNtH1LENpOzttXijlDmHeYRu3/cPbRHbm
 bgAAAA=
X-Change-ID: 20260303-radxa-r5-itx-hdmirx-f4645e64f8c3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772657079; l=2272;
 i=pta2002@pta2002.com; s=20260304; h=from:subject:message-id;
 bh=jtuJ3sDSTRydL4QDqtLQQf/RxGRON6GfNn+9/Wpf6pU=;
 b=bWuzjkfSGwG38Yb0np1TmOduH+RX+yiRB5PsCDCZPQ7ZVeJZVfkgc9Pks/HDmhjHLh9cWSGD0
 FwK1SVJ5rDqCblHoWkVIPpIFTHLZz3et+1xZTUIOQe6nsriCIqE6xVL
X-Developer-Key: i=pta2002@pta2002.com; a=ed25519;
 pk=leagPTMCtYIB9nQJfoZ5+TYiuZUercAQHfGnFVTTaiQ=
Reporting-Meta: AAHDjmJjvCZUCcZYIX7JF0y6IfTTYzSwJJDp0tXSTosAK1Fg2saYxHqqtPk2U2cu
 1AADq0lNRLQvx62sAxrPipYGlv9v6DU8CbPrm5xisoO72gpZ1okj8XsWzJzEalWX
 cOBmjiNW+gf230J6Z83IvKQXb+7I6W8ttSbKCCGGDlYG9pIqRlvMSRhmlag8F/oW
 FicEBYbbENur41Ru6WgX/yN3vuFiOi9gmo+WUeRfj3OHOc/FJzleDM2/D0PdNTMH
 6ho6P6N3FQ+MsYS1CqXOhAmM27iuZOu26NRHwAFAVl4KRbFRHoGt0FBk61RQMN1A
 SpMvAFSYZb9aybEyq5mf4JDpgnFeLMIlFFXQOCN1KpW3tL43vox/cAg78MQXSEOL
 qXVZiouS/QoE6qprdRnYWSQd3LLE4wjAK8HYYDiHKbQgR8s3JANo/R8NjiDKWP78 0rS8UiPt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_124951_505487_83A6D579 
X-CRM114-Status: GOOD (  12.83  )
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

The Radxa Rock 5 ITX board exposes an HDMI input exactly the same way as
the Rock 5B, but this was not reflected in its DTS.

Change the rk3588-rock-5-itx to configure and enable the hdmi_receiver
and hdmi_receiver_cma nodes.

The hot-plug detection (HPD) pin keeps the hdmirx_det name rather than
the hdmirx_hpd name used in other boards since that is what matches the
official schematics (HDMIIRX_DET_L).

The configurations were confirmed to be identical on the downstream
Radxa kernel, and this has been tested to work on a Rock 5 ITX board
running kernel 6.19.3.

Signed-off-by: Pedro Alves <pta2002@pta2002.com>
---
Tested with the following commands:

v4l2-ctl --verbose -d /dev/video4 \
  --set-fmt-video=width=3840,height=2160,pixelformat='BGR3' \
  --stream-mmap=4 --stream-skip=3 --stream-count=20 \
  --stream-to=hdmiin.raw --stream-poll

ffmpeg -f rawvideo -vcodec rawvideo -s 3840x2160 -r 30 -pix_fmt bgr24 \
  -i hdmiin.raw output.mp4
---
Changes in v2:
- Updated dts spacing to match coding style
- Reverted pin naming to hdmirx_det to match schematics
  - Didn't end up changing other boards to match. There are quite a few
    others, so I'll probably send a separate patch for that.

- Link to v1: https://lore.kernel.org/r/20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index 172aeabba72a..8e0eead7d223 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -349,6 +349,18 @@ &hdmi1_sound {
 	status = "okay";
 };
 
+&hdmi_receiver_cma {
+	status = "okay";
+};
+
+&hdmi_receiver {
+	pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_det>;
+	pinctrl-names = "default";
+	hpd-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+
+	status = "okay";
+};
+
 &hdptxphy1 {
 	status = "okay";
 };

---
base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
change-id: 20260303-radxa-r5-itx-hdmirx-f4645e64f8c3

Best regards,
-- 
Pedro Alves <pta2002@pta2002.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

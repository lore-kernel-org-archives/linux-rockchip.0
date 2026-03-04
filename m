Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78E75EF8FE7
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 14:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-id:MIME-version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lEFpHRVO5JPquKcjOGmlwgjenJgf+d69g3KZar/1Bec=; b=B2E1hqKzr+PTkn
	IgfTJ9jhre22NoOe5d8Qh3o/PHCM9EAZPYVdm3mMDx4mdcQHEvgQPgZnniFehi9T0FM6b6TbiJ/1b
	wwC2PreDE93/fHCtXJWHb8ytigQ28XA0NOyU5N9P4Nur522nW/jugCqAnNi/1RsQq5e+GSlVXYvAZ
	2lbEQ6lilpr3FoKCaBd9nY17UYHmOnaJiEyKVmqgLasOtGyZElwutw54Ux6QYZKdNUcSRmNLkuXgh
	7GFgSThCpTLFW6chUeTwrO5pnmMsWXhFSLVUrsD8gUJWMFfngVmvmDmlkJw8Z0A2zqufhLDcjA45d
	7dM6Q0ex3ukPOg1R3/Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxmlc-0000000HI5U-2EE2;
	Wed, 04 Mar 2026 14:00:00 +0000
Received: from abi149ajj126.mrs1.oracleemaildelivery.com ([129.149.100.126])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxmla-0000000HI4l-3y2j
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 14:00:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=pta2002-202603;
 d=pta2002.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=f8nmjH0o71gVTcBoCc9bpsGh59DT0B52MUM4FwYNG4o=;
 b=GV6sEf0ZJBN9bTv8O/UuEXjttneC4p/qM9YAK4nPX9UImQ/lDwzsRPd0gI/bp+tw3UHrd2/FkczH
   ul6QjCJKqxKGbkjsuo1s7ixlgMWhfCUhqrRTb92vrSf1wIpzZcxWr1UIwePenXKhsgb/pDG8YSwI
   9cs4lM6sLIg2wk/O2Xd1f9CKHF60mWRtWJRQB7tvtOvgwEOYuf42gIcxzF+x2EU3kF3mZ8j8+IAP
   KGFZl36D2MDttxScEbAIin52fEg/GCLX9ooIEGrkpJ2Ddl+o7JgcFyvuRqSmO/6jq13zX3iiSMKA
   55CnK4FAIWfYMI4nBhQXic5YDbqPLCQBzXb/MA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=prod-mrs-20211019;
 d=mrs1.rp.oracleemaildelivery.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=f8nmjH0o71gVTcBoCc9bpsGh59DT0B52MUM4FwYNG4o=;
 b=tSWGqoDUG2pRxHLOi3Hf15QRoTL1/NeoXaOfGX/50C/BklcR2JpTfM9i0biOPclZD+MKWsaA1+9J
   78h/lc8z6eHWGbFKi8h6siq+0CO7xdS37A0/MPGU1p4eprSgEwmLy7xFwJuRH67FzCMi3Ly5dbHx
   qG84hElSmn9YyQys6UJpuJ0CbiuUs7kE3lKqJg+fVvip4WTLZzXm/39hiGg2NjVPNLxAk9HJCbSa
   A+C7oAwWC7UY2RbBtyMmFUeP2iyj2yobFvwhldTTiFFdRGMOuhSqpGEULgzGAEVpE9TmW6PnBiTB
   XlgfwnTpn72FHIqIkk4oY/fH0pr+sSHZa6MxJw==
Received: by omta-ad1-fd2-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com
 (Oracle Communications Messaging Server 8.1.0.1.20260212 64bit (built Feb 12
 2026))
 with ESMTPS id <0TBD00DORNZACF40@omta-ad1-fd2-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com>
 for linux-rockchip@lists.infradead.org; Wed, 04 Mar 2026 13:54:46 +0000 (GMT)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
From: Pedro Alves <pta2002@pta2002.com>
Date: Wed, 04 Mar 2026 13:54:45 +0000
Subject: [PATCH] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
MIME-version: 1.0
Message-id: <20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pedro Alves <pta2002@pta2002.com>
X-Mailer: b4 0.14.3
X-B4-Tracking: v=1; b=H4sIAKQ5qGkC/x3MSQqAMAxA0atI1gaqHRCvIi6KTW0WDqQiBfHuF
 pdv8f8DmYQpw9g8IHRz5mOv6NoGluT3lZBDNfSqd0orjeJD8SgW+SqYwsZSMBpnLDkTh0VDLU+
 hyOW/TvP7fnnBuFVlAAAA
X-Change-ID: 20260303-radxa-r5-itx-hdmirx-f4645e64f8c3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772632485; l=2284;
 i=pta2002@pta2002.com; s=20260304; h=from:subject:message-id;
 bh=a20VMlDpaLH9AXgrhdHoV4Pssvg7BkUbHXan6awwzQ8=;
 b=T4+sgz4tWkB8i0u16hTDGjXuLsMdrYYl15JeSAdNb40ze7ydGmZe+dJlrjHy11G8r2aDvoAc4
 FfEVkl+3sLQB8E2pj3XSkQVo40wODZC7G/oYYxB7dVSAMTzUJNzTgrJ
X-Developer-Key: i=pta2002@pta2002.com; a=ed25519;
 pk=leagPTMCtYIB9nQJfoZ5+TYiuZUercAQHfGnFVTTaiQ=
Reporting-Meta: AAFw+0CP0PnaoJ46S1wWgOjfMw4kceiZ7uqB5ClL97jTJ2qLoufiwQIhvJ3NQU+T
 V33OC6+yp86+syDj7IVN2dZaJCEsMkOjKhk1XcD92j+fCvUGIzo/HUyKKmaKKuQp
 rRQrj6f7OPmCn1vOBS7hH8srCZVnvlJp4AW7KFuhf26syAeA8Uqtwc8zGyklVl2w
 JO9DEF0zWrAec41etrqk6uPS8fLgYJ5W1PMwMMVoQYwIfWox/fZDcZbyPjpMW9hJ
 heTYxCBZBCQnFV8oObteZzIW9sAQcJf3+42QQryaYTxjSwMMjahBslrQX5J/PdNV
 KQosLveuHFcIIsl9CSJbBqUDU//jWW19kTMdLcyFk2R+8/nJ2IQdXkd484PlyfrW
 y5ZBAwFlAcU/tObvjkvsW8GedhswbX4JWv4z1Ny2Cf8vGke9K3HGAI5dWisLoAcn dh/laZi2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_055959_002418_17CB6B64 
X-CRM114-Status: GOOD (  12.63  )
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

One of the existing pinctrl labels, hdmirx_det, was renamed into
hdmirx_hpd to match the other boards. The _det name seems to have come
from the downstream kernel sources, where the other boards also have
that name. Changing it to hdmirx_hpd in order to be consistent with the
other rk3588 boards in the kernel.

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
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index 172aeabba72a..9f4f31d1ca94 100644
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
+	pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_hpd>;
+	pinctrl-names = "default";
+
+	hpd-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
 &hdptxphy1 {
 	status = "okay";
 };
@@ -746,7 +758,7 @@ vbus5v0_typec_en: vbus5v0-typec-en {
 	};
 
 	hdmirx {
-		hdmirx_det: hdmirx-det {
+		hdmirx_hpd: hdmirx-5v-detection {
 			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
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

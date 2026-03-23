Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C2EEC01A9
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 09:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-id:MIME-version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CbbdK5Yw7c7k/E2MQc1RTWGUWMCiS4asTlPdxdFfyeE=; b=WRCwkQdeG/FqxJ
	Wvcqb+NAo9oHZ+IWumvgUiy8HO4BpJJnvYSJ+dSwFtyFWx+CL8L1WIuqkYq9vmhbhogtVBJhSsLkw
	unt0cbHwwywMiyetHh/ySdnM6VEa3espY5WIYREfKTAWssXbTwISpsYmlz6DA7CsKXXSF/wKBMAuT
	uYf3sUHNjE8+7hbL5Quvlfe3rdECPDI0g+qJdN/YbW7RV2XCaCWaYt/XPeCaNfwSAOhT5qSEwcstJ
	W0cU8qFUlfb5B08pG1IkPGeRU4L87z4vw+lwGate6JJno7TrEpoboNqTN1pu89V8KHPK8Z2HcUdhy
	L1LRxNi1NDFOP+VYIJbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4bXh-0000000GNHV-2FQX;
	Mon, 23 Mar 2026 09:25:49 +0000
Received: from abi149ajj127.mrs1.oracleemaildelivery.com ([129.149.100.127])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4bXf-0000000GNFe-0trE
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 09:25:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=pta2002-202603;
 d=pta2002.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=QqcNY84HU56C92q/VUNsNqUbrdG+Xf4zqhVnZIVoFdA=;
 b=sYY7wlBKvUaaGBnwFlOPzywuJjgY+EML1lkLuZRilmnwkfKV/kIoHb3sl9nM8iifDwu36gGNUNka
   0F0c+ePbBRBv5W3T5cZkRLxnG1k6O+4LgfqEgXxHmY3l+ZMZoUpbZKax96ZCHOY8OoKZjsgXTUPZ
   1XR9Q6AbFMw6vlK1AAAaV0nAbq5pASQ2hQuBuBpt0tGNS8RiHx4+kcFOFHGzRb5WvMXzLu14gddp
   /Lf3LV1ckHn0ih9EKc78QhBgskpfp/HQWm7WTKFONrxX3Y6drcqK2J/4UIe7G0PxzuCWCZHYf62L
   B/RlpUuVj/2d82U6J+AaAo+4RtJoxzQyrZ/Bsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=prod-mrs-20211019;
 d=mrs1.rp.oracleemaildelivery.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=QqcNY84HU56C92q/VUNsNqUbrdG+Xf4zqhVnZIVoFdA=;
 b=XbFVc+E+ZO7dTLyOnNpFEIG7fV5nbVwaa5XsD/9KdQFkG1aBt14W8+XMj6cvxtD2vK5GlnmvX5tK
   oUcmnSoONKMiT9U6Ivk8juE0Oz4t9zpNncHA0KIC30RoTzQMGipIwMCQCyXJPZ14+yHe6MwEXhRt
   z4FRSYtzGUPsGZY02q3shn3DBheV+lZm6lC0RF8z0fU/sa7gJ7odVLvVG/w/vMzpBfiqS8RtP/MC
   frATTSDFzMkjMpIdGUTVX0PJzqkbja1gYeCdW1z62gUOpU/15lanhI2Xe8M8ulvbxZhvk6zQWI3+
   U7wUMQ9ptpKrHuDXUfO/UM7MWwDk64m39Y/GHg==
Received: by omta-ad1-fd1-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com
 (Oracle Communications Messaging Server 8.1.0.1.20260212 64bit (built Feb 12
 2026))
 with ESMTPS id <0TCC00CMYI6NJX30@omta-ad1-fd1-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com>
 for linux-rockchip@lists.infradead.org; Mon, 23 Mar 2026 09:25:35 +0000 (GMT)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
From: Pedro Alves <pta2002@pta2002.com>
Date: Mon, 23 Mar 2026 09:25:33 +0000
Subject: [PATCH RESEND v2] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
MIME-version: 1.0
Message-id: <20260323-radxa-r5-itx-hdmirx-v2-1-c52501909577@pta2002.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pedro Alves <pta2002@pta2002.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774257934; l=2272;
 i=pta2002@pta2002.com; s=20260304; h=from:subject:message-id;
 bh=jtuJ3sDSTRydL4QDqtLQQf/RxGRON6GfNn+9/Wpf6pU=;
 b=u+oT4e3lQ1Mx0jJN9zwHOslJ4vLhPOFi3qoN3g3AHn7FFUgVyrilOyNoIzDraMN5SqUeNOFF4
 /KLBNb9KgoACNjDJsmTE0GdWftgOVYCBf2Mmox0xIMzxmltyicTF/Fg
X-Developer-Key: i=pta2002@pta2002.com; a=ed25519;
 pk=leagPTMCtYIB9nQJfoZ5+TYiuZUercAQHfGnFVTTaiQ=
Reporting-Meta: AAEZj3e2HI7KDnQhf5vUwFKE8bI//bFf2o2wX3x9dOI4xOQ0+M5dRFepE216EC/6
 CouR05T8cWH7WqfaWBvm+NownUX/HGcqxfWVLsKcodgzzLM+6q625d/tYeOROehQ
 a3WRhN+Ler6MAkE4vVVyDkbmv7KyGUBtITN0LowUW/3To8zlZWm+3OIpqaL0xDb2
 JccozSCaDN61Qjvesxt8wKY4pNRf3nDPRhemr6BhFQAAsxrUTfYiO1MW7Z9OrCg7
 QF7p1z62Qb4u9eyQ8toRZ9jZoPiuCt/xQtvJ9/SKMAoxLX3rOf5X3q0lh5QOqV4i
 /64wME0pMUqmYY1HyGBJUy405DT68XtcVjIt/vM0rsA/tLETfkSgKZPl6PvrCYok
 GoOEuwTUPf6YDeQIZC1cGsMnU1Z0FRGUZPJZ3hOn5kie9MDa9gfTBco1qThDOIyh NXBzcyEM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_022547_253255_B42EE096 
X-CRM114-Status: GOOD (  12.21  )
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

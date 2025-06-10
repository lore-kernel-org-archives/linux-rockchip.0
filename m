Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4281CC71133
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 19:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ggHVU4Z5TBVVjqnz5tYXSAT/m2WX/t8+LrCB9cOHde4=; b=4gvWhvxHzqITqW
	cmGiL5MOm2bvc7ftzKRf/hNN52kbSnjsPUshI1kA3tzYPcEdmh0kzb4+VWhN1wvH0MAnrjU6crrFp
	3iRlXGteHKGwk/lIDQE78sFG2Ct1Eu9a1S6JPP/qvM+4LhdAVN00B7tJiTvoljS1h++E7oRuhmo/Z
	FpWGjRkKPLm8ezVh+/yJawjuoTS38rGPiNDRuGa1I9UUmmM6q+4YnTDpBE8+olzi9o5j5FV/xceO4
	aELs+s1k2klfKuVESqKMWMKDDj571t0NPE5u3ayKolD+6ldcpdYvpdN3I+3TQZL/a1k/R41ufkZO3
	c1C2LgIjuxPU7gKabCyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP4yw-00000007xo5-25AC;
	Tue, 10 Jun 2025 19:50:02 +0000
Received: from smtp-bc0a.mail.infomaniak.ch ([45.157.188.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP1kA-00000007S50-2Eey
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Jun 2025 16:22:37 +0000
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246c])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4bGvFx5FGwzn6h;
	Tue, 10 Jun 2025 18:22:29 +0200 (CEST)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4bGvFt5ldhzLd;
	Tue, 10 Jun 2025 18:22:26 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH v2 0/3] arm64: dts: rockchip: support camera module on
 Haikou Video Demo on PX30 Ringneck
Date: Tue, 10 Jun 2025 18:22:15 +0200
Message-Id: <20250610-ringneck-haikou-video-demo-cam-v2-0-de1bf87e0732@cherry.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALdbSGgC/42NQQ6CMBAAv0J6dk1bLIon/2E4YLtLNwRqWm0kh
 L9beYHHmcPMKhJGxiSu1SoiZk4c5gL6UAnr+3lAYFdYaKmNNKqByPMwox3B9zyGN2R2GMDhFMD
 2E5y0bC6GHmdqSZTIMyLxZx/cu8Ke0yvEZf9l9bN/p7MCBUSka9XIujV0sx5jXI4ORbdt2xdgf
 yQVzAAAAA==
X-Change-ID: 20250516-ringneck-haikou-video-demo-cam-420685fb7f9f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_092234_720196_D970E328 
X-CRM114-Status: GOOD (  19.63  )
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

The first patch is fixing dtc warnings related to the ISP on PX30.
Sadly there's still one due to there only be one port in PX30's ISP and
still address-cells and size-cells properties set. The "issue" is that
there are actually two ports (see binding) so we shouldn't really remove
it, but the binding requires a bus-type property (either parallel or
bt656 mode) for the port@1, which we cannot know from the SoC PoV.

The secibd patch adds a label to the port@0 of the ISP to make it easier
to add an endpoint to it from a board DTS(I).

The third patch adds support for the camera module found on Haikou
Video Demo adapter with PX30 Ringneck.

This adapter is also used with RK3588 Tiger, but there's currently no
camera stack at all on RK3588, and RK3399 Puma, but:
 - 19.2MHz is not achievable exactly, so need to patch the driver to
   support 24MHz for example, this will come later,
 - The camera clk is on an IO domain at 1.8V but configured at boot at
   3.3V, and until the IO domain is properly configured, the camera
   won't receive a clock. Based on the probe order, it is possible (and
   empirically very likely) that the camera won't be detected at all.
   A Linux kernel solution was attempted multiple times in the past,
   c.f.
   https://lore.kernel.org/linux-gpio/20230904115816.1237684-1-s.hauer@pengutronix.de/
   https://lore.kernel.org/lkml/20220802095252.2486591-1-foss+kernel@0leil.net/
   We'll need to figure something out this time as I won't be able to
   upstream camera support without it :)

To test, install libcamera on Debian Bookworm (or more recent I guess;
libcamera-ipa libcamera-tools) and add a file at
/usr/share/libcamera/ipa/rkisp1/ov5675.yaml whose content is (remove one
leading whitespace):

 # SPDX-License-Identifier: CC0-1.0
 %YAML 1.1
 ---
 version: 1
 algorithms:
   - Agc:
   - Awb:
   - BlackLevelCorrection:
   - ColorProcessing:
 ...

then call

qcam -platform eglfs -c /base/i2c@ff190000/camera@36

While this is running, control the focus lens driver with (via v4l-utils
Debian package):

v4l2-ctl -d /dev/v4l-subdev5 -c focus_absolute=150

and change the focus_absolute value to see the lens moving and the focus
change.

I'll try to have a look at libcamera's config file so I can send a
proper one to the project instead of this dummy one.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Changes in v2:
- added patch 1 (fix dtc warnings for endpoint in ISP port@0 node)
- added patch 2 (label to port@0 ISP node),
- used phandle to port@0 ISP node, removed reg and @0 suffix to
  endpoint,
- Link to v1: https://lore.kernel.org/r/20250516-ringneck-haikou-video-demo-cam-v1-1-fff23160395f@cherry.de

---
Quentin Schulz (3):
      arm64: dts: rockchip: fix endpoint dtc warning for PX30 ISP
      arm64: dts: rockchip: px30: add label to first port of ISP
      arm64: dts: rockchip: support camera module on Haikou Video Demo on PX30 Ringneck

 arch/arm64/boot/dts/rockchip/px30-evb.dts          |  3 +-
 arch/arm64/boot/dts/rockchip/px30-pp1516.dtsi      |  3 +-
 .../rockchip/px30-ringneck-haikou-video-demo.dtso  | 53 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/px30.dtsi             |  4 +-
 4 files changed, 56 insertions(+), 7 deletions(-)
---
base-commit: 8a7f81861ba3226f9cd6fc1cd34d7d62ff8951c0
change-id: 20250516-ringneck-haikou-video-demo-cam-420685fb7f9f

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

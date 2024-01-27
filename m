Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0719C48285
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 09:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VG5/9uGzSFtd7ZCgJCTSG/ZHot7v8oNf1SYBoWPfJpI=; b=k1hbrnAdaXnoUz
	vx6ex5LHLBzEJmleHHkmwPN8sP0zqYfB+OCH8XXMKo33PYK2NmAvOun2P6DDFpPybUSYnZXZpagGO
	c/kTKJwc75FdxbCF0YUXaReodDm1hkLATu20gvo0tSggvtfHZV/xejkFhyh7G1JRojvRJZoYS40a9
	HgX44j/1mPD6geVKxkoGgK+hioGa+sq8ICKGVg5m7u3v6vrzzMidnipKJK+yQRFBfV91bWdX2YTUg
	XNVY/PPVQjR7gE4l1/LBSg3ilCv03FQQiQPNujqT7VyIzZ+fi7hStkNUKUhgOgsKk7BYPEkH96u8y
	CI40xtY1NzQhdBB9fW+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTesC-00000007EFa-0usi;
	Sat, 27 Jan 2024 09:21:12 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTes7-00000007EDH-36EU;
	Sat, 27 Jan 2024 09:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=ke7aq
	YeO3SgKHFFAXZGTQJgNGC9RklM/X8fmVFmJVMo=; b=aCwvVHfdF6SFbE39ZmYnE
	wO4GcXjp/JfyvcAcUUnppJKIVxs5z27NtpebTolZSvusoMlVXQc2ra2ob+8bUA1I
	hMjz+/a0hzR8k6twsUngb0Yb9l6lWyTn8Z5T7fZ8vRCSZWv3+S+An0h8LLHLMn11
	MhUNKWSqRuRboG5g/gEUow=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g0-4 (Coremail) with SMTP id _____wD3rzHkyrRl5GopBA--.2976S4;
	Sat, 27 Jan 2024 17:20:41 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: rename vcc5v0_usb30_host regulator for Cool Pi CM5 EVB
Date: Sat, 27 Jan 2024 17:20:33 +0800
Message-Id: <20240127092034.887085-3-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240127092034.887085-1-andyshrk@163.com>
References: <20240127092034.887085-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3rzHkyrRl5GopBA--.2976S4
X-Coremail-Antispam: 1Uf129KBjvJXoW7AFyDZryfuFyrCF45Cw1Dtrb_yoW8JF4fpw
	nxCrZrJr1fuFWUt3yqg3Z7Krs5C395t3Z3ur95Jw1rKw1Iq3ZrtFn3u3WrAFW5twn7Aa1q
	kFs5ury7JF1qvFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0z_1v3UUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEAxyXmVOB+LqkAABsF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_012108_240638_DD13A90E 
X-CRM114-Status: GOOD (  11.04  )
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

According to the schematic, this regulator is used both for USB30 and
USB20, so give it a more appropriate name.

Fixes: 791c154c3982 ("arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5 EVB")
Signed-off-by: Andy Yan <andyshrk@163.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
index 1b5681fe0471..5f42f1065d73 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
@@ -84,7 +84,7 @@ vcc3v3_lcd: vcc3v3-lcd-regulator {
 		vin-supply = <&vcc3v3_sys>;
 	};
 
-	vcc5v0_usb30_host: vcc5v0-usb30-host-regulator {
+	vcc5v0_usb_host: vcc5v0-usb-host-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_host";
 		regulator-boot-on;
@@ -200,12 +200,12 @@ &u2phy3 {
 };
 
 &u2phy2_host {
-	phy-supply = <&vcc5v0_usb30_host>;
+	phy-supply = <&vcc5v0_usb_host>;
 	status = "okay";
 };
 
 &u2phy3_host {
-	phy-supply = <&vcc5v0_usb30_host>;
+	phy-supply = <&vcc5v0_usb_host>;
 	status = "okay";
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

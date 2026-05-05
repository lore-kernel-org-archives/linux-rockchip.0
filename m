Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C47A4CD3443
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 17:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKYHe+HyOc06Bjsb0X4Ne8nSRX7U6SFEqvpXG66maPQ=; b=JtBkJsb6rtrYba
	7xvyYFEF6VxaO2gyY5jjJGVt8oB2vtStoJjLThS52vnWhukEbU+J/wKnAzrS3ImA3ylz5jkvFkE8u
	75ZNfB6rvyvCjwmtICNyj0Di6oC2kicCuf0IlL5vi5zRYEVESqWnR/bMl3NY6BC2yL+pGEs/Atr4F
	XDyjlZoU1NVEH35H7IMU1xn/cBKw2PbU8LVMpsT8AkVH1AlunPFGxuUK0JRW+VabA/e84nSq9XtOm
	0GrD7RM/glYl62NPhBTYN68xEgSE9eYJakUWYkPmegI6x2kZcx8bViW0taInCBXw3bxkW3wR2OA5O
	hQXxYbShQMTbCblbMuug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJJu-0000000H11M-3awG;
	Tue, 05 May 2026 17:12:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJJr-0000000H0uv-0Qjr;
	Tue, 05 May 2026 17:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WQzBRtevGp9SDQQk5hM9qSxUDKCpE9SbnE/lz5huCdI=; b=iOKpeGXqL7NPp8H7tQpZh/hhD+
	QMlJjM3lfB9VXBIU+ygWHiOcxTGtd/gaCW9osS/wYULAxv53bWSUvysFiQAF73HAzW3OVhsKwCiu6
	lCVjBBBXGY4EdJf13pCzrTmnOzChGtipOCbBARAJucV1XrRUUlJ9+3E3kfoSXQ+S+diZUu6dTsCZe
	tW4MtoQo8iq/c3W1w6nhSA3SEz7ZfIlf9XZBnT33UphEA5IKAeWBn+OHziNc1BBnn+Q2OBjILZj56
	cMmz9bYcZDjG1wUL96O3s+jJ6caFggvlO6PoyMVUnCRuglRbCIlJA17bOaB00brT0YmZZtq+uZmeD
	EgFJ7oLg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJJo-0000000E84k-1WtQ;
	Tue, 05 May 2026 17:12:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=WQzBRtevGp9SDQQk5hM9qSxUDKCpE9SbnE/lz5huCdI=; b=xIANv0IiSz/GsIMmfjdhlBADgC
	Cvpb9cYAqR8JmFzPuwUNIZ9AHPLi2c1cXLxoZeNhCChQe68zci9GADsNEgqPWfOvjRnJtTAKyWifW
	Zp8SBaFobf3kbEkcG1oZQJPOyzXERlOzgoGH+BbRau6b1Bp3GQHCmHgPO+b7tVJ1qq8nQof7XA0ru
	ShiY4lnggK/5Qb85kjCGuJi8B42zNG6YorDx9r+fNwYkd1ZwDe6nAo5mAIEN+dWr3ShkBTVKgRpqF
	+uwqCcf0q6uSIKTYCBbUDLSv6xcNOiR4BCXK0cYlwjNV9PGRMq+tiEivVBIasezVzrum7eR7zo4OY
	UDHRlg7A==;
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/5] arm64: dts: rockchip: Enable USB 2.0 ports on NanoPi Zero2
Date: Tue,  5 May 2026 19:12:08 +0200
Message-ID: <20260505171208.3267387-6-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260505171208.3267387-1-heiko@sntech.de>
References: <20260505171208.3267387-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_181224_522096_548EED7A 
X-CRM114-Status: GOOD (  10.21  )
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

From: Jonas Karlman <jonas@kwiboo.se>

The NanoPi Zero2 has one USB 2.0 Type-A HOST port and one USB 2.0 Type-C
OTG port.

Add support for using the USB 2.0 ports on NanoPi Zero2.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../boot/dts/rockchip/rk3528-nanopi-zero2.dts | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts b/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts
index 9f683033c5f3..cd5c75433fa9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts
@@ -338,3 +338,33 @@ &uart0 {
 	pinctrl-0 = <&uart0m0_xfer>;
 	status = "okay";
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
+&usb_host0_xhci {
+	extcon = <&usb2phy>;
+	maximum-speed = "high-speed";
+	phys = <&usb2phy_otg>;
+	phy-names = "usb2-phy";
+	snps,dis_u2_susphy_quirk;
+	status = "okay";
+};
+
+&usb2phy {
+	status = "okay";
+};
+
+&usb2phy_host {
+	phy-supply = <&usb2_host_5v>;
+	status = "okay";
+};
+
+&usb2phy_otg {
+	status = "okay";
+};
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

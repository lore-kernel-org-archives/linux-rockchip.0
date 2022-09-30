Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1697C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 05:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBNOIxfdEylQEjf2uwdl56gb2GBD4wxZqzRsgzoVrdk=; b=Mq2neHrdp3mJ+Q
	vVwarNwO/2jKm1r1x5Qf4pD8kEfFyIBDZeoHuPixhFE3GlgD/TcM0FG1gyhZN53QbCzrgayJTfs9E
	IfpFmkCFyJTJMHG7gzIuL3VlMSOxfUXBkrqMqsxB51qQ73vZ50OG9G1ZWKs03Rox6xfWNdNDq70L9
	7XEsU5SPZ4TYbREbv+nzJGAScdHxJjrVQHayEILFmN8Aw1yPlHRmmVGTqhpPRd2KEBwZmDtsiDC3R
	SBtWjQ4BB5TbctI1T+Szv0j8bKCk54nlE5qNjxchVhPCNBqmY1fofLmNMC7NBM3X3T4uPBxjBSUwo
	CgW63s/jP6y5GHeQHT5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8NH-007EW9-4f; Fri, 30 Sep 2022 05:15:47 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Kh-007CxC-Ke; Fri, 30 Sep 2022 05:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=ypMQ4XgbvXncnzJhuzBdDiqc5hueXXs/1IVnLmGV/8s=; b=zpNRVEQ2qmJO+eNV5+iRggNZuQ
	d1g7XN4s68x4sknMpBrv2H2AJUCYs1Ln9juEkb5LKfiJEHl34Mg/7N6Uj7rrPsKN3q6t7hp3FYEZ5
	RMHqrG8vBLB1w2nocS+8Yd5pkT2s5dWcIXuz12JOZyWrmo/tIe7F9pQOSMLh4vbSjflsFS0cGva0O
	k38kIqrTNPA+hcefUKVpD0DB3gBF9ZiJ0mxb+Uq0VAxuyirG8rsppmyLp/YWJRvwCEdBrixXPwSvw
	EOiM3IRLCLm+NzrFL6QcfjlpQ/ZOqzfAwiug+U5Cqm0mPSjMldwNDKYRV3yusQNQVik2Zo0yjGjPN
	i66sn+7Q==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Ke-00DjfL-Qc; Fri, 30 Sep 2022 07:13:04 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Ke-001dvY-0g;
	Fri, 30 Sep 2022 07:13:04 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Dan Johansen <strit@manjaro.org>
Subject: [PATCH v3 08/13] arm64: dts: rockchip: Enable the GPU on ODROID-M1
Date: Fri, 30 Sep 2022 07:12:41 +0200
Message-Id: <20220930051246.391614-9-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930051246.391614-1-aurelien@aurel32.net>
References: <20220930051246.391614-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_221308_975591_EE275484 
X-CRM114-Status: UNSURE (   9.80  )
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

Enable the GPU core on the Rockchip RK3568 ODROID-M1.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
Tested-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index ac4e94d18feb..e4b7699d3eea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -143,6 +143,11 @@ &gmac0_rgmii_clk
 	rx_delay = <0x2d>;
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &hdmi {
 	avdd-0v9-supply = <&vdda0v9_image>;
 	avdd-1v8-supply = <&vcca1v8_image>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9A39C369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 07:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmHiDVIe14OFlzSDxHOPl4KOj0uwZjwYWQ7SCo/vi/M=; b=oZvB/MpOOjm1L9
	HpnkKNdrf8PHfopnTtWgWBoCCzN1H8hXCPONbAutUaOjXXzTqgFt+S/ucbtQHLdUJGJq4HhRYRonx
	MTZrwm+B0LCgLHcbmycXQ6BLBwZboyM+lnyV8E9RbfpbaNB5ljTpcClj2+wqkHcFj3La9tWwSlU0/
	UU9YcsIIq06VL7fNaHi+j7YB4d65IU6k8KAkzCToQw9wXbumEXCjznhasL6+NvTDexQ7j2yJNx8am
	IugDLs/Wa01eieyD/J/ChpKOrgV+ft8WEBV9Se8JHPDQinnZNaVo/0hxm/GSKSGQLbZpA2+k/+sgW
	kAn2mNQXTHcXoYWvyWdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78O7-00000006Azz-0Gpy;
	Tue, 22 Apr 2025 07:49:51 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u77hA-000000063yg-0qye;
	Tue, 22 Apr 2025 07:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=XjB5C
	GDy56iSBUj/onMIQC1Fw0WRXap96Du59NyDvPE=; b=MZbk7Du3gtEV5vLWjmBNY
	hsZc/cwJS+v9t32PHJApD9sVnR0wss09/U+/niBUCeRPpZ3VEdi++Dvv919EJI5C
	Em0X7GOFmp42yWgVwF6DBqrWTp71Uxx4Vbco7Cpb5g+vmG6Nj+VLxx2tVLEijMuC
	PlPJKQGwT7OKsUX6edM43A=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wCHACaZPwdowMxzBg--.7474S7;
	Tue, 22 Apr 2025 15:05:07 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	hjc@rock-chips.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	dmitry.baryshkov@oss.qualcomm.com,
	knaerzche@gmail.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v4 5/7] ARM: dts: rockchip: Add ref clk for hdmi
Date: Tue, 22 Apr 2025 15:04:44 +0800
Message-ID: <20250422070455.432666-6-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250422070455.432666-1-andyshrk@163.com>
References: <20250422070455.432666-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCHACaZPwdowMxzBg--.7474S7
X-Coremail-Antispam: 1Uf129KBjvdXoWrKF1xJw4kAFWfZry3tw4xWFg_yoWDWFX_t3
	WIgw15GF4fGrZIq34Dtr4UW39F9w4fC397XrnYqr4UJF9aqr4UXF4kGayIyry5Jay2g3sx
	CFZ5Xw4aya1agjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0Ta0PUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gU3XmgHOe-cKwACsy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_000528_646949_6F96F741 
X-CRM114-Status: UNSURE (   9.77  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The RK3036 HDMI DDC bus requires it's PHY's reference clock to be
enabled first before normal DDC communication can be carried out.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 arch/arm/boot/dts/rockchip/rk3036.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 6039a0908af1c..22685cd23a708 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -403,8 +403,8 @@ hdmi: hdmi@20034000 {
 		compatible = "rockchip,rk3036-inno-hdmi";
 		reg = <0x20034000 0x4000>;
 		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru  PCLK_HDMI>;
-		clock-names = "pclk";
+		clocks = <&cru PCLK_HDMI>, <&cru SCLK_LCDC>;
+		clock-names = "pclk", "ref";
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmi_ctl>;
 		#sound-dai-cells = <0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

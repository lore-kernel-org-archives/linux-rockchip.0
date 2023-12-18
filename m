Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45BCFC35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 10:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDC9SEflV07ipXoXf/D23JkNiCpEi+gDc57JTNCHjls=; b=fSfZCtyjn/Isrn
	FgsPU3h1YWKY+8nh2h4IHA7C74iPIjEAv6zDt19u8V9OFeiBxvdn83TqSPfu50TbLFBFTakXdBXl6
	DUHq/Vht+kaWTdS07/J599g8Q69+31Wg60YqKBpXuwKSwvhLmzn4epybYQ6jnECRyJZyD6Uk/QZkq
	BSbrj2LgBy/oYo0gi4AmzoGp4DkkaxH+OXkOJlYSNonjVMNBs/8vcC5aUnZ5pxuDfL/eXse9VPaE8
	RGsPNlH/yyCQ7G4lzox6dH6J4BAb9LDV2OJYfYWwYaokj0YD2FGdbN8K/0n7c91sgOhAYrSBnN0ba
	+QfMyCLkArDcJZS9vg9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFBIa-009wHg-1m;
	Mon, 18 Dec 2023 10:56:36 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFBIE-009w6h-1K;
	Mon, 18 Dec 2023 10:56:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=fBHGN
	YITHW0NUuAbOpjQ5mbFub8s+SVFwFReNTMyTxo=; b=ZewPbAysTlmLbeW5F4VHM
	wvF+qvlZ05kVH+g6wTcli2otts+H/iGV/7HgOBc2SaCL2FgMCtl6MO0bchd4TzNU
	N+f13jXv2iIFGmoBNQll6Di2SC1aKTDXVu5fLAZNxHd2Lq76U5IX+TQKOr4VlVhc
	xRUiTp/UbYDWBa4rHxwxRA=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-2 (Coremail) with SMTP id _____wDn72EdJYBln1v+Bg--.7214S4;
	Mon, 18 Dec 2023 18:55:30 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	zhengxing@rock-chips.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 2/3] ARM: dts: rockchip: Add stdout-path for rk3036 kylin
Date: Mon, 18 Dec 2023 18:55:22 +0800
Message-Id: <20231218105523.2478315-3-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218105523.2478315-1-andyshrk@163.com>
References: <20231218105523.2478315-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDn72EdJYBln1v+Bg--.7214S4
X-Coremail-Antispam: 1Uf129KBjvdXoWruw1fKr45Zry8uF45JFy8AFb_yoWfGrX_ta
	43Kas5KFs7Gr15Xw1Dt3yxW343CwnakanxJryvyr1UJF1qqw4kXF4vyas3tw1YkFWUKrZ7
	AFW5Xa1qqa1akjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0puWJUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEAdKXmVOBAprAwAAsO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_025614_849077_5973898A 
X-CRM114-Status: UNSURE (   9.64  )
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

Add stdout-path to get a uart console when system boot.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- Fix typo s/patch/path/
- Change subjet s/arm/ARM/

 arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
index 67e1e04139e7..f12fa3831bbf 100644
--- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
@@ -8,6 +8,10 @@ / {
 	model = "Rockchip RK3036 KylinBoard";
 	compatible = "rockchip,rk3036-kylin", "rockchip,rk3036";
 
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
 	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x20000000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

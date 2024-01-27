Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1E63C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 09:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vxbJ2JqZaUXFbBDEwTfxPEMAElaSg6MlBlE5TYt8zE=; b=425miNuBzujK1a
	2d1hhiVNb6ssXrBo6QZjW4G2pwn1XPb9nw8DHg65UFlERlILklolYmyO/m4YsMX31j1LnpYOI1MgH
	KkwETkRD53PxhL3cbLRIgmhBu+21eBY44M3E9NsnxYdVlXJniyGC4wdSk6CQERbfMdy0DZ0VVciaf
	+MfJFElJwh6CmSCxp5nQy7slFjKC4Yk8k8fFqzQdlzISKNDWaixkaZ1KXq5XyOMqtaQE3Oc75jytV
	kYJPEIR0x7v1BUZhpvhqcSMEp1Lhotc5fR1T43gOky6Tu1oSRiGcAMudBIe+skoL3XM9ue2dwfzdk
	nvnmun3cMG3ct2HShrQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTf75-00000007HTR-21wW;
	Sat, 27 Jan 2024 09:36:35 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTf72-00000007HSz-1RoI;
	Sat, 27 Jan 2024 09:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=a/VjS
	8XMkdiNaejedJEj7VqbTBOy9aX70K9qWnPW79Y=; b=K8nyT+Z58mrUAFpNviP9Z
	b48JmtTNY//qVDuM+J5t0K4TtsY6DMtLDNd+mqQkoPbHDbtGSHNBBNTFaYjarPHy
	EVh/6F/v76SjPpaFq/f3bOzphtxVN0Zcl6d+M6qOoOihPMrBNzyAssUynJgr6DlS
	useRmwyIrZm5kAfR3awejM=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g0-4 (Coremail) with SMTP id _____wD3rzHkyrRl5GopBA--.2976S5;
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
Subject: [PATCH 4/4] arm64: dts: rockchip: Fix the num-lanes of pcie3x4 on Cool Pi CM5 EVB
Date: Sat, 27 Jan 2024 17:20:34 +0800
Message-Id: <20240127092034.887085-4-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240127092034.887085-1-andyshrk@163.com>
References: <20240127092034.887085-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3rzHkyrRl5GopBA--.2976S5
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gw4DuryfJF17JrWDJFW5Wrg_yoWDZFb_ta
	4xW3W8Xa1rGrn0g3s0yay3G3ySk39F9FW7Ga1UZFWDAF9xta1DJFyrtFW2q34UKr429w4f
	Aa9xJF18C3Z8CjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xR_LvttUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gxyXmWXvvkQhAAAsT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_013632_774345_3FAB0CAD 
X-CRM114-Status: UNSURE (   9.75  )
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

The 4 lane pcie30 phy is shared by pcie3x4 and pcie3x2, so
the num-lanes of pcie3x4 should be 2.

Fixes: 791c154c3982 ("arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5 EVB")
Signed-off-by: Andy Yan <andyshrk@163.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
index 5f42f1065d73..9bff04fc7e43 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
@@ -126,6 +126,7 @@ &pcie30phy {
 	status = "okay";
 };
 
+/* Standard pcie */
 &pcie3x2 {
 	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_sys>;
@@ -134,6 +135,7 @@ &pcie3x2 {
 
 /* M.2 M-Key ssd */
 &pcie3x4 {
+	num-lanes = <2>;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_sys>;
 	status = "okay";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

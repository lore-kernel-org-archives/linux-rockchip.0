Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81461C4828C
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 12:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SxJCshGa2YT+30eGGfbQr7VDWiE6nefzzYHwYONrSEg=; b=cb5FSLQM+u/1XN
	7R0bzw39kYMOaSHd9uzxMdUB0ZcD6nJ+D6WfyyhDih2PeT8gddpJ3RnGXucWZC8sO5/exl0GVfgBc
	Fcm4ltIxo7TKHCQgCrisDjB3HwRbc8mqLA1H3NV4mpUJJRJ87BHwnBwUTYtrQl4RL8DdRciEmhLFm
	GVgS4Zuj5j5Aawi/jPZvc9kQ2Go7VPOUiO8GJF9cj7CjsHPU+e5QDpqStCYV1Df/mhqwwOVi13/5D
	rihhYrL0g6airy7hUmFmsffdhLJ14SAwbAbo1WcgrvlYQ+BcB8bUoAHJgQ97Yn2Mq4B7YIFC4ShWE
	Zuhj4zDAVoUhiPG9Qt2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVvF-00000007hk4-0wvS;
	Thu, 01 Feb 2024 12:12:01 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVvB-00000007hge-1UVD;
	Thu, 01 Feb 2024 12:11:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=L5rj2
	e6lcmrpI804Cx6MRfru0SWmxeEJZFimAHJKc74=; b=nIbA7+1z3YYoyxn1LXZe8
	AQAFosc+qpAsAyOMVizE2vPJPPRUNAHcA92Qf+l/eiWU4TkgWwxJ6oRyh49w4tzz
	fgGuawTFz1gvD6C3zO009hChECRbpLMxjj4dq4v3ywSjioZvZx9xQMtqamZL57Zy
	t8F8fvmoKgtz+ujMfInNZM=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g1-0 (Coremail) with SMTP id _____wDX_35birtlKEO5AA--.30092S5;
	Thu, 01 Feb 2024 20:11:15 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Fix the num-lanes of pcie3x4 on Cool Pi CM5 EVB
Date: Thu,  1 Feb 2024 20:11:06 +0800
Message-Id: <20240201121106.1471301-4-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240201121106.1471301-1-andyshrk@163.com>
References: <20240201121106.1471301-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDX_35birtlKEO5AA--.30092S5
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gw4DuryfJF17JrWDJFW5Wrg_yoWDtrg_ta
	yxW3W8XF4rGrn0g3s8Aa9rG3yfK39F9ayxJa1UZF4DAF9xtayDJFyrtFW2qw15Kr429a1f
	Aa9rJa18C3Z8CjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRiiSdPUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gd3XmWXv1CSDAAAs-
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_041157_780619_F35FC75A 
X-CRM114-Status: UNSURE (   9.59  )
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

(no changes since v1)

 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
index 9c0f408ef339..d6366e7b57bb 100644
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

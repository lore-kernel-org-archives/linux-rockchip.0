Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81B7CE77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 09:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waTfwYMO//lMhUoxpK7tcA25dsc8rH49wY/2wMMnFnY=; b=Hu1b2x8FSGeQj2
	+jJkMZosZMDZxEXJuQJYqO9qi8FYWCr8WntuahO8tNZmhd35FP1eSkNX+rshFRI7HpvqyLeIiqPwe
	rx/y7po3fdjQYe8uLs/M5dWlvMgnwOOXls2Dab4hqMG7d/xUhUFgWa9VMQakGFdMsyOnBLRWxegE0
	GmrMhWRG1Imi1jXA4LwJfWnaSXzMMPV0OpA6Q58hWFB6RjCaY2fAToIhdbm68kvKfxN7W0C9UdvaZ
	L7p/pBmSmeb0j/VPnC7s93GySWImQ9OgMXEFUvwLQpZ8AnGtHaVgEBDOSH2GlPyUXjQ9ra7/guWMx
	jd6iIEHdPT7tvFX9hEjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1aL-0000000BeXh-3YqH;
	Tue, 24 Dec 2024 09:52:17 +0000
Received: from mail-m19731107.qiye.163.com ([220.197.31.107])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1QP-0000000BcgO-1lxt;
	Tue, 24 Dec 2024 09:42:02 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aaa2c2e;
	Tue, 24 Dec 2024 17:41:56 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 3/3] nvmem: rockchip-otp: Add support for rk3562
Date: Tue, 24 Dec 2024 17:41:53 +0800
Message-Id: <20241224094153.3816923-3-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241224094153.3816923-1-kever.yang@rock-chips.com>
References: <20241224094153.3816923-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUxNHVYfHxlOTxpMSB5IGUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f80b659203afkunm6aaa2c2e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PBg6PRw*PTIPHEoNSzc9NxEt
	PAoaFBNVSlVKTEhOS0hISEpMTUJMVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSEtCNwY+
DKIM-Signature: a=rsa-sha256;
	b=dTcGjoWKIPxq6P7lvv4hYBha7gPhSEyEDB9WZJuaVUSwpEAXZIdSK7oEU1UEhIEALkZxWbWpWltjxsUQezQd+6vPMRLHWdZ2/KYWRWcsFsDXA+wQqJXBAMLxlE5L/QB3A/krrypjnAOQdpFjZwVzUaNfH3aeqf0tUsw8xWDUW+Y=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vlTw8ucEItlFxpvsBPgpOAVij+6tEI4gYlpEt46V6aw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_014201_613700_7400D263 
X-CRM114-Status: UNSURE (   7.77  )
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

From: Finley Xiao <finley.xiao@rock-chips.com>

This adds the necessary data for handling otp on the rk3562.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 drivers/nvmem/rockchip-otp.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index a04bce89ecc8..6f86cf8ec390 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -341,6 +341,17 @@ static const struct rockchip_data px30_data = {
 	.reg_read = px30_otp_read,
 };
 
+static const char * const rk3562_otp_clocks[] = {
+	"usr", "sbpi", "apb_pclk", "phy",
+};
+
+static const struct rockchip_data rk3562_data = {
+	.size = 0x80,
+	.clks = rk3562_otp_clocks,
+	.num_clks = ARRAY_SIZE(rk3562_otp_clocks),
+	.reg_read = rk3568_otp_read,
+};
+
 static const char * const rk3568_otp_clocks[] = {
 	"usr", "sbpi", "apb_pclk", "phy",
 };
@@ -372,6 +383,10 @@ static const struct of_device_id rockchip_otp_match[] = {
 		.compatible = "rockchip,rk3308-otp",
 		.data = &px30_data,
 	},
+	{
+		.compatible = "rockchip,rk3562-otp",
+		.data = &rk3562_data,
+	},
 	{
 		.compatible = "rockchip,rk3568-otp",
 		.data = &rk3568_data,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

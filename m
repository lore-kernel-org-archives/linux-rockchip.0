Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40DE0C19F2E
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 11:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cntpJ2bW0JNVrsQ3KiXNlNlv/fmNXIVKitVAxMAVJIk=; b=ozR0aH5hwYycIr
	v7k4dDSIttrsfRHnrqZ8tTOXaK8yB5kAmrtxzzUY5aGRjuCd2vHOgWE0m5GZr3s+ryE22Xm2Tzl8r
	BUDq8Zb0Mn6EO4SPkSS8Mad++q4OUGLyVrYVy/NbhO2dQK/OEtCP7JLcQXDj8zlJow+bQOip63Z0z
	6SIyKpZSpLTPXVla304/lGfURckKWKQ70h15EiRVeg5A0gqOaAT+FCAauqGRLclnaErC3W5uJVWhD
	Om0gfmVcdu8NZFVvQ7LNTc0Jjz6tQ6+LP+JfSAV6aOYwBL0j6egMfXHhFEQAKmN9XwbIXrbBS1hQ5
	WP/U/7Xnxzo6Sz5WsHtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbxa-000000079kP-1bmI;
	Thu, 27 Feb 2025 11:21:46 +0000
Received: from mail-m19731108.qiye.163.com ([220.197.31.108])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbkS-000000076MX-2D3a;
	Thu, 27 Feb 2025 11:08:13 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c65b37e3;
	Thu, 27 Feb 2025 19:08:07 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 3/3] nvmem: rockchip-otp: Add support for rk3562
Date: Thu, 27 Feb 2025 19:08:04 +0800
Message-Id: <20250227110804.2342976-3-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250227110804.2342976-1-kever.yang@rock-chips.com>
References: <20250227110804.2342976-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh5ITFYaSB1KSk9OSkNKSE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
X-HM-Tid: 0a954717a85e03afkunmc65b37e3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OSI6Eyo*LTILFQ0LKBQ6Lhgc
	TDIKCjBVSlVKTE9LTU5PT0NDTk5OVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSEhJNwY+
DKIM-Signature: a=rsa-sha256;
	b=NuJ9PbZOq0suEaL1eeWZHCn6FQR1hTBrmFt+1/iim5yUFnS9gNJpowjYkMkMjLQEhJAUfyAETUpE3pF7CpqWCvb0Qe9RQaFhfZ50tbcdnVrC/sUHWNMyRj0BFMLpkl2SrM3uWnFenUvpdI0eyVZsTl8kshuq6DLU53A6M/v141c=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=dXsD9MQD1sYnSEmH2nVcNU78cnc+FXKwdmWo6JL0D7U=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_030812_745708_169E7D56 
X-CRM114-Status: UNSURE (   8.45  )
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

Changes in v2: None

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

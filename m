Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02D08EB64D7
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jun 2023 01:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=61I+gFgtwzgA/c9I07yW90ps5b6XlaNpANH16nMbzFw=; b=wI/Yqy5y4ViHCj
	2YTtfGHzQlcjzjgDV9vpZUTdhvRenJXVR881Zony7PJK/IIP4r4LAImx3HNced4m7xdR6K64cH5SA
	S8EJR6eVKqYl669yfJwQGZkfG14CagdfWTGs8WtRfFlhmnw/wAuyuPmuAlub0Rp+MhBubfhHxL3ys
	jG+9jBEOQ+fw8Hr24ZT8SzUd126FKAIRotGRKWaqY7ZN7QS5Gbgijl7pZ85b7YYhK/khwNkJ/sgAk
	/fXh72uQISW2URxspVP3W6HV/BdX2lo1vOSDiO47JHRSsiLvhXc7wiNSC0CbRCWXAgBkGFl5kPNaF
	1+hPnMDhchhU36ZzX+lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qB3PP-0075VS-2h;
	Mon, 19 Jun 2023 01:10:19 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qB3PM-0075U9-1Y;
	Mon, 19 Jun 2023 01:10:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1687137006; bh=l1Av13OOBeHvZ6hhVrMrrY1JviPoUrwczfkLMItzFNU=;
	h=From:To:Cc:Subject:Date:From;
	b=v1GWcFzR9GXrM78ith3aTO2L3gwShkuGbtZcQitGAWjKjPiIG8QMtzxBAEzVIKr5s
	 AE+7K9ITO/vaFMj+gIME6QDFFf9xirUQTYL7fISoQT1pUXU5Hk7p9jYqn2ms8C1mI/
	 wZFoZqj11dtT0Zy4eI1IoJMuxNV2P9qo2FKX57xY=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-rockchip@lists.infradead.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] soc: rockchip: grf: Fix SDMMC not working on RK3588 with bus-width > 1
Date: Mon, 19 Jun 2023 03:09:58 +0200
Message-ID: <20230619011002.2249960-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230618_181017_307657_727EC969 
X-CRM114-Status: UNSURE (   8.63  )
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

From: Ondrej Jirman <megi@xff.cz>

RK3588 has the same issue as other earlier RK SoCs. JTAG
functionality muxed to some SDMMC data pins causes issues with SDMMC
interface. Without this patch, I can only use SDMMC inteface
with bus-width = <1>. (JTAG is muxed to data pins D2 and D3)

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 drivers/soc/rockchip/grf.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 15a3970e3509..d768c5a70174 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -121,6 +121,17 @@ static const struct rockchip_grf_info rk3566_pipegrf __initconst = {
 	.num_values = ARRAY_SIZE(rk3566_defaults),
 };
 
+#define RK3588_GRF_SOC_CON6		0x0318
+
+static const struct rockchip_grf_value rk3588_defaults[] __initconst = {
+	{ "jtag switching", RK3588_GRF_SOC_CON6, HIWORD_UPDATE(0, 1, 14) },
+};
+
+static const struct rockchip_grf_info rk3588_sysgrf __initconst = {
+	.values = rk3588_defaults,
+	.num_values = ARRAY_SIZE(rk3588_defaults),
+};
+
 
 static const struct of_device_id rockchip_grf_dt_match[] __initconst = {
 	{
@@ -147,6 +158,9 @@ static const struct of_device_id rockchip_grf_dt_match[] __initconst = {
 	}, {
 		.compatible = "rockchip,rk3566-pipe-grf",
 		.data = (void *)&rk3566_pipegrf,
+	}, {
+		.compatible = "rockchip,rk3588-sys-grf",
+		.data = (void *)&rk3588_sysgrf,
 	},
 	{ /* sentinel */ },
 };
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

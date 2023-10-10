Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3F36CD68F6
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/EDnb9fRnfZV0LiUJ13220TEuM6YYWbYbrcGoeiB4E=; b=nwrh5inRvlx7LE
	6Td69GHBZosXyg46D+12f6TX/+7cp3nSDpU8bRCLT2a5Ydx5pO50Nc4xg+I7MuknoRfGd2jsJyLBp
	ThSM1w3aD5deRzAHn9ZRHwsiDQbM0+J5ziatNJWnTVerRp0TQz19Nlf4IkWiRjT16U+cANiv/ufHa
	VR9W89Reda/mHLipBseGbyrbYPH0iVZYneNXDluYhrU7fVi5tVZOeiBGjDVPYix/QSDzU40cN8od1
	wK2wUrcX0pV0zQEKVPTfM0UKHXlKmD3AsB1BQNeGIgtr2nNaNHngwRM2j/V3qRtIXzwu/7t07xCMa
	ndpE64M33WHJho7+zc6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq7Ty-00Cjr6-1W;
	Tue, 10 Oct 2023 07:48:46 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq7Tu-00CjpM-1r;
	Tue, 10 Oct 2023 07:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696924121; bh=Oeh6nlfOFEb81ECTeuiFVe+RiXroufThNyW8kszAkWE=;
	h=From:To:Cc:Subject:Date:References:From;
	b=iykzSL08pBwXXvl8U0BqPnUfZKyTMHw4OTo3BBZdqKIFsfkWi8vrBf/6FinlQdeTH
	 Rs2Ij79mOqlTKf1l1ErhwEjHdOxpjPzbvi2Czf1IJPQ1IZnHn8kgPUyxB4XxlDhwTa
	 +JQqT29EAdjYcSHUR4Swkecr4BwciutFDaNBp4mA=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] mfd: rk8xx: Add support for RK806 power off
Date: Tue, 10 Oct 2023 09:48:21 +0200
Message-ID: <20231010074826.1791942-3-megi@xff.cz>
In-Reply-To: <20231010074826.1791942-1-megi@xff.cz>
References: <20231010074826.1791942-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_004843_067889_6781FA2B 
X-CRM114-Status: UNSURE (   9.25  )
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

Use DEV_OFF bit to power off the PMIC, when rockchip,system-power-controller
is selected in DTS.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 drivers/mfd/rk8xx-core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index 11a831e92da8..ef40050f1169 100644
--- a/drivers/mfd/rk8xx-core.c
+++ b/drivers/mfd/rk8xx-core.c
@@ -525,6 +525,10 @@ static int rk808_power_off(struct sys_off_data *data)
 		reg = RK805_DEV_CTRL_REG;
 		bit = DEV_OFF;
 		break;
+	case RK806_ID:
+		reg = RK806_SYS_CFG3;
+		bit = DEV_OFF;
+		break;
 	case RK808_ID:
 		reg = RK808_DEVCTRL_REG,
 		bit = DEV_OFF_RST;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

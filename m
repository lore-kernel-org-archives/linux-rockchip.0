Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AB60CDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 16:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Px9PU0RE/j6JkcIebYBQqyecthuwjjYDXMYpZu9FEr8=; b=hpIlQhFWhz+xee
	GhzzhiE1yLYgUuZ2Yh8DJ7pvPrNeM72nQ4iDxWarH6/7uGKrfDxRSCTgFr3ACmuhlQfjdXoVXBoyp
	/BS/11VoqAIdZnNom895ZuPbSaOdttomL/rSztDcAAOhOR8tCJUfnBYXNxZWVZCuoVMhILuKWB/Tj
	mjcMPLt9NVOBnLHWS353WXbqW0js6IXQdE3vRoxo79xF3BNAvfeDtz8pSFGYFgI7Isdp5zSyocZIL
	RZMk2GMkfDN/8jN/nMOQ4TRfenRRl+kgmy0FWBIwFb81HSOvhnVU5z2Mh5AH8f64lSMu9wyNlqzZS
	mGFxSxO6OZPVSmWfV0/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtWLO-000MwF-0E;
	Thu, 19 Oct 2023 16:57:58 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtWL7-000Mkk-0X;
	Thu, 19 Oct 2023 16:57:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697734656; bh=07aDVsUy5RsQxnmnnN1afCwYsv5zVhLjMtrYunUCVWI=;
	h=From:To:Cc:Subject:Date:References:From;
	b=XrrzEBxqrJI2NUBKVQBiqsjqdRYhqAG5OeZXouIUqBKS+k565hXPquw7WL+pyGsan
	 mMtNeSjULHISu2/snIV97Edi63AdqjD6FDWT4C1/BRGkpUF1QmZdVel5k80kHLvBBh
	 hx6fQWpz9SnzWWn3yq+/Pc2c2BkGPVexbn751Oj8=
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
Subject: [RESEND PATCH v3 4/4] mfd: rk8xx: Add support for RK806 power off
Date: Thu, 19 Oct 2023 18:57:26 +0200
Message-ID: <20231019165732.3818789-5-megi@xff.cz>
In-Reply-To: <20231019165732.3818789-1-megi@xff.cz>
References: <20231019165732.3818789-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_095742_012998_7ADB965E 
X-CRM114-Status: UNSURE (   9.04  )
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

Use DEV_OFF bit to power off the RK806 PMIC, when system-power-controller
is used in DTS.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mfd/rk8xx-core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index a50a181b18e9..c47164a3ec1d 100644
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

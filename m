Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2975C44508
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 20:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5IkFyqwih3LEQiGIa7LzyjXFRIhbxWS7VAX385auIZs=; b=bHRTGovOVNNNiD
	kVcgjaT2gHAk+gfLI3qhkh7F/7lRF+KtzqxDnxZU5+S4K691svZFHbUmdTk6POlzk3hT5cjYCgRyc
	yqD3vTJ7imu6zT8asTghDuYHehNGip1vRiDOWnsm5TQb0iYtDtWD2e+1OoVDYsaaKlx6wcusAUcxn
	StKvizN93Z852TIae1IiuzIpde96XDypTZ3L7KeomBmA8qsaDlk99Jcg2dDm+EZ8zs+z7P6vS9AQm
	PYki9Pac0eSc9bM4J2+3+CP/IYY+MekhzHJtRe9CWqaQXzFv5NeqUco6SPiIWKM8LaCnDOC17PAUr
	SEdkmsTbecrWjX0B4k2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIGv-00000005kBg-3Map;
	Fri, 10 Jul 2026 20:56:33 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIGd-00000005juj-3c5C;
	Fri, 10 Jul 2026 20:56:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783716973;
	bh=R+wp4a0ifl4hTuF+Ym4MsLuNqY2BgKTHqs8rQ855wZ8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Ny72CjBPYcRTtmlou1+fD1TZcorojOwrchzX+zsmju+nhugiLq0pdaYpLljkIGI5y
	 hb4rKjTdmOuNZL5xbyRemMu/XbspZ2DzTdC+/xDOHovTW62Ezz9nIj7rKU/7pJliE8
	 6xAjbhkBHWVLNBiln/gxtoPHT6Gy+iSzgJc1p2c6pHlvUGZSfZ8z/v7s2j8ZwLGo46
	 b5rWcqIH7lRxlwDNB3KWi2bjKNQkJIcsEfPmlvAUogEBjL3Zdx8NkCgaCvKmwusiLV
	 A1Qj3+9UEeuMuBRQwxEOa6ApyOrPMSe/tCOJ1o6EYjhZGqZofFFfEqxg4l8xXMUhF2
	 kNzoUgiPElU8Q==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1686617E0DFB;
	Fri, 10 Jul 2026 22:56:13 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0B9C248006A; Fri, 10 Jul 2026 18:46:18 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 10 Jul 2026 18:45:02 +0200
Subject: [PATCH v12 24/36] phy: rockchip: usbdp: Hold mutex in DP PHY
 configure
MIME-Version: 1.0
Message-Id: <20260710-rockchip-usbdp-cleanup-v12-24-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1341;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=R+wp4a0ifl4hTuF+Ym4MsLuNqY2BgKTHqs8rQ855wZ8=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpRIdkvM1gAQlyG0OQ/+IK6e+bAvk4s+rLAK
 VW7delPxK8/PYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqUSHZAAoJENju1/PI
 O/qabdgQAJ5iVr0WdAHe5FN+i15BY9kbFVkSQXcJfEpEBRn2BJ+C00B0kpYOtRmcm3gznO8KG9W
 ChQ33Jdoo6kaB799bveJscbAWou9rLooGK8tFtynmuC+izefB9n/1XBAmZKxRMyMcskpCCRymQ/
 ILvxdEezczDo3kp2cTk1juYyd+UUhVitoIiwReBdgJ0NomUI6BolW2xlqXI85WV68bUMjWvuS+P
 17bDbgPn+OU89+aYBZ1XYxMYnyq8kschZemdG/EQP+NhMQS8uOZgNwLB39Yj+TfgoRlMnyLoPFG
 WYRUjMfgNn4hsdwUpu8gAWt+p/vMijV87Q9jIB9l6bQlLizjl5DlZ9ercDoaVRZGd6MsXBlBsig
 SxEpHbVr2xdbBBjqknSy7zvkS0lOXXyxccXmWsk+8m3RVKSEm0iRY+PVZ2CPM5Nta3GKMY5liPG
 0xwOdz89nE7rN7YnWB9SxEyYwDB64uep8V4ajRAJIMi7bgDIxS0STlFGvyDbaqD6D+MSXLpovqr
 6WSoCHQiESgb2Yea6fOrwWLbi4sT1JdIuo2XwMx74g7yxPrH43/D3fQQF847F/FV0HTqIrBf5nM
 sh/WEMo5HB+dpuuGV/f1loUnoHaJkORIsW4Yg5+doJQ5nnp2ARuShz9G/Ufmq8otNH1UPR2ZbI9
 u0+nLDMtTsZ5P9/2cC2En1Q==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_135616_052150_7080BE3A 
X-CRM114-Status: GOOD (  10.94  )
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

rk_udphy_dp_phy_configure() accesses some variables from the struct
rk_udphy, which are updated independently from the USB-C framework.

The USB-C mux/orientation switch functions already hold a mutex to
ensure mutual exclusive access to the struct rk_udphy states, so
simply hold the same one in the DP PHY configuration function.

Reproducing problems due to this on real hardware would be really hard,
but could be possible when quickly re-connecting the USB-C connector.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/linux-phy/20260612164627.23D391F000E9@smtp.kernel.org/
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index a742bde7155b..cd79c5da566a 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1154,6 +1154,8 @@ static int rk_udphy_dp_phy_configure(struct phy *phy,
 	u32 i, val, lane;
 	int ret;
 
+	guard(mutex)(&udphy->mutex);
+
 	if (dp->set_rate) {
 		ret = rk_udphy_dp_phy_verify_link_rate(udphy, dp);
 		if (ret)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

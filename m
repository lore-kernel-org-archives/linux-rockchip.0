Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0573C5DF6D
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 20:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDl2Ut4z4aSvYKIvzG5FYGyNBPIsHQsqTmsG61/r8Ho=; b=Dhwlm5V3Wpt1JZ
	IHlglG5uUWRqVD/ylAaIznbof2NXGpaolr0AOuh1gj3OcAee829RioXBmSLxWJggFbAt3rTvPyTWn
	O4IPce2YC8uSVAT6FQPaKAEOwRDTrMXctXYbmbmAt4fGV9+ceO9kZnzfnI++VL4S/vjIK/EKBIYdE
	EYlgQen/hQXX2lzNUvwKKz1CClq0C+1x5rcq4q8iC4aQKsq/mTzfJVSd03q8ZokJNHqF3kjkT0mSg
	84XGYC+Tq+n5nyjrdAAPCUnUri4Qozi50ebxraFN1SP+AQ1v7ulXm1K1LzTqliQ6ud4kTCferwM1N
	2F6SHcgie1RZn0v2yzwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wucQI-00000001Z5T-3xCr;
	Thu, 13 Aug 2026 20:53:12 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wucPE-00000001XJt-3o7k;
	Thu, 13 Aug 2026 20:52:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786654311;
	bh=vXkzKIM3/q4hdaQBsltNPWM9OVsnjoG80wl/tu/yBKc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=FTIwyZ3LB635E8jyWYlkTg+9HBQn3ZJAN7GXwee02hkrzdNLjuUDMoVb54D1mKDcI
	 /PWzXFzl6rhbB1OwxiRz4RVWZSGMMtiz7aqffepMTMf6Hquv3eNBf7R/ZBksqzPeNv
	 m9xo82lmfyL9NCBFtGkla27PQGQaLWZUtzh1DwCxCBqMtkq8LWUWYflceKxe89afFG
	 id8uH5itqZVm+jj+GLiu+wuhe5Jd7rdAMtWGXvQyuQ3aLR2bfa5709A4fmRHzfqVgR
	 pRmMtmAex5BIjqs5T8taskP9yCBoZ350I5kk38oBIcEM7fbKLT/4TQcXJDWKyxPXDM
	 L1L4cgX8VmzSw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C276217E14F5;
	Thu, 13 Aug 2026 22:51:50 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id BB19C48006B; Thu, 13 Aug 2026 22:51:49 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 13 Aug 2026 22:52:08 +0200
Subject: [PATCH v14 25/38] phy: rockchip: usbdp: Avoid xHCI SErrors
MIME-Version: 1.0
Message-Id: <20260813-rockchip-usbdp-cleanup-v14-25-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2046;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=vXkzKIM3/q4hdaQBsltNPWM9OVsnjoG80wl/tu/yBKc=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGp+LmWk9xoQulUGwo/h+HJi40MABXF/KPexK
 IiXzH//fRAe8YkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqfi5lAAoJENju1/PI
 O/qagYEQAIfviLzk/7en5Ka26TvxzcgF3H6aXqhobyjHmx/nVPHjNcJ5xzA4keKkXbhdtRoV77/
 l8kd8bcNTjJWYOJZ2+x83Y5LjVSFmjT5ZPUk14+HXzZqnxGxj3oyyyk+r/9rGLvWl/dU5SS0A+W
 LLHxPAaMUqad2zrEFhSyxhelRcejwE7df2h9XGLdENZgD08dCc3jn5UJNLGN2zqGaM2Pkway9Po
 agtdqj4+5EsWXawqFEmk5+zEWUQL3NSDl1mwKjxbZcj9SQDYzZzCDvs3ZlvJepy2bGw0sKG5zaE
 HpfPz/GJGWr2beDscedH7IYPcb04sGfmULK2FguHlXeva5iac6y73KOJ6pxUBG6mxalt/Bqymo7
 H8feuWsP3axLt4CglRMshIUl8BniZRJk62MTgLPGsVfrMsWS/rnIjh1HE07s1gZM1vAmEq4Cm+M
 Un+QIzv/xDraP6ZZ1HOlFe1iq8pToFK+WbaAd3suvMf6wDtVQGQ7Nn4b/FN6PfhKnc73/xOQBSS
 3LoEQ82PypCfBBMR6bseY4XE0KAaKgByG7ueksD4Amh8ewJraHerwy05t13ex8q76XjKS95EjJF
 6IGzUl5EKtVqMnxQDVLYZA5SIIBS/rqaxUAqeJkDuMCNbGKWRwoDpRNEKaot0EyeYX1UZ1p0oAK
 01j8XOgShh4GqAMJJm6szrg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_135205_183903_B0EA7B3B 
X-CRM114-Status: GOOD (  15.18  )
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

The USBDP PHY provides the PIPE clock to the USB3 controller, which
means the PHY must be fully running when anything tries to access
the xHCI registers.

When switching between USB3-only, USB3 + DP and DP-only mode, the
PHY must be re-initialized resulting in a short period of the PHY
being disabled. If the DWC3 driver decides to access the xHCI at
this point the system will fail with an SError.

This patch avoids the problems by disabling the USB3 port before
re-initializing it. This does a couple of things:

- forces phystatus to 0 from GRF (not from PHY)
- switches PIPE clock source from PHY to UTMI (safe fallback clock)
- num_u3_port=0

The last part will be ignored, as DWC3 already probed, but the
clock re-routing will avoid the SError. There is a small delay
afterwards to make sure the mux happened. The datasheet gives
no hints how long it takes, so delay time is a guess.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index e67c1df792ed..c7f09040185b 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1000,12 +1000,15 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 			rk_udphy_u3_port_disable(udphy, false);
 		udphy->phy_needs_reinit = false;
 	} else if (udphy->phy_needs_reinit) {
-		if (udphy->mode == UDPHY_MODE_DP)
-			rk_udphy_u3_port_disable(udphy, true);
+		rk_udphy_u3_port_disable(udphy, true);
+		udelay(10);
 
 		ret = rk_udphy_init(udphy);
 		if (ret)
 			return ret;
+
+		if (!udphy->hs && udphy->mode & UDPHY_MODE_USB)
+			rk_udphy_u3_port_disable(udphy, false);
 		udphy->phy_needs_reinit = false;
 	}
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

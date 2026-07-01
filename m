Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EA1DC43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfMGVCLl4QNbaBmWh5pu0aO9OcVppE+JvfRHttCSJC0=; b=oLvdpwVTS9bAV/
	sNorrNT6Le/zgKvxpxuWVrU/xadpM/VA4I3eiwaSMFEAo8bN3SwuIyjB/aP/AFiT4ZW6dBG3XpxBU
	j4YzYgIt/PCWXF0z3mb94CSkoJbed7l+8SxJBE9M1SxYN4BB297zdQBCpQeeNZhBJr6pFI09qavP/
	rvWMNfNOrnhTSxYhMww+E435IqUj5ZSMOZnu+rZ9bH5f5yYb6kkm/PchkWo6SipDM1B5tLD0LglDV
	vM/uGtbhy92WwBDwPKG5ruRY14VlwcnyJFLyNiUeLjozkIKqpo/Krw7GE5+n1jNoUqjOj0YNyOJaT
	evog3rQARUwkD6q1HjWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4bq-00000003Dv5-3MS0;
	Wed, 01 Jul 2026 23:44:50 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4bn-00000003Dsi-3vik;
	Wed, 01 Jul 2026 23:44:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782949485;
	bh=7diGI02GCWZKUn3vBo9B3r9E4Cu/890upFuPLoECFbQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nf/tI/teIWrSJBG5SHVoXuY7R34ebMkWMEJXSpOX7Or9Sd4lPiCZG0zPydIm/vMfK
	 RPWIa/+nPQIuTOV08TddYsM84Bf9Vc7XmBhnPwG0AK82BozUv1kLN9C9pLOerzHOM/
	 Uv78Bzft0jyqW3fynhALxfvrIdz+XX0Jm9Fjv1GBdTN5zMzeYk6ziwMG5zLw+ClWmj
	 VJM1pS8jZ4ypoIw/H0HKJ//xL/j7HdQaUdi0W9+6nQ8pcrXob5yfhOj/uGOph7kQW8
	 ymNZwhW1yFuQtKYaAOX0dlIFQL4PTpeWO6EuYzz9ww2v1unKSxJBK9dZaMLMqoLdPi
	 IWwzcLnzDczZw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BB2C817E03ED;
	Thu,  2 Jul 2026 01:44:45 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id DD95F480077; Thu, 02 Jul 2026 01:35:48 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 02 Jul 2026 01:36:11 +0200
Subject: [PATCH v9 33/38] phy: rockchip: usbdp: Add phy reset notification
 support
MIME-Version: 1.0
Message-Id: <20260702-rockchip-usbdp-cleanup-v9-33-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1856;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=7diGI02GCWZKUn3vBo9B3r9E4Cu/890upFuPLoECFbQ=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpFpFQemQKLe05xUGJZBdSBiGLUJMgN3JrsO
 AJalSzF6dmlk4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqRaRUAAoJENju1/PI
 O/qamqYP/jiYDz9utrAcJVetNblxXZQ1QB8DQVwZxzn+zqJSvH+jRtXAOm3guCGuSq3A5kPKdv/
 xzQ7KbfoSh4slxE2XRIPmKdp6oxYK9Uezh0mRbDH8KpGuUqPAtXQYWceHcGPjmJgD0GwMbCkehP
 FS3rIhqf2BB8Lm2TE2K6M0JbIOTDhTDX+4WpnGIcm58jOuIUbxVTQHl6B8PEu2ShRlj0x61PgUg
 B5QVYDTmNWDaQur9uXqX2CqgXRvRPyGHyLImZOkvbKR3Dk6dgMpODJHc3/c1mM7UgjBczYSzIc9
 jyj0LDp3FFfVL68J7AwNSYvxsjd6A58ezY0yeRNk9vDmbJwe35o5EOwxQCWFPYyQB+Ysz1JUTN7
 5AG4YqKv48lY/AxhXBpjXIZDKY89npbOxjKpSn5cy2N78lstMtwoCY/hVLiRtDg45NtObFiw7Sa
 6ZmD9HyY+LvaBrVDApzYw5SE4Iggc5Dm9ozLYMHxNZHawiksy7AD5WvUTaa0+DNZX53V+f3fw4w
 8O9JNaBNXAf+Yl/g/WB+G5BxfDimfBwJ9JF4k2RSf0+dl1DzXpGBZfuthVPYxndv92wzzEFeXqD
 9pT2SNIOFm9pEyjo032B2n2Alyv20F+gMkXGzzXtD47wK/B7O2KHXR0JeQqR9gLc6MFXmkWmnVc
 fSQg4F3HOLhDK86BpsOsh7g==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_164448_129684_07D85539 
X-CRM114-Status: GOOD (  14.00  )
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

To resolve issues with running into permanent "cmn ana lcpll lock
timeout" errors after a few device replugs, add support for reset
notifications, which will be handled by the DWC3 driver to gracefully
handle the PHY being disabled. This avoids corrupting the controller's
internal state and the PIPE interface between the USB3 controller and
the PHY, thus fixing the issue.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index c69766929b3a..ad594bb3962a 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1033,6 +1033,11 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 	}
 
 	if (udphy->status == UDPHY_MODE_NONE) {
+		phy_notify_reset(udphy->phy_u3, PHY_NOTIFY_PRE_RESET);
+
+		rk_udphy_u3_port_disable(udphy, true);
+		udelay(10);
+
 		ret = rk_udphy_setup(udphy);
 		if (ret)
 			return ret;
@@ -1040,13 +1045,22 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 		if (!udphy->hs && udphy->mode & UDPHY_MODE_USB)
 			rk_udphy_u3_port_disable(udphy, false);
 		udphy->phy_needs_reinit = false;
+
+		phy_notify_reset(udphy->phy_u3, PHY_NOTIFY_POST_RESET);
 	} else if (udphy->phy_needs_reinit) {
+		phy_notify_reset(udphy->phy_u3, PHY_NOTIFY_PRE_RESET);
+
 		rk_udphy_u3_port_disable(udphy, true);
 		udelay(10);
 
 		ret = rk_udphy_init(udphy);
-		if (ret)
+		if (ret) {
+			phy_notify_reset(udphy->phy_u3, PHY_NOTIFY_POST_RESET);
 			return ret;
+		}
+
+		phy_notify_reset(udphy->phy_u3, PHY_NOTIFY_POST_RESET);
+
 		udphy->phy_needs_reinit = false;
 	}
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

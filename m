Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 591DDC982C1
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 15:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xS1S5uP4mQA5QDqWc0aXIc/Z55d/MNyjT8TroX+UTZI=; b=1VIosKd8UV45Vr
	dxUpStRdkVvvSckfQ7GYpgTsrJ5m1fDhJ9hz3L+lFXZQnkLd+ESED4g9OeS0cSVXx4f/mDv4L3S0m
	r9uS6ET96bvHoLmpl6SCsJQywdWBBNH6C3UxDhG7MdgAeCK/pMz0PAx2corwq1j7GoMGHYZk6+dul
	9EOj76yZFOfWGAJeI2z7xMAasB2G0Dof6ZJKAh911WviMri2NyNHs7u6hLYTlKvcwOxfW5kB7TguO
	2DBtFci/kBKH3bFCM2sfip9F/XairFLRypJv7DWIsJzALp7Gk5OTp1doBiiLSt7+4q2gZwat5tQmE
	+zWQ/ZOblPzBvxtZRhkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Ukh-000000075bD-0HDK;
	Tue, 15 Sep 2026 15:07:19 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Ujs-000000074tm-3CNT;
	Tue, 15 Sep 2026 15:06:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789484779;
	bh=vdDrjiEKTnq8slqmHla/LpW9vq2n25PPqUvoUhamiMQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=FhfQjAhg0lWML77et9kXBWSd5sfDPyE6PFUtoHVlknqJy62TEb880BWmyHAuc3KK5
	 6pS2wP9eBc/V6oreidb7ZsRqUQPzFXxJQRuQOjuQlrex79xD4n0TofL9JDVGG5rdUQ
	 PuLckLl4tz+J6iFC+jrbCYKzSNMYUxxeN9G18S7st2x9R69q/Y3Ue+Qq82z1MpdX3V
	 dYNuCw5BJKiETRoCCsSoRMLe9Sz6ad08UtCmXhDcEyqm8fO+B1hBcfE5aLBCxpgqXi
	 z4dLvKCTL5D2Jm31HM+mdqc0HynQgh42YxXxhTNJexgbovIIVeEztZU/heFzkydKHR
	 TiTzPRYXB5gyw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F0F4A17E0D69;
	Tue, 15 Sep 2026 17:06:18 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6989748003A; Tue, 15 Sep 2026 17:06:18 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 15 Sep 2026 17:06:10 +0200
Subject: [PATCH v15 07/11] phy: rockchip: usbdp: Hold mutex in DP PHY
 configure
MIME-Version: 1.0
Message-Id: <20260915-rockchip-usbdp-cleanup-part2-v15-7-8d507cb1174f@collabora.com>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Zhang Yubing <yubing.zhang@rock-chips.com>, 
 Frank Wang <frank.wang@rock-chips.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sashiko <sashiko-bot@kernel.org>, Igor Paunovic <royalnet026@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1410;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=vdDrjiEKTnq8slqmHla/LpW9vq2n25PPqUvoUhamiMQ=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGqpXuqrmUDFinw2vWcKL6ny6SsFGri9AYUGu
 KzPMzkbCqtWW4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqqV7qAAoJENju1/PI
 O/qavLcP/iy8kD8BxsxRSSExBieSYJ7mX+nm1nU/sMBnd/P5uibVB+ikcDSHJwmFa6F/jBDkuih
 okv5kV1hwXqNEPaeRpAYrj68diheqS0OiWukcFYT0Dd7OntOLo4RmAhl4UPOpYH11gGN9Yj1ZBw
 qxtNd678Qe6MwW0FX6ngUEgmeg6m07+Grp9ZgkKJ52s59eY61akScTZzjRAwHrwkhW8plj5yV6D
 MlEL6xpUvLKQaV3Je1QOjk9Jyd4G9By/weBDqBf0pEbpWwvKdh2U9BB7d6C6qdQogsCLiArfCRg
 hCC5ZdQWMEJvZS0OSDr89fTzkv28bB83dn0XArLaGUE1Faxg9ZKe/R/WQqIKXk1+Yjs+V3e1r38
 fZziwwxTKzHQkr+8DmkBka4c/T6EvyNqdqFrlXX8Ob3b3edWcOPd+0/5p5fqqFTeEvX/O1a7Xnt
 nbeFqtJ122shPQFXWkfQG/PJ20+cxUroPdASFP3pgevnaz128pzX7kAIoKCBQWYlhlmvbKwpg71
 oBG5Uu3heHpt7jOrt4TJ5drH9Nk4wjuAXO+eEyibmmjwhxzkAzk21XMQQLS5TWIrZyqC4JlLdcp
 9pzC0B7nAPJC7BqqIqPATbMASyzqrXvpVgXYqcnCUBRPNODquO1IOvcFLNEyy2MDJf3BhXvF63i
 8YfPuVxn+Ha5Qck75l5wroA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_080628_991530_30204E53 
X-CRM114-Status: GOOD (  10.80  )
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
Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 9864024b9c0a..2888a0a97088 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1153,6 +1153,8 @@ static int rk_udphy_dp_phy_configure(struct phy *phy,
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

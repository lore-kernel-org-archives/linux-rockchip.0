Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41EC1CA5FBE
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 10:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=te6I1Q6wU/lng+hdo48fcclWaNPeniJhb4LTWRKZwAo=; b=sHMndnkFwaUZkQ
	BNofrL3ehBcxf3+e4wU4ODflCYIhyvd7nobOMvisvBC+8vwvi5Fy2PcuP2ylZ/m3J7lTUvhGTCn1V
	vcKFIl7h+RVuKKrN9P4U4W6PIDItH4jR6Txy08hOC55taWtM2rIJbbYkhoQL8cbwhbp3ZS4r5J4E2
	X0GCTL2xp7LcOgAF29kU5ApswtBQ8STZtnYz7k+7taq4wT4iZv72rEzJw7sgOJfe2+11RKqDdtwuO
	Gud5QGdqXnUxiGFVL7no9XiOHj+ZSGCrmxVPEm9+Qm/gzy0t8O5Izs1kDU2stZQrCtH50bXRVCSxJ
	dwISDfUrGnQ+GmzAxhCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrBT-00000005emp-10Bi;
	Wed, 30 Sep 2026 10:05:07 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrBG-00000005eaF-2TCZ;
	Wed, 30 Sep 2026 10:04:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1790762687;
	bh=JR96t6CYY1um+Gn96q3cxPsFIlSgGYTgVsAuN1IMRgU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=I+TOlio3aHNvqDU/dmr5ekB6fE18o4mRNy70jl28KmzUv7/YnqiIJJJwOATFKewQA
	 2mSesSbnwtEI/Z8x0+FaJe8utHcSubLQZhsansAifXDwJQoGAR5WoBf4afplsNq40O
	 VY3fxpvLbbT/Mg5mDaa7RXxKeJXVfkHzQov5LP13AQIpHp0O4SLAToP07TFlYR00it
	 TmO0ktw7eDjAHclmHBsjkLYMQ/s9Mk0JotyRE+yF5+kXgWr7YeK8fTG0wzvm5zd7ze
	 WFT1frGYUCmjs3WNCkuFu3RqnTJHtoxqZd+TsVIeI1p5yVvIdYcAJzI87wp3dyPupj
	 Zw5aDE3rIgMog==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AFBCE17E0EB0;
	Wed, 30 Sep 2026 12:04:47 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 169B4480038; Wed, 30 Sep 2026 12:04:47 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Wed, 30 Sep 2026 12:04:35 +0200
Subject: [PATCH v16 6/7] phy: rockchip: usbdp: Re-init PHY on mux change
MIME-Version: 1.0
Message-Id: <20260930-b4-rockchip-usbdp-cleanup-part3-v16-6-bc144f80afc4@collabora.com>
References: <20260930-b4-rockchip-usbdp-cleanup-part3-v16-0-bc144f80afc4@collabora.com>
In-Reply-To: <20260930-b4-rockchip-usbdp-cleanup-part3-v16-0-bc144f80afc4@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Zhang Yubing <yubing.zhang@rock-chips.com>, 
 Frank Wang <frank.wang@rock-chips.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Igor Paunovic <royalnet026@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1196;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=JR96t6CYY1um+Gn96q3cxPsFIlSgGYTgVsAuN1IMRgU=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGq83r6U2u1k6rI6tFuRuK852TKGlGp1/mAot
 SvkObmWORSr/4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqvN6+AAoJENju1/PI
 O/qawawP/0NiU4ygJwN2xMlvoIR7CfwN9nzxYr0K4XXgKnzEpQcQhNPjf54/VoIN8GkLdsTdWjJ
 HnsjaJoVKQ1ohuaN7ZyITmiM9z4cUikYa60LqX78sjpriwrpDaDnkbft6939S1wpgsoOU8BiJl4
 CG8zFjN2kYpid+qyi8T+vcbjcLaptPQ4zoSjQxDBQ51dpfqCC54jRVnc2lwrbMq+tjPwZlpGnWY
 Ni6+9P9rL2cYatvK7K+sc2XVezLQBSoldKL6b2QuNALEN81ahNi2KBbpCwDJ6luRyF+X05Lwmfi
 dDOnwi8MUgLrRwwgjR/DlwVg0o7G9P0UeTtQlbnnFWoRh0599CY/OVjMTLvFWGP6AehqDuOPSoz
 V6EGlq1D4pe+Ber2lZCssr6KDNUKiLwF5XfynKk6Xig/9kbHG3tgIg2hYugq7l5sc5EYCey92BC
 jVd0O06WkXEo0uMlhS2UN8rfaJFB5l+hxU2FR+8e3lT2Z+2C5Q3teryceNom9nAiqIEEG3nWJO0
 XP7y3FI0MU3z+/F7NfWEWvQRyXzrBfMaEt7bMGrovNj7T86rziRILwoihzSK/Kie37tE38xbSSv
 Gu4N+i82ekHiYiWWmL34o9uYP5wZUBihgVSlqjkiz2vg3f/nC6Oib1xM5gObeaFZGDpcJkqW4Vj
 pylL1im12IkwTMU2PWQAwyw==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_030454_818041_944BEDC3 
X-CRM114-Status: GOOD (  12.80  )
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

Ensure that the right part of the PHY are powered up when the
mode changes. This ensures the PHY is re-initialized in the
following two scenarios, which are currently broken:

 - cable orientation changes without DP being involved
 - switching from DP-only into a mode with USB support

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 867f356f394d..ca01c1112c0f 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1391,7 +1391,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
 
 	rk_udphy_set_typec_state(udphy, state->mode);
 
-	return 0;
+	return rk_udphy_update_power_state(udphy);
 }
 
 static void rk_udphy_typec_mux_unregister(void *data)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

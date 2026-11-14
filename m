Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A3460A260D
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 02:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dW0hlKmo;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=qe69jm5b
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5avWZPGH/OAGFQNhI7JuIxBqKyqcDJVa6QgiCwoVMrI=; b=dW0hlKmo+xtfmQ52sK+94n7UhJ
	fN8PA1IOzAw5RokEEdK2mn7BovCDR9YMvdb4hc/QCicV4ZNO4S6xuXGeI6iFVhxlQJ5bEPOyVrQBa
	kXRZ4omrVhaKMa8DP+CMX8mig3IwqqjmsgsArv+ZbsW8apWtuv5vxNqqUxSMT4pw47ZyqFy3Ycm2y
	eVTyWYomUzyTyqcyqRGQm1uF3EmnmHBWPkMOmw1aTfsf7TgjlIT9M153Uw27t9JXyxQlhLyGsQvVq
	MI+xKHB/sQdiPrJL4zGCRbjCw78TrRksivlC08BbLppqkzNK2tJ9lxFW4av4wNxVpEa0Wy0yqr1zi
	8RrYjDvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS351-0000000F5S2-3mxj;
	Sat, 14 Nov 2026 02:01:23 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS34c-0000000F51c-2nhE;
	Sat, 14 Nov 2026 02:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1794621651;
	bh=2uU+Fg2rde1/iaxY1/gZPrSMN8fWrie0TB11Q40V2fk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=qe69jm5bQeBpNJpzlFBs+wv/8/oZktcXmv5H0vc4iQ7s2jWGP7ABNlUyNuUKB/BcW
	 SOXqSMtlZudV8aHE5cnzkcAqAtCkiZewCsknEmznAp1EUfmHYXNPAZ+ogQNtpVpHjC
	 PpWgQBoPjkpdGRUmlt+B7WlHZ2UsbMVX19Y+IZ/bMfuWmWOyTIA0RIYzw2SeHHVMzY
	 KjJHwxPKjraoBacYuSQ1cycdsVBHKQVmNSWbA1b1UWxui3yJsyRAgl3Q33Cdqv8ElU
	 BJjlYIUiK+YgZ26+j/6Yhd7dYlmePr5Rkl0B7SvJuPsUwDUoK71ibiMNH9US+F1exn
	 XadWUKOHTZ0hg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1408E17E0E57;
	Sat, 14 Nov 2026 03:00:51 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 79A56480038; Sat, 14 Nov 2026 03:00:50 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Sat, 14 Nov 2026 03:00:32 +0100
Subject: [PATCH v17 5/7] phy: rockchip: usbdp: Re-init PHY on mux change
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-b4-rockchip-usbdp-cleanup-part3-v17-5-1af5f566408e@collabora.com>
References: <20261114-b4-rockchip-usbdp-cleanup-part3-v17-0-1af5f566408e@collabora.com>
In-Reply-To: <20261114-b4-rockchip-usbdp-cleanup-part3-v17-0-1af5f566408e@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Zhang Yubing <yubing.zhang@rock-chips.com>, 
 Frank Wang <frank.wang@rock-chips.com>
Cc: Igor Paunovic <royalnet026@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1196;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=2uU+Fg2rde1/iaxY1/gZPrSMN8fWrie0TB11Q40V2fk=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGr3wNLzkcIEd33rqXBWbHyZ831ZOstB4dRGD
 gkBWXZ0i/+X4okCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJq98DSAAoJENju1/PI
 O/qaAcYP+wXFHc9n6r98depbW2xi5A8KQ6jVkBbQhLO5Hu+kRo1VtuYV4+j4wHbGVlmeUbMbT2o
 qKNa6XRUbGqZ41SYtYOiTJKDucsVERNd2IYVoswJK8Oi9vDKhwocyL5uns0w5qzymhWCQzbsF1x
 0ui1+H3UzPCm3TU5eJAB0U2dq6j7SCHYKW71kU+hrKgQho0NwH44zPOmF6eNCprrPomywo5Aahx
 dwHg5IXUZF2wQLUA+upnhnT6gQaxlgKiJDxodHvAP7SwI6TQAMqZO+ApXHMVBa2vAEG+aSBm1DF
 LFbLqD7HQ4jgu0xE1v8ciUpQ97VZnsosMpQvpQ/O411Pokp0ZbMiB01qCpfCu+Gs6Ch9cI+ST9Z
 sOrmlwOx0J6gNawTxNq021W3T6/GnW2T+4TRnDBtGDOLthsOy1UY2vxuOr5P5Ng88ruvIOeVVuO
 Pb1FvaXN1WY0kmUFIL/7WWE1Yrb2ZNhDCFPyceskEB5nU8qUiPAWzVJolXsMJEamDt5b4tLurDY
 HPZjOiEkn+5aSqLoS/vPN+PSlN1QDvqc+YW57/IVYCn+0a8fhoDsGT0+AyBTnhmJ4wJtMK4q0tt
 gEA3dOb+soHHmLbUeA1u53bzwDfbbCMBy55fEWiopSzaQgAHEtWzLBq5Pza207/lZxk2O4CLGyr
 /IGKjt9XehYY+Hy/1CZ0yYw==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_180058_957369_21984257 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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
index fc3c4104dcd7..b79b6db96a0e 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1434,7 +1434,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
 
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

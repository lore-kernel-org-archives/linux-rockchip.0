Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14153CE7AB0
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 06:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O8aDdsr7e2NfKCtdmORu/GAiZgx/Uhh0jxwWlA3uK0g=; b=WAU0JHyxyl55lt
	LXXBkEpLifyznxPPSnRFEGFu9SnhPx16Q5Q4BNv7wgE96IObfavMTwBaEXuzovI1soY8/E338ElR5
	VkBJGpD41SJwmjdWYpM6BnlDvLZL3Nw9vv+pDzu7IgBiRQODEinKJ2k1aWjOOGZa2YEfoxWZevgtu
	CS4S3QkJXj5aGRgUhcm8SX2r28xuoBgLQ5zG41v3NTDHwjTSWdCod+DrzMbEst0rSfI1CnYppkaqH
	jKg4uz5qsFewPv23gF3YLa9SEJHRvelOsQ4HdKxFXs2eDePS1xPJWCUIf7eo8PdX9Jyfu7t/V2mE2
	FTiSoisVWgN0PHc/wE3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snXsc-00000000dNx-3Ao4;
	Mon, 09 Sep 2024 06:28:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snXrZ-00000000cyF-3zqi
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 06:27:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1snXrW-0002GH-Cs
	for linux-rockchip@lists.infradead.org; Mon, 09 Sep 2024 08:26:58 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1snXrV-006aON-Oi
	for linux-rockchip@lists.infradead.org; Mon, 09 Sep 2024 08:26:57 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 98DEA336165
	for <linux-rockchip@lists.infradead.org>; Mon, 09 Sep 2024 06:21:55 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 395B333615A;
	Mon, 09 Sep 2024 06:21:54 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id fcd9152b;
	Mon, 9 Sep 2024 06:21:53 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 09 Sep 2024 08:21:49 +0200
Subject: [PATCH] can: rockchip_canfd: rkcanfd_timestamp_init(): fix 64 bit
 division on 32 bit platforms
MIME-Version: 1.0
Message-Id: <20240909-can-rockchip_canfd-fix-64-bit-division-v1-1-2748d9422b00@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAPyT3mYC/yXN0QqDMAyF4VeRXBvoRB31VYaIJukMQpVWRBDff
 WFefnD4zwVZkkqGrrggyaFZ12h4lQXQPMavoLIZKlfVzjuPNEZMKy006zYYAmPQE9saJ92R9Ul
 gE5q3D8wykQeLbUls9j/69Pf9A3YqY8R4AAAA
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=1680; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=jOLl/YUfN9Kib9erf2YkpEcSGJdS+XScDgfrk4H3TZw=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm3pP+A1YrjAv0lzrha1Nz9rc4vPQQl58ocRltf
 dWB5/nQhB6JATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZt6T/gAKCRAoOKI+ei28
 b9sKB/wKSh1HQddIfxdzPaV1MxLN0kLc2tvUQTxavUh6omqbZfw2yaAVlBUj2NVOPcI/hHqO47Z
 XDdE8vzNyHfdKYtbQb7ln4iNMxoHMiGlnZGcilapFzBQOPlQnbkGhum9fMpdnPHLodtasuwc2s6
 cf6RDW0xEQ+ZVpG5nSOZWK8/wbYYUrZubzk+rs9rW7BM0VCWe4VNwsCz9o/LLLrfiU8ohC6Z8pd
 VsunCw84awq9wjDRWReZH0h5/1QoRgjvGPDPBEYASO26WSQ4hAWc+K1wgkm9PPZsHZ6xtYh3ykE
 KHMnTOeUz94vn6b6YvtZaCaHho8PjQgTD40zKPZ9JP8O98JR
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_232702_029262_E9FA7629 
X-CRM114-Status: GOOD (  13.27  )
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

On some 32-bit platforms (at least on parisc), the compiler generates
a call to __divdi3() from the u32 by 3 division in
rkcanfd_timestamp_init(), which results in the following linker
error:

| ERROR: modpost: "__divdi3" [drivers/net/can/rockchip/rockchip_canfd.ko] undefined!

As this code doesn't run in the hot path, a 64 bit by 32 bit division
is OK, even on 32 bit platforms. Use an explicit call to div_u64() to
fix linking.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202409072304.lCQWyNLU-lkp@intel.com/
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-timestamp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-timestamp.c b/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
index 81cccc5fd838..fb1a8f4e6217 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
@@ -71,7 +71,7 @@ void rkcanfd_timestamp_init(struct rkcanfd_priv *priv)
 
 	max_cycles = div_u64(ULLONG_MAX, cc->mult);
 	max_cycles = min(max_cycles, cc->mask);
-	work_delay_ns = clocksource_cyc2ns(max_cycles, cc->mult, cc->shift) / 3;
+	work_delay_ns = div_u64(clocksource_cyc2ns(max_cycles, cc->mult, cc->shift), 3);
 	priv->work_delay_jiffies = nsecs_to_jiffies(work_delay_ns);
 	INIT_DELAYED_WORK(&priv->timestamp, rkcanfd_timestamp_work);
 

---
base-commit: c259acab839e57eab0318f32da4ae803a8d59397
change-id: 20240909-can-rockchip_canfd-fix-64-bit-division-5f579fddebc9

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA751EE021C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 08:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68ABUg3vekYasGT36WjkNiHHOf6JqFuuSZ3jtLnhabg=; b=HJfBZJkh3tAJPE
	EhBWCX8oBdU8k4Snm0gDG83Qmf7k/mxUwKQ3u7VLPTsv7EolZ+4YLsmdG0fDWSFxUIfP6M72CYELH
	ubLSovp8uYupxTo3jcUAUKaVdgvAr2c+KC0nslKwmrgyxqNz5QTMny8G68xGoAGl8CQeqkUvTq8B+
	hRtHr/J5+fTcmFM5hB66aKPx9kYELlQ1K0LRW0k6eZEyhk5hZntmHyr49sX3X7/aLAe/kCsS7jEnn
	TCz6sapcvQV5vQX+ar4MuQidVrOB5Gs2GWBs0F9H34nBgK5PFjwD8shY+rlsWSJqgdGRacvGjA1ve
	nYb7hmHxr6SBqWjoKdng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIzo-00000008k99-0ogy;
	Wed, 11 Sep 2024 08:46:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIyk-00000008jtx-1jfr
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 08:45:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1soIyj-0002bh-AU
	for linux-rockchip@lists.infradead.org; Wed, 11 Sep 2024 10:45:33 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1soIyi-0075z5-Se
	for linux-rockchip@lists.infradead.org; Wed, 11 Sep 2024 10:45:32 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 8D2F1338148
	for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2024 08:45:32 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 115B2338137;
	Wed, 11 Sep 2024 08:45:31 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id 0a04ff54;
	Wed, 11 Sep 2024 08:45:30 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 11 Sep 2024 10:45:25 +0200
Subject: [PATCH can-next 1/2] can: rockchip_canfd:
 rkcanfd_timestamp_init(): rework delay calculation
MIME-Version: 1.0
Message-Id: <20240911-can-rockchip_canfd-fixes-v1-1-5ce385b5ab10@pengutronix.de>
References: <20240911-can-rockchip_canfd-fixes-v1-0-5ce385b5ab10@pengutronix.de>
In-Reply-To: <20240911-can-rockchip_canfd-fixes-v1-0-5ce385b5ab10@pengutronix.de>
To: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>, 
 Arnd Bergmann <arnd@arndb.de>
X-Mailer: b4 0.15-dev-88a27
X-Developer-Signature: v=1; a=openpgp-sha256; l=1358; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=9WfFS70YrDr2qrfetTrD2fcBkV55eVvJHa3bbG4uxs8=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm4VinquE+Tws44QEClswYLm8kNwf80a6ISQYBA
 mPD6Zr1Ds+JATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZuFYpwAKCRAoOKI+ei28
 b0oAB/4g5Iqh2BWMbyXjya4wJb266mMCniZpg89eUuNb1jSWxUfSFVOkqdif+aLiaQ+MPiY/2fS
 oR1lDkgLs5zbSMwZgK5GnPgDtS7ziBYK20IdVE8Li5COjb8Wti/36hW6bPvRJ/1KMuDvJkZMD+m
 vnUP8O+8KBEBzp4YqgWSKb+XKgMt2ETWuoZscN6J7rWDrHmaavJCTBq82TpKUCVyoFW3Hn17Q+K
 xR0Z/LtOibuy+X3SuQd1ogL4z7Hf5jVtNwrjxlfmpaKYIseJCBEJMFM9r/MBmS/3lhvKnvmNHKu
 f818F71y4FhIkTCQZvzbuqrlRxGBdgGQI5MpiUfuV8aVUW1S
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_014534_504407_C430335D 
X-CRM114-Status: GOOD (  11.89  )
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

From: Arnd Bergmann <arnd@arndb.de>

Rework the delay calculation to only require a single 64-bit division.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
[mkl: port to on-top of existing 32-bit division fix]
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/can/rockchip/rockchip_canfd-timestamp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-timestamp.c b/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
index fb1a8f4e62172b06570b95e6f32c4c0f70fe1ea7..43d4b572181215c50dda9d4f8cdb2d22b7938b38 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-timestamp.c
@@ -71,8 +71,8 @@ void rkcanfd_timestamp_init(struct rkcanfd_priv *priv)
 
 	max_cycles = div_u64(ULLONG_MAX, cc->mult);
 	max_cycles = min(max_cycles, cc->mask);
-	work_delay_ns = div_u64(clocksource_cyc2ns(max_cycles, cc->mult, cc->shift), 3);
-	priv->work_delay_jiffies = nsecs_to_jiffies(work_delay_ns);
+	work_delay_ns = clocksource_cyc2ns(max_cycles, cc->mult, cc->shift);
+	priv->work_delay_jiffies = div_u64(work_delay_ns, 3u * NSEC_PER_SEC / HZ);
 	INIT_DELAYED_WORK(&priv->timestamp, rkcanfd_timestamp_work);
 
 	netdev_dbg(priv->ndev, "clock=%lu.%02luMHz bitrate=%lu.%02luMBit/s div=%u rate=%lu.%02luMHz mult=%u shift=%u delay=%lus\n",

-- 
2.45.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

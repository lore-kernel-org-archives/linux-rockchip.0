Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23935C531D0
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 06:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	MIME-Version:Subject:Date:From:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4Q2aCCQGusV575fIUvguQYg9AP5caKDxXSxRRcg+h7o=; b=ES+AoKZ3HOWdAUWf3aamYW7K+g
	t8rerPeuA6k+0CJjshFa2RiCzR8iTL2seApXRiooq6NBFWkxjq/kF9ZnZOtZwPNsfWkLeTfH3WFN4
	bezhRf6dzncGrwY6Vg/E9QZPQu9MgWXbAFO0cEV64POT0P9NBMfVVSiG8DUS+Pb07L4q0bE4q42Ja
	9XwjRAuvOPFbep4R4VsfEd6FKAumQcRqFX4sSPT1gbjBlAllQ5YlchkgSNMh13JUaKN7fbycyumse
	4ehZ4u0aN4wMVBJqaBLGyKBVleqhbwXtmUhCRNgYX9XE5HxxcL9c7lHWyM0+bQIT4gku2Rfe/aVFp
	pvGcs9eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpJzd-00000009a8Y-0RTl;
	Thu, 30 Jul 2026 06:11:45 +0000
Received: from xmbghk7.mail.qq.com ([43.163.128.50])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpJza-00000009a6J-1Eyo;
	Thu, 30 Jul 2026 06:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1785391895; bh=6u/mJ1eHhtcpBfaCK5wQm5H38V9X2M73NOfbAlKBO2s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=E/5YzZOlnYKYQhUb25D9rzbVBcC3ximQTnpVcFZ++ojv79K0Xqdva6S1ukIiq+t90
	 IGHylDJHv7SLxW0dFMzckw3wzqW65yLiS+NgXH/XrdXhNeXkJXoHsMWxF2hhXUS5Gb
	 GORfRCT0IS3Wueo0jfJKlhNQDmq2wnFeBcRX1Gc4=
Received: from ubuntu2204.localdomain ([2409:8d20:22b:54c:9e54:40ff:fe02:3f0f])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 2DF15055; Thu, 30 Jul 2026 14:11:31 +0800
X-QQ-mid: xmsmtpt1785391893tsx1kpqqe
Message-ID: <tencent_D2D30ECD988C5C82D18863401362835F7606@qq.com>
X-QQ-XMAILINFO: MRMtjO3A6C9XFoMCSl6ZInb3+GuQ8gajxOb7Om5LsBNl3hBTktMJbHRntZirGy
	 WEbXlXZrp3uCNOWqNT9oDgKKu69NUPTwn1zHvTdfHFLNy9i3tRuYB5y6GckaW/hdsEr+XsDAFUuN
	 xNLN6kEItGD8z58/qMEWgwXpBqo470jXo8K7NblLlHKp/MhOhRD07phKbNAJSgNzvtmrmqH/8EUu
	 eTVeHeHWzVt3pnc3Ax/pJ1cs2F3aTD63yNe+eRig/XcKfoZB85RiDJtrb+Xdg8H8ySKvWF83MQy4
	 dr4PABrhorsb4NW5lSF2wE5cxb4GRGIHk/fcNHLmlO+pVr6gMjlvn4HeW0+yGoLlMzR5PdO1DTYY
	 9cn6jnn2MQOvxF5vO+fzb7qVcH1iDrEObmbdpmfJ5LUD3AsDLd3q5K4010ltjgn6oC+Nwtjc16xd
	 2+kJAzIi1aTy2gWJkOcXySui0uATnGaSnwMtTRMpSjXN/igNwQkgCB6Cv1EBJkrUEQWf+ATgyldL
	 8T1vKtZYJUYzZiKbjHc/+/JnG75lz54jokhV4VmdcgHBECiV420/DHmnwRZG9F8HnKBxZ80lHW1n
	 5uJImI8U9tevQMnNF0dSq0VtguHUM64+RX+iJcKQrK0C7OFAGYzARDHkPxfIKW9xym8rmcHir9Ps
	 zoHm0Ka1KnaZA1ENzu/0+25CdGl3D2ygNGtM+z+cVt+Krde1nJ9qgxmQrV7GjDGEndx+a3msRDQU
	 26ZER9fJitGMRqcdJr11fCQBeNDMSEkYMD9v2I5CvUcVBzzS3pW51o3WQ3XfBy1GEaAvz2+Yyvn1
	 sbGSScLejuqF27Rm+w6nWObX7cYRejdywBusiY/hqLr9uJFKQxeiv4PGepHOWCXJeLR92aMU9kfG
	 3O4RNTIVu47GPZ1llU3eSgHzJ5WKWBQ/59ljn2iwxFU6NcOov2uQGpPtCaMRNgylYOfONDNMN9vA
	 LD2z06wUdMfTVTEacet+hUPXX/cSw806QB+gRpp4ZkjWqC4wH3v0ab8JRKYlhu5FWlGunQzYfp4h
	 83Ps1S0C9sqfW/bXIkrwYELJxNKRvkyygvvrSIRCly7+Bm0O0CHeXj/+/u2iwcIZv7exifR4k9ZW
	 A7A0EeN+RWxg4rqgVPRxp4inWAK2O1+CzTszP2zvZ6yVgfHxY=
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
From: Cunhao Lu <1579567540@qq.com>
Date: Thu, 30 Jul 2026 14:11:22 +0800
Subject: [PATCH 1/3] can: rockchip_canfd: prevent TX stall on echo skb
 failure
MIME-Version: 1.0
X-OQ-MSGID: <20260730-master-v1-1-6945fdd4f0ff@qq.com>
References: <20260730-master-v1-0-6945fdd4f0ff@qq.com>
In-Reply-To: <20260730-master-v1-0-6945fdd4f0ff@qq.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
 Vincent Mailhol <mailhol@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, Cunhao Lu <1579567540@qq.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_231142_645300_07FA53E9 
X-CRM114-Status: GOOD (  11.19  )
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

rkcanfd_start_xmit() advances tx_head and requests transmission even when
can_put_echo_skb() fails. This creates a pending TX entry without the echo
skb that the RXSTX completion path needs to match the self-received frame.
The entry cannot be completed, and the netdev TX queue can remain stopped
after the two-entry software FIFO fills.

Do not advance tx_head or request transmission if the echo skb cannot be
installed. Account the frame as dropped and report the error. The
-ENOMEM and -EBUSY paths have already consumed the skb; explicitly free
it on -EINVAL, where ownership remains with the caller.

Fixes: b6661d73290c ("can: rockchip_canfd: add TX PATH")
Cc: stable@vger.kernel.org
Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 drivers/net/can/rockchip/rockchip_canfd-tx.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/net/can/rockchip/rockchip_canfd-tx.c b/drivers/net/can/rockchip/rockchip_canfd-tx.c
index 12200dcfd338..d2cbe25c46d6 100644
--- a/drivers/net/can/rockchip/rockchip_canfd-tx.c
+++ b/drivers/net/can/rockchip/rockchip_canfd-tx.c
@@ -125,8 +125,18 @@ netdev_tx_t rkcanfd_start_xmit(struct sk_buff *skb, struct net_device *ndev)
 
 	frame_len = can_skb_get_frame_len(skb);
 	err = can_put_echo_skb(skb, ndev, tx_head, frame_len);
-	if (!err)
-		netdev_sent_queue(priv->ndev, frame_len);
+	if (err) {
+		if (err == -EINVAL)
+			dev_kfree_skb_any(skb);
+
+		ndev->stats.tx_dropped++;
+		if (net_ratelimit())
+			netdev_err(ndev, "%s: failed to put echo skb: %pe\n",
+				   __func__, ERR_PTR(err));
+
+		return NETDEV_TX_OK;
+	}
+	netdev_sent_queue(priv->ndev, frame_len);
 
 	WRITE_ONCE(priv->tx_head, priv->tx_head + 1);
 

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

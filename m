Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C888CD343F
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 04:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Message-ID:
	Subject:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFuNK80wAJeNJY5gGuxS+BmtCl9pVVs0ePy1mogHf5U=; b=o020hCoPgJ1Sc3
	Hgk4lVlSwX1x7aaFWxl1nS5qJhXTtuwCnszIj8YTd/wnBfiVQOw91KI+oPV+uYt3iNIZSdwxFnV8e
	zhTDZMvo2tnff0VTIUL668oYCDgMrFqJmq5MqGGVXGYi1q4XRVujxvPka/PvCTVpcIRLxrttPmOYm
	25rtsF48ynQB269SOO2AdK7QKGvTv0VVwJRDqewX6vYn0a22P4Ut+7de2NSscHqP/haJwancXNySj
	Pl6SsaIxYY/ZzboWH29DWmswWAkCtxBNLB7lCNHFPm/RWzNA5PCfHyhsVR/E2eSkJQOdMuzbU/F7m
	jovISlmXFOQbSPk1J0jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ8f-00000008BSR-1UaU;
	Sat, 09 May 2026 04:18:05 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ8b-00000008BNf-2wV8;
	Sat, 09 May 2026 04:18:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Content-Type:MIME-Version:From:To:Subject:
	Message-ID:Date; bh=tchYBoWpbe7hHLMNFetVCDkmnuu3ZHUBLWljHyRvAYA=;
	b=QK/EIXjjUyfsCJc8T6Uz/rqIg/rEAYvCwKsMuNrc6FPsGeMRuHIz2Mibm2SLPB
	Q78Ch/DNl3dXOLf+9jRo4njstz5jjsPHTHyMk5x6FWNToTkpsLWDQVwV1637Gvzg
	TXXkQukOemPLlmhJfr75bcbAEvv9amZUNT32orl3Jbsc4=
Received: from [127.0.1.1] (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wD3__tptf5pidhLAQ--.30387S2;
	Sat, 09 May 2026 12:17:47 +0800 (CST)
MIME-Version: 1.0
From: Jiaqi <shijiaqi_develop@163.com>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/6] drm/rockchip: Check return value of cdn_dp_grf_write() in error path
Message-ID: <177830026497.246051.2880619814543288772@openclaw.local>
Date: Sat, 09 May 2026 12:17:44 +0800
In-Reply-To: <177830021804.246051.8309807801406217751@openclaw.local>
References: <177830021804.246051.8309807801406217751@openclaw.local>
X-CM-TRANSID: _____wD3__tptf5pidhLAQ--.30387S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7CF1kCFyDKFWDCw1UJw1UZFb_yoW8Gry3pw
	4DJ34YvFZ29asrJayxKa48JrsYgayUZr4I9r97Cwn2v3W3Cr4ktr9IqF12qF4fXrs2yFyI
	yF4kJryrJrs0vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07U_xhJUUUUU=
X-Originating-IP: [43.248.8.92]
X-CM-SenderInfo: xvklyxpdtlsvxhyhz0rs6rljoofrz/xtbCzQuh9Gn+tWuN1gAA3B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_211802_086465_C013B212 
X-CRM114-Status: GOOD (  12.59  )
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

In cdn_dp_enable_phy(), when an error occurs after the GRF register has
been set to DPTX_HPD_SEL, the cleanup path at err_phy calls
cdn_dp_grf_write() to restore DPTX_HPD_DEL, but the return value is
ignored.

If this restore write fails (e.g., due to a bus timeout or GRF power
loss), the GRF register remains in the DPTX_HPD_SEL state. This leaves
the DP PHY control in an inconsistent state, which can cause subsequent
DP link initialization to fail or produce undefined behavior.

Fix by checking the return value of cdn_dp_grf_write() in the error
path and logging an error if it fails.

Signed-off-by: Jiaqi <shijiaqi_develop@163.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 8afabe2118a9..1234567890ab 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -425,8 +425,9 @@ err_power_on:
 		port->phy_enabled = false;

 err_phy:
-	cdn_dp_grf_write(dp, GRF_SOC_CON26,
-			 DPTX_HPD_SEL_MASK | DPTX_HPD_DEL);
+	ret = cdn_dp_grf_write(dp, GRF_SOC_CON26,
+			       DPTX_HPD_SEL_MASK | DPTX_HPD_DEL);
+	if (ret)
+		DRM_DEV_ERROR(dp->dev, "Failed to restore HPD_DEL: %d\n", ret);
 	return ret;
 }

--
2.40.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

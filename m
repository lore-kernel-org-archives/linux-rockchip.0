Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B2F8C3ABD4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 May 2025 13:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMwLiz572DD+SW6vNEFF+G5Nn5V+2n4+mkrj7xQGmLc=; b=amTls5Sf5rp4YG
	vQLcQaOFZLThNoFz+1qgwo1NYDB1LEwj9wFJXzOO7xtiYBsFFTSwJEZJctGw1POZ0V+Mf++tjHWdJ
	UtFJeWY6cK3MdWvZ8VJBdv/TudrWcwLg3nFuMWCxqvcJMVRMbLtpahEiidsRewQhKgIN4LlxZQelH
	NnP8YgNEPZU8lAhGEOFZXAeowiJxRhoxA2awSDf6wCw/l7JLlnCjANxbNL0ajPAjNqc3DCz4xsOFU
	Tnse4DPzMarfg6BiwG9HIy3TUbD8137wu1s3Ti1N8Le4exBxelMxaxbDxDNUErp6rLUkP8BzQ7YME
	05tkYqQ+R4ilY9NuF5LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uESwh-00000009Uij-1c4e;
	Mon, 12 May 2025 13:11:51 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uESZ0-00000009QZ5-2A1C;
	Mon, 12 May 2025 12:47:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=ck
	0Oa6Hq1RQ1X+FOIxxUqrsCrvgqpQ03ONEP831KWyU=; b=YXxeFWMqp2G21M7k8n
	d0sl7XHelAhyRhuHaW0wKr/ikCC4CPKZirbQUsAnQ8kfPXyIFc0ezL2D9HsHxtq5
	CdolXmRc83opYm5EFTrTTzE9zvgnZQ3Hu9P5DXL/O5CEBkxdtyYhQ1005lmsN4A5
	4qhhrssf/ZGThy7Ldj2O08kbI=
Received: from ProDesk.. (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgC3chWY7SFoQ+_OAQ--.62400S9;
	Mon, 12 May 2025 20:46:28 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Cc: jonas@kwiboo.se,
	Laurent.pinchart@ideasonboard.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	hjc@rock-chips.com,
	tzimmermann@suse.de,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v5 07/10] drm/rockchip: inno_hdmi: switch i2c registration to devm functions
Date: Mon, 12 May 2025 20:46:08 +0800
Message-ID: <20250512124615.2848731-8-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250512124615.2848731-1-andyshrk@163.com>
References: <20250512124615.2848731-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: PigvCgC3chWY7SFoQ+_OAQ--.62400S9
X-Coremail-Antispam: 1Uf129KBjvJXoW7AFWfXryxWw4Utr43Ww47XFb_yoW8ZFyfpr
	W7AF4YgrWxZF4vgr4DZF4kCF1ayay8GayxWFWIgwsakwnxWry5tFyrXryS9a45A3srXanr
	tr4vq345uF1UKaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j3189UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqA1LXmgh6hVM3wABsU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_054722_907728_1BBEDBB6 
X-CRM114-Status: GOOD (  10.05  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Switch from i2c_add_adapter() to resource managed
devm_i2c_add_adapter(), which will make the cleanup code more simpler.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v5:
- Split from PATCH 9/10

 drivers/gpu/drm/rockchip/inno_hdmi.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index f362803060796..776a2aa74e49c 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -1230,10 +1230,9 @@ static struct i2c_adapter *inno_hdmi_i2c_adapter(struct inno_hdmi *hdmi)
 	strscpy(adap->name, "Inno HDMI", sizeof(adap->name));
 	i2c_set_adapdata(adap, hdmi);
 
-	ret = i2c_add_adapter(adap);
+	ret = devm_i2c_add_adapter(hdmi->dev, adap);
 	if (ret) {
 		dev_warn(hdmi->dev, "cannot add %s I2C adapter\n", adap->name);
-		devm_kfree(hdmi->dev, i2c);
 		return ERR_PTR(ret);
 	}
 
@@ -1316,7 +1315,7 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 
 	ret = inno_hdmi_register(drm, hdmi);
 	if (ret)
-		goto err_put_adapter;
+		goto err_disable_clk;
 
 	dev_set_drvdata(dev, hdmi);
 
@@ -1330,8 +1329,6 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 err_cleanup_hdmi:
 	hdmi->connector.funcs->destroy(&hdmi->connector);
 	hdmi->encoder.encoder.funcs->destroy(&hdmi->encoder.encoder);
-err_put_adapter:
-	i2c_put_adapter(hdmi->ddc);
 err_disable_clk:
 	clk_disable_unprepare(hdmi->refclk);
 err_disable_pclk:
@@ -1347,7 +1344,6 @@ static void inno_hdmi_unbind(struct device *dev, struct device *master,
 	hdmi->connector.funcs->destroy(&hdmi->connector);
 	hdmi->encoder.encoder.funcs->destroy(&hdmi->encoder.encoder);
 
-	i2c_put_adapter(hdmi->ddc);
 	clk_disable_unprepare(hdmi->refclk);
 	clk_disable_unprepare(hdmi->pclk);
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

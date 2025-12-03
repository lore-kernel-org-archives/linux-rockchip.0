Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36375D12D4C
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 11:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9TXa9rDJP3o5PTVPugpxdc/xuS+ovUw8ARgwtkp+GGU=; b=sLW3uVoKRcFWTi
	Ro4BFg1me9DIvvy1a+v4rzD2nSwhtfA2hX6rdGvAjZpETcNv1EvwO6NyVIvQUpsz0DqpdTdWwhsz2
	ocTmI3EFo+VOwY95cPQqXqC/f/hP07BgAGIFDQYDDUxW17u0sDTeEQ5naEnWQEkxfDZC495emYL40
	M1YSF4035aqzQAKDpS2MS8DOee74H0PXduBniIkr7XJy8OsSPfEhTWmxSvvT1JZV4h4HxWVHEBSzv
	MoNRZkXCtJDXvvAlSr0vWp+sVfNp4MCIJwpt4vKdbWPMqUvJQZPzkmgJfAUy1cF9MdazYSHr3fqn7
	OaHspzWyW4RNdSR+Rkyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlOW-00000006Wk9-2xr0;
	Wed, 03 Dec 2025 11:51:40 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlOU-00000006Wiv-0N6o
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 11:51:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1764762636;
	bh=p/JhfQ/5mVmqehnjvRE1UyHQbPCzKtTccLmDH7YWYKE=;
	h=From:To:Subject:Date:Message-Id;
	b=WdrQQunRC6miA7a8WBfxuuiqDbwiaYGKwU8kAbvzi9et+VvuTC93krsEi3QVJVkFi
	 ozbSXg6n6D847fbeUURk6pAR4dwfMZoDNsxy3T3I7DPBNvXWz9mBekDaQXIJtU6+5l
	 S+bViNuJxdogGUeB6jtbI6Bz537aEQ93RuF9zH8A=
X-QQ-mid: zesmtpsz9t1764762634t4ecda2a1
X-QQ-Originating-IP: hmKrqfeMcwbdBdJxRwrYyzP1oSeWYkJShvR6sCH86u4=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 03 Dec 2025 19:50:32 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 653531030055881594
From: Chaoyi Chen <kernel@airkyi.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH] drm/mipi-dsi: Only remove child devices that match the dsi device type
Date: Wed,  3 Dec 2025 19:50:28 +0800
Message-Id: <20251203115028.133-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MD5XEDocxEOL+DzPtHJQllrrrm3kZdcABL+nj5QkMWc1JpWqK1+lSszu
	gQUg9Y0tALGkQG9SiD/QGEnEFvG6dg3mQNWdsiBqiqFL2mEa2bW/ibZT2j68gauNBX1n6j3
	Vsd+s/hwymidiv56pz2X0Zl8PNzgI2eRrSc6WJiYzMauVRysW+xRe3HFcl5MJ24PdaINyUa
	XLa3+qRObBRCbZdt2MjA2HOhHeaumsaGmbqWqs6CWsAmnlFAvrnX0zgZdtvrO4PIY5jU9Jc
	C7gdGwUwaGmjyw7YBm2DSLvb5DLqeqw75AAqv4t80IbimZBNvb9xcFfS/acJgdt9+hiCpHU
	+i2EzsngN3iZLohNyncL1TShel6dLW72wKdATy9ZkU6xI6m0mvaKd1gabmyV+7sbhlx5xC0
	TfKdf9pMp51JfioVRUHAD/6718n+k/E8ftapqgNSJALZwleYgoIL4DcukQkDRtOvEi39PMx
	KOHUmX/Di+ILrL9VYyeXx94EosMxnEGKo3GWmHLu7g7Z7G4nj4NfvJkzemtOt9xeNlp9hR9
	wdjnVaxqWWs9XOdQmonHEYbu39qd2nSvJkWqhYMQSArnQy7g6ipDQFUpubMGQGidi9jNgbl
	XE2oR65rONeGL7oMnDCpX3iOT5VjUfJ6qZc3lanSROS5XDDcGrQaaKI/WgozoJH72zuGpTx
	88QBPxbjKfzkDp30vTulaXBdlsbjtVzObCNfYME+lkYGMBAhvTySqQKNlLelRsWEUph3tpd
	gplnB8XMqT3YslLHfutWMAvguW3vun10Clt3U1WUv5iPqCoNge9zTNsneQ7tAhHCry8hhb/
	yo4q44v9W8ZtsFw8DY/PVcBUbgKCmS/uawCDmQsLSz42OS61ikD1AGvguPEpAAZnsTVqGQ1
	HkKo1C9T9hBNtPZHX9zuoDftBajXWxT0oMmdcz1IBMOSi+YlNQT0vUgAqxeUHYK5LK2164b
	e33XQTXpNRlwi1q/P7Tm0lPD8kaMfhbOr3YSGKfrs6rn/eg==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_035138_542484_9B203A9F 
X-CRM114-Status: GOOD (  11.95  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

This patch checks whether the device is a valid mipi_dsi_device before
accessing it in mipi_dsi_remove_device_fn().

The mipi_dsi_host_unregister() assumes that all child devices of the
host device are mipi_dsi_devices and uses mipi_dsi_remove_device_fn()
to perform subsequent operations specific to mipi_dsi_device.

In rockchip platform, for dw-mipi-dsi-rockchip.c, it creates a dphy
device, and it use the dsi host device as its parent device.

And when we call dw_mipi_dsi_remove() in
dw_mipi_dsi_rockchip_remove(), mipi_dsi_host_unregister() will get
such a dphy child device and treat it as an mipi_dsi_device, which
will lead to a further panic.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 drivers/gpu/drm/drm_mipi_dsi.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_mipi_dsi.c b/drivers/gpu/drm/drm_mipi_dsi.c
index a712e177b350..5b9cc799eb87 100644
--- a/drivers/gpu/drm/drm_mipi_dsi.c
+++ b/drivers/gpu/drm/drm_mipi_dsi.c
@@ -349,7 +349,12 @@ EXPORT_SYMBOL(mipi_dsi_host_register);
 
 static int mipi_dsi_remove_device_fn(struct device *dev, void *priv)
 {
-	struct mipi_dsi_device *dsi = to_mipi_dsi_device(dev);
+	struct mipi_dsi_device *dsi;
+
+	if (!dev_is_mipi_dsi(dev))
+		return 0;
+
+	dsi = to_mipi_dsi_device(dev);
 
 	if (dsi->attached)
 		mipi_dsi_detach(dsi);
-- 
2.51.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B616C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jun 2022 17:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XxzVfScO4V4vLgXUEFiNSienZaMm6qxgjWwGys2RGl4=; b=Cr6Es8W6XBObSn
	14Tnn+HEV/MrMWIxSWsNob+GRFfMhVTR7NoYA0j5cJXpe2O+QzYNNmCv9cql/uoRO7k+YwUauLSFP
	So36s6g8CrYOmh6VdWSvPty0SVxyZpkV+qfuDEqk/u/8/M/1iyU/bNJw5QFwQxNUxDHaYRyC/KZRj
	5bOA4PO/UVYlzdr4piAJUknO36pEYNsHy9w5w+hvtyiILqk1Bgq7LeaoI56H5LKfh3d/jRIryDzaA
	7e9rx4MdCgsaDxitlbNKqJgbfp4Sqt+sB0QDgAaLfyTIxMiUMhgvuvuU4RG6uHwSwUycjThL7XuoN
	izm3AdidH5TYzd4ZbiFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2bvu-00BvgT-GI; Sat, 18 Jun 2022 17:08:26 +0000
Received: from smtp07.smtpout.orange.fr ([80.12.242.129] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2bvr-00Bvel-D3
	for linux-rockchip@lists.infradead.org; Sat, 18 Jun 2022 17:08:25 +0000
Received: from pop-os.home ([90.11.190.129])
	by smtp.orange.fr with ESMTPA
	id 2bvaoZWBzL5fD2bvboxfsD; Sat, 18 Jun 2022 19:08:15 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Sat, 18 Jun 2022 19:08:15 +0200
X-ME-IP: 90.11.190.129
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maxime Ripard <maxime@cerno.tech>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] drm/rockchip: Fix an error handling path rockchip_dp_probe()
Date: Sat, 18 Jun 2022 19:08:05 +0200
Message-Id: <b719d9061bb97eb85145fbd3c5e63f4549f2e13e.1655572071.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220618_100823_601910_98B4139B 
X-CRM114-Status: GOOD (  11.00  )
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

Should component_add() fail, we should call analogix_dp_remove() in the
error handling path, as already done in the remove function.

Fixes: 152cce0006ab ("drm/bridge: analogix_dp: Split bind() into probe() and real bind()")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 70be64ca0a00..ad2d3ae7e621 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -408,7 +408,15 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 	if (IS_ERR(dp->adp))
 		return PTR_ERR(dp->adp);
 
-	return component_add(dev, &rockchip_dp_component_ops);
+	ret = component_add(dev, &rockchip_dp_component_ops);
+	if (ret)
+		goto err_dp_remove;
+
+	return 0;
+
+err_dp_remove:
+	analogix_dp_remove(dp->adp);
+	return ret;
 }
 
 static int rockchip_dp_remove(struct platform_device *pdev)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

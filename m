Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E59F5CD343F
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Message-ID:
	Subject:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gdr6oouLrLy6LKQ+T3QIOBV6xA9B5d7k7Bv+WiYEVUA=; b=Pk27aeAr2CTqet
	DRLrWseCoyF27ByMH3IfOJ8qc+yb5PAufq62dxmgq+9xuAX3wg1Z0QbsCzicLsl9Bmu2ggHXo4iPi
	fXLXuIMzELdSq3IZ9fFmgoCPHsw3Q5f1CoA0oM8dAKLqGg3pV+0vjlhr5CgN/9bdVTFRVzsOzjAEM
	iqku2+65LEa3oRFAj+wWFucw2kMl/FarViIpNnqVbnk0TG+0pC50t/k/Di8UX36xPYDXin5ySRs9R
	97iFx0cGAv/bgz30d5oolPu4GBK3K7m52pFJLZ9+NdSwrF7px9nm6BBwNZTwxR2fb4Svxpq0cQYNf
	OjTsYVso9yx5dvdapB2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ83-00000008AzC-15Es;
	Sat, 09 May 2026 04:17:27 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ80-00000008Axq-25qv;
	Sat, 09 May 2026 04:17:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Content-Type:MIME-Version:From:To:Subject:
	Message-ID:Date; bh=7v8CJ0e4//stA9Xc55Ta1qaFTlw77C4x6BLM2ypR4Sc=;
	b=cTkOwYEuDPOmRwQDnTHTI/b8/Ku67m2OgeDs3W+aKb9u7EANzQmS0sNatZXJAu
	HSnO4qDFFhrMpQd+xy51aekMhR3JbniSpsMlqPj1gvGvohuVKiaZyEaiuI8evtrU
	mTVUHy4GgQ7JcG+qNPw1S2Hoh+/NwznHfdi69sMSLQlZA=
Received: from [127.0.1.1] (unknown [])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wA3yVtEtf5pswxQAQ--.31859S2;
	Sat, 09 May 2026 12:17:09 +0800 (CST)
MIME-Version: 1.0
From: Jiaqi <shijiaqi_develop@163.com>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] drm/rockchip: Fix of_node reference leak in rockchip_drm_encoder_set_crtc_endpoint_id()
Message-ID: <177830022712.246051.4119979110908560490@openclaw.local>
Date: Sat, 09 May 2026 12:17:07 +0800
In-Reply-To: <177830021804.246051.8309807801406217751@openclaw.local>
References: <177830021804.246051.8309807801406217751@openclaw.local>
X-CM-TRANSID: _____wA3yVtEtf5pswxQAQ--.31859S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7CF4UWr18Xry5ZFW3Zw17trb_yoW8Ar13pa
	n3Gr9Yvr48GrWfWr10yr47ArySkws2va17CF97C3W3Zan3ArnYyw1fKF1vgr15ArWxuFyj
	yrs7Ga4j9F17urUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UE4EiUUUUU=
X-Originating-IP: [43.248.8.92]
X-CM-SenderInfo: xvklyxpdtlsvxhyhz0rs6rljoofrz/xtbCzQaY62n+tUaJPgAA3r
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_211724_976220_F9E543C3 
X-CRM114-Status: GOOD (  11.25  )
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

The function rockchip_drm_encoder_set_crtc_endpoint_id() acquires device
tree node references via of_graph_get_endpoint_by_regs() and
of_graph_get_remote_endpoint(), but never releases them. This happens on
all exit paths, including the success path.

This leads to reference count leaks that accumulate during encoder probe.
In deferred probe scenarios or module reload, the leaked references can
cause of_node_get() to eventually return -ENOMEM, breaking subsequent
device tree parsing.

Fix by adding the corresponding of_node_put() calls for both 'en' and
'ren', and use a unified error path to avoid duplication.

Signed-off-by: Jiaqi <shijiaqi_develop@163.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 14 +++++++++----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 8afabe2118a9..1234567890ab 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -278,18 +278,22 @@ int rockchip_drm_encoder_set_crtc_endpoint_id(struct rockchip_encoder *rkencoder,
 {
 	struct of_endpoint ep;
 	struct device_node *en, *ren;
 	int ret;

 	en = of_graph_get_endpoint_by_regs(np, port, reg);
 	if (!en)
 		return -ENOENT;

 	ren = of_graph_get_remote_endpoint(en);
 	if (!ren)
-		return -ENOENT;
+		goto err_put_en;

 	ret = of_graph_parse_endpoint(ren, &ep);
 	if (ret)
-		return ret;
+		goto err_put_ren;

 	rkencoder->crtc_endpoint_id = ep.id;

-	return 0;
+err_put_ren:
+	of_node_put(ren);
+err_put_en:
+	of_node_put(en);
+	return ret;
 }

 /*
--
2.40.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC001CD343F
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 04:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Message-ID:
	Subject:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buYVyKgD6BZH3LJjjIQakrNaWBbL82eKA+ly+t1fkpk=; b=3xHwLxnQXmlpIF
	EA5Wd06clCES64TiC8dn6RWu14DQ1mcT9EHUwpdwY3Q8Za+fNqboXDcc7A/6sFgUm9mDlEyt0Rf9w
	fop44TG/DKdDe9bwp2oS1QiqBqmD3lqd1nmYVoGApOYK/8Uq1UuD5MdVHVZkAnFZegmCJLHkBMu+E
	Y/GxVUbaieEFH7+XddjmOOhvJ2jtOTzxwSSF+e5dgJvolVtmZY2hKdULH7wjzOlfvmTL7F71w578s
	+lqnH6LUsaOmAgOtJNKTPI5j/Gu6yHcVuhsnBT5taHmgVkD52W8nOkLpzMiivCSu2fV9IXDS7uiVe
	jDVZt4cE8OFsJkRPC/IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ8L-00000008BBy-071y;
	Sat, 09 May 2026 04:17:45 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ8I-00000008B7x-0RrS;
	Sat, 09 May 2026 04:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Content-Type:MIME-Version:From:To:Subject:
	Message-ID:Date; bh=U177SE7mHbIC5vyiwjSTfV0OGUj1H2tKhJP6zbKEtGs=;
	b=WwjsVgjS1tGvkSd0ReCVLEBulB9vw7xqnyIibOF1YA2jOUvqpCsYI2Takz2K3m
	48GSozIioFsjl89r760ROoZ7f3aTCVM7n7b//GjgrRVC/TvVcHkibpUDqRoF2jQh
	y0lbC1gKAzc74oM1fNMQ0qO41Gi2Mjdw2CBY5yIZ/7Xvw=
Received: from [127.0.1.1] (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wBnHxdatf5p+85LAQ--.30253S2;
	Sat, 09 May 2026 12:17:32 +0800 (CST)
MIME-Version: 1.0
From: Jiaqi <shijiaqi_develop@163.com>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/6] drm/rockchip: Fix vmap address caching in rockchip_gem_prime_vmap()
Message-ID: <177830025004.246051.109481289321643780@openclaw.local>
Date: Sat, 09 May 2026 12:17:30 +0800
In-Reply-To: <177830021804.246051.8309807801406217751@openclaw.local>
References: <177830021804.246051.8309807801406217751@openclaw.local>
X-CM-TRANSID: _____wBnHxdatf5p+85LAQ--.30253S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Aw1Dtr18uw15CrW5Gw1UAwb_yoW8GF1xpa
	9xu39IyrW8GrWjqrsrXFnrA3ZxK3Wv9ayxGryfKanI93WxWF9Ikr12kFyDJFZrJrsrCFWa
	qr4kA345ZrsFvr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07U_DGrUUUUU=
X-Originating-IP: [43.248.8.92]
X-CM-SenderInfo: xvklyxpdtlsvxhyhz0rs6rljoofrz/xtbC8Bye8Wn+tVzNLwAA3f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_211742_964367_12E385B7 
X-CRM114-Status: GOOD (  11.44  )
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

In rockchip_gem_prime_vmap(), when rk_obj->kvaddr is NULL, a new
vmap() is performed but the resulting virtual address is only stored in
the local variable 'vaddr', not saved to rk_obj->kvaddr.

This causes three problems:
1. Every subsequent prime_vmap call re-maps the same pages, wasting
   kernel virtual address space and TLB resources.
2. If the gem object is freed before prime_vunmap is called (e.g., in
   an error path), rockchip_gem_free_iommu() calls vunmap(rk_obj->kvaddr)
   which is NULL, so the prime_vmap-created mapping is never freed.
3. Multiple concurrent mappings of the same object cannot be tracked.

Fix by saving the newly vmap()'d address to rk_obj->kvaddr so it can
be reused and properly cleaned up.

Signed-off-by: Jiaqi <shijiaqi_develop@163.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 8afabe2118a9..1234567890ab 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -520,6 +520,7 @@ int rockchip_gem_prime_vmap(struct drm_gem_object *obj, struct iosys_map *map)
 		if (!vaddr)
 			return -ENOMEM;
 		iosys_map_set_vaddr(map, vaddr);
+		rk_obj->kvaddr = vaddr;
 		return 0;
 	}

--
2.40.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

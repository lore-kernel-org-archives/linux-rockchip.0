Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39DF2CD3427
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 00:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hoQf2TyAWV540431ztwyJK2cWvBdswFuiqP7fih3Guk=; b=pe17j+lwhsvcxx
	SxahBFKJI/k3weNCLJutoz99OkYi3xBbHGxA6GC1GJWjdXpMkvXCrYhvzuPCIcE28kwFRkctBYNCz
	1C1wN1vOIU3pBxCh9tKTGsy1TrFh0mhJCVK7UkEaL1cECwiLbRgTrJa5fo3H+qdSFW7joFsetUwZI
	kX3B+OwGrvTg4ldlf1/IbrGerAq+nuQu2kNYb/a80vtX3MHgTWqC63FieGN4+1h+jEzV37SBKM4LA
	xa7eVxtQY3s5I78SAxo6fI9uPMNsv/HEUSXOh9IklqUhEXIuJb21GJBnRPR/iwMmCKOm02IqnMlwS
	qGYNj/XTVMk6QyLpbC3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKQbj-00000000MfY-39Am;
	Wed, 06 May 2026 00:59:23 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKQbf-00000000MeI-40hR
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 00:59:22 +0000
X-QQ-mid: zesmtpsz2t1778029043t502262f0
X-QQ-Originating-IP: Q6gong4HjCyBcK7hvROYB58OxkIPCPCQS3s+sWVtfa4=
Received: from qs-qiuxiaojin ( [120.196.70.39])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 06 May 2026 08:57:21 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4261445703974912000
EX-QQ-RecipientCnt: 11
Date: Wed, 6 May 2026 08:57:22 +0800
From: =?GB2312?B?x/HP/r3w?= <qiuxiaojin@qs-tech.com>
To: hjc <hjc@rock-chips.com>, 
	heiko <heiko@sntech.de>, 
	andy.yan <andy.yan@rock-chips.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, 
	airlied <airlied@gmail.com>, 
	simona <simona@ffwll.ch>, 
	maarten.lankhorst <maarten.lankhorst@linux.intel.com>, 
	mripard <mripard@kernel.org>, 
	tzimmermann <tzimmermann@suse.de>, 
	linux-rockchip <linux-rockchip@lists.infradead.org>, 
	=?GB2312?B?x/HP/r3w?= <qiuxiaojin@cvte.com>
Subject: [PATCH] drm/rockchip: gem: check drm_gem_object_init() return value
X-Priority: 3
X-GUID: D5763B4C-DD4D-4827-A73C-137FD996B5C6
X-Has-Attach: no
X-Mailer: Foxmail 7.2.25.528[cn]
Mime-Version: 1.0
Message-ID: <A381993FF0E67CFE+202605060857210496809@qs-tech.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:qs-tech.com:qybglogicsvrgz:qybglogicsvrgz5b-0
X-QQ-XMAILINFO: OW3qjH3bC/TA4yFb5rlcJKBvnpzs+jUmpdfAuLpo+RU6G+UhLZN/PwTD
	3bKLKQtqszY0yEJswYEOWbKXwmnNVZUeBa9WDD3Vzl7jFfoJwVlIJflAfTZTGZZyDj/1X9D
	Nh6sr7Ur7UCco10BtDGdOfkQiA3rPJoIvmmgAoq0F25SVBcIMF9PgywR73wgmmdg1qvIOo4
	wkENvKAgg+fEXUrt+AutvAmY3wvsXU37CNFlKh04b4oJhzw553e1xATggi7AUcX0RJwx0lU
	CSyKxEX5XYEop5RSHK2msaMQMonUYsoPBNBuxgoNWUP1YaC5hQqcTOewJKZ9y+xeafUTsLO
	T9oPkWjC8FzAS9FUnXnliRLUVdyzFPbWu6iHPhtfUw6+eUed6HHDsZUKKq+lnzhjL7wOk4O
	GB3ChBmQ93CdjLUiLehYJb5aqfPl5cPH3mulxXby0VypTZC/1eCQEaTLVuV/PXJHCnBZe0y
	zfXJSdj8/mFy+DFfX7zJ0UtAAWqwxcEMxZ/CLuSLE5U2itwwnjJGlFYFCYc/10MEkWOyfIc
	xQuhMT9y+Lhppv3ty1lFrsrou2JQ/X/+vdnnPl6OP/guJKLFPDXLV7hU6TgJTnShsKYD6zo
	KyjfeDdCk/iCSORZaE5E13RnT3CplumleEnl76s2jd8Sqfr9A9UanHb/QawHCPgn3yGW++C
	pGWe9kIxeUvh6Q7BEdbuzI1/ciPa0XT5ufFOEIWYJsCKWCoW5Zu8tkSQkmD43n30bHFPKty
	g2I3e4ZndgP4KygZzCUa/uCt2hDRm11ckQlVGp0miySjtl6xtJl1q0BKZzi1GG4QFVNmjlk
	kJZiWoJi8rtESeKueq3JznXZL720ZTRGoq06uw7sRmjYdRDWbsvGvurOo0dn1X4TkwJq4EX
	iYVe1qwkl1gbL9XXShHKK/JREXsr7wxRPNj7uSbUY2BXnl4pLOk0ObFtnGmKSoiC95Kp6/5
	a2oGLS5D7qb7SXfnI57kVQHUcx6w+1S4KUtDeEdNjVZMg04qoDV7BmerP7yh6lDniwbk=
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_175920_486801_B7E9826A 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
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

From ab8b1592209438a04c635d4c6c40c398230c1ba7 Mon Sep 17 00:00:00 2001
From: Qiu Xiaojin <qiuxiaojin@qs-tech.com>
Date: Wed, 6 May 2026 08:52:45 +0800
Subject: [PATCH] drm/rockchip: gem: check drm_gem_object_init() return value

rockchip_gem_alloc_object() currently ignores the return value of

drm_gem_object_init(). If initialization fails, the function can
return an incompletely initialized GEM object.

Handle the failure by freeing the allocated object and returning
ERR_PTR(ret).

Fixes: 38f993b7c59e ("drm/rockchip: Do not use DMA mapping API if attached to IOMMU domain")
Signed-off-by: Qiu Xiaojin <qiuxiaojin@qs-tech.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 09d14a072d27..ef16b1fabec3 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -286,6 +286,7 @@ static struct rockchip_gem_object *
 {
 	struct rockchip_gem_object *rk_obj;
 	struct drm_gem_object *obj;
+	int ret;
 
 	size = round_up(size, PAGE_SIZE);
 
@@ -297,7 +298,11 @@ static struct rockchip_gem_object *
 
 	obj->funcs = &rockchip_gem_object_funcs;
 
-	drm_gem_object_init(drm, obj, size);
+	ret = drm_gem_object_init(drm, obj, size);
+	if (ret) {
+		kfree(rk_obj);
+		return ERR_PTR(ret);
+	}
 
 	return rk_obj;
 }
-- 
2.34.1








--------------



Qiu Xiaojin


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84929107528A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 09:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7Q7KlimRKQtHq6njoYcp6irASUK7DIntCuMMl+kRC8=; b=NaPm9QcPMSZ6SP
	hlFu4S+LYNhqEjFljUoMgLMYSONjmBkJIU0Q2zJxhGiQu3/prJjbCRlaGOXqXs+dI/Fe5Oq33Bp2M
	PWWV2TDimjUX4nXnXMUa7TivgVnSmdv4tO5AxF0eGGu2/mJL2vsuNDpEyeNWpynA9Pr4GVexlyx0y
	u4+8/uIjv1ZJmoDZ9hC9kQNVHAonTs4O7lrMhwNBczoRb1vXl0/jEfw23OdqDUqaPpKu4onM8Tz/2
	rvmarxf3jqa2o7JWeyxlhMGwv/qzv+oPxWYGaV67+AEZDKOPqI8HigUgMEp59isHYlhnn6Obi6wY9
	xCO11YJ8zDoWMVEwlmPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3A01-0000000AMJb-0ZPX;
	Thu, 19 Mar 2026 09:49:05 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w39zx-0000000AMG6-2G6Y
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 09:49:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=W0LikUcRQnqBOEV8Is9VRwWVuamqD0tZbt4oWdTOSkA=; b=T
	HIR7VjgOhYqyYj79tuFc/LQ6SCUr+yG3mcXyPzJbmHxK+qgVX0yeFk2uarMi83xr
	HnjA1pSpG9bsg/1ASFukLjAPDPlDUwpE5wd4g/isGl8SVpVRpYr9kXX6ImiQdUGg
	RP+ZqbNVQzUNTznuVK0n0IFXKtSShVcPSYzRgxr2Wo=
Received: from andyshrk$163.com ( [121.15.173.1] ) by
 ajax-webmail-wmsvr-40-127 (Coremail) ; Thu, 19 Mar 2026 17:48:54 +0800
 (CST)
X-Originating-IP: [121.15.173.1]
Date: Thu, 19 Mar 2026 17:48:54 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Marius Dinu" <m95d+git@psihoexpert.ro>
Cc: linux-rockchip@lists.infradead.org
Subject: Re:[PATCH] drm: rockchip: dw_dp: add missing dependency on
 bridge_connector
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20251222(83accb85) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260316084653.1559-1-m95d+git@psihoexpert.ro>
References: <20260316084653.1559-1-m95d+git@psihoexpert.ro>
X-CM-CTRLMSGS: NBzeeXBsdXM9MTc3MzkxMzczMzM1NV9hZWQ1MWU2MTQ4NDkwNzg2MjZkYTE2Y
 WI0YWEyZmEzZg==
X-NTES-SC: AL_Qu2cAfWavE8o4iCeZukfmUgWjuw/WsG1v/Ul1YBSP556jA/p+y4Yc0F9PHTG/86KEB2dvwSFXhVUw+lkf4hAfKAWiznf4/fuCs1d914TH8iQlQ==
MIME-Version: 1.0
Message-ID: <46dde1cc.8a7e.19d057f7bb7.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: fygvCgB3+T2Gxrtpu818AA--.2490W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7gYcemm7xoYPAgAA3R
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_024902_027583_9309F007 
X-CRM114-Status: UNSURE (   5.12  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkhlbGxvIE1hcml1c++8jAoKQXQgMjAyNi0wMy0xNiAxNjo0Njo1MywgIk1hcml1cyBEaW51IiA8
bTk1ZCtnaXRAcHNpaG9leHBlcnQucm8+IHdyb3RlOgo+QXZvaWRzIHRoaXMgZXJyb3I6Cj4gIGxk
OiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfZHAtcm9ja2NoaXAubzogaW4gZnVuY3Rpb24g
YGR3X2RwX3JvY2tjaGlwX2JpbmQnOgo+ICAvdXNyL3NyYy9saW51eC9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvZHdfZHAtcm9ja2NoaXAuYzoxMDg6KC50ZXh0KzB4MTg4KTogdW5kZWZpbmVkIHJl
ZmVyZW5jZSB0byBgZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdCcKPgo+U2lnbmVkLW9mZi1ieTog
TWFyaXVzIERpbnUgPG05NWQrZ2l0QHBzaWhvZXhwZXJ0LnJvPgo+LS0tCj4gZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL0tjb25maWcgfCAxICsKPiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPmluZGV4IDE0NzliOGM0ZWQ0MC4uNzQ5YTRi
ODZjODkzIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj5AQCAtMTMsNiArMTMsNyBAQCBj
b25maWcgRFJNX1JPQ0tDSElQCj4gCXNlbGVjdCBEUk1fQU5BTE9HSVhfRFAgaWYgUk9DS0NISVBf
QU5BTE9HSVhfRFAKPiAJc2VsZWN0IERSTV9ESVNQTEFZX0RQX0FVWF9CVVMgaWYgUk9DS0NISVBf
QU5BTE9HSVhfRFAKPiAJc2VsZWN0IERSTV9EV19EUCBpZiBST0NLQ0hJUF9EV19EUAo+KwlzZWxl
Y3QgRFJNX0JSSURHRV9DT05ORUNUT1IgaWYgUk9DS0NISVBfRFdfRFAKCgoKSSBzdWdnZXN0IHB1
dCB0aGlzIGluIGNvbmZpZyBST0NLQ0hJUF9EV19EUCwgIGtlZXAgdGhlIHNhbWUgc3R5bGUgd2l0
aCBST0NLQ0hJUF9EV19IRE1JX1FQIC9ST0NLQ0hJUF9DRE5fRFAvUk9DS0NISVBfUkdCCgoKPiAJ
c2VsZWN0IERSTV9EV19IRE1JIGlmIFJPQ0tDSElQX0RXX0hETUkKPiAJc2VsZWN0IERSTV9EV19I
RE1JX1FQIGlmIFJPQ0tDSElQX0RXX0hETUlfUVAKPiAJc2VsZWN0IERSTV9EV19NSVBJX0RTSSBp
ZiBST0NLQ0hJUF9EV19NSVBJX0RTSQo+LS0gCj4yLjUyLjAKPgo+Cj4KPl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj5MaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKPkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

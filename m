Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1151AC3ABB2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 09:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apF/stCvnC9jqHPkODjnpfEwQQ7704PlbTTbH7ciPF4=; b=P4x6WIqUa4axkR
	uJuZhp+EvEC17glAbd/Py2uP+wJLiYk1EWojVO3QZPjpOsN+e7cKzWNpInzbL6+//iibNEOafJnIn
	X+LL9L1MYldgXKHr8LlQvJ5ThmzBqljS5ZBZLiLPyPkQCIRGZKDu05ixh05VDBCGYXowG9neT5Kid
	3GUJvkb3Adq0nPNsyVGPJWziHzU7TeOBGY+cMHSQMw9/2feYBmKbIomanSryXljCLs54e46Uj+REX
	9T0UshsYMTJo5rTbyx7HwVvm90vmx4k4/tPAuxb3vA0F+gySO8JdJweUjDTuFX94ZrFUJqKwTvDyO
	XrR9nAdKR6zhemkCmEww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq8Jk-00000003cH0-3qcY;
	Mon, 16 Sep 2024 09:46:48 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq8Ic-00000003byW-1wqW;
	Mon, 16 Sep 2024 09:45:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=4yrTVGgIy8ST+hf/b9VptZkzz6CVN2HRxPnjWXf8szk=; b=I
	LGixXNOnXrB2EpN6VeQmeGc0D2LktLGIlPpcho0GRaVdesWzd6jOd6TJC3EY1k1r
	Hbj3Gmk/ghkkY6VZXktwzY91FAVp512FsrLDeYg6xaytOTmdLUKwpPL+88U3C3nb
	FROqoIDnuIj17la+odVaWE860fVCaPdtJHLEdQORjI=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-132 (Coremail) ; Mon, 16 Sep 2024 17:44:37 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Mon, 16 Sep 2024 17:44:37 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Andrew Kreimer" <algonell@gmail.com>
Cc: "Sandy Huang" <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	"Andy Yan" <andy.yan@rock-chips.com>, 
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, 
	"Maxime Ripard" <mripard@kernel.org>, 
	"Thomas Zimmermann" <tzimmermann@suse.de>, 
	"David Airlie" <airlied@gmail.com>, 
	"Simona Vetter" <simona@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel-janitors@vger.kernel.org, 
	"Matthew Wilcox" <willy@infradead.org>
Subject: Re:[PATCH] drm/rockchip: Fix a typo
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20240915123943.105118-1-algonell@gmail.com>
References: <20240915123943.105118-1-algonell@gmail.com>
X-NTES-SC: AL_Qu2ZBPictkAs4SmebOkXn0kXhec2W8Czvvgg34JRP5k0myXQ+AYEbXByEX7m/uioBASPvxeqVAdHxud8X7RnUJjQG8iUxgAelyfrXp/vh0iD
MIME-Version: 1.0
Message-ID: <3516596d.2131.191fa38475a.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wDn7_QG_udmDhYPAA--.10499W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqRdcXmVOC6kEnAACsv
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_024538_908235_D76260AB 
X-CRM114-Status: UNSURE (   5.76  )
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

Ckhp77yMCgpBdCAyMDI0LTA5LTE1IDIwOjM5OjQzLCAiQW5kcmV3IEtyZWltZXIiIDxhbGdvbmVs
bEBnbWFpbC5jb20+IHdyb3RlOgo+Rml4IGEgdHlwbyBpbiBjb21tZW50cy4KPgo+UmVwb3J0ZWQt
Ynk6IE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZyYWRlYWQub3JnPgo+U2lnbmVkLW9mZi1ieTog
QW5kcmV3IEtyZWltZXIgPGFsZ29uZWxsQGdtYWlsLmNvbT4KCkFja2VkLWJ5OiAgQW5keSBZYW48
YW5keXNocmtAMTYzLmNvbT4KClRoYW5rcy4KCgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2Nkbi1kcC1yZWcuaCB8IDIgKy0KPiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9j
ZG4tZHAtcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLXJlZy5oCj5pbmRl
eCA0NDEyNDhiN2E3OWUuLmM3NzgwYWUzMjcyYSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9jZG4tZHAtcmVnLmgKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9j
ZG4tZHAtcmVnLmgKPkBAIC03Nyw3ICs3Nyw3IEBACj4gI2RlZmluZSBTT1VSQ0VfUElGX1BLVF9B
TExPQ19XUl9FTgkweDMwODMwCj4gI2RlZmluZSBTT1VSQ0VfUElGX1NXX1JFU0VUCQkweDMwODM0
Cj4gCj4tLyogYmVsbG93IHJlZ2lzdGVycyBuZWVkIGFjY2VzcyBieSBtYWlsYm94ICovCj4rLyog
YmVsb3cgcmVnaXN0ZXJzIG5lZWQgYWNjZXNzIGJ5IG1haWxib3ggKi8KPiAvKiBzb3VyY2UgY2Fy
IGFkZHIgKi8KPiAjZGVmaW5lIFNPVVJDRV9IRFRYX0NBUgkJCTB4MDkwMAo+ICNkZWZpbmUgU09V
UkNFX0RQVFhfQ0FSCQkJMHgwOTA0Cj4tLSAKPjIuMzkuNQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

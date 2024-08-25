Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C3E5C5321E
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Aug 2024 05:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9GO3U6vXUUni9g+KxFQNKmKIkCvoGwlrm6wVto+vo0w=; b=UsxiXf+aw2hleO2a+/eBMdGoFI
	MUjg42SVfW/Yw9a+PTcF+LlfVK8blzmflFiOtAIqOVuWjXRgr/dFgHM9VQfR/xj3S7w5iKeGid4XH
	nf1cCzLC+Q8REEg0WrOPCIiKAg1VruRNqfe5CCMXzaor1Mc1R0Zq1l6faOWl/FJk+8mkVHnOSmdU+
	+rpi69p8BZiPf9Y4E04mCqKgiQgNex8u8gP2VO2P3ExHYKNyDi2TADz7X2TaPYgyruPywFRpog6N+
	uEefGVVkEbK/AuTDGfatHzXftGEBX55sHwwvzJHn/AqWz1wjpIYLas9KV2VTrBAhrX0T3uqasipVM
	+bLRS+qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1si5d5-00000003dv2-0pbb;
	Sun, 25 Aug 2024 05:17:31 +0000
Received: from smtp-78.smtpout.orange.fr ([80.12.242.78] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1si5cG-00000003dag-3BV6;
	Sun, 25 Aug 2024 05:16:43 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id i5c3sfnbnQaX2i5c3sLa2L; Sun, 25 Aug 2024 07:16:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1724562996;
	bh=etav4+/0d2M+KsLJwpfXRerYAOxWEVkaPUajKyxnERA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To;
	b=tI7fZsIR0lGDL5Pu+kP2C5UybE/oSXFDDtlpXC4+Ou/dEZJehmNg3cSPp0fbMf+kJ
	 /nl2i/cUQLxosXcliwSxw3wuWv1gSX3eMn5fwpSpJEvvgwh25wLN7dCi9tYfPRfsmc
	 BnTbo2u/NXT/bYI62v1S8aCAA6tXBDJGWee+849U9n/xNfCZyds4E7ajW15ItIv5tZ
	 u/Jr34DFxZb30t2kiYsdiIfD28l9kULLWpDdtBkNwMMGKigaobpkuSaKzNBaxGRi/c
	 o9HO204ux7k3oFB9h4pPS7qTj+KxSnKqvBWFbmxZzuOowXc2IQn7gJU01z3jUuGA3j
	 3dX0K6x9UEmLw==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 25 Aug 2024 07:16:36 +0200
X-ME-IP: 90.11.132.44
Message-ID: <6d4ec950-878f-499c-a808-dd5b31c2ddb6@wanadoo.fr>
Date: Sun, 25 Aug 2024 07:16:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH -next 2/5] drm/mediatek: Fix missing of_node_put() for
 mtk_drm_get_all_drm_priv()
From: Marion & Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Jinjie Ruan <ruanjinjie@huawei.com>, hjc@rock-chips.com, heiko@sntech.de,
 andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzk@kernel.org, jic23@kernel.org
References: <20240823092053.3170445-1-ruanjinjie@huawei.com>
 <20240823092053.3170445-3-ruanjinjie@huawei.com>
 <a4d23c3a-9791-4d2b-9853-9c9b27460db5@wanadoo.fr>
Content-Language: en-US, fr-FR
In-Reply-To: <a4d23c3a-9791-4d2b-9853-9c9b27460db5@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_221641_485811_63CF1406 
X-CRM114-Status: GOOD (  11.69  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpMZSAyMy8wOC8yMDI0IMOgIDEyOjQ2LCBDaHJpc3RvcGhlIEpBSUxMRVQgYSDDqWNyaXTCoDoK
Pj4gQEAgLTkzMywxMCArOTMxLDggQEAgc3RhdGljIGludCBtdGtfZHJtX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgCj4+ICpwZGV2KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0ID0gbXRrX2RkcF9jb21wX2luaXQobm9kZSwgJnByaXZhdGUtPmRk
cF9jb21wW2NvbXBfaWRdLCAKPj4gY29tcF9pZCk7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAocmV0
KSB7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9mX25vZGVfcHV0KG5vZGUpOwo+PiArwqDC
oMKgwqDCoMKgwqAgaWYgKHJldCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBl
cnJfbm9kZTsKPiAKPiBIaSwKPiAKPiBJJ3ZlIHNlZW4gb24gYW5vdGhlciB0aHJlYWQgdGhhdCBp
cyB3YXMgbm90IHN1cmUgdGhhdCBzY29wZWQgdmVyc2lvbnMgCj4gYW5kIGdvdG9zIHBsYXllZCB3
ZWxsIHRvZ2V0aGVyLgo+IAo+IEl0IHdhcyBhc2tlZCB0byBjaGVjayBtb3JlIGluIGRldGFpbHMg
YW5kIGNvbmZpcm0gdGhhdCBpdCB3YXMgc2FmZSAKPiBiZWZvcmUgYXBwbHlpbmcgdGhlIHBhdGNo
Lgo+IAo+IEkndmUgbm90IGZvbGxvd2VkIHRoZSBkaXNjdXNzaW9uLCBzbyBJIGp1c3QgcG9pbnQg
aXQgb3V0LCBpbiBjYXNlIGl0IGhlbHBzLgo+IAo+IEknbGwgdHJ5IHRvIGdpdmUgaXQgYSBsb29r
IGluIHRoZSBjb21pbmcgZGF5cy4KPiAKPiAKPiBDSgo+IAoKSGksCmxvb2tpbmcgYXQgdGhlIGdl
bmVyYXRlZCBhc20gZmlsZSAoZ2NjIDE0LjIuMSksIGV2ZXJ5dGhpbmcgbG9va3MgZmluZS4KCiMg
ZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmM6OTMzOiAJCXJldCA9IAptdGtf
ZGRwX2NvbXBfaW5pdChub2RlLCAmcHJpdmF0ZS0+ZGRwX2NvbXBbY29tcF9pZF0sIGNvbXBfaWQp
OwoJc2FscQkkNSwgJXJheAkjLCBfMzYKCW1vdmwJJXIxNGQsICVlZHgJIyBjb21wX2lkLAoJbW92
cQklcmJ4LCAlcmRpCSMgbm9kZSwKCWxlYXEJNTUyKCVyYnAsJXJheCksICVyc2kJIywgXzI4Cglj
YWxsCW10a19kZHBfY29tcF9pbml0CSMKCW1vdmwJJWVheCwgJXIxMmQJIyB0bXAyMDUsIDxyZXR2
YWw+CiMgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmM6OTM0OiAJCWlmIChy
ZXQpCgl0ZXN0bAklZWF4LCAlZWF4CSMgPHJldHZhbD4KCWpuZQkuTDIxMgkjLAoKLi4uCgouTDIx
MjoKIyAuL2luY2x1ZGUvbGludXgvb2YuaDoxMzg6IERFRklORV9GUkVFKGRldmljZV9ub2RlLCBz
dHJ1Y3QgZGV2aWNlX25vZGUgCiosIGlmIChfVCkgb2Zfbm9kZV9wdXQoX1QpKQoJbW92cQklcmJ4
LCAlcmRpCSMgbm9kZSwKCWNhbGwJb2Zfbm9kZV9wdXQJIwoJam1wCS5MMTcxCSMKCkNKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

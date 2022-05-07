Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0A32C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 May 2022 06:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATMu5Y/gMMwpNOSQaRVnk7qPVVcK2gX31k/+j2xS9Ko=; b=eC8JJhSJ6hbnxd
	hddjUKmnL/9MTsf8jmTaF4GzzyZu1qG5I7xSztweulDyfbcrXLCecbdfi9VmvYZAMUKCoUy6s3T+Y
	pi/3NB2DVmcVyMxWEVpy/g9u3K/fC8z6jzGIVdfplz12wWUzLRHWbaqHykYiunJkIPHJAUmXBjcJH
	vPTZXH993Q5FSJQvggV0Ne2tGvI8/x3qodbx+ZH5HqywZbYXvB2YxcQfUwQ3R74ANw6RPZ6nymX8D
	8nrvzVhMIJXhBAcs6SsbgdWD1RZv955nRI1OqMdmrosYPR3ZhOte/Y26MYSO7HgGq299viaOQrwvh
	gohkJ5PglvPpKWs1ZLdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnE6Q-006Eze-Qb; Sat, 07 May 2022 06:39:42 +0000
Received: from mail-m17669.qiye.163.com ([59.111.176.69])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnE6F-006EwO-KG; Sat, 07 May 2022 06:39:33 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m17669.qiye.163.com (Hmail) with ESMTPA id 363254600F5;
 Sat,  7 May 2022 14:39:26 +0800 (CST)
Message-ID: <45058759-13dd-aa43-ac88-2a7c60baa22b@rock-chips.com>
Date: Sat, 7 May 2022 14:39:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH -next] drm/rockchip: Fix Kconfig dependencies
Content-Language: en-US
To: Ren Zhijie <renzhijie2@huawei.com>, hjc@rock-chips.com, heiko@sntech.de,
 airlied@linux.ie, daniel@ffwll.ch, lyude@redhat.com, tzimmermann@suse.de
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220507010039.117310-1-renzhijie2@huawei.com>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220507010039.117310-1-renzhijie2@huawei.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRlKQklWS0NLHRlCQk
 4eHkoYVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nk06Izo6LD0rDA1PPzEtPgkU
 LCwwCT5VSlVKTU5KQktOTk1NQ0pKVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSE5PSjcG
X-HM-Tid: 0a809d3e971dda59kuws363254600f5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_233931_886954_2AE782D9 
X-CRM114-Status: GOOD (  17.02  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgWmhpamllOgoKT24gNS83LzIyIDA5OjAwLCBSZW4gWmhpamllIHdyb3RlOgo+IElmIENPTkZJ
R19ST0NLQ0hJUF9BTkFMT0dJWF9EUCBpcyBub3Qgc2V0LCB0aGUgcm9ja2NoaXAgZHJtIGRyaXZl
cgo+IHdpbGwgZmFpbCB0byBsaW5rOgo+Cj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1k
cC1jb3JlLm86IEluIGZ1bmN0aW9uIGBjZG5fZHBfY29ubmVjdG9yX21vZGVfdmFsaWQnOgo+IGNk
bi1kcC1jb3JlLmM6KC50ZXh0KzB4MWUxKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgZHJtX2Rw
X2J3X2NvZGVfdG9fbGlua19yYXRlJwo+IGNkbi1kcC1jb3JlLmM6KC50ZXh0KzB4MWY0KTogdW5k
ZWZpbmVkIHJlZmVyZW5jZSB0byBgZHJtX2RwX2J3X2NvZGVfdG9fbGlua19yYXRlJwo+IGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5vOiBJbiBmdW5jdGlvbiBgY2RuX2RwX3Bk
X2V2ZW50X3dvcmsnOgo+IGNkbi1kcC1jb3JlLmM6KC50ZXh0KzB4MTM4ZSk6IHVuZGVmaW5lZCBy
ZWZlcmVuY2UgdG8gYGRybV9kcF9jaGFubmVsX2VxX29rJwo+IGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9jZG4tZHAtcmVnLm86IEluIGZ1bmN0aW9uIGBjZG5fZHBfdHJhaW5fbGluayc6Cj4gY2Ru
LWRwLXJlZy5jOigudGV4dCsweGQ1YSk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGRybV9kcF9i
d19jb2RlX3RvX2xpbmtfcmF0ZScKPgo+IFRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlIERQLWhlbHBl
ciBtb2R1bGUgaGFzIGJlZW4gcmVwbGFjZWQgYnkgdGhlIGRpc3BsYXktaGVscGVyIG1vZHVsZS4K
PiBTbyB0aGUgZHJpdmVyIGhhdmUgdG8gc2VsZWN0IGl0Lgo+Cj4gUmVwb3J0ZWQtYnk6IEh1bGsg
Um9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgo+IEZpeGVzOiAxZTBmNjY0MjBiMTMoImRybS9kaXNw
bGF5OiBJbnRyb2R1Y2UgYSBEUk0gZGlzcGxheS1oZWxwZXIgbW9kdWxlIikKPiBTaWduZWQtb2Zm
LWJ5OiBSZW4gWmhpamllIDxyZW56aGlqaWUyQGh1YXdlaS5jb20+Cj4gLS0tCj4gICBkcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyB8IDIgKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2Nv
bmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj4gaW5kZXggNWFmYWI0OWRj
NGYyLi5lYjlmZmE5ZTM1N2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L0tjb25maWcKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+IEBAIC00
Nyw2ICs0Nyw4IEBAIGNvbmZpZyBST0NLQ0hJUF9BTkFMT0dJWF9EUAo+ICAgY29uZmlnIFJPQ0tD
SElQX0NETl9EUAo+ICAgCWJvb2wgIlJvY2tjaGlwIGNkbiBEUCIKPiAgIAlkZXBlbmRzIG9uIEVY
VENPTj15IHx8IChFWFRDT049bSAmJiBEUk1fUk9DS0NISVA9bSkKPiArCXNlbGVjdCBEUk1fRElT
UExBWV9IRUxQRVIKPiArCXNlbGVjdCBEUk1fRElTUExBWV9EUF9IRUxQRVIKCgpUaGVyZSBhcmUg
dHdvIGRwKEFOQUxPR0lYX0RQIGFuZCBDRE5fRFApIGF0IHJvY2tjaGlwIGRybSBtYWlubGluZSwK
CmZvciBhIHRvdGFsbHkgY2xlYW51cCBhbmQgYWxpZ25tZW50LCBJIHRoaW5rIGl0J3MgYmV0dGVy
IHRvIHJlbW92ZSAKInNlbGVjdCBEUk1fRElTUExBWV9IRUxQRVIgaWYgUk9DS0NISVBfQU5BTE9H
SVhfRFAiIHVuZGVyIERSTV9ST0NLQ0hJUMKgIAphdCB0aGUgaGVhZCwKCmFuZCBzZXBhcmF0ZWx5
IGFkZCB0aGUgc2VsZWN0IGZvciBST0NLQ0hJUF9BTkFMT0dJWF9EUCBhbmQgUk9DS0NISVBfQ0RO
X0RQLgoKPiAgIAloZWxwCj4gICAJICBUaGlzIHNlbGVjdHMgc3VwcG9ydCBmb3IgUm9ja2NoaXAg
U29DIHNwZWNpZmljIGV4dGVuc2lvbnMKPiAgIAkgIGZvciB0aGUgY2RuIERQIGRyaXZlci4gSWYg
eW91IHdhbnQgdG8gZW5hYmxlIERwIG9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

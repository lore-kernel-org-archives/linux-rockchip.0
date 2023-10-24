Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E785C07545
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 12:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sA1TLxa+91Wy1L2ywWwRw/PFDVMbGlUT8s+sNbtiNQE=; b=Fo14sd4SmkK6ly
	1JuE4AIRrqkByJHCbyc8KyKv2R9GuZBZyplCGOch2XA8eVdyeAlkBtG9/PPWuLC3oOHA4///JI6OG
	AgLu9zrxQRrvWdrPTKkngsrD8e+8UptbbU7qmpysw6I85/LsZn0w8MtSZkssLVwWm6hP/7lFFYxkf
	JCzHGJgSob4lVBeaDMwEuY1vL+CCd3qRtPBLS3MKvgbmLYwcj6iEw1+RfmPeNBvMhNxB3Kp80S1fP
	rxcUX3DN7IK7LLHlKs5J6uMdVOrFx/nEA2bKrAuPoPsaEKix/4DnlJUSRwg6G8gzFoFcMfEk2sGQH
	0AVnI7oqZYbO1g34sD5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvGr7-009nBm-1k;
	Tue, 24 Oct 2023 12:49:57 +0000
Received: from mail-m49201.qiye.163.com ([45.254.49.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvGr4-009nA5-01;
	Tue, 24 Oct 2023 12:49:55 +0000
DKIM-Signature: a=rsa-sha256;
	b=UHrTmeSHrqpiHdcOamHgQaAJb2h9+KyyQVQcQn0b7Mx7zc67kwERIw6q4Y2mpseJxNjoieASmXauE3B3S9w8reaBx0TJTIB0TAICu6Jwi0HcfvF5xZJnlUemBFeN9tyY64QXiqdm05KP7jmVV8btJKa/hZB4gNGCqEqQ25rQpAY=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=BeGKd1zRDgUMe8T8OLiWdtvhv6/lo9wdPYUqunmKOOM=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 954C878024B;
	Tue, 24 Oct 2023 20:41:33 +0800 (CST)
Message-ID: <107e7a80-ace1-441d-89c9-44e6465fefbd@rock-chips.com>
Date: Tue, 24 Oct 2023 20:41:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: vop: Fix color for RGB888/BGR888 format on
 VOP full
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel <kernel@collabora.com>
References: <20231023211158.424489-1-jonas@kwiboo.se>
 <a505d18044ccef9f188df91bc2afe73e6a15635f.camel@collabora.com>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <a505d18044ccef9f188df91bc2afe73e6a15635f.camel@collabora.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkMfSVZISkMZGEkeQxodTR1VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8b61b4639cb24fkuuu954c878024b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PT46Kio4CTwwVj0xGBA3IjAe
	OTpPChJVSlVKTUJDSk5KSUJPT0tKVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0NOQjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_054954_443150_DDB1939A 
X-CRM114-Status: GOOD (  21.81  )
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

SGk6CgpPbiAxMC8yNC8yMyAxNjo0OSwgQ2hyaXN0b3BoZXIgT2JiYXJkIHdyb3RlOgo+IEhpIEpv
bmFzLAo+Cj4gT24gTW9uLCAyMDIzLTEwLTIzIGF0IDIxOjExICswMDAwLCBKb25hcyBLYXJsbWFu
IHdyb3RlOgo+PiBVc2Ugb2YgRFJNX0ZPUk1BVF9SR0I4ODggYW5kIERSTV9GT1JNQVRfQkdSODg4
IG9uIGUuZy4gUkszMjg4LCBSSzMzMjgKPj4gYW5kIFJLMzM5OSByZXN1bHQgaW4gd3JvbmcgY29s
b3JzIGJlaW5nIGRpc3BsYXllZC4KPj4KPj4gVGhlIGlzc3VlIGNhbiBiZSBvYnNlcnZlZCB1c2lu
ZyBtb2RldGVzdDoKPj4KPj4gIMKgIG1vZGV0ZXN0IC1zIDxjb25uZWN0b3JfaWQ+QDxjcnRjX2lk
PjoxOTIweDEwODAtNjBAUkcyNAo+PiAgwqAgbW9kZXRlc3QgLXMgPGNvbm5lY3Rvcl9pZD5APGNy
dGNfaWQ+OjE5MjB4MTA4MC02MEBCRzI0Cj4+Cj4+IFZlbmRvciA0LjQga2VybmVsIGFwcGx5IGFu
IGludmVydGVkIHJiIHN3YXAgZm9yIHRoZXNlIGZvcm1hdHMgb24gVk9QCj4+IGZ1bGwgKG1ham9y
ID0gMykuCj4+Cj4+IEZpeCBjb2xvcnMgYnkgYXBwbHlpbmcgcmIgc3dhcCBzaW1pbGFyIHRvIHZl
bmRvciA0LjQga2VybmVsLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKb25hcyBLYXJsbWFuIDxqb25h
c0Brd2lib28uc2U+Cj4gSG93IGFib3V0IGEgZml4ZXMgdGFnPyBTZWVtcyBsaWtlIHRoaXMgd2Fz
IGludHJvZHVjZWQgaW4gY29tbWl0IDg1YTM1OWYyNTM4OAo+ICgiZHJtL3JvY2tjaGlwOiBBZGQg
QkdSIGZvcm1hdHMgdG8gVk9QIikKPgo+PiAtLS0KPj4gIMKgZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV92b3AuYyB8IDkgKysrKysrLS0tCj4+ICDCoDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4+IGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+PiBpbmRleCBiM2QwYjZhZTkyOTQuLmEx
Y2UwOWEyMmY4MyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV92b3AuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX3ZvcC5jCj4+IEBAIC0yNDcsMTQgKzI0NywxNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgdm9w
X2NmZ19kb25lKHN0cnVjdCB2b3AgKnZvcCkKPj4gIMKgCVZPUF9SRUdfU0VUKHZvcCwgY29tbW9u
LCBjZmdfZG9uZSwgMSk7Cj4+ICDCoH0KPj4gICAKPj4gLXN0YXRpYyBib29sIGhhc19yYl9zd2Fw
cGVkKHVpbnQzMl90IGZvcm1hdCkKPj4gK3N0YXRpYyBib29sIGhhc19yYl9zd2FwcGVkKHVpbnQz
Ml90IHZlcnNpb24sIHVpbnQzMl90IGZvcm1hdCkKPj4gIMKgewo+PiAgwqAJc3dpdGNoIChmb3Jt
YXQpIHsKPj4gIMKgCWNhc2UgRFJNX0ZPUk1BVF9YQkdSODg4ODoKPj4gIMKgCWNhc2UgRFJNX0ZP
Uk1BVF9BQkdSODg4ODoKPj4gLQljYXNlIERSTV9GT1JNQVRfQkdSODg4Ogo+PiAgwqAJY2FzZSBE
Uk1fRk9STUFUX0JHUjU2NToKPj4gIMKgCQlyZXR1cm4gdHJ1ZTsKPj4gKwljYXNlIERSTV9GT1JN
QVRfUkdCODg4Ogo+PiArCQlyZXR1cm4gVk9QX01BSk9SKHZlcnNpb24pID09IDM7Cj4+ICsJY2Fz
ZSBEUk1fRk9STUFUX0JHUjg4ODoKPj4gKwkJcmV0dXJuIFZPUF9NQUpPUih2ZXJzaW9uKSAhPSAz
Owo+IFRoZSBoYXJkY29kZWQgYml0cyBhcmUgcXVpdGUgc2NhcnkgYXMgaXQgYXBwbGllcyB0byBh
bGwgaGFyZHdhcmUgdmFyaWFudHMgOy0pLgo+IElzIGl0IHdvcnRoIGFkZGluZyBhbiBpbmxpbmUg
Y29tbWVudCB0byBkZXNjcmliZSB3aGF0IGlzIGdvaW5nIG9uIGFuZCBob3cgaXQKPiByZWxhdGVz
IHRvIFZPUEwgYW5kIFZPUEg/IE9yIHdvdWxkIGl0IGJlIGV2ZW4gYmV0dGVyIHRvIGFkZCB0aGlz
IGFzIGEgcXVpcmsgaW4KPiB0aGUgdmFyaW91cyB2b3BfZGF0YSBzdHJ1Y3RzPwoKCkV2ZXJ5IHZv
cCBoYXJkd2FyZSBoYXMgYSB2ZXJzaW9uKGluY2x1ZGluZyBWT1BCL1ZPUEwpLCBzbyBJIHRoaW5r
IHVzZSAKVk9QX01BSk9SIHRvIGRpc3Rpbmd1aXNoIGlzIG9rLiBPZiBjb3Vyc2UgaXQncyBiZXR0
ZXIKCnRvIGFkZCBzb21lIGNvbW1lbnRzLiBBcyBmb3IgYWRkaW5nIHNvbWUgcXVpcmsgaW4gdm9w
X2RhdGEsIEkgaGF2ZSB0aGUgCmlkZWEgb2YgYWRkaW5nIGEgdGFibGUgdG8gZGVzY3JpYmUgdGhl
IGRybSBmb3JtYXQgYW5kIGl0J3MgKHJiL3V2IHN3YXAsIAphZmJjKQoKY2FwYWJpbGl0eSwgYnV0
IEkgdGhpbmsgdGhpcyBpcyBjYW4gYmUgZG9uZSBpbiB0aGUgZnV0dXJlLgoKPgo+Cj4gQ2hlZXJz
IQo+Cj4gQ2hyaXMKPgo+PiAgwqAJZGVmYXVsdDoKPj4gIMKgCQlyZXR1cm4gZmFsc2U7Cj4+ICDC
oAl9Cj4+IEBAIC0xMDM1LDcgKzEwMzgsNyBAQCBzdGF0aWMgdm9pZCB2b3BfcGxhbmVfYXRvbWlj
X3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lCj4+ICpwbGFuZSwKPj4gIMKgCVZPUF9XSU5fU0VUKHZv
cCwgd2luLCBkc3BfaW5mbywgZHNwX2luZm8pOwo+PiAgwqAJVk9QX1dJTl9TRVQodm9wLCB3aW4s
IGRzcF9zdCwgZHNwX3N0KTsKPj4gICAKPj4gLQlyYl9zd2FwID0gaGFzX3JiX3N3YXBwZWQoZmIt
PmZvcm1hdC0+Zm9ybWF0KTsKPj4gKwlyYl9zd2FwID0gaGFzX3JiX3N3YXBwZWQodm9wLT5kYXRh
LT52ZXJzaW9uLCBmYi0+Zm9ybWF0LT5mb3JtYXQpOwo+PiAgwqAJVk9QX1dJTl9TRVQodm9wLCB3
aW4sIHJiX3N3YXAsIHJiX3N3YXApOwo+PiAgIAo+PiAgwqAJLyoKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AF1EC83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 08:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLfnBhxNgifvDeRsyn+8PwxhRkSF3Hkq7r0OkBnUckY=; b=3BdwYq43InVF9x
	KZlxcV3x3rAJ0KjDSqmTxKq+hYVBAniritVdKClwf4lbUKFdepIh4kZd3o3qQSB0nyhnAMFS0ziym
	y35XOvXW9xVGyBryslPjVMmqSBiHennkKUSbNyHF73iiiQNoW9rH6qm6cWzDaxRCYyJr4iT6Cy4T9
	fLejt2nLqvSdUNCOOzFHZmq8UyH/q5myWNbi2I/B1Ho3aU0FM7U4+Tb5FDYxEUHkhvovmz3RG6ktM
	Rkk1k/LS5LdtBLFjugjMwuH2JXnDTrkq8+DGswTLED/FluiBNdV6tNrfJywHIBB8Pf5h9JGl0B7Dd
	tkUUqEZx8dTzxrMJOgJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua9HB-0000000EBBC-1NjC;
	Fri, 11 Jul 2025 08:38:37 +0000
Received: from mail-m49214.qiye.163.com ([45.254.49.214])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua8WU-0000000E29B-46Qw;
	Fri, 11 Jul 2025 07:50:24 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1baf32046;
	Fri, 11 Jul 2025 15:50:18 +0800 (GMT+08:00)
Message-ID: <84b8fe6e-0d33-42a9-9f8f-ed10998429e8@rock-chips.com>
Date: Fri, 11 Jul 2025 15:50:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/12] drm/bridge: analogix_dp: Apply
 drm_bridge_connector helper
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 jingoohan1@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 hjc@rock-chips.com, andy.yan@rock-chips.com,
 dmitry.baryshkov@oss.qualcomm.com, l.stach@pengutronix.de,
 dianders@chromium.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20250709070139.3130635-1-damon.ding@rock-chips.com>
 <20250709070139.3130635-13-damon.ding@rock-chips.com>
 <6140569.FjKLVJYuhi@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <6140569.FjKLVJYuhi@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUIeS1YYSUJKSUpMQkgfTxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a97f876b52003a3kunm13db4e75f3c74a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PxA6GCo*KjE2Lx8SUSk5EgEj
	C08wCj5VSlVKTE5JSUlLSUlLTEJNVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPT0lMNwY+
DKIM-Signature: a=rsa-sha256;
	b=f3ABdV+J9ZF4Xh4dDg/WOg07CApS5rihUgUFAvDfOc0Q3Sk0KKlc5dUnKK0B8PkH67LddM3XLMInqreiNp6Iq4k45NkImv8eCKuNN/9Qarq/wNQ452zop5AwY0dB2gNx8FzkKokv0WlZypir9qZ2d0Pl+UxU4dsxr9HRKS+eZqs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ugJYj+exyps/6wR5MX4czRxtXgkmuqVMFOJv2QPxESU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_005023_210870_B76748FE 
X-CRM114-Status: GOOD (  16.44  )
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

SGkgSGVpa28sCgpPbiAyMDI1LzcvMTAgNDoxMSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0g
TWl0dHdvY2gsIDkuIEp1bGkgMjAyNSwgMDk6MDE6MzkgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1l
cnplaXQgc2NocmllYiBEYW1vbiBEaW5nOgo+PiBBcHBseSBkcm1fYnJpZGdlX2Nvbm5lY3RvciBo
ZWxwZXIgZm9yIEFuYWxvZ2l4IERQIGRyaXZlci4KPj4KPj4gVGhlIGZvbGxvd2luZyBjaGFuZ2Vz
IGhhdmUgYmVlbiBtYWRlOgo+PiAtIFJlbW92ZSAmYW5hbG9naXhfZHBfZGV2aWNlLmNvbm5lY3Rv
ciBhbmQgY2hhbmdlCj4+ICAgICZhbmFsb2dpeF9kcF9kZXZpY2UuYnJpZGdlIGZyb20gYSBwb2lu
dGVyIHRvIGFuIGluc3RhbmNlLgo+PiAtIEFwcGx5IGRldm1fZHJtX2JyaWRnZV9hbGxvYygpIHRv
IGFsbG9jYXRlICZhbmFsb2dpeF9kcF9kZXZpY2UgdGhhdAo+PiAgICBjb250YWlucyAmZHJtX2Jy
aWRnZS4KPj4gLSBBcHBseSBkcm1fYnJpZGdlX2Nvbm5lY3RvciBoZWxwZXIgdG8gZ2V0IHJpZCBv
ZiAmZHJtX2Nvbm5lY3Rvcl9mdW5jcwo+PiAgICBhbmQgJmRybV9jb25uZWN0b3JfaGVscGVyX2Z1
bmNzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hp
cHMuY29tPgo+Pgo+PiAtLS0tLS0KPj4KPj4gQ2hhbmdlcyBpbiB2MjoKPj4gLSBGb3IgJmRybV9i
cmlkZ2Uub3BzLCByZW1vdmUgRFJNX0JSSURHRV9PUF9IUEQgYW5kIGFkZAo+PiAgICBEUk1fQlJJ
REdFX09QX0VESUQuCj4+IC0gQWRkIGFuYWxvZ2l4X2RwX2JyaWRnZV9lZGlkX3JlYWQoKS4KPj4g
LSBNb3ZlICZhbmFsb2dpeF9kcF9wbGF0X2RhdGEuc2tpcF9jb25uZWN0b3IgZGVsZXRpb24gdG8g
dGhlIHByZXZpb3VzCj4+ICAgIHBhdGNoZXMuCj4+IC0tLQo+PiAgIC4uLi9kcm0vYnJpZGdlL2Fu
YWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYyAgICB8IDE2OSArKysrKysrKy0tLS0tLS0tLS0KPj4g
ICAuLi4vZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmggICAgfCAgIDQgKy0K
Pj4gICAyIGZpbGVzIGNoYW5nZWQsIDgwIGluc2VydGlvbnMoKyksIDkzIGRlbGV0aW9ucygtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dp
eF9kcF9jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2Rw
X2NvcmUuYwo+PiBpbmRleCBhYmM2NGNjMTdlNGMuLmZiNTEwZTU1ZWYwNiAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMK
Pj4gQEAgLTIzLDYgKzIzLDcgQEAKPj4gICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWMuaD4KPj4g
ICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+Cj4+ICAgI2luY2x1ZGUgPGRybS9k
cm1fYnJpZGdlLmg+Cj4+ICsjaW5jbHVkZSA8ZHJtL2RybV9icmlkZ2VfY29ubmVjdG9yLmg+Cj4+
ICAgI2luY2x1ZGUgPGRybS9kcm1fY3J0Yy5oPgo+PiAgICNpbmNsdWRlIDxkcm0vZHJtX2Rldmlj
ZS5oPgo+PiAgICNpbmNsdWRlIDxkcm0vZHJtX2VkaWQuaD4KPj4gQEAgLTk0OCwyMyArOTQ5LDEz
IEBAIHN0YXRpYyBpbnQgYW5hbG9naXhfZHBfZGlzYWJsZV9wc3Ioc3RydWN0IGFuYWxvZ2l4X2Rw
X2RldmljZSAqZHApCj4+ICAgCXJldHVybiBhbmFsb2dpeF9kcF9zZW5kX3Bzcl9zcGQoZHAsICZw
c3JfdnNjLCB0cnVlKTsKPj4gICB9Cj4+ICAgCj4+IC1zdGF0aWMgaW50IGFuYWxvZ2l4X2RwX2dl
dF9tb2RlcyhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+PiArc3RhdGljIGludCBh
bmFsb2dpeF9kcF9icmlkZ2VfZ2V0X21vZGVzKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UsIHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCj4+ICAgewo+PiAtCXN0cnVjdCBhbmFsb2dp
eF9kcF9kZXZpY2UgKmRwID0gdG9fZHAoY29ubmVjdG9yKTsKPj4gLQljb25zdCBzdHJ1Y3QgZHJt
X2VkaWQgKmRybV9lZGlkOwo+PiArCXN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwID0gdG9f
ZHAoYnJpZGdlKTsKPj4gICAJaW50IG51bV9tb2RlcyA9IDA7Cj4+ICAgCj4+ICAgCWlmIChkcC0+
cGxhdF9kYXRhLT5wYW5lbCkgewo+PiAgIAkJbnVtX21vZGVzICs9IGRybV9wYW5lbF9nZXRfbW9k
ZXMoZHAtPnBsYXRfZGF0YS0+cGFuZWwsIGNvbm5lY3Rvcik7Cj4gCj4gaGVyZSBpcyBvbmUgZXhh
bXBsZSB3aGVyZSBhIHBhbmVsX2JyaWRnZSB3b3VsZCBoZWxwIDotKQo+IAo+IEkuZS4gSSdkIHRo
aW5rIHdpdGhvdXQgaXQgdGhlIGNvZGUgd291bGQgbmVlZCBzb21lIHNvcnQgb2YKPiAKPiAgICAJ
aWYgKGRwLT5wbGF0X2RhdGEtPmJyaWRnZSkgewo+ICAgIAkJbnVtX21vZGVzICs9IGRybV9icmlk
Z2VfZ2V0X21vZGVzKGRwLT5wbGF0X2RhdGEtPmJyaWRnZSwgY29ubmVjdG9yKTsKPiAKPiB0aGlu
Zz8KPiAKCk9oLCB0aGUgaGFuZGxpbmcgb2YgYnJpZGdlIGhlcmUgaXMgaW5kZWVkIG5vdCB3ZWxs
IHRob3VnaHQgb3V0LiBJIHdpbGwgCmltcGxlbWVudCB0aGUgcGFuZWwtYnJpZGdlIGluIHRoZSBu
ZXh0IHZlcnNpb24uCgo+PiAtCX0gZWxzZSB7Cj4+IC0JCWRybV9lZGlkID0gZHJtX2VkaWRfcmVh
ZF9kZGMoY29ubmVjdG9yLCAmZHAtPmF1eC5kZGMpOwo+PiAtCj4+IC0JCWRybV9lZGlkX2Nvbm5l
Y3Rvcl91cGRhdGUoJmRwLT5jb25uZWN0b3IsIGRybV9lZGlkKTsKPj4gLQo+PiAtCQlpZiAoZHJt
X2VkaWQpIHsKPj4gLQkJCW51bV9tb2RlcyArPSBkcm1fZWRpZF9jb25uZWN0b3JfYWRkX21vZGVz
KCZkcC0+Y29ubmVjdG9yKTsKPj4gLQkJCWRybV9lZGlkX2ZyZWUoZHJtX2VkaWQpOwo+PiAtCQl9
Cj4+ICAgCX0KPj4gICAKPj4gICAJaWYgKGRwLT5wbGF0X2RhdGEtPmdldF9tb2RlcykKPiAKCkJl
c3QgcmVnYXJkcywKRGFtb24KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

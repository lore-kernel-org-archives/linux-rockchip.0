Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B78AC624D4
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 06:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLNVSgb8Akgws/+PSyW5G1QIQqqllZJ668HM+gmqOI4=; b=s/v/Cf9PWNi6bt
	ySaMo+6TwcQd8x5ImR6a+3sL2i9MXJz+7AGippWUrgcbZQn6+NjTJLAL35d6NAQZ9ssI9CLvQ3ygW
	shQJqQcMhWzffKvDa9UOaBOurr0Vp0CrSNLDK6I1eGcZXqmXnBLBd72liH4ROFiwZw+EUtPqiPAk2
	W7FWx1WRccJjTHumHK4P+iUuyOfq0TcseDGjlcjQywaKx9KXSNHNKhxePRC5ebDB32tC2VD2eLoGS
	JrtosLDD8v7fnSyDrTiWTHT6SG0YS7+7owdLwJl8WEZzbxtOFQQENdY3o5+jcY/xuM78MNBPllsIW
	JZuPKbcTjlJXNIIroxrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21J8-0000000GW24-0RA1;
	Thu, 03 Sep 2026 06:52:22 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21J6-0000000GW1d-06dU;
	Thu, 03 Sep 2026 06:52:21 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1788418335; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=jsJ+Pyd3DOlCYfziQiXASa0bVgkf3eHlIFTKBl8Sn8vob00+saKgglEDEfsBacT0kfbJn8/byZdUfs1uWMpi4UaAHCV8G/w5VlcyWeCY30LQIji8bnLn34dLFwdQOZiccFbAuDmCq/1VGFCHEUlq8OrHmuMz1QQBZifbUQLAiw4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1788418335; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=dKftuYppPOmGQX9OKW8UIKFo5kG4eD0AIf8jGCWgFcw=; 
	b=XLew3CUkwHm42PhjE1qIbZJOYQLMCoXL0LD3lUo2Jf8jkRNADr2oIZqnc7MAHr42txbM+AjsFVTRHIYm+e7jI0rZA29kXSTQZWYmWYhYeLmiBooLWpi/Xi8fp6blROhtJpmnsgJ582PwRQCBoBALcTAqQ2QUVmBChzjL8BkbKgo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1788418335;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=dKftuYppPOmGQX9OKW8UIKFo5kG4eD0AIf8jGCWgFcw=;
	b=fD5LuFllDF3xJC3IiT+LFE+gm1oV63JomWNcoV9EaHDSJ+l3gLhHA8p9XGaIO60G
	OyNUVtakkKyP3KGqXUEOkbRvNhs/lI3fVdGdlKra8LhRK7vYxU3xWg7PdyWWh7t3BtD
	Xh+0Lp6lDHMMvM2CMXSzEIdZAptK7TA/9tjLbkII=
Received: by mx.zohomail.com with SMTPS id 1788418334779674.9966100435952;
	Wed, 2 Sep 2026 23:52:14 -0700 (PDT)
Message-ID: <805fa7a9-bd32-4364-a228-5ff17f22ae56@collabora.com>
Date: Thu, 3 Sep 2026 08:52:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/9] media: verisilicon: rockchip: guard VPU981 AV1
 divisor and tile buffer
To: Michael Bommarito <michael.bommarito@gmail.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Yunfei Dong <yunfei.dong@mediatek.com>, Jonas Karlman <jonas@kwiboo.se>,
 Heiko Stuebner <heiko@sntech.de>, Kees Cook <kees@kernel.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
 <20260617021906.2746743-7-michael.bommarito@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260617021906.2746743-7-michael.bommarito@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_235220_089504_4C57E535 
X-CRM114-Status: GOOD (  20.86  )
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

CkxlIDE3LzA2LzIwMjYgw6AgMDQ6MTksIE1pY2hhZWwgQm9tbWFyaXRvIGEgw6ljcml0wqA6Cj4g
cm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfc2V0X3RpbGVfaW5mbygpIGRpdmlkZXMgY29udGV4dF91
cGRhdGVfdGlsZV9pZCBieQo+IHRpbGVfaW5mby0+dGlsZV9jb2xzIGFuZCB3cml0ZXMgb25lIGRl
c2NyaXB0b3IgcGVyIHRpbGUgaW50byB0aGUgdGlsZV9pbmZvCj4gRE1BIGJ1ZmZlciwgd2hpY2gg
aG9sZHMgQVYxX01BWF9USUxFUyBlbnRyaWVzOyB0aWxlX2NvbHMgYW5kIHRpbGVfcm93cwo+IGNv
bWUgZnJvbSB0aGUgYml0c3RyZWFtLiBHdWFyZCB0aGUgZGl2aXNpb24gYWdhaW5zdCBhIHplcm8g
dGlsZV9jb2xzIGJ5Cj4gaW5pdGlhbGlzaW5nIHRoZSBjb250ZXh0LXVwZGF0ZSB2YWx1ZXMgdG8g
emVybyBhbmQgY29tcHV0aW5nIHRoZW0gb25seQo+IHdoZW4gdGlsZV9jb2xzIGlzIG5vbi16ZXJv
LCBhbmQgc3RvcCB0aGUgZGVzY3JpcHRvciB3cml0ZXMgb25jZSB0aGUKPiB0aWxlX2luZm8gYnVm
ZmVyIGlzIGZ1bGwuIFRoZSB0aWxlIGdlb21ldHJ5IHdyaXR0ZW4gdG8gdGhlIGhhcmR3YXJlCj4g
cmVnaXN0ZXJzIGlzIGxlZnQgdW5tb2RpZmllZDsgdGhlIHBlci1kaW1lbnNpb24gYW5kIHRvdGFs
IHRpbGUgYm91bmRzIGFyZQo+IGVuZm9yY2VkIGJ5IHRoZSBjb250cm9sIHZhbGlkYXRpb24uCj4K
PiBGaXhlczogNzI3YTQwMDY4NmEyICgibWVkaWE6IHZlcmlzaWxpY29uOiBBZGQgUm9ja2NoaXAg
QVYxIGRlY29kZXIiKQo+IEFzc2lzdGVkLWJ5OiBDbGF1ZGU6Y2xhdWRlLW9wdXMtNC04Cj4gU2ln
bmVkLW9mZi1ieTogTWljaGFlbCBCb21tYXJpdG8gPG1pY2hhZWwuYm9tbWFyaXRvQGdtYWlsLmNv
bT4KClJldmlld2VkLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29s
bGFib3JhLmNvbT4KCj4gLS0tCj4gICAuLi4vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3
X2F2MV9kZWMuYyAgfCAzMiArKysrKysrKysrKysrKystLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwg
MjYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19h
djFfZGVjLmMKPiBpbmRleCBlNGUyMWFkMzczMjMzLi5mZDAwZGJkNzlmZTQ2IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3
X2F2MV9kZWMuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9j
a2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+IEBAIC01NzgsMTYgKzU3OCwzMCBAQCBzdGF0aWMg
dm9pZCByb2NrY2hpcF92cHU5ODFfYXYxX2RlY19zZXRfdGlsZV9pbmZvKHN0cnVjdCBoYW50cm9f
Y3R4ICpjdHgpCj4gICAJY29uc3Qgc3RydWN0IHY0bDJfYXYxX3RpbGVfaW5mbyAqdGlsZV9pbmZv
ID0gJmN0cmxzLT5mcmFtZS0+dGlsZV9pbmZvOwo+ICAgCWNvbnN0IHN0cnVjdCB2NGwyX2N0cmxf
YXYxX3RpbGVfZ3JvdXBfZW50cnkgKmdyb3VwX2VudHJ5ID0KPiAgIAkgICAgY3RybHMtPnRpbGVf
Z3JvdXBfZW50cnk7Cj4gLQlpbnQgY29udGV4dF91cGRhdGVfeSA9Cj4gLQkgICAgdGlsZV9pbmZv
LT5jb250ZXh0X3VwZGF0ZV90aWxlX2lkIC8gdGlsZV9pbmZvLT50aWxlX2NvbHM7Cj4gLQlpbnQg
Y29udGV4dF91cGRhdGVfeCA9Cj4gLQkgICAgdGlsZV9pbmZvLT5jb250ZXh0X3VwZGF0ZV90aWxl
X2lkICUgdGlsZV9pbmZvLT50aWxlX2NvbHM7Cj4gLQlpbnQgY29udGV4dF91cGRhdGVfdGlsZV9p
ZCA9Cj4gLQkgICAgY29udGV4dF91cGRhdGVfeCAqIHRpbGVfaW5mby0+dGlsZV9yb3dzICsgY29u
dGV4dF91cGRhdGVfeTsKPiArCWludCBjb250ZXh0X3VwZGF0ZV95ID0gMDsKPiArCWludCBjb250
ZXh0X3VwZGF0ZV94ID0gMDsKPiArCWludCBjb250ZXh0X3VwZGF0ZV90aWxlX2lkID0gMDsKPiAg
IAl1OCAqZHN0ID0gYXYxX2RlYy0+dGlsZV9pbmZvLmNwdTsKPiArCXU4ICpkc3RfZW5kID0gZHN0
ICsgYXYxX2RlYy0+dGlsZV9pbmZvLnNpemU7Cj4gICAJc3RydWN0IGhhbnRyb19kZXYgKnZwdSA9
IGN0eC0+ZGV2Owo+ICAgCWludCB0aWxlMCwgdGlsZTE7Cj4gICAKPiArCS8qCj4gKwkgKiB0aWxl
X2NvbHMgYW5kIHRpbGVfcm93cyBhcmUgYm91bmRlZCBieSB0aGUgVjRMMiBjb250cm9sIHZhbGlk
YXRpb24KPiArCSAqIChWNEwyX0FWMV9NQVhfVElMRV97Q09MUyxST1dTfSBhbmQgVjRMMl9BVjFf
TUFYX1RJTEVfQ09VTlQpLiBHdWFyZAo+ICsJICogdGhlIGRpdmlzb3IgaGVyZSwgYW5kIGtlZXAg
dGhlIGRlc2NyaXB0b3Igd3JpdGVzIHdpdGhpbiB0aGUKPiArCSAqIEFWMV9NQVhfVElMRVMgdGls
ZV9pbmZvIGJ1ZmZlciBiZWxvdzsgdGhlIHJlZ2lzdGVyIHZhbHVlcyB1c2UgdGhlCj4gKwkgKiB1
bm1vZGlmaWVkIHRpbGUgZ2VvbWV0cnkuCj4gKwkgKi8KPiArCWlmICh0aWxlX2luZm8tPnRpbGVf
Y29scykgewo+ICsJCWNvbnRleHRfdXBkYXRlX3kgPQo+ICsJCSAgICB0aWxlX2luZm8tPmNvbnRl
eHRfdXBkYXRlX3RpbGVfaWQgLyB0aWxlX2luZm8tPnRpbGVfY29sczsKPiArCQljb250ZXh0X3Vw
ZGF0ZV94ID0KPiArCQkgICAgdGlsZV9pbmZvLT5jb250ZXh0X3VwZGF0ZV90aWxlX2lkICUgdGls
ZV9pbmZvLT50aWxlX2NvbHM7Cj4gKwkJY29udGV4dF91cGRhdGVfdGlsZV9pZCA9Cj4gKwkJICAg
IGNvbnRleHRfdXBkYXRlX3ggKiB0aWxlX2luZm8tPnRpbGVfcm93cyArIGNvbnRleHRfdXBkYXRl
X3k7Cj4gKwl9Cj4gKwo+ICAgCW1lbXNldChkc3QsIDAsIGF2MV9kZWMtPnRpbGVfaW5mby5zaXpl
KTsKPiAgIAo+ICAgCWZvciAodGlsZTAgPSAwOyB0aWxlMCA8IHRpbGVfaW5mby0+dGlsZV9jb2xz
OyB0aWxlMCsrKSB7Cj4gQEAgLTU5OCw2ICs2MTIsMTAgQEAgc3RhdGljIHZvaWQgcm9ja2NoaXBf
dnB1OTgxX2F2MV9kZWNfc2V0X3RpbGVfaW5mbyhzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+ICAg
CQkJICAgIHRpbGVfaW5mby0+aGVpZ2h0X2luX3Nic19taW51c18xW3RpbGUxXSArIDE7Cj4gICAJ
CQl1MzIgeDAgPSB0aWxlX2luZm8tPndpZHRoX2luX3Nic19taW51c18xW3RpbGUwXSArIDE7Cj4g
ICAKPiArCQkJLyogU3RvcCBvbmNlIHRoZSB0aWxlX2luZm8gZGVzY3JpcHRvciBidWZmZXIgaXMg
ZnVsbC4gKi8KPiArCQkJaWYgKGRzdCArIDE2ID4gZHN0X2VuZCkKPiArCQkJCWJyZWFrOwo+ICsK
PiAgIAkJCS8qIHRpbGUgc2l6ZSBpbiBTQiB1bml0cyAod2lkdGgsaGVpZ2h0KSAqLwo+ICAgCQkJ
KmRzdCsrID0geDA7Cj4gICAJCQkqZHN0KysgPSAwOwo+IEBAIC02MjIsNiArNjQwLDggQEAgc3Rh
dGljIHZvaWQgcm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfc2V0X3RpbGVfaW5mbyhzdHJ1Y3QgaGFu
dHJvX2N0eCAqY3R4KQo+ICAgCQkJKmRzdCsrID0gKGVuZCA+PiAxNikgJiAyNTU7Cj4gICAJCQkq
ZHN0KysgPSAoZW5kID4+IDI0KSAmIDI1NTsKPiAgIAkJfQo+ICsJCWlmIChkc3QgKyAxNiA+IGRz
dF9lbmQpCj4gKwkJCWJyZWFrOwo+ICAgCX0KPiAgIAo+ICAgCWhhbnRyb19yZWdfd3JpdGUodnB1
LCAmYXYxX211bHRpY29yZV9leHBlY3RfY29udGV4dF91cGRhdGUsICEhKGNvbnRleHRfdXBkYXRl
X3ggPT0gMCkpOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

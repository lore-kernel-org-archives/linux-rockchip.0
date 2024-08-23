Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55DDAC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 10:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lHpPVk5UvAw5gUfdxuQyB1MHrmjVFgwhD48gh2Un1zk=; b=cuIo70HCXuo5UgVtnFe7bV+7v7
	ja7jU2qV7H8w4S3btKZUWLJuQBmw44JFYdtx97QJ9PSawAz9MwuNtcSwS5h3Cwk5R11GsmXV9OR6C
	fg5fv/R8OaFDpSbCo9MWx1SKtf+gj6AQd70JxHYNwOZlcYWi6CcsqQlaaXrtt3emgacbTXlio32b/
	i43aY/6J/SIvblqgVHVhMHNR0iRPSa3YqgHMiwXuWsu42CSzHP7g2WyrVZ26xiQw8l3ZH8V74yyat
	Oww0cFaTTFEFlxy0D75LIQ0hHrei/6FSA8kCaLI5BYgkFmJqSp/EByTfDESFBZbgep3W0izvbQfhA
	iGNtjjKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shRok-0000000GOG9-1WdS;
	Fri, 23 Aug 2024 10:46:54 +0000
Received: from msa-211.smtpout.orange.fr ([193.252.23.211] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shRog-0000000GOD8-2ZYu;
	Fri, 23 Aug 2024 10:46:52 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id hRoUsL4HOzHoQhRoUsTS08; Fri, 23 Aug 2024 12:46:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1724410006;
	bh=M+BJHoqbevs+877BilSmYJZwm2Wj3hyd0gs95c8CmS8=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=Q695rhyaBTCa8GxEUvcbWDnTM+h61/+qeGfRPaskg25Rmw3+MPFnHIXrEEKIENaPg
	 plIuyFymEP3Jv4vPVizYLBwaRBW+jzBeASP7/nlnkpkbYu1vP8JVUY+uilslZ+M2Xq
	 K7/Rby9SyhmGKEczNXRpJpcBJVTtu353UW1rhZXCSja80MtYtDf33PrKLirykyytCl
	 5a3gY/F/G59CSPrJ+JgjLfh210d3fWSx0aJ4WSy8XcdbuJK+bvmfMCtNb7Skudf7RC
	 mMKNXknhM2YyGDTKam4yub8cdwekmw7m19YjJ2jfAsQzlv+4B0pvIXa2JZzyWqtHKd
	 JqWM25hr7IA0Q==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Fri, 23 Aug 2024 12:46:46 +0200
X-ME-IP: 90.11.132.44
Message-ID: <a4d23c3a-9791-4d2b-9853-9c9b27460db5@wanadoo.fr>
Date: Fri, 23 Aug 2024 12:46:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH -next 2/5] drm/mediatek: Fix missing of_node_put() for
 mtk_drm_get_all_drm_priv()
To: Jinjie Ruan <ruanjinjie@huawei.com>, hjc@rock-chips.com, heiko@sntech.de,
 andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzk@kernel.org, jic23@kernel.org
References: <20240823092053.3170445-1-ruanjinjie@huawei.com>
 <20240823092053.3170445-3-ruanjinjie@huawei.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20240823092053.3170445-3-ruanjinjie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_034651_085861_C31E992F 
X-CRM114-Status: GOOD (  18.79  )
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

TGUgMjMvMDgvMjAyNCDDoCAxMToyMCwgSmluamllIFJ1YW4gYSDDqWNyaXTCoDoKPiBJbiBtdGtf
ZHJtX2dldF9hbGxfZHJtX3ByaXYoKSwgYnJlYWsgaW4gZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZSgp
IHNob3VsZAo+IGNhbGwgb2Zfbm9kZV9wdXQoKSB0byBhdm9pZCBjaGlsZCBub2RlIHJlc291cmNl
IGxlYWssIHVzZQo+IGZvcl9lYWNoX2NoaWxkX29mX25vZGVfc2NvcGVkKCkgdG8gZml4IGl0Lgo+
IAo+IEFuZCBhdm9pZCB0aGUgbmVlZCBmb3IgbWFudWFsIGNsZWFudXAgb2Zfbm9kZV9wdXQoKSBp
biBlYXJseSBleGl0cwo+IGZyb20gdGhlIGxvb3AgZm9yIGFub3RoZXIgb25lLgo+IAo+IEZpeGVz
OiBkNzYxYjk0NTBlMzEgKCJkcm0vbWVkaWF0ZWs6IEFkZCBjbnQgY2hlY2tpbmcgZm9yIGNvdmVy
aXR5IGlzc3VlIikKPiBTaWduZWQtb2ZmLWJ5OiBKaW5qaWUgUnVhbiA8cnVhbmppbmppZUBodWF3
ZWkuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmMg
fCAxMCArKystLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRr
X2RybV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jCj4gaW5k
ZXggNzdiNTBjNTZjMTI0Li40MWFmZjAxODNjYmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0
ZWsvbXRrX2RybV9kcnYuYwo+IEBAIC0zNzEsMTIgKzM3MSwxMSBAQCBzdGF0aWMgYm9vbCBtdGtf
ZHJtX2dldF9hbGxfZHJtX3ByaXYoc3RydWN0IGRldmljZSAqZGV2KQo+ICAgCXN0cnVjdCBtdGtf
ZHJtX3ByaXZhdGUgKnRlbXBfZHJtX3ByaXY7Cj4gICAJc3RydWN0IGRldmljZV9ub2RlICpwaGFu
ZGxlID0gZGV2LT5wYXJlbnQtPm9mX25vZGU7Cj4gICAJY29uc3Qgc3RydWN0IG9mX2RldmljZV9p
ZCAqb2ZfaWQ7Cj4gLQlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGU7Cj4gICAJc3RydWN0IGRldmlj
ZSAqZHJtX2RldjsKPiAgIAl1bnNpZ25lZCBpbnQgY250ID0gMDsKPiAgIAlpbnQgaSwgajsKPiAg
IAo+IC0JZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZShwaGFuZGxlLT5wYXJlbnQsIG5vZGUpIHsKPiAr
CWZvcl9lYWNoX2NoaWxkX29mX25vZGVfc2NvcGVkKHBoYW5kbGUtPnBhcmVudCwgbm9kZSkgewo+
ICAgCQlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2Owo+ICAgCj4gICAJCW9mX2lkID0gb2Zf
bWF0Y2hfbm9kZShtdGtfZHJtX29mX2lkcywgbm9kZSk7Cj4gQEAgLTgyOCw3ICs4MjcsNiBAQCBz
dGF0aWMgaW50IG10a19kcm1fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAg
IAlzdHJ1Y3QgZGV2aWNlX25vZGUgKnBoYW5kbGUgPSBkZXYtPnBhcmVudC0+b2Zfbm9kZTsKPiAg
IAljb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkICpvZl9pZDsKPiAgIAlzdHJ1Y3QgbXRrX2RybV9w
cml2YXRlICpwcml2YXRlOwo+IC0Jc3RydWN0IGRldmljZV9ub2RlICpub2RlOwo+ICAgCXN0cnVj
dCBjb21wb25lbnRfbWF0Y2ggKm1hdGNoID0gTlVMTDsKPiAgIAlzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpvdmxfYWRhcHRvcjsKPiAgIAlpbnQgcmV0Owo+IEBAIC04NjksNyArODY3LDcgQEAgc3Rh
dGljIGludCBtdGtfZHJtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJ
fQo+ICAgCj4gICAJLyogSXRlcmF0ZSBvdmVyIHNpYmxpbmcgRElTUCBmdW5jdGlvbiBibG9ja3Mg
Ki8KPiAtCWZvcl9lYWNoX2NoaWxkX29mX25vZGUocGhhbmRsZS0+cGFyZW50LCBub2RlKSB7Cj4g
Kwlmb3JfZWFjaF9jaGlsZF9vZl9ub2RlX3Njb3BlZChwaGFuZGxlLT5wYXJlbnQsIG5vZGUpIHsK
PiAgIAkJY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqb2ZfaWQ7Cj4gICAJCWVudW0gbXRrX2Rk
cF9jb21wX3R5cGUgY29tcF90eXBlOwo+ICAgCQlpbnQgY29tcF9pZDsKPiBAQCAtOTMzLDEwICs5
MzEsOCBAQCBzdGF0aWMgaW50IG10a19kcm1fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiAgIAkJfQo+ICAgCj4gICAJCXJldCA9IG10a19kZHBfY29tcF9pbml0KG5vZGUsICZw
cml2YXRlLT5kZHBfY29tcFtjb21wX2lkXSwgY29tcF9pZCk7Cj4gLQkJaWYgKHJldCkgewo+IC0J
CQlvZl9ub2RlX3B1dChub2RlKTsKPiArCQlpZiAocmV0KQo+ICAgCQkJZ290byBlcnJfbm9kZTsK
CkhpLAoKSSd2ZSBzZWVuIG9uIGFub3RoZXIgdGhyZWFkIHRoYXQgaXMgd2FzIG5vdCBzdXJlIHRo
YXQgc2NvcGVkIHZlcnNpb25zIAphbmQgZ290b3MgcGxheWVkIHdlbGwgdG9nZXRoZXIuCgpJdCB3
YXMgYXNrZWQgdG8gY2hlY2sgbW9yZSBpbiBkZXRhaWxzIGFuZCBjb25maXJtIHRoYXQgaXQgd2Fz
IHNhZmUgCmJlZm9yZSBhcHBseWluZyB0aGUgcGF0Y2guCgpJJ3ZlIG5vdCBmb2xsb3dlZCB0aGUg
ZGlzY3Vzc2lvbiwgc28gSSBqdXN0IHBvaW50IGl0IG91dCwgaW4gY2FzZSBpdCBoZWxwcy4KCkkn
bGwgdHJ5IHRvIGdpdmUgaXQgYSBsb29rIGluIHRoZSBjb21pbmcgZGF5cy4KCgpDSgoKPiAtCQl9
Cj4gICAJfQo+ICAgCj4gICAJaWYgKCFwcml2YXRlLT5tdXRleF9ub2RlKSB7CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

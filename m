Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9670CAC5A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 01:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDx29uM5YicUeDIGsK2R8iLB0cOS6/g8nUplLG9jn0o=; b=LDh8Ji+Ggez6Yw
	N4NejES/wvS7Imv8R+CRJkgOWHzGwE/t/vOSUWfmWCzs5u9VXN8so10JVVxYz3ulrwEi+T3Z1p8oS
	DXF+1fh5ZtVN1C4BVLSitXI0YTAF1pF/q+yOlBO8dNwavy5B7J9oHSm6VAWK8GD2qvPRmNRQJ7JbD
	Pok72Ysz2LocNZqV3Q/xcdqZ/l/cD/okV0cpmFfiu7gXHEwRn9bbciHyi4COU3KaQwr1dzDqCdgvK
	Qg8MSBgA3cWyb45n9SPdQLRMPjbgPIcSSAzhKn3qIS/8pampxv5gDCb6ESO7jCdyqrYdUvTIMGmld
	l4CE6LsKhEOcsMa+v1rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0rve-0000000C2Fc-47Dc;
	Tue, 23 Sep 2025 01:34:50 +0000
Received: from mail-m49213.qiye.163.com ([45.254.49.213])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0rvZ-0000000C2DF-36Wg;
	Tue, 23 Sep 2025 01:34:48 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 23b40ab11;
	Tue, 23 Sep 2025 09:34:40 +0800 (GMT+08:00)
Message-ID: <e9cf0aa8-ed32-4ffb-a755-150742455808@rock-chips.com>
Date: Tue, 23 Sep 2025 09:34:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/7] usb: typec: Add default HPD device when register
 DisplayPort altmode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-2-kernel@airkyi.com>
 <mygbqhiom6pkwsadzz2bqf5bth3ogsbd6iku5a7r5swxrakein@fjhz7udnkcks>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <mygbqhiom6pkwsadzz2bqf5bth3ogsbd6iku5a7r5swxrakein@fjhz7udnkcks>
X-HM-Tid: 0a997435663e03abkunm07394047b1283
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh4YGFYaGEpNHhgfTEMfTEhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=MjfxaMhNkqVIf6KIftsHcjWQjPy60e0dSApxnsFiS9Qu1sfUfcvJyU5z6a33gqxVLbb31H5++TZnQmck5JY8z57VOUa8oO42/qIsf6slYgGkDj/cgC6R8JawKVaFE3otXI8iphPEHWrsMK8FR4fierrjGEFZ3csE3Er9o1IYxn0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=nqVqLM0pFpqbw/sVgseWDxAxw4GetnCa6cznE3P0mpg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_183446_338248_B1F914C7 
X-CRM114-Status: GOOD (  24.49  )
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

T24gOS8yMy8yMDI1IDk6MTAgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cgo+IE9uIE1vbiwg
U2VwIDIyLCAyMDI1IGF0IDA5OjIwOjMzQU0gKzA4MDAsIENoYW95aSBDaGVuIHdyb3RlOgo+PiBG
cm9tOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+Cj4+IEFkZCBk
ZWZhdWx0IERSTSBBVVggSFBEIGJyaWRnZSBkZXZpY2Ugd2hlbiByZWdpc3RlciBEaXNwbGF5UG9y
dAo+PiBhbHRtb2RlLiBUaGF0IG1ha2VzIGl0IHJlZHVuZGFudCBmb3IgZWFjaCBUeXBlLUMgZHJp
dmVyIHRvIGltcGxlbWVudAo+PiBhIHNpbWlsYXIgcmVnaXN0cmF0aW9uIHByb2Nlc3MgaW4gZW1i
ZWRkZWQgc2NlbmFyaW9zLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaGFveWkgQ2hlbiA8Y2hhb3lp
LmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvdXNiL3R5cGVjL2FsdG1v
ZGVzL2Rpc3BsYXlwb3J0LmMgfCAyNyArKysrKysrKysrKysrKysrKysrKysrKysKPj4gICBkcml2
ZXJzL3VzYi90eXBlYy9hbHRtb2Rlcy9kaXNwbGF5cG9ydC5oIHwgIDIgKysKPj4gICBkcml2ZXJz
L3VzYi90eXBlYy9jbGFzcy5jICAgICAgICAgICAgICAgIHwgIDggKysrKysrKwo+PiAgIGluY2x1
ZGUvbGludXgvdXNiL3R5cGVjX2FsdG1vZGUuaCAgICAgICAgfCAgMiArKwo+PiAgIDQgZmlsZXMg
Y2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2Iv
dHlwZWMvYWx0bW9kZXMvZGlzcGxheXBvcnQuYyBiL2RyaXZlcnMvdXNiL3R5cGVjL2FsdG1vZGVz
L2Rpc3BsYXlwb3J0LmMKPj4gaW5kZXggMWRjYjc3ZmFmODVkLi5lMDI2ZGM2ZTU0MzAgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvdXNiL3R5cGVjL2FsdG1vZGVzL2Rpc3BsYXlwb3J0LmMKPj4gKysr
IGIvZHJpdmVycy91c2IvdHlwZWMvYWx0bW9kZXMvZGlzcGxheXBvcnQuYwo+PiBAQCAtMTQsNiAr
MTQsNyBAQAo+PiAgICNpbmNsdWRlIDxsaW51eC9wcm9wZXJ0eS5oPgo+PiAgICNpbmNsdWRlIDxs
aW51eC91c2IvcGRfdmRvLmg+Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L3VzYi90eXBlY19kcC5oPgo+
PiArI2luY2x1ZGUgPGRybS9icmlkZ2UvYXV4LWJyaWRnZS5oPgo+PiAgICNpbmNsdWRlIDxkcm0v
ZHJtX2Nvbm5lY3Rvci5oPgo+PiAgICNpbmNsdWRlICJkaXNwbGF5cG9ydC5oIgo+PiAgIAo+PiBA
QCAtMTgyLDYgKzE4MywxMCBAQCBzdGF0aWMgaW50IGRwX2FsdG1vZGVfc3RhdHVzX3VwZGF0ZShz
dHJ1Y3QgZHBfYWx0bW9kZSAqZHApCj4+ICAgCQkJCWRwLT5wZW5kaW5nX2lycV9ocGQgPSB0cnVl
Owo+PiAgIAkJfQo+PiAgIAl9IGVsc2Ugewo+PiArCQlpZiAoZHAtPnBvcnQtPmhwZF9kZXYpCj4+
ICsJCQlkcm1fYXV4X2hwZF9icmlkZ2Vfbm90aWZ5KGRwLT5wb3J0LT5ocGRfZGV2LAo+PiArCQkJ
CQkJICBocGQgPyBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZCA6Cj4+ICsJCQkJCQkJY29ubmVj
dG9yX3N0YXR1c19kaXNjb25uZWN0ZWQpOwo+IFRoZXJlIHNob3VsZCBiZSBubyBuZWVkIGZvciB0
aGVzZSBjYWxscy4gT25jZSB0aGUgSFBEIGJyaWRnZSBpcyBhZGRlZCB0bwo+IGEgY29ycmVjdCBm
d25vZGUsIHRoZSBkcm1fY29ubmVjdG9yX29vYl9ob3RwbHVnX2V2ZW50KCkgY2FsbHMgc2hvdWxk
Cj4gZGVsaXZlciB0aGUgc2lnbmFsIGFzIGV4cGVjdGVkLgoKSXQgc2VlbXMgdGhhdCBvbmx5IGRy
bV9icmlkZ2VfY29ubmVjdG9yIGNhbiBkbyB0aGlzLiBJJ20gbm90IHN1cmUgaWYgSSByZW1lbWJl
ciBjb3JyZWN0bHkuIEknbGwgZ2l2ZSBpdCBhIHRyeS4KCgo+Cj4+ICAgCQlkcm1fY29ubmVjdG9y
X29vYl9ob3RwbHVnX2V2ZW50KGRwLT5jb25uZWN0b3JfZndub2RlLAo+PiAgIAkJCQkJCWhwZCA/
IGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkIDoKPj4gICAJCQkJCQkgICAgICBjb25uZWN0b3Jf
c3RhdHVzX2Rpc2Nvbm5lY3RlZCk7Cj4+IEBAIC0yMDYsNiArMjExLDkgQEAgc3RhdGljIGludCBk
cF9hbHRtb2RlX2NvbmZpZ3VyZWQoc3RydWN0IGRwX2FsdG1vZGUgKmRwKQo+PiAgIAkgKiBjb25m
aWd1cmF0aW9uIGlzIGNvbXBsZXRlIHRvIHNpZ25hbCBIUEQuCj4+ICAgCSAqLwo+PiAgIAlpZiAo
ZHAtPnBlbmRpbmdfaHBkKSB7Cj4+ICsJCWlmIChkcC0+cG9ydC0+aHBkX2RldikKPj4gKwkJCWRy
bV9hdXhfaHBkX2JyaWRnZV9ub3RpZnkoZHAtPnBvcnQtPmhwZF9kZXYsCj4+ICsJCQkJCQkgIGNv
bm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkKTsKPj4gICAJCWRybV9jb25uZWN0b3Jfb29iX2hvdHBs
dWdfZXZlbnQoZHAtPmNvbm5lY3Rvcl9md25vZGUsCj4+ICAgCQkJCQkJY29ubmVjdG9yX3N0YXR1
c19jb25uZWN0ZWQpOwo+PiAgIAkJc3lzZnNfbm90aWZ5KCZkcC0+YWx0LT5kZXYua29iaiwgImRp
c3BsYXlwb3J0IiwgImhwZCIpOwo+PiBAQCAtMzkxLDYgKzM5OSw5IEBAIHN0YXRpYyBpbnQgZHBf
YWx0bW9kZV92ZG0oc3RydWN0IHR5cGVjX2FsdG1vZGUgKmFsdCwKPj4gICAJCQlkcC0+ZGF0YS5z
dGF0dXMgPSAwOwo+PiAgIAkJCWRwLT5kYXRhLmNvbmYgPSAwOwo+PiAgIAkJCWlmIChkcC0+aHBk
KSB7Cj4+ICsJCQkJaWYgKGRwLT5wb3J0LT5ocGRfZGV2KQo+PiArCQkJCQlkcm1fYXV4X2hwZF9i
cmlkZ2Vfbm90aWZ5KGRwLT5wb3J0LT5ocGRfZGV2LAo+PiArCQkJCQkJCQkgIGNvbm5lY3Rvcl9z
dGF0dXNfZGlzY29ubmVjdGVkKTsKPj4gICAJCQkJZHJtX2Nvbm5lY3Rvcl9vb2JfaG90cGx1Z19l
dmVudChkcC0+Y29ubmVjdG9yX2Z3bm9kZSwKPj4gICAJCQkJCQkJCWNvbm5lY3Rvcl9zdGF0dXNf
ZGlzY29ubmVjdGVkKTsKPj4gICAJCQkJZHAtPmhwZCA9IGZhbHNlOwo+PiBAQCAtNzUxLDYgKzc2
MiwxOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCAqZGlzcGxheXBvcnRf
Z3JvdXBzW10gPSB7Cj4+ICAgCU5VTEwsCj4+ICAgfTsKPj4gICAKPj4gK3ZvaWQgZHBfYWx0bW9k
ZV9ocGRfZGV2aWNlX3JlZ2lzdGVyKHN0cnVjdCB0eXBlY19hbHRtb2RlICphbHQpCj4+ICt7Cj4+
ICsJaWYgKGFsdC0+c3ZpZCAhPSBVU0JfVFlQRUNfRFBfU0lEKQo+PiArCQlyZXR1cm47Cj4+ICsK
Pj4gKwlhbHQtPmhwZF9kZXYgPSBkcm1fZHBfaHBkX2JyaWRnZV9yZWdpc3RlcihhbHQtPmRldi5w
YXJlbnQtPnBhcmVudCwKPj4gKwkJCQkJCSAgZGV2X29mX25vZGUoYWx0LT5kZXYucGFyZW50LT5w
YXJlbnQpKTsKPiBUaGlzIG5lZWRzIGF0IGxlYXN0IGEgY29tbWVudCwgd2hhdCBpcyBkZXYucGFy
ZW50LT5wYXJlbnQuIEFsc28sIHRoZQo+IG9mX25vZGUgaXMgbm90IGNvcnJlY3QgaGVyZS4gSXQg
c2hvdWxkIGJlIGEgbm9kZSBvZiB0aGUgY29ubmVjdG9yLAo+IHJhdGhlciB0aGFuIHRoZSBkZXZp
Y2UgaXRzZWxmLiBDb25zaWRlciBVU0ItQyBjb250cm9sbGVycyB3aGljaCBoYW5kbGUKPiBzZXZl
cmFsIFVTQi1DIGNvbm5lY3RvcnMgKGUuZy4gVUNTSSkuIFRoZSBEUk0gY29yZSB3b24ndCBiZSBh
YmxlIHRvCj4gaWRlbnRpZnkgdGhlIGNvcnJlY3QgYnJpZGdlLgoKSSB0aGlua8KgIGFsdC5kZXYt
PnBhcmVudC0+cGFyZW50IGlzIHRoZSBjb25uZWN0b3IgZGV2aWNlLiBBbSBJIG1pc3Npbmcgc29t
ZXRoaW5nPwoKCgo+Cj4+ICsJaWYgKElTX0VSUihhbHQtPmhwZF9kZXYpKQo+PiArCQlhbHQtPmhw
ZF9kZXYgPSBOVUxMOwo+PiArfQo+PiArRVhQT1JUX1NZTUJPTF9HUEwoZHBfYWx0bW9kZV9ocGRf
ZGV2aWNlX3JlZ2lzdGVyKTsKPiBIYXZpbmcgdGhlIGZ1bmN0aW9uIGhlcmUgd2lsbCBicmluZyBh
IHR5cGVjIC0+IGRpc3BsYXlwb3J0IGRlcGVuZGVuY3kKPiBiZXR3ZWVuIGRyaXZlcnMgKHdoaWNo
IHlvdSBkaWRuJ3QgZG9jdW1lbnQpLiBJdCBtZWFucyBpdCB3b24ndCBiZQo+IHBvc3NpYmxlIHRv
IGJ1aWxkIHR5cGVjIGNvcmUgaW50byB0aGUga2VybmVsLCBoYXZpbmcgdGhlIERQIEFsdE1vZGUK
PiBkcml2ZXIgaW4gdGhlIG1vZHVsZSAod2hpY2ggYWxzbyBkb2Vzbid0IHNvdW5kIGxpa2UgYSBn
b29kIGlkZWEpLgoKSXQgbWFrZSBzZW5zZS4gUGVyaGFwcyBtb3ZpbmcgaXQgaW50byBjbGFzcy5j
IHdvdWxkIGJlIGEgZ29vZCBpZGVhLgoKCj4KPj4gKwo+PiAgIGludCBkcF9hbHRtb2RlX3Byb2Jl
KHN0cnVjdCB0eXBlY19hbHRtb2RlICphbHQpCj4+ICAgewo+PiAgIAljb25zdCBzdHJ1Y3QgdHlw
ZWNfYWx0bW9kZSAqcG9ydCA9IHR5cGVjX2FsdG1vZGVfZ2V0X3BhcnRuZXIoYWx0KTsKCi0tIApC
ZXN0LApDaGFveWkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==

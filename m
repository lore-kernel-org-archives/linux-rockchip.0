Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8C3BC52D6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 09:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00K/+WJoDA6CBwJbBdBhXJgF0O7PRZvZKC4YAVmsgfc=; b=Ig1y9HlfiENr/U
	qf6sf4/qUtun+/29xHaopfR/Qlopsb5vzD4kyU0r9t6L4/7JmKrKKc2pQygyYD+VQi2uRJADS7YkC
	ISuomvEl0IEGDYhfOARK5WjHTtper1FD2VZeK89QTzwjdLp5CwYjoomFhkwqMfXMxtcpuwLKQ1bKX
	HAC6BGoZsnffhGa2rurhF3VbgVnO3qI8/MRH2LC2eo9JCqMG05WG90HdeDFTXv5bN5Et9yO0nYdFQ
	wIfonyUeK0IXF9XNr6+H5S1DOcgV/sRrJTowt5prS3PEkNWNzeb8+7jpHeFbWTetWn3hiPnV/oqVe
	uGJV7+pL4451yYUhJsOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sisuE-0000000AgAt-0CfQ;
	Tue, 27 Aug 2024 09:54:30 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sisp1-0000000Aet7-0NyE;
	Tue, 27 Aug 2024 09:49:08 +0000
Received: from mail.maildlp.com (unknown [172.18.186.31])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4WtN2f5gCjz6DBQl;
	Tue, 27 Aug 2024 17:45:46 +0800 (CST)
Received: from lhrpeml500005.china.huawei.com (unknown [7.191.163.240])
	by mail.maildlp.com (Postfix) with ESMTPS id 5DA6F140B2A;
	Tue, 27 Aug 2024 17:49:01 +0800 (CST)
Received: from localhost (10.203.177.66) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Tue, 27 Aug
 2024 10:49:00 +0100
Date: Tue, 27 Aug 2024 10:49:00 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Jinjie Ruan <ruanjinjie@huawei.com>
CC: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<krzk@kernel.org>, <jic23@kernel.org>
Subject: Re: [PATCH -next 1/5] drm/rockchip: Use
 for_each_child_of_node_scoped()
Message-ID: <20240827104900.00004060@Huawei.com>
In-Reply-To: <5d6debd0-1a02-f631-649e-26fb69e164e2@huawei.com>
References: <20240823092053.3170445-1-ruanjinjie@huawei.com>
	<20240823092053.3170445-2-ruanjinjie@huawei.com>
	<20240823123203.00002aac@Huawei.com>
	<5d6debd0-1a02-f631-649e-26fb69e164e2@huawei.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.203.177.66]
X-ClientProxiedBy: lhrpeml100003.china.huawei.com (7.191.160.210) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_024907_441915_D864234E 
X-CRM114-Status: GOOD (  31.74  )
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

T24gVHVlLCAyNyBBdWcgMjAyNCAwOTo0MDowNyArMDgwMApKaW5qaWUgUnVhbiA8cnVhbmppbmpp
ZUBodWF3ZWkuY29tPiB3cm90ZToKCj4gT24gMjAyNC84LzIzIDE5OjMyLCBKb25hdGhhbiBDYW1l
cm9uIHdyb3RlOgo+ID4gT24gRnJpLCAyMyBBdWcgMjAyNCAxNzoyMDo0OSArMDgwMAo+ID4gSmlu
amllIFJ1YW4gPHJ1YW5qaW5qaWVAaHVhd2VpLmNvbT4gd3JvdGU6Cj4gPiAgIAo+ID4+IEF2b2lk
cyB0aGUgbmVlZCBmb3IgbWFudWFsIGNsZWFudXAgb2Zfbm9kZV9wdXQoKSBpbiBlYXJseSBleGl0
cwo+ID4+IGZyb20gdGhlIGxvb3AuCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBKaW5qaWUgUnVh
biA8cnVhbmppbmppZUBodWF3ZWkuY29tPiAgCj4gPiAKPiA+IFRoZXJlIGlzIG1vcmUgdG8gZG8g
aGVyZSwgYW5kIGxvb2tpbmcgYXQgdGhlIGNvZGUsIEknbSBmYXIgZnJvbQo+ID4gc3VyZSBpdCBp
c24ndCByZWxlYXNpbmcgcmVmZXJlbmNlcyBpdCBuZXZlciBoYWQuCj4gPiAgIAo+ID4+IC0tLQo+
ID4+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jIHwgOCArKystLS0t
LQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+
ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9s
dmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jCj4gPj4gaW5k
ZXggOWEwMWFhNDUwNzQxLi5mNWIzZjE4Nzk0ZGQgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuYwo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMKPiA+PiBAQCAtNTQ4LDcgKzU0OCw3IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfbHZkc19iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmlj
ZSAqbWFzdGVyLAo+ID4+ICAJc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyOwo+ID4+ICAJc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcjsKPiA+PiAgCXN0cnVjdCBkZXZpY2Vfbm9kZSAq
cmVtb3RlID0gTlVMTDsKPiA+PiAtCXN0cnVjdCBkZXZpY2Vfbm9kZSAgKnBvcnQsICplbmRwb2lu
dDsgIAo+ID4gCj4gPiBPZGQgZXh0cmEgc3BhY2UgYmVmb3JlICpwb3J0IGluIG9yaWdpbmFsLiBD
bGVhbiB0aGF0IHVwIHdoaWxzdCBoZXJlLgo+ID4gCj4gPiAgIAo+ID4+ICsJc3RydWN0IGRldmlj
ZV9ub2RlICAqcG9ydDsgIAo+ID4gCj4gPiBVc2UgX19mcmVlKGRldmljZV9ub2RlKSBmb3IgKnBv
cnQgYXMgd2VsbC4gIAo+IAo+IFllc++8jHRoYXQgaXMgcmlnaHQuCj4gCj4gPiAKPiA+IFNvIHdo
ZXJlIHRoZSBjdXJyZW50IGFzaWdubWVudCBpcy4KPiA+IAlzdHJ1Y3QgZGV2aWNlX25vZGUgKnBv
cnQgPSBvZl9ncmFwaF9nZXRfcG9ydF9ieV9pZChkZXYtPm9mX25vZGUsIDEpOwo+ID4gICAKPiA+
PiAgCWludCByZXQgPSAwLCBjaGlsZF9jb3VudCA9IDA7Cj4gPj4gIAljb25zdCBjaGFyICpuYW1l
Owo+ID4+ICAJdTMyIGVuZHBvaW50X2lkID0gMDsKPiA+PiBAQCAtNTYwLDE1ICs1NjAsMTMgQEAg
c3RhdGljIGludCByb2NrY2hpcF9sdmRzX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qg
ZGV2aWNlICptYXN0ZXIsCj4gPj4gIAkJCSAgICAgICJjYW4ndCBmb3VuZCBwb3J0IHBvaW50LCBw
bGVhc2UgaW5pdCBsdmRzIHBhbmVsIHBvcnQhXG4iKTsKPiA+PiAgCQlyZXR1cm4gLUVJTlZBTDsK
PiA+PiAgCX0KPiA+PiAtCWZvcl9lYWNoX2NoaWxkX29mX25vZGUocG9ydCwgZW5kcG9pbnQpIHsK
PiA+PiArCWZvcl9lYWNoX2NoaWxkX29mX25vZGVfc2NvcGVkKHBvcnQsIGVuZHBvaW50KSB7Cj4g
Pj4gIAkJY2hpbGRfY291bnQrKzsKPiA+PiAgCQlvZl9wcm9wZXJ0eV9yZWFkX3UzMihlbmRwb2lu
dCwgInJlZyIsICZlbmRwb2ludF9pZCk7Cj4gPj4gIAkJcmV0ID0gZHJtX29mX2ZpbmRfcGFuZWxf
b3JfYnJpZGdlKGRldi0+b2Zfbm9kZSwgMSwgZW5kcG9pbnRfaWQsCj4gPj4gIAkJCQkJCSAgJmx2
ZHMtPnBhbmVsLCAmbHZkcy0+YnJpZGdlKTsKPiA+PiAtCQlpZiAoIXJldCkgewo+ID4+IC0JCQlv
Zl9ub2RlX3B1dChlbmRwb2ludCk7Cj4gPj4gKwkJaWYgKCFyZXQpCj4gPj4gIAkJCWJyZWFrOyAg
Cj4gPiAKPiA+IFRoaXMgdGhlbiBjYW4gc2ltcGx5IGJlCj4gPiAJCQlyZXR1cm4gZGV2X2Vycl9w
cm9iZShkZXYsIHJldCwKPiA+IAkJCQkJICAgICAiZmFpbGVkIHRvIGZpbmQgcGFubmVsIGFuZCBi
cmlkZ2Ugbm9kZVxuIik7ICAKPiA+PiAtCQl9ICAKPiAKPiBJdCBzZWVtcyB0byBtZSB0aGVyZSdz
IG5vIGVhc3kgd2F5IHJldHVybiBoZXJlLCBhcyBpdCB3aWxsIHRyeQo+IGRybV9vZl9maW5kX3Bh
bmVsX29yX2JyaWRnZSgpIGZvciBlYWNoIGNoaWxkIG5vZGUsIG9ubHkgImNoaWxkX2NvdW50ID0K
PiAwIiBvciBhbGwgY2hpbGQgbm9kZSAgZHJtX29mX2ZpbmRfcGFuZWxfb3JfYnJpZGdlKCkgZmFp
bHMgaXQgd2lsbCBlcnJvcgo+IGFuZCByZXR1cm4uCkFoLiBHb29kIHBvaW50LiBUaGF0IGlzIGFu
IG9kZCBjb2RlIHN0cnVjdHVyZSB0aGF0IEkgcmVhZCB3cm9uZyBidXQgaXQgaW5kZWVkCmNhcnJp
ZXMgb24gYW5kIGlnbm9yZXMgdGhlIGVycm9yIGlmIGZvciBhbiBlYXJsaWVyIGxvb3AKdGhlIGRy
bV9vZl9maW5kX3Bhbm5lbF9vcl9icmlkZ2UoKSBmYWlsZWQgYW5kIGEgbGF0ZXIgb25lIHN1Y2Nl
ZWRzLgoKSWYgeW91IHdhbnQgdG8gbWFrZSBpdCBtb3JlICdzdGFuZGFyZCBJJ2QgZG8KaWYgKHJl
dCkKCWNvbnRpbnVlOwoKYW5kIGhhdmUgdGhlIGNvZGUgY29kZSBwYXRoIG9mIHRoZSBlYXJseSBi
cmVhayAnaW5saW5lJwoKZS5nLgoJZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZShwb3J0LCBlbmRwb2lu
dCkgewoJCWNoaWxkX2NvdW50Kys7CgkJb2ZfcHJvcGVydHlfcmVhZF91MzIoZW5kcG9pbnQsICJy
ZWciLCAmZW5kcG9pbnRfaWQpOwoJCXJldCA9IGRybV9vZl9maW5kX3BhbmVsX29yX2JyaWRnZShk
ZXYtPm9mX25vZGUsIDEsIGVuZHBvaW50X2lkLAoJCQkJCQkgICZsdmRzLT5wYW5lbCwgJmx2ZHMt
PmJyaWRnZSk7CgkJaWYgKHJldCkKCQkJY29udGludWU7CgoJCW9mX25vZGVfcHV0KGVuZHBvaW50
KTsKCQlicmVhazsKCX0KCkknZCBhbHNvIGJlIHRlbXB0ZWQgdG8gcHVsbCB0aGUgY2hpbGRfY291
bnQgYmVmb3JlIHRoaXMgd2l0aAoKaWYgKG9mX2dldF9jaGlsZF9jb3VudCgpID09IDApIHsKCURS
TV9ERVZfRVJST1IoZGV2LCAiLi4uIik7CglyZXR1cm4gLUVJTlZBTDsKClRoZW4gY2FuIHNpbXBs
eSBjaGVjayByZXQgYXQgdGhlIGVuZCBvZiB0aGUgbG9vcCByYXRoZXIgdGhhbiBuZWVkaW5nCnRo
ZSBlbHNlIGlmIGFzIHdlIGNhbid0IGdldCB0aGVyZSB3aXRoIGNoaWxkX2NvdW50IG5vbiB6ZXJv
LgpDYW4gYWxzbyBkcm9wIHRoZSBpbmNyZW1lbnQgb2YgY2hpbGRfY291bnQgaW4gdGhlIGxvb3Au
IFNvIG92ZXJhbGwgdGhhdApiZWNvbWVzIHNvbWV0aGluZyBsaWtlCgoJaWYgKG9mX2dldF9jaGls
ZF9jb3VudChlbmRwb2ludCkgPT0gMCkgewoJCURSTV9ERVZfRVJST1IoZGV2LCAiLi4uIik7CgkJ
cmV0dXJuIC1FSU5WQUw7Cgl9CgoJZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZV9zY29wZWQocG9ydCwg
ZW5kcG9pbnQpIHsKCQlvZl9wcm9wZXJ0eV9yZWFkX3UzMihlbmRwb2ludCwgInJlZyIsICZlbmRw
b2ludF9pZCk7CgkJcmV0ID0gZHJtX29mX2ZpbmRfcGFuZWxfb3JfYnJpZGdlKGRldi0+b2Zfbm9k
ZSwgMSwgZW5kcG9pbnRfaWQsCgkJCQkJCSAgJmx2ZHMtPnBhbmVsLCAmbHZkcy0+YnJpZGdlKTsK
CQkvKiBBIGxhdGVyIGNoaWxkIG5vZGUgbWF5IHN1Y2NlZWQgKi8KCQlpZiAocmV0KQoJCQljb250
aW51ZTsKCQlicmVhazsKCX0KCWlmIChyZXQpCgkJcmV0dXJuIGRldl9lcnJfcHJvYmUoKTsKCgo+
IAo+ID4gCj4gPiBWYXJpb3VzIG90aGVyIHBhdGhzIGJlY29tZSBkaXJlY3QgcmV0dXJucyBhcyB3
ZWxsLgo+ID4gICAKPiA+PiAgCX0gIAo+ID4gCj4gPiBUaGUgbGF0ZXIgY29kZSB3aXRoIHJlbW90
ZSBsb29rcyBzdXNwZWN0IGFzIG5vdCBvYnZpb3VzIHdobyBnb3QgdGhlIHJlZmVyZW5jZSB0aGF0
Cj4gPiBpcyBiZWluZyBwdXQgYnV0IGFzc3VtaW5nIHRoYXQgaXMgY29ycmVjdCwgaXQncyBhbm90
aGVyIHBvc3NpYmxlIHBsYWNlIGZvciBfX2ZyZWUgYmFzZWQKPiA+IGNsZWFudXAuICAKPiAKPiBZ
ZXMsIHRoZSByZW1vdGUgbG9va3Mgc3VzcGVjdC4KPiAKPiA+IAo+ID4gICAKPiA+PiAgCWlmICgh
Y2hpbGRfY291bnQpIHsKPiA+PiAgCQlEUk1fREVWX0VSUk9SKGRldiwgImx2ZHMgcG9ydCBkb2Vz
IG5vdCBoYXZlIGFueSBjaGlsZHJlblxuIik7ICAKPiA+ICAgCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55076C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 01:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xsS/JTFGxauJ/ugyzxdAV0YXDQsOY1/VUDSMhrp6Nxc=; b=oAvQlrBHKaKQ/8
	eeTBDWEByBxLXxJGu/QBYidF3kaVX2bz/r+CFPGpuxrPUpuSX6GV3UxBkHK4T7TaFjdLVHb1NV8R3
	g3QqCps+uMk159bDAx86F53WVe/FDu7xk03yQ/w7zrYN0zX2Vyr6Qep8Dp2JtKSRmH4/xMeAMGqu1
	HNqDIgwx/a1iE0XTxDBxCfWc4lehrpHESDkxNBu9N0vLtMwo0EjIuMByOTCnYtqV+UqPWcAnpPrD/
	QEZRxMnJUvJ0I08gdxtzvvQ7QU3wHX7BxxRmBIHxy4BcK1V4I5IPezCrYQaNAuEQSw/SSlKJYqTVm
	AohYHATunYSu7k/BHFLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Xb1-002mFL-1N;
	Wed, 08 Nov 2023 01:43:07 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Xax-002mEt-2x
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Nov 2023 01:43:05 +0000
Received: from [100.84.166.245] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8BE6B66074D9;
	Wed,  8 Nov 2023 01:42:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699407781;
	bh=J8F5Q7ucdMDs/e825oZPhe28Q01sYQtT6UezG1I9+Zk=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=gPvdItBkqnp1eFGQfq7ZAnizTv5HNNT2uUN0dWG3KHtRuXZOS61TXHufhP+L1bnw7
	 RpoTmfGbd7jiSHeR8IIIJllJBdj3RDpGN8ktvtcTO4YgFEqxuokLWqxPpYMNYbUVDj
	 vjKrxgb/PFvX1DaMdz2twer8S8FnY9kG8buVVa9hcUbR5rN8nQUuu9qX2oz4F+XMJ5
	 //YIacAyIKhCnoRHJgWCb/YLBbv+Bg41MlJKmMaOILI9qAygqf+zxR0jz6GXwF6Lx8
	 8JbxmytCy3taORa7JOqnKvlIHgGCsqk9qBFVXoKo57/Rx4lqpvwTA6MtaoAyA627lQ
	 CppVPfx7TA4FQ==
Message-ID: <7461e7b7cc9abc4cee027a950550192fea8ff972.camel@collabora.com>
Subject: Re: [PATCH v4 07/11] media: rkvdec: Move rkvdec_reset_decoded_fmt
 helper
From: Nicolas  Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Hans Verkuil <hverkuil-cisco@xs4all.nl>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>, Sebastian Fricke
	 <sebastian.fricke@collabora.com>, Christopher Obbard
	 <chris.obbard@collabora.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Tue, 07 Nov 2023 20:42:49 -0500
In-Reply-To: <20231105165521.3592037-8-jonas@kwiboo.se>
References: <20231105165521.3592037-1-jonas@kwiboo.se>
	 <20231105165521.3592037-8-jonas@kwiboo.se>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_174304_114487_5029CBF8 
X-CRM114-Status: GOOD (  13.96  )
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

TGUgZGltYW5jaGUgMDUgbm92ZW1icmUgMjAyMyDDoCAxNjo1NSArMDAwMCwgSm9uYXMgS2FybG1h
biBhIMOpY3JpdMKgOgo+IE1vdmUgcmt2ZGVjX3Jlc2V0X2RlY29kZWRfZm10KCkgYW5kIHRoZSBj
YWxsZWQgcmt2ZGVjX3Jlc2V0X2ZtdCgpIGhlbHBlcgo+IGZ1bmN0aW9ucyBpbiBwcmVwYXJhdGlv
biBmb3IgYWRkaW5nIGEgbmV3IGNhbGxlciBpbiBhbiB1cGNvbWluZyBwYXRjaC4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+CgpSZXZpZXdlZC1ieTog
Tmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgoKPiAtLS0K
PiB2NDoKPiAtIE5vIGNoYW5nZQo+IAo+IHYzOgo+IC0gTmV3IHBhdGNoCj4gCj4gIGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgfCA0NiArKysrKysrKysrKysrLS0tLS0tLS0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5j
IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYwo+IGluZGV4IDA1NzBjNzkw
YWQwOC4uN2E3OTg0MDQ3MGUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9y
a3ZkZWMvcmt2ZGVjLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRl
Yy5jCj4gQEAgLTM3LDYgKzM3LDI5IEBAIHN0YXRpYyB2b2lkIHJrdmRlY19maWxsX2RlY29kZWRf
cGl4Zm10KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsCj4gIAkJRElWX1JPVU5EX1VQKHBpeF9tcC0+
aGVpZ2h0LCAxNik7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIHJrdmRlY19yZXNldF9mbXQoc3Ry
dWN0IHJrdmRlY19jdHggKmN0eCwgc3RydWN0IHY0bDJfZm9ybWF0ICpmLAo+ICsJCQkgICAgIHUz
MiBmb3VyY2MpCj4gK3sKPiArCW1lbXNldChmLCAwLCBzaXplb2YoKmYpKTsKPiArCWYtPmZtdC5w
aXhfbXAucGl4ZWxmb3JtYXQgPSBmb3VyY2M7Cj4gKwlmLT5mbXQucGl4X21wLmZpZWxkID0gVjRM
Ml9GSUVMRF9OT05FOwo+ICsJZi0+Zm10LnBpeF9tcC5jb2xvcnNwYWNlID0gVjRMMl9DT0xPUlNQ
QUNFX1JFQzcwOTsKPiArCWYtPmZtdC5waXhfbXAueWNiY3JfZW5jID0gVjRMMl9ZQ0JDUl9FTkNf
REVGQVVMVDsKPiArCWYtPmZtdC5waXhfbXAucXVhbnRpemF0aW9uID0gVjRMMl9RVUFOVElaQVRJ
T05fREVGQVVMVDsKPiArCWYtPmZtdC5waXhfbXAueGZlcl9mdW5jID0gVjRMMl9YRkVSX0ZVTkNf
REVGQVVMVDsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgcmt2ZGVjX3Jlc2V0X2RlY29kZWRfZm10
KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgpCj4gK3sKPiArCXN0cnVjdCB2NGwyX2Zvcm1hdCAqZiA9
ICZjdHgtPmRlY29kZWRfZm10Owo+ICsKPiArCXJrdmRlY19yZXNldF9mbXQoY3R4LCBmLCBjdHgt
PmNvZGVkX2ZtdF9kZXNjLT5kZWNvZGVkX2ZtdHNbMF0pOwo+ICsJZi0+dHlwZSA9IFY0TDJfQlVG
X1RZUEVfVklERU9fQ0FQVFVSRV9NUExBTkU7Cj4gKwlmLT5mbXQucGl4X21wLndpZHRoID0gY3R4
LT5jb2RlZF9mbXQuZm10LnBpeF9tcC53aWR0aDsKPiArCWYtPmZtdC5waXhfbXAuaGVpZ2h0ID0g
Y3R4LT5jb2RlZF9mbXQuZm10LnBpeF9tcC5oZWlnaHQ7Cj4gKwlya3ZkZWNfZmlsbF9kZWNvZGVk
X3BpeGZtdChjdHgsICZmLT5mbXQucGl4X21wKTsKPiArfQo+ICsKPiAgc3RhdGljIGludCBya3Zk
ZWNfdHJ5X2N0cmwoc3RydWN0IHY0bDJfY3RybCAqY3RybCkKPiAgewo+ICAJc3RydWN0IHJrdmRl
Y19jdHggKmN0eCA9IGNvbnRhaW5lcl9vZihjdHJsLT5oYW5kbGVyLCBzdHJ1Y3Qgcmt2ZGVjX2N0
eCwgY3RybF9oZGwpOwo+IEBAIC0xNjksMTggKzE5Miw2IEBAIHJrdmRlY19maW5kX2NvZGVkX2Zt
dF9kZXNjKHUzMiBmb3VyY2MpCj4gIAlyZXR1cm4gTlVMTDsKPiAgfQo+ICAKPiAtc3RhdGljIHZv
aWQgcmt2ZGVjX3Jlc2V0X2ZtdChzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4LCBzdHJ1Y3QgdjRsMl9m
b3JtYXQgKmYsCj4gLQkJCSAgICAgdTMyIGZvdXJjYykKPiAtewo+IC0JbWVtc2V0KGYsIDAsIHNp
emVvZigqZikpOwo+IC0JZi0+Zm10LnBpeF9tcC5waXhlbGZvcm1hdCA9IGZvdXJjYzsKPiAtCWYt
PmZtdC5waXhfbXAuZmllbGQgPSBWNEwyX0ZJRUxEX05PTkU7Cj4gLQlmLT5mbXQucGl4X21wLmNv
bG9yc3BhY2UgPSBWNEwyX0NPTE9SU1BBQ0VfUkVDNzA5Owo+IC0JZi0+Zm10LnBpeF9tcC55Y2Jj
cl9lbmMgPSBWNEwyX1lDQkNSX0VOQ19ERUZBVUxUOwo+IC0JZi0+Zm10LnBpeF9tcC5xdWFudGl6
YXRpb24gPSBWNEwyX1FVQU5USVpBVElPTl9ERUZBVUxUOwo+IC0JZi0+Zm10LnBpeF9tcC54ZmVy
X2Z1bmMgPSBWNEwyX1hGRVJfRlVOQ19ERUZBVUxUOwo+IC19Cj4gLQo+ICBzdGF0aWMgdm9pZCBy
a3ZkZWNfcmVzZXRfY29kZWRfZm10KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgpCj4gIHsKPiAgCXN0
cnVjdCB2NGwyX2Zvcm1hdCAqZiA9ICZjdHgtPmNvZGVkX2ZtdDsKPiBAQCAtMTk2LDE3ICsyMDcs
NiBAQCBzdGF0aWMgdm9pZCBya3ZkZWNfcmVzZXRfY29kZWRfZm10KHN0cnVjdCBya3ZkZWNfY3R4
ICpjdHgpCj4gIAkJY3R4LT5jb2RlZF9mbXRfZGVzYy0+b3BzLT5hZGp1c3RfZm10KGN0eCwgZik7
Cj4gIH0KPiAgCj4gLXN0YXRpYyB2b2lkIHJrdmRlY19yZXNldF9kZWNvZGVkX2ZtdChzdHJ1Y3Qg
cmt2ZGVjX2N0eCAqY3R4KQo+IC17Cj4gLQlzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYgPSAmY3R4LT5k
ZWNvZGVkX2ZtdDsKPiAtCj4gLQlya3ZkZWNfcmVzZXRfZm10KGN0eCwgZiwgY3R4LT5jb2RlZF9m
bXRfZGVzYy0+ZGVjb2RlZF9mbXRzWzBdKTsKPiAtCWYtPnR5cGUgPSBWNEwyX0JVRl9UWVBFX1ZJ
REVPX0NBUFRVUkVfTVBMQU5FOwo+IC0JZi0+Zm10LnBpeF9tcC53aWR0aCA9IGN0eC0+Y29kZWRf
Zm10LmZtdC5waXhfbXAud2lkdGg7Cj4gLQlmLT5mbXQucGl4X21wLmhlaWdodCA9IGN0eC0+Y29k
ZWRfZm10LmZtdC5waXhfbXAuaGVpZ2h0Owo+IC0Jcmt2ZGVjX2ZpbGxfZGVjb2RlZF9waXhmbXQo
Y3R4LCAmZi0+Zm10LnBpeF9tcCk7Cj4gLX0KPiAtCj4gIHN0YXRpYyBpbnQgcmt2ZGVjX2VudW1f
ZnJhbWVzaXplcyhzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwKPiAgCQkJCSAgc3RydWN0
IHY0bDJfZnJtc2l6ZWVudW0gKmZzaXplKQo+ICB7CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

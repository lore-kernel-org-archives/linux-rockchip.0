Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 928F7F54AD2
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 16:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jC0x6Vf2a18UP+i5mlSwqcqxu1LHpDdUveCdrxboYMw=; b=qaAVEafQgsca13
	cEBdhlPZmDiELhR9pa8JVLLP11YIQCJIMI5XbsXClF0Jzp3i5lPF9gXu3qp9ze8DumjHyJTZboru/
	uT5h4h7xgasw9Y+ASCFi3UYNwjP+qofrCSzYsnqzHgKO/xyCpvpOyL1LrwLgGCOEV1EheiRMKVp88
	oktOIAzLnXViwOWMF6e7JOxOnxXEv1O/B76vIjyMbrtnpRwFPfdsKPLL+m6fIypkP1pfpFNMxTe4o
	rPKs8QLscpq91PPJSzqmRJK7GDdx8NzW6igtN8t4U0SgSXKyn1MZuclXSqTPQZv/zCZHVIT63UVK8
	aCOBQdcMFw2beWxLKOIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54OQ-00000001rJ3-39jW;
	Tue, 24 Mar 2026 16:14:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54ON-00000001rHL-41he
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Mar 2026 16:14:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1w54OA-0004bA-PA; Tue, 24 Mar 2026 17:13:54 +0100
Message-ID: <8af3e277-a901-4b31-9729-032df3c0d56c@pengutronix.de>
Date: Tue, 24 Mar 2026 17:13:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/27] media: rockchip: rga: avoid odd frame sizes for
 YUV formats
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
 <20260127-spu-rga3-v3-11-77b273067beb@pengutronix.de>
 <c154098ce7fd5d6bfcb44066b7c1f0cde07ff81d.camel@ndufresne.ca>
Content-Language: en-US
From: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <c154098ce7fd5d6bfcb44066b7c1f0cde07ff81d.camel@ndufresne.ca>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_091407_997572_AEAA1175 
X-CRM114-Status: GOOD (  20.34  )
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

SGkgTmljb2xhcywKCk9uIDMvMjAvMjYgNjo0NyBQTSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToK
PiBMZSBtYXJkaSAyNyBqYW52aWVyIDIwMjYgw6AgMTU6MzkgKzAxMDAsIFN2ZW4gUMO8c2NoZWwg
YSDDqWNyaXTCoDoKPj4gQXZvaWQgb2RkIGZyYW1lIHNpemVzIGZvciBZVVYgZm9ybWF0cywgYXMg
dGhleSBtYXkgY2F1c2UgdW5kZWZpbmVkCj4+IGJlaGF2aW9yLiBUaGlzIGlzIGRvbmUgaW4gcHJl
cGFyYXRpb24gZm9yIHRoZSBSR0EzLCB3aGljaCBoYW5ncyB3aGVuIHRoZQo+PiBvdXRwdXQgZm9y
bWF0IGlzIHNldCB0byAxMjl4MTI5IHBpeGVsIFlVVjQyMCBTUCAoTlYxMikuCj4+Cj4+IFRoaXMg
cmVxdWlyZW1lbnQgaXMgZG9jdW1lbnRlZCBleHBsaWNpdGx5IGZvciB0aGUgUkdBMyBpbsKgIHNl
Y3Rpb24gNS42LjMKPj4gb2YgdGhlIFJLMzU4OCBUUk0gUGFydCAyLiBGb3IgdGhlIFJHQTIgdGhl
IFJLMzU4OCBUUk0gUGFydCAyCj4+IChzZWN0aW9uIDYuMS4yKSBhbmQgUkszNTY4IFRSTSBQYXJ0
IDIgKHNlY3Rpb24gMTQuMikgb25seSBtZW50aW9ucyB0aGUKPj4geC95IG9mZnNldHMgYW5kIHN0
cmlkZSBhbGlnbmluZyByZXF1aXJlbWVudHMuIEJ1dCB0aGUgdmVuZG9yIGRyaXZlciBmb3IKPj4g
dGhlIFJHQTIgYWxzbyBjb250YWlucyBjaGVja3MgZm9yIHRoZSB3aWR0aCBhbmQgaGVpZ2h0IHRv
IGJlIGFsaWduZWQgdG8KPj4gMiBieXRlcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xz
Y2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5kZT4KPj4gLS0tCj4+ICDCoGRyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIHwgMTkgKysrKysrKysrKysrKystLS0tLQo+
PiAgwqAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5j
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKPj4gaW5kZXggMjFh
M2M2Y2QzOGRiYy4uNGZhNmFkYjEwYjdlZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhLmMKPj4gQEAgLTMzNyw2ICszMzcsMTkgQEAgc3RhdGljIGludCB2
aWRpb2NfdHJ5X2ZtdChzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwgc3RydWN0IHY0bDJf
Zm9ybWF0ICpmKQo+PiAgwqAJc3RydWN0IHJnYV9jdHggKmN0eCA9IGZpbGVfdG9fcmdhX2N0eChm
aWxlKTsKPj4gIMKgCWNvbnN0IHN0cnVjdCByZ2FfaHcgKmh3ID0gY3R4LT5yZ2EtPmh3Owo+PiAg
wqAJc3RydWN0IHJnYV9mbXQgKmZtdDsKPj4gKwlzdHJ1Y3QgdjRsMl9mcm1zaXplX3N0ZXB3aXNl
IGZybXNpemUgPSB7Cj4+ICsJCS5taW5fd2lkdGggPSBody0+bWluX3dpZHRoLAo+PiArCQkubWF4
X3dpZHRoID0gaHctPm1heF93aWR0aCwKPj4gKwkJLm1pbl9oZWlnaHQgPSBody0+bWluX2hlaWdo
dCwKPj4gKwkJLm1heF9oZWlnaHQgPSBody0+bWF4X2hlaWdodCwKPj4gKwkJLnN0ZXBfd2lkdGgg
PSAxLAo+PiArCQkuc3RlcF9oZWlnaHQgPSAxLAo+PiArCX07Cj4+ICsKPj4gKwlpZiAodjRsMl9p
c19mb3JtYXRfeXV2KHY0bDJfZm9ybWF0X2luZm8ocGl4X2ZtdC0+cGl4ZWxmb3JtYXQpKSkgewo+
PiArCQlmcm1zaXplLnN0ZXBfd2lkdGggPSAyOwo+PiArCQlmcm1zaXplLnN0ZXBfaGVpZ2h0ID0g
MjsKPiBGb3IgVjRMMl9QSVhfRk1UX1lVVjQyMlAgYW5kIE5WMTYgdGhpcyBpcyAyLzEuIEkgYmVs
aWV2ZSB5b3UgY2FuIGdlbmVyYWxpemUgdGhpcwo+IHdpdGggdGhlIGZvcm1hdCBpbmZvLCBhbmQg
c2tpcCB0aGlzIGNvbmRpdGlvbnM6Cj4KPiAJCS5zdGVwX3dpdGggPSBpbmZvLT52ZGl2LAo+IAkJ
LnN0ZXBfaGVpZ2h0ID0gaW5mby0+aGRpdgo+Cj4gVGhvdWdoLCBJJ20gc2F5aW5nIHRoYXQgZnJv
bSBhIHBpeGVsIGZvcm1hdCBwZXJzcGVjdGl2ZSwgaWYgdGhlIEhXIG5lZWRzIDIvMiBmb3IKPiBh
bGwgWVVWIGZvcm1hdHMsIGxldCBtZSBrbm93LCBJJ2xsIGdpdmUgbXkgUmIuCgpJJ3ZlIGludHJv
ZHVjZWQgdGhpcyBsaW1pdGF0aW9uIGFmdGVyIHJ1bm5pbmcgaW50byB0aGUgMTI5eDEyOSBoYW5n
IGFuZCAKbm90aWNpbmcgdGhhdCB0aGUgbGlicmdhIGp1c3QgZGlzYWxsb3dlZCBpdC4gSSd2ZSBk
aWQgYSBxdWljayB0ZXN0IHdpdGggCjEyOHgxMjkgUktfRk9STUFUX1lDYkNyXzQyMl9TUCAoTlYx
NikgYW5kIHRoZSBsaWJyZ2EgYWxzbyBkb2Vzbid0IGFsbG93IGl0OgoKcmdhX2FwaSB2ZXJzaW9u
IDEuMTAuMV9bNF0KW8KgIDMwMy4xNzc0ODBdIHJnYTogMTgwN8KgIMKgMTgwN8KgIDogW3RnaWQ6
MTgwN10gRGVzdHJveSBoYW5kbGVbMV0gd2hlbiAKdGhlIHVzZXIgZXhpdHMKMTAxLCBjaGVjayBl
cnJvciEgSW52YWxpZCBwYXJhbWV0ZXJzOiBzcmMsIEVycm9yIHl1diBub3QgYWxpZ24gdG8gMiwg
CnJlY3RbeCx5LHcsaF0gPSBbMCwgMCwgMTI4LCAxMjldLCB3c3RyaWRlID0gMTI4LCBoc3RyaWRl
ID0gMTI5LCBmb3JtYXQgPSAKMHg4MDAoY2JjcjQyMnNwKQoKVGhlIGxpYnJnYSBkb2NzIFsxXSBh
bHNvIGluZGljYXRlIHRoYXQgZm9yIGFsbCBZVVYgZm9ybWF0cyBvbiBhbGwgUkdBIAp2ZXJzaW9u
cyB0aGUgImhlaWdodCBzdHJpZGUgbXVzdCBiZSAyLWFsaWduZWQiIChiYXNlZCBvbiB0aGUgbGli
cmdhIAplcnJvciBvdXRwdXQgImhlaWdodCBzdHJpZGUiIHByb2JhYmx5IG1lYW5zICJoZWlnaHQg
aW4gcGl4ZWxzIikuIApUaGVyZWZvcmUgSSd2ZSBjb3BpZWQgdGhpcyByZXF1aXJlbWVudCBnbG9i
YWxseSBpbnRvIHRoZSBkcml2ZXIgdG8gYXZvaWQgCnBvdGVudGlhbCBwcm9ibGVtcyAoZS5nLiBo
YW5ncyBvciB1c2luZyBtZW1vcnkgb3V0c2lkZSBvZiB0aGUgYWN0dWFsIGltYWdlKS4KClNpbmNl
cmVseQogwqAgwqAgU3ZlbgoKWzFdIApodHRwczovL2NvZGViZXJnLm9yZy9haXJvY2tjaGlwL2xp
YnJnYS9zcmMvYnJhbmNoL21haW4vZG9jcy9Sb2NrY2hpcF9EZXZlbG9wZXJfR3VpZGVfUkdBX0VO
Lm1kI2ltYWdlLWZvcm1hdC1hbGlnbm1lbnQtaW5zdHJ1Y3Rpb25zCgo+IE5pY29sYXMKPgo+PiAr
CX0KPj4gICAKPj4gIMKgCWlmIChWNEwyX1RZUEVfSVNfQ0FQVFVSRShmLT50eXBlKSkgewo+PiAg
wqAJCWNvbnN0IHN0cnVjdCByZ2FfZnJhbWUgKmZybTsKPj4gQEAgLTM1OCwxMSArMzcxLDcgQEAg
c3RhdGljIGludCB2aWRpb2NfdHJ5X2ZtdChzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwg
c3RydWN0IHY0bDJfZm9ybWF0ICpmKQo+PiAgwqAJaWYgKCFmbXQpCj4+ICDCoAkJZm10ID0gJmh3
LT5mb3JtYXRzWzBdOwo+PiAgIAo+PiAtCXBpeF9mbXQtPndpZHRoID0gY2xhbXAocGl4X2ZtdC0+
d2lkdGgsCj4+IC0JCQnCoMKgwqDCoMKgwqAgaHctPm1pbl93aWR0aCwgaHctPm1heF93aWR0aCk7
Cj4+IC0JcGl4X2ZtdC0+aGVpZ2h0ID0gY2xhbXAocGl4X2ZtdC0+aGVpZ2h0LAo+PiAtCQkJCWh3
LT5taW5faGVpZ2h0LCBody0+bWF4X2hlaWdodCk7Cj4+IC0KPj4gKwl2NGwyX2FwcGx5X2ZybXNp
emVfY29uc3RyYWludHMoJnBpeF9mbXQtPndpZHRoLCAmcGl4X2ZtdC0+aGVpZ2h0LCAmZnJtc2l6
ZSk7Cj4+ICDCoAl2NGwyX2ZpbGxfcGl4Zm10X21wKHBpeF9mbXQsIGZtdC0+Zm91cmNjLCBwaXhf
Zm10LT53aWR0aCwgcGl4X2ZtdC0+aGVpZ2h0KTsKPj4gIMKgCXBpeF9mbXQtPmZpZWxkID0gVjRM
Ml9GSUVMRF9OT05FOwo+PiAgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

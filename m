Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03E1FC77B70
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/rh2EbQ8sdAyJmutm6AKuWy3olWm89XiWpzBHVdUQI=; b=ewD57L9QCnZMHb
	BBSkLcc80eIEOv1Ly5Nsgo2pVwwxMevacToXR8Ww3H67zFct8VNics8gpIvuGxihiEE64NV1f+wY7
	GF8VIOrwo0lH1HCQlC/RyTSDW7ZFYlnjpbJycubMXruDVZb28gRncOhyX9RUNevvk0h3Mf9fafTM7
	/6zLVVrNKpjfMAJX9YpmYWqRs1Kf9JM5oA73+20kBTqroiefEMYTBwm+voR1+qNK09BuluovgQFnq
	Ry3xrZBn2Zu7UswPkW48OQ38SCSV4NK05xdGWNWr6c2YeS64vEfCgNTAej32oftGGpOB/QgN/pVOF
	sqh6wjeeGD1miKhURckA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poKJq-00FOHS-2U;
	Mon, 17 Apr 2023 08:34:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poKJn-00FOGf-15;
	Mon, 17 Apr 2023 08:34:36 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1poKJY-0001gx-Ro; Mon, 17 Apr 2023 10:34:20 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: =?utf-8?B?T25kxZllag==?= Jirman <megi@xff.cz>,
 Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 Martijn Braam <martijn@brixit.nl>, Caleb Connolly <kc@postmarketos.org>,
 Jarrah Gosbell <kernel@undef.tools>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject:  Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
Date: Mon, 17 Apr 2023 10:34:20 +0200
Message-ID: <4152389.RUnXabflUD@diego>
In-Reply-To: <20230405135339.bcdyjdbtynuwf5yz@core>
References:  <20230405123813.2272919-1-pbrobinson@gmail.com>
 <20230405135339.bcdyjdbtynuwf5yz@core>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_013435_390505_C5FC36D3 
X-CRM114-Status: GOOD (  29.75  )
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

SGkgUGV0ZXIsIE9uZHJlaiwKCkFtIE1pdHR3b2NoLCA1LiBBcHJpbCAyMDIzLCAxNTo1MzozOSBD
RVNUIHNjaHJpZWIgT25kxZllaiBKaXJtYW46Cj4gT24gV2VkLCBBcHIgMDUsIDIwMjMgYXQgMDE6
Mzg6MTNQTSArMDEwMCwgUGV0ZXIgUm9iaW5zb24gd3JvdGU6Cj4gPiBGcm9tOiBPbmRyZWogSmly
bWFuIDxtZWdpQHhmZi5jej4KPiA+IAo+ID4gVGhlc2UgYXJlIGltcGxlbWVudGVkIHZpYSByZWd1
bGFyIEFEQywgc28gcmVndWxhciBwb2xsaW5nIGlzIG5lZWRlZCwKPiA+IGZvciB0aGVzZSBrZXlz
IHRvIHdvcmsuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5A
YnJpeGl0Lm5sPgo+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5A
YXl1ZmFuLmV1Pgo+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBSb2JpbnNvbiA8cGJyb2JpbnNvbkBnbWFpbC5jb20+
Cj4gPiAtLS0KPiA+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyAg
ICAgfCAyNiArKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDI2IGluc2Vy
dGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktcGluZXBob25lLXByby5kdHMKPiA+IGluZGV4IGEwNzk1YTJiMWNiMS4uZWNkNDgw
NDBlYjBjIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktcGluZXBob25lLXByby5kdHMKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCj4gPiBAQCAtMTAsNiArMTAsNyBAQAo+ID4gICAq
Lwo+ID4gIAo+ID4gIC9kdHMtdjEvOwo+ID4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnB1dC9n
cGlvLWtleXMuaD4KPiA+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvbGludXgtZXZlbnQt
Y29kZXMuaD4KPiA+ICAjaW5jbHVkZSAicmszMzk5LmR0c2kiCj4gPiAgI2luY2x1ZGUgInJrMzM5
OS1vcHAuZHRzaSIKPiA+IEBAIC0yOSw2ICszMCwyNiBAQCBjaG9zZW4gewo+ID4gIAkJc3Rkb3V0
LXBhdGggPSAic2VyaWFsMjoxMTUyMDBuOCI7Cj4gPiAgCX07Cj4gPiAgCj4gPiArCWFkYy1rZXlz
IHsKPiA+ICsJCWNvbXBhdGlibGUgPSAiYWRjLWtleXMiOwo+ID4gKwkJaW8tY2hhbm5lbHMgPSA8
JnNhcmFkYyAxPjsKPiA+ICsJCWlvLWNoYW5uZWwtbmFtZXMgPSAiYnV0dG9ucyI7Cj4gPiArCQlr
ZXl1cC10aHJlc2hvbGQtbWljcm92b2x0ID0gPDE2MDAwMDA+Owo+ID4gKwkJcG9sbC1pbnRlcnZh
bCA9IDwxMDA+Owo+ID4gKwo+ID4gKwkJYnV0dG9uLXVwIHsKPiA+ICsJCQlsYWJlbCA9ICJWb2x1
bWUgVXAiOwo+ID4gKwkJCWxpbnV4LGNvZGUgPSA8S0VZX1ZPTFVNRVVQPjsKPiA+ICsJCQlwcmVz
cy10aHJlc2hvbGQtbWljcm92b2x0ID0gPDEwMDAwMD47Cj4gPiArCQl9Owo+ID4gKwo+ID4gKwkJ
YnV0dG9uLWRvd24gewo+ID4gKwkJCWxhYmVsID0gIlZvbHVtZSBEb3duIjsKPiA+ICsJCQlsaW51
eCxjb2RlID0gPEtFWV9WT0xVTUVET1dOPjsKPiA+ICsJCQlwcmVzcy10aHJlc2hvbGQtbWljcm92
b2x0ID0gPDMwMDAwMD47Cj4gCj4gSSBkb24ndCBrbm93IGFib3V0IHRoaXMuLi4gSSd2ZSB0cmll
ZCByZWFkaW5nIHZvbHRhZ2UgdmFsdWVzIGZyb206Cj4gCj4gICBjZCAvc3lzL2J1cy9paW8vZGV2
aWNlcy9paW86ZGV2aWNlMCAocGF0aCBtYXkgZGlmZmVyIG9uIHlvdXIga2VybmVsKQo+IAo+ICAg
ZWNobyAkKChgY2F0IGluX3ZvbHRhZ2Vfc2NhbGVgKmBjYXQgaW5fdm9sdGFnZTFfcmF3YCkpCj4g
Cj4gYW5kIEkgZ2V0IHZhcmlvdXMgcmVhZGluZ3MgYXJvdW5kIHRoZSB2YWx1ZSAzMDAgbVYgb24g
Ym90aCBzaWRlcyBvZiB0aGUKPiB0aHJlc2hvbGQgd2hlbiBwcmVzc2luZyB0aGUgdm9sIGRvd24g
a2V5LiBTbyB0aGlzIHRocmVzaG9sZCBtYXkgbm90IGJlCj4gZ29vZCBlbm91Z2ggaW4gcHJhY3Rp
Y2UuCj4gCj4gVmFsdWVzIEkgZ2V0IGZvciBzZXZlcmFsIGRpZmZlcmVudCBwdXNoZXMgb2YgdGhl
IGJ1dHRvbjoKPiAKPiAgIDI5My41NTQ2ODc1Cj4gICAzMjguNzEwOTM3NQo+ICAgMzMyLjIyNjU2
MjUKPiAgIDMwNC4xMDE1NjI1Cj4gICAyOTcuMDcwMzEyNQo+ICAgNTIyLjA3MDMxMjUKPiAKPiAo
SSBoYXZlIHRvIHByZXNzIHF1aXRlIGhhcmQgdG8gZ2V0IGJlbGxvdyAzMDAgYW5kIHRvIGdldCBy
ZWxpYWJsZSBkZXRlY3Rpb24KPiBvZiB2b2x1bWUgZG93biBrZXkgcHJlc3MpCj4gCj4gT24gZGV2
ZWxvcG1lbnQgdmVyc2lvbiBvZiB0aGUgcGhvbmUsIHRoZSB2YWx1ZSByZXR1cm5lZCBieSBzYXJk
YWMgaXMgbGVzcwo+IHZhcmlhYmxlLiBCYXNpY2FsbHkgZWl0aGVyIDI5OC44MjgxMjUgb3IgMzAw
LjU4NTkzNzUgYnV0IGl0J3MgYWxzbyBvbgo+IHRoZSBlZGdlLgo+IAo+IEkgc3VnZ2VzdCByYWlz
aW5nIHRoZSB0aHJlc2hvbGQgdG8gc29tZXRoaW5nIGxpa2UgNjAwIGFuZCB0byBkbyB5b3VyIG93
bgo+IHRlc3RpbmcsIHRvIGdldCBtb3JlIGRhdGEgcG9pbnRzLiBVbnByZXNzZWQgdmFsdWUgaXMg
fjE3OTEuMjEwOTM3NSBvbiBib3RoCj4gcGhvbmVzLCBzbyA0MDAgc3RpbGwgZ2V0cyBhIGxvdCBv
ZiBoZWFkcm9vbS4gQW5kIHZvbHVtZSB1cCBpcyBhbHdheXMgPCAxNQo+IGluIG15IHRlc3RzLgoK
ZGlkIHRoaXMgZ2V0IG1vcmUgYXR0ZW50aW9uIG1lYW53aGlsZT8KCkkgZG9uJ3QgaGF2ZSBhIFBp
bmVwaG9uZSBQcm8gbXlzZWxmLCBzbyB5b3UnbGwgbmVlZCB0byBkZWNpZGUgYmV0d2VlbiB5b3UK
YWJvdXQgdGhlIHZhbHVlIGFuZCB0aGUgY29uY2VybiBPbmRyZWogcmFpc2VkIGhlcmUgZm9yIHRo
ZSB2YWx1ZS4KClRoYW5rcwpIZWlrbwoKCj4gT3RoZXJ3aXNlOgo+IAo+IFRlc3RlZC1ieTogT25k
cmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gCj4ga2luZCByZWdhcmRzLAo+IAlvLgo+IAo+ID4g
KwkJfTsKPiA+ICsJfTsKPiA+ICsKPiA+ICAJZ3Bpby1rZXlzIHsKPiA+ICAJCWNvbXBhdGlibGUg
PSAiZ3Bpby1rZXlzIjsKPiA+ICAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiBAQCAt
NDI5LDYgKzQ1MCwxMSBAQCAmc2RpbzAgewo+ID4gIAlzdGF0dXMgPSAib2theSI7Cj4gPiAgfTsK
PiA+ICAKPiA+ICsmc2FyYWRjIHsKPiA+ICsJdnJlZi1zdXBwbHkgPSA8JnZjY2ExdjhfczM+Owo+
ID4gKwlzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+ICsKPiA+ICAmc2RtbWMgewo+ID4gIAli
dXMtd2lkdGggPSA8ND47Cj4gPiAgCWNhcC1zZC1oaWdoc3BlZWQ7Cj4gCgoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

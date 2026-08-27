Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC3EEC61DC6
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAhEWL19+g4DGAZvSd4ozxVJhfo7uzFdrLdrlJQnu0E=; b=3+ElzyCLdebt/z
	wm1pIwmOZSlQhdW+M6vOB/upPpbBAo1MOLv7u1qJJQMtcl4yCCDV43/2g9wqdykkiwHMbgrzg3HIe
	qvMcBpLr3o8Knx6xNYj88qlZWm19sJ7ZYDyfpXjEWSd8yAxDr1H6cA1iogCwMV78A81/qmHOEoJHm
	JeDgj3yXQYFPbt4j6KlMHWm/d9JP63gxROafrkRa+god187sJxgClKerID6L8Hxq2PIJtr8Xi9VCs
	36twVUqQb7yXcIApWmfZf+CX7UO6s+6nxkZV1Jh4/n6tvdiNEPjCDZHJxJJOB3p1fGNUHaVh2HiY6
	z8N6QosNhYzNBzJzyvvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wza6k-0000000433z-18aJ;
	Thu, 27 Aug 2026 13:25:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wza6h-0000000433M-2X8V;
	Thu, 27 Aug 2026 13:25:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=USInVpt9Ng5yFt/QF3hDQ+uXdNq7DFvqcDl6JkdXsLw=; b=a8U/6YqBgfMZDVtk2DGVZgGIxx
	qz0ezVLpB1Hy064h27NZtGFanDcGy26KvecsRzawGY1iJDZ7n2q1e21ZsUX+AVltWshLDX+94/e0N
	N6h2i9HLz65jDCnpjHlGfQ4UewLZFh0jwRoMbdxhtsW2cvPmbj3S1KGjjwWKp/hshnZaGj9sBKhsX
	pz8EXeHnLr5QCR5BGGPnWpG4IJ+aErXNMzmue/6jW6Lga4vt3Mo7U2wTlJalhiGeQnM0tZeyyZnIa
	eELfBsc+JIk6Isp8PWL39OPXEHoCuwFjT+7r3bmWmdyPyN7TPNgxmdz+1j2Eg6OiCd9E6YkebP056
	G7OBIvSQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rudi Heitbaum <rudi@heitbaum.com>
Cc: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 rudi@heitbaum.com
Subject: Re: [PATCH] usb: onboard_dev: add the Rockchip rk1808
Date: Thu, 27 Aug 2026 15:25:23 +0200
Message-ID: <5096877.GXAFRqVoOG@phil>
In-Reply-To: <aouw7rH6FZxscUTO@0d3a7a881997>
References: <aouw7rH6FZxscUTO@0d3a7a881997>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_062527_645561_CC09A444 
X-CRM114-Status: GOOD (  19.22  )
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

SGkgUnVkaSwKCkFtIE1vbnRhZywgMjQuIEF1Z3VzdCAyMDI2LCAwNDo1MjowMiBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFJ1ZGkgSGVpdGJhdW06Cj4gVGhlIHJrMTgwOCBp
cyB0aGUgbnB1IGRpZSBpbiBhbiByazMzOTlwcm8gcGFja2FnZS4gSXQgaXMgd2lyZWQgdG8gb25l
Cj4gb2YgdGhlIHVzYjMgY29udHJvbGxlcnMgcmF0aGVyIHRoYW4gdG8gYW4gZXh0ZXJuYWwgcG9y
dCwgYW5kIGl0IG5lZWRzCj4gaXRzIHJlZmVyZW5jZSBjbG9jayBydW5uaW5nIGJlZm9yZSBpdCB3
aWxsIGJvb3QsIHdoaWNoIGlzIGV4YWN0bHkgd2hhdAo+IHRoaXMgZHJpdmVyIGV4aXN0cyB0byBk
byBmb3Igb25ib2FyZCBkZXZpY2VzLgo+IAo+IEl0IHRha2VzIG5vIHN1cHBseSBmcm9tIHRoZSBk
cml2ZXI6IHRoZSByYWlscyBhcmUgc2VxdWVuY2VkIGVsc2V3aGVyZS4KPiBPbmx5IHRoZSBjbG9j
ayBtYXR0ZXJzIGhlcmUsIGFuZCB0aGF0IGlzIGFscmVhZHkgb3B0aW9uYWwgYW5kIGhhbmRsZWQK
PiBnZW5lcmljYWxseS4KCnRoZSAiZWxzZXdoZXJlIiBtaWdodCBuZWVkIGEgYml0IG1vcmUgZXhw
bGFuYXRpb24gdG8gdmVyaWZ5IGl0J3MgdGhlIHJpZ2h0CmltcGxlbWVudGF0aW9uLiBFdmVuIGlm
IHRoZSByZWd1bGF0b3JzIGFyZSBhbHdheXMtb24gb3Igc29tZXRoaW5nLCB3ZQpzdGlsbCB3YW50
IHRoZSBzdXBwbGllcyBkZWZpbmVkIC0gZm9yIGZ1dHVyZSB1c2VzLgoKClRoYW5rcwpIZWlrbwoK
Cj4gVHdvIGlkcywgYmVjYXVzZSB0aGUgZGllIGNoYW5nZXMgaWRlbnRpdHkgYXMgaXQgYm9vdHM6
IDE4MGEgd2hpbGUgaXQgaXMKPiBpbiBtYXNrcm9tIGFuZCB0aGVuIGluIHRoZSByb2NrdXNiIGxv
YWRlciwgMTgwOCBvbmNlIGl0IGlzIHJ1bm5pbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogUnVkaSBI
ZWl0YmF1bSA8cnVkaUBoZWl0YmF1bS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvdXNiL21pc2Mvb25i
b2FyZF91c2JfZGV2LmggfCA4ICsrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvbWlzYy9vbmJvYXJkX3VzYl9kZXYu
aCBiL2RyaXZlcnMvdXNiL21pc2Mvb25ib2FyZF91c2JfZGV2LmgKPiBpbmRleCAzNTIzZjhmOGEx
NDkuLmUwN2Y1MDlhYzc1MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3VzYi9taXNjL29uYm9hcmRf
dXNiX2Rldi5oCj4gKysrIGIvZHJpdmVycy91c2IvbWlzYy9vbmJvYXJkX3VzYl9kZXYuaAo+IEBA
IC0xMzQsNiArMTM0LDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb25ib2FyZF9kZXZfcGRhdGEg
eG1vc194dmYzNTAwX2RhdGEgPSB7Cj4gIAkuaXNfaHViID0gZmFsc2UsCj4gIH07Cj4gIAo+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IG9uYm9hcmRfZGV2X3BkYXRhIHJvY2tjaGlwX3JrMTgwOF9kYXRh
ID0gewo+ICsJLnJlc2V0X3VzID0gMCwKPiArCS5udW1fc3VwcGxpZXMgPSAwLAo+ICsJLmlzX2h1
YiA9IGZhbHNlLAo+ICt9Owo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQg
b25ib2FyZF9kZXZfbWF0Y2hbXSA9IHsKPiAgCXsgLmNvbXBhdGlibGUgPSAidXNiLWEtY29ubmVj
dG9yIiwgLmRhdGEgPSAmdXNiX2FfY29ubl9kYXRhLCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJ1
c2I0MjQsMjQxMiIsIC5kYXRhID0gJm1pY3JvY2hpcF91c2I0MjRfZGF0YSwgfSwKPiBAQCAtMTY3
LDYgKzE3Myw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG9uYm9hcmRfZGV2
X21hdGNoW10gPSB7Cj4gIAl7IC5jb21wYXRpYmxlID0gInVzYjIxMDksODE3IiwgLmRhdGEgPSAm
dmlhbGFiX3ZsODE3X2RhdGEsIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInVzYjIxMDksMjgxNyIs
IC5kYXRhID0gJnZpYWxhYl92bDgxN19kYXRhLCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJ1c2Iy
MGIxLDAwMTMiLCAuZGF0YSA9ICZ4bW9zX3h2ZjM1MDBfZGF0YSwgfSwKPiArCXsgLmNvbXBhdGli
bGUgPSAidXNiMjIwNywxODA4IiwgLmRhdGEgPSAmcm9ja2NoaXBfcmsxODA4X2RhdGEsIH0sCj4g
Kwl7IC5jb21wYXRpYmxlID0gInVzYjIyMDcsMTgwYSIsIC5kYXRhID0gJnJvY2tjaGlwX3JrMTgw
OF9kYXRhLCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJ1c2IzNDMxLDYyNDEiLCAuZGF0YSA9ICZj
b3JlY2hpcHNfc2w2MzQxX2RhdGEsIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInVzYjM0MzEsNjM0
MSIsIC5kYXRhID0gJmNvcmVjaGlwc19zbDYzNDFfZGF0YSwgfSwKPiAgCXsgLmNvbXBhdGlibGUg
PSAidXNiNTk4NiwxMTk4IiwgLmRhdGEgPSAmYmlzb25faW50Y2FtZXJhX2RhdGEsIH0sCj4gCgoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=

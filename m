Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8564EC3ABC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 May 2025 17:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EXkNBEfNzUkt8LASQ8dlaiRRsKkN43G0Hp7g/hax04=; b=JQ0doib710I/sQ
	rDWtvTHIWDrLijvd3VwnUNVpuiXEjQ5fdeyqS7vteePdmD/Mx8xAjuKh+RvkKVWh4nF/8b6nkOBTm
	UNmeqHXGmyx6J9vuZv2pT39bLXEk+4fMtxftqfDzNTqKmBxd4+EAn/Pg5YnwwE3E5VUedS2ZxiHCR
	dwOBSPTwChiFVmNyZPeqbIUfBQhsxdOHSMvNZSCkPUHvHTS/5f801bs0lAVoQcACOCFFswX6QlVBq
	CHMDjjv4H3a8meoFJOpwI8PbIYdjSWRqGqr+4aE3iviMIxoRhGsu6ywZZ4knQggOhp/tKEO4yvh5A
	2/iv4ZNEK46mPj/WBixQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEtPu-0000000D5Sn-33f2;
	Tue, 13 May 2025 17:27:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEtNp-0000000D59N-3yxF;
	Tue, 13 May 2025 17:25:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=4H2DYdicH8cY2u0pkRgeIrS4yk2HqnARpS5QbRb4AGU=; b=AfMfEUbIftCZYx51MEWG76Jbxm
	86Gk4kUFZP6BYBhkGpWehh2aMMRwicmPjtYaWwYgvxQ3bTEBx4Tx2GfvHpj024OBaoofYFwNTZdcB
	zwUIIfeAhaINxePljmT0jzRoBC3WpeIFz4iNyG2kKv4Zuzt3+pdm5eKEeKZH9vmLdlL3tClL2SS6E
	HrxG2ScdVyaQbKdgMRfDDxn/X1FV8YzOI5X1CJtK9sG5ayg5OgGUErOUPfBPQ2Q8JTBfkCGNLXrBY
	i5V0meEORd+YrMN08fJ5rvUyetcz/eJMJHeEW0uOhpdlkGqHhOK2fbfezi9ah7+rM9pH52SnMII7F
	2o+OdJoA==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uEtNk-0002TU-Te; Tue, 13 May 2025 19:25:32 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Arnd Bergmann <arnd@arndb.de>, Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: move rk3528 i2c+uart aliases to board files
Date: Tue, 13 May 2025 19:25:31 +0200
Message-ID: <3704497.hdfAi7Kttb@diego>
In-Reply-To: <4a4c0295-d8f1-4d8a-92e4-34a69b42c728@kwiboo.se>
References: <20250510220106.2108414-1-heiko@sntech.de>
 <4a4c0295-d8f1-4d8a-92e4-34a69b42c728@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_102538_010505_2E8C81CB 
X-CRM114-Status: GOOD (  26.70  )
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

SGV5IEpvbmFzLAoKQW0gU29ubnRhZywgMTEuIE1haSAyMDI1LCAxMzowNTowOCBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEpvbmFzIEthcmxtYW46Cj4gT24gMjAyNS0wNS0x
MSAwMDowMSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiBFdmVuIHRob3VnaCB0aGV5IHdpbGwg
YmUgdGhlIHNhbWUgZm9yIGFsbCBib2FyZHMsIGkyYyBhbmQgdWFydCBhbGlhc2VzCj4gPiBhcmUg
c3VwcG9zZWQgdG8gbGl2ZSBpbiB0aGUgaW5kaXZpZHVhbCBib2FyZCBmaWxlcywgdG8gbm90IGNy
ZWF0ZQo+ID4gYWxpYXNlcyBmb3IgZGlzYWJsZWQgbm9kZXMuCj4gCj4gVGhpcyBzb3VuZHMgbGlr
ZSBzb21ldGhpbmcgdG9vbGluZyBzaG91bGQgYmUgYWJsZSB0byBoYW5kbGUsIGUuZy4gVS1Cb290
Cj4gdXNlIGZkdGdyZXAgdG8gZmlsdGVyIG91dCBub2RlcyAoYW5kIGFsaWFzZXMpIGZvciB0aGUg
RkRUIHVzZWQgYnkgZWFybHkKPiBib290IHBoYXNlcy4KPiAKPiBNYXliZSBEVEMganVzdCBuZWVk
IGEgZmVhdHVyZSB0byByZW1vdmUgYWxpYXNlcyB0byBkaXNhYmxlZCBub2Rlcz8KCnBlcnNvbmFs
bHkgSSBkb24ndCBzZWUgdGhlIGlzc3VlIHdpdGggYW4gaTJjIGFsaWFzIHBvaW50aW5nIHRvIGEg
ZGlzYWJsZWQKaTJjIGNvbnRyb2xsZXIsIGJ1dCBpdCBkb2VzIHNlZW0gdG8gdmlvbGF0ZSBzb21l
IGR0IGNvbnZlbnRpb24uCgpBdCBsZWFzdCBwZW9wbGUgZ290IGFkYW1hbnQgdGhpcyB0aW1lIGFi
b3V0IHRoZSBhbGlhc2VzIG1vdmluZyBpbnRvIHRoZQpib2FyZCBmaWxlIFswXS4KCgo+IEFsc28g
aG93IHNob3VsZCBvdmVybGF5cyBoYW5kbGUgYWxpYXNlcz8gQXJlIGFsbCBvdmVybGF5cyBzdXBw
b3NlIHRvIGFkZAo+IGFsaWFzZXMgZm9yIHRoZSBhZGQtb24gZGV2aWNlcyB0aGV5IG1heSBlbmFi
bGU/Cj4gCj4gQW5kIGhvdyBzaG91bGQgd2UgaGFuZGxlIGJvYXJkcyB3aXRoIGUuZy4gYSA0MC1w
aW4gaGVhZGVyIHdoZXJlIHBpbnMKPiBjb3VsZCBiZSBtdXhlZCB0byBtdWx0aXBsZSBmdW5jdGlv
bnMuIElzIGl0IHRoZSBvdmVybGF5cyByZXNwb25zaWJpbGl0eQo+IHRvIHJlbW92ZSBhbmQgcmVw
bGFjZSBhbGlhc2VzPyBFLmcuIGlmIHBpbnMgY2FuIG11eCBiZXR3ZWVuIGkyYzEgYW5kCj4gdWFy
dDMsIGFuZCBpMmMxIHdhcyBlbmFibGVkIGJ5IGRlZmF1bHQuCgpJIGd1ZXNzIHdlJ2xsIGNyb3Nz
IHRob3NlIGJyaWRnZSB0b2dldGhlciB3aXRoIHRoZSBiaWdnZXIgcm91bmQgb2YKZHQtcGVvcGxl
IHdoZW4gdGhlIGZpcnN0IG92ZXJsYXkgYXBwZWFycyA7LSkgLgoKSGVpa28KCgpbMF0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2RmNjAwM2UzLTdmYzMtNGU1MC1hNzAyLWYwYWE4ZDY2M2Rm
ZkBhcHAuZmFzdG1haWwuY29tLwoKPiAKPiBSZWdhcmRzLAo+IEpvbmFzCj4gCj4gPiAKPiA+IFNv
IG1vdmUgdGhlIG5ld2x5IGFkZGVkIGFsaWFzZXMgZm9yIHJrMzUyOCBvdmVyIHRvIHRoZSBSYWR4
YSBFMjBDIGJvYXJkLAo+ID4gd2hpY2ggaXMgdGhlIG9ubHkgcmszNTI4IGJvYXJkIHJpZ2h0IG5v
dy4KPiA+IAo+ID4gRml4ZXM6IGQzYTA1ZjQ5MGQwNCAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBB
ZGQgSTJDIGNvbnRyb2xsZXJzIGZvciBSSzM1MjgiKQo+ID4gU3VnZ2VzdGVkLWJ5OiBBcm5kIEJl
cmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+ID4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIg
PGhlaWtvQHNudGVjaC5kZT4KPiA+IC0tLQo+ID4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1
MjgtcmFkeGEtZTIwYy5kdHMgICAgICB8ICAyICsrCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1MjguZHRzaSAgICAgICAgIHwgMTYgLS0tLS0tLS0tLS0tLS0tLQo+ID4gIDIg
ZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LXJhZHhhLWUy
MGMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtcmFkeGEtZTIwYy5k
dHMKPiA+IGluZGV4IDUwNmQ1NDMzN2VjZS4uOWY2Y2NkOWRkMWY3IDEwMDY0NAo+ID4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtcmFkeGEtZTIwYy5kdHMKPiA+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LXJhZHhhLWUyMGMuZHRzCj4g
PiBAQCAtMTgsOCArMTgsMTAgQEAgLyB7Cj4gPiAgCj4gPiAgCWFsaWFzZXMgewo+ID4gIAkJZXRo
ZXJuZXQwID0gJmdtYWMxOwo+ID4gKwkJaTJjMSA9ICZpMmMxOwo+ID4gIAkJbW1jMCA9ICZzZGhj
aTsKPiA+ICAJCW1tYzEgPSAmc2RtbWM7Cj4gPiArCQlzZXJpYWwwID0gJnVhcnQwOwo+ID4gIAl9
Owo+ID4gIAo+ID4gIAljaG9zZW4gewo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTI4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzUyOC5kdHNpCj4gPiBpbmRleCBjZDhlZjM4OWNjZjMuLmIyNzI0Yzk2OWE3NiAxMDA2NDQKPiA+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kKPiA+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kKPiA+IEBAIC0yNCwyMiAr
MjQsNiBAQCBhbGlhc2VzIHsKPiA+ICAJCWdwaW8yID0gJmdwaW8yOwo+ID4gIAkJZ3BpbzMgPSAm
Z3BpbzM7Cj4gPiAgCQlncGlvNCA9ICZncGlvNDsKPiA+IC0JCWkyYzAgPSAmaTJjMDsKPiA+IC0J
CWkyYzEgPSAmaTJjMTsKPiA+IC0JCWkyYzIgPSAmaTJjMjsKPiA+IC0JCWkyYzMgPSAmaTJjMzsK
PiA+IC0JCWkyYzQgPSAmaTJjNDsKPiA+IC0JCWkyYzUgPSAmaTJjNTsKPiA+IC0JCWkyYzYgPSAm
aTJjNjsKPiA+IC0JCWkyYzcgPSAmaTJjNzsKPiA+IC0JCXNlcmlhbDAgPSAmdWFydDA7Cj4gPiAt
CQlzZXJpYWwxID0gJnVhcnQxOwo+ID4gLQkJc2VyaWFsMiA9ICZ1YXJ0MjsKPiA+IC0JCXNlcmlh
bDMgPSAmdWFydDM7Cj4gPiAtCQlzZXJpYWw0ID0gJnVhcnQ0Owo+ID4gLQkJc2VyaWFsNSA9ICZ1
YXJ0NTsKPiA+IC0JCXNlcmlhbDYgPSAmdWFydDY7Cj4gPiAtCQlzZXJpYWw3ID0gJnVhcnQ3Owo+
ID4gIAl9Owo+ID4gIAo+ID4gIAljcHVzIHsKPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

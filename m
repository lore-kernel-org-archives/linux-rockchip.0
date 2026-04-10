Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8103F44843
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Apr 2026 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4wfYgen6Jg1PTQKMPSpkutBFqT0D57VSYsXexF62M8=; b=M5825LYKEq6/ki
	jrHJX70zbE+buIdYdjpOUouyuQTgpV2ZQ7gGzjI2Lh5tev2QXvQgKD6WoFdoi9iaUPZ5x60qBS9//
	pe1EfYpEtPaeF0S39PT/2xBD1S4R+JSlO2fzrgUsfc+5ORfBxewbT81ONXIuXC6NF9E+TTg18m4W6
	VBQzPHXoQpEXvSt1VE5ZjDpzPBUijKKPlPxetBKcOWiIabB4cVBj32p5sJuBktbKQYDDMwwUYvDzx
	s5AXH9XUM2ytdcd/5Bu4srJJm9BgUBGT6eorUmcOrwPV8N599u3oQs63JPmqqCD1wn/ettbkxYZ+Y
	K/1lFHSvEMUJ7ctWSF4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBAEi-0000000C5xq-2pll;
	Fri, 10 Apr 2026 11:41:20 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBAEg-0000000C5xQ-0hSg
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Apr 2026 11:41:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1F922682;
	Fri, 10 Apr 2026 04:41:08 -0700 (PDT)
Received: from [10.1.29.18] (e122027.cambridge.arm.com [10.1.29.18])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A140E3FAF5;
	Fri, 10 Apr 2026 04:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1775821274; bh=2wuoq9XMmD2V3k5JFrUn8DPEimM8UcRzPRCVnd56uIY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=a9C6C0pMK6Lm+gXRvzEf8dX83yYaTeRTNeP5lr9r3FKULKtocImvsXEYk/xYnfPC4
	 Qp9yToAWV2fdLb26X61N164vTstZElcypSmI295XpBIsGu+VzDnX/9N8IvXEcPEqUZ
	 t2GmxQSjZHfpf0ktkWP122h5C921a/Ia5ARMUbdQ=
Message-ID: <9b00710f-ba4b-4aa1-8402-98cea34055fa@arm.com>
Date: Fri, 10 Apr 2026 12:41:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] gpio: rockchip: convert to dynamic GPIO base allocation
To: Linus Walleij <linusw@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
 Bartosz Golaszewski <brgl@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 ye.zhang@rock-chips.com
References: <1774864401-177149-1-git-send-email-shawn.lin@rock-chips.com>
 <CAMRc=Mfg3KvifZgpD8c7kkLNhv3zgDKvHB=n_=MQJ2EtwRi44A@mail.gmail.com>
 <73130e47-dbd7-c0d0-eba1-8bafba9f91e5@rock-chips.com>
 <384b25a0-d55d-4415-82fb-dcf2e6ad1232@kwiboo.se>
 <CAD++jLmhkZhWzjV9b6r9P4oZq=4dqVEVV7mwwE_WWRgRXbq3AQ@mail.gmail.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <CAD++jLmhkZhWzjV9b6r9P4oZq=4dqVEVV7mwwE_WWRgRXbq3AQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_044118_381749_419CEA47 
X-CRM114-Status: GOOD (  29.82  )
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

T24gMDkvMDQvMjAyNiAyMzoyNSwgTGludXMgV2FsbGVpaiB3cm90ZToKPiBPbiBUaHUsIEFwciA5
LCAyMDI2IGF0IDk6MDnigK9QTSBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+IHdyb3Rl
Ogo+IAo+PiBUaGlzIHBhdGNoIGlzIGNhdXNpbmcgYm9vdCBpc3N1ZXMgb24gbXkgUm9jayBQaSA0
IChSSzMzOTkpIGJvYXJkIHVzaW5nCj4+IG5leHQtMjAyNjA0MDkga2VybmVsIHdoZXJlIHRoaXMg
cGF0Y2ggaGFzIGJlZW4gYXBwbGllZCBhcyBjODA3OWY4M2UwYmYuCgpJIGhhZCBzaW1pbGFyIHBy
b2JsZW1zIHdpdGggbXkgRmlyZWZseSBSSzMyODguCgo+Pgo+PiBbICAgIDAuMDgyNzcxXSByb2Nr
Y2hpcC1ncGlvIGZmNzIwMDAwLmdwaW86IHByb2JlZCAvcGluY3RybC9ncGlvQGZmNzIwMDAwCj4+
IFsgICAgMC4wODM1MzFdIHJvY2tjaGlwLWdwaW8gZmY3MzAwMDAuZ3BpbzogcHJvYmVkIC9waW5j
dHJsL2dwaW9AZmY3MzAwMDAKPj4gWyAgICAwLjA4NDExMF0gcm9ja2NoaXAtZ3BpbyBmZjc4MDAw
MC5ncGlvOiBwcm9iZWQgL3BpbmN0cmwvZ3Bpb0BmZjc4MDAwMAo+PiBbICAgIDAuMDg0NzQ2XSBy
b2NrY2hpcC1ncGlvIGZmNzg4MDAwLmdwaW86IHByb2JlZCAvcGluY3RybC9ncGlvQGZmNzg4MDAw
Cj4+IFsgICAgMC4wODUzODldIHJvY2tjaGlwLWdwaW8gZmY3OTAwMDAuZ3BpbzogcHJvYmVkIC9w
aW5jdHJsL2dwaW9AZmY3OTAwMDAKPj4gLS0KPj4gWyAgICAwLjIxMjIwOF0gcm9ja2NoaXAtcGlu
Y3RybCBwaW5jdHJsOiBwaW4gNjM3IGlzIG5vdCByZWdpc3RlcmVkIHNvIGl0IGNhbm5vdCBiZSBy
ZXF1ZXN0ZWQKPj4gWyAgICAwLjIxMjI3MV0gcm9ja2NoaXAtcGluY3RybCBwaW5jdHJsOiBlcnJv
ciAtRUlOVkFMOiBwaW4tNjM3IChncGlvMzo2MzcpCj4+IFsgICAgMC4yMTIzNDRdIGxlZHMtZ3Bp
byBsZWRzOiBlcnJvciAtRUlOVkFMOiBGYWlsZWQgdG8gZ2V0IEdQSU8gJy9sZWRzL2xlZC0wJwo+
PiBbICAgIDAuMjEyMzg5XSBsZWRzLWdwaW8gbGVkczogcHJvYmUgd2l0aCBkcml2ZXIgbGVkcy1n
cGlvIGZhaWxlZCB3aXRoIGVycm9yIC0yMgo+IAo+IEkgdGhpbmsgdGhpcyBtYXkgYmUgYmVjYXVz
ZSB0aGUgcmszMzk5IGlzIG1pc3NpbmcgZ3Bpby1yYW5nZXMgZGVzcGl0ZSBpdCBpcyBhCj4gbmV3
IHBsYXRmb3JtIGFuZCBzaG91bGQgaGF2ZSBoYWQgaXRzIGdwaW8tcmFuZ2VzIGRlZmluZWQgaW4K
PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1iYXNlLmR0c2kgLi4uCj4gCj4g
QSBidW5jaCBvZiB0aGVzZSByb2NrY2hpcHMgc2VlbSB0byBoYXZlIHRoaXMgcHJvYmxlbSBkZXNw
aXRlIHRoZQo+IGNvZGUgaW4gcGluY3RybC1yb2NrY2hpcC5jIHRoYXQgc2F5czoKPiAKPiAgICAg
LyoKPiAgICAgICogRm9yIERldmljZVRyZWUtc3VwcG9ydGVkIHN5c3RlbXMsIHRoZSBncGlvIGNv
cmUgY2hlY2tzIHRoZQo+ICAgICAgKiBwaW5jdHJsJ3MgZGV2aWNlIG5vZGUgZm9yIHRoZSAiZ3Bp
by1yYW5nZXMiIHByb3BlcnR5Lgo+ICAgICAgKiBJZiBpdCBpcyBwcmVzZW50LCBpdCB0YWtlcyBj
YXJlIG9mIGFkZGluZyB0aGUgcGluIHJhbmdlcwo+ICAgICAgKiBmb3IgdGhlIGRyaXZlci4gSW4g
dGhpcyBjYXNlIHRoZSBkcml2ZXIgY2FuIHNraXAgYWhlYWQuCj4gICAgICAqCj4gICAgICAqIElu
IG9yZGVyIHRvIHJlbWFpbiBjb21wYXRpYmxlIHdpdGggb2xkZXIsIGV4aXN0aW5nIERldmljZVRy
ZWUKPiAgICAgICogZmlsZXMgd2hpY2ggZG9uJ3Qgc2V0IHRoZSAiZ3Bpby1yYW5nZXMiIHByb3Bl
cnR5IG9yIHN5c3RlbXMgdGhhdAo+ICAgICAgKiB1dGlsaXplIEFDUEkgdGhlIGRyaXZlciBoYXMg
dG8gY2FsbCBncGlvY2hpcF9hZGRfcGluX3JhbmdlKCkuCj4gICAgICAqLwo+ICAgICBpZiAoIW9m
X3Byb3BlcnR5X3ByZXNlbnQoYmFuay0+b2Zfbm9kZSwgImdwaW8tcmFuZ2VzIikpIHsKPiAgICAg
ICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqcGN0bG5wID0gb2ZfZ2V0X3BhcmVudChiYW5rLT5vZl9u
b2RlKTsKPiAgICAgICAgIHN0cnVjdCBwaW5jdHJsX2RldiAqcGN0bGRldiA9IE5VTEw7Cj4gCj4g
ICAgICAgICBpZiAoIXBjdGxucCkKPiAgICAgICAgICAgICByZXR1cm4gLUVOT0RBVEE7Cj4gCj4g
ICAgICAgICBwY3RsZGV2ID0gb2ZfcGluY3RybF9nZXQocGN0bG5wKTsKPiAgICAgICAgIG9mX25v
ZGVfcHV0KHBjdGxucCk7Cj4gICAgICAgICBpZiAoIXBjdGxkZXYpCj4gICAgICAgICAgICAgcmV0
dXJuIC1FTk9ERVY7Cj4gCj4gICAgICAgICByZXQgPSBncGlvY2hpcF9hZGRfcGluX3JhbmdlKGdj
LCBkZXZfbmFtZShwY3RsZGV2LT5kZXYpLCAwLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICBn
Yy0+YmFzZSwgZ2MtPm5ncGlvKTsKPiAgICAgICAgIGlmIChyZXQpIHsKPiAgICAgICAgICAgICBk
ZXZfZXJyKGJhbmstPmRldiwgIkZhaWxlZCB0byBhZGQgcGluIHJhbmdlXG4iKTsKPiAgICAgICAg
ICAgICBnb3RvIGZhaWw7Cj4gICAgICAgICB9Cj4gICAgIH0KPiAKPiBOb3RpY2UgZGVyZWZlcmVu
Y2Ugb2YgZ3Bpb2xpYiBpbnRlcm5hbCBnYy1iYXNlIGhlcmUuCj4gCj4gICAgICAgICByZXQgPSBn
cGlvY2hpcF9hZGRfcGluX3JhbmdlKGdjLCBkZXZfbmFtZShwY3RsZGV2LT5kZXYpLCAwLAo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICBnYy0+YmFzZSwgZ2MtPm5ncGlvKTsKPiAKPiBhcmd1bWVu
dHMgYXJlIGdwaXBjaGlwLCBwaW5jdG9udHJvbCBkZXZpY2UgbmFtZSwKPiBncGlvIG9mZnNldCwg
cGluIG9mZnNldCwgbnVtYmVyIG9mIHBpbnMuCj4gCj4gR1BJTyBvZmZzZXQgYWx3YXlzIDA/PyBQ
YXNzaW5nIEdQSU8gb2Zmc2V0IGFzIHBpbiBvZmZzZXQ/Pwo+IAo+IFRoaXMgaXMgcHJvYmFibHkg
anVzdCB3b3JraW5nIGJlY2F1c2Ugb2YgbHVjayB0aGF0IDAsMCBpcyBwYXNzZWQuCj4gCj4gVGhp
cyBzaG91bGQgcHJvYmFibHkgcmF0aGVyIGJlIHNvbWV0aGluZyBsaWtlOgo+IAo+ICAgICAgICAg
cmV0ID0gZ3Bpb2NoaXBfYWRkX3Bpbl9yYW5nZShnYywgZGV2X25hbWUocGN0bGRldi0+ZGV2KSwg
Z2MtPmJhc2UsCj4gICAgICAgICAgICAgICAgICAgICAgICAgIGJhbmstPmJhbmtfbnVtICogYmFu
ay0+bnJfcGlucywgZ2MtPm5ncGlvKTsKClRoaXMgaG93ZXZlciBkaWRuJ3Qgd29yay4gSW5zdGVh
ZCBDaGF0R1BUIHdhcyBhYmxlIHRvIHN1Z2dlc3Q6CgoJcmV0ID0gZ3Bpb2NoaXBfYWRkX3Bpbl9y
YW5nZShnYywgZGV2X25hbWUocGN0bGRldi0+ZGV2KSwgMCwKCQkJCSAgICAgYmFuay0+cGluX2Jh
c2UsIGdjLT5uZ3Bpbyk7Cgp3aGljaCB3b3JrcyBmb3IgbWUuIEkgd29uJ3QgcmVwZWF0IHRoZSB3
YWZmbGUgZnJvbSBDaGF0R1BUIGJlY2F1c2UgSQpob25lc3RseSBkb24ndCB1bmRlcnN0YW5kIHRo
aXMgYXJlYSBvZiB0aGUga2VybmVsIChhbmQgeW91IGNhbiBhc2sgYW4gQUkKeW91cnNlbGYgaWYg
eW91IHdhbnQgdG8pLiBJJ20gbm90IHN1YnNjcmliZWQsIHNvIHBsZWFzZSBDQyBtZSBpZiB5b3UK
d2FudCBtZSB0byB0cnkgYW55IGFsdGVybmF0aXZlIGZpeGVzLgoKVGhhbmtzLApTdGV2ZQoKPiBI
ZXJlIHdlIHB1dCB0aGUgYXNzaWduZWQgKGJ5IGdwaW9saWIpIGdjLT5iYXNlIGluIHRoZSByaWdo
dCBwbGFjZSwgdGhlbgo+IGJhbmstPmJhbmtfbnVtIHNob3VsZCBiZSAwLDEsMi4uLiBhbmQgYmFu
ay0+bnJfcGlucyBhbHdheXMgMzIgKEkgdGhpbmspLgo+IAo+IEpvbmFzIGNhbiB5b3UgdGVzdCB0
aGlzIG9uZWxpbmVyIGNoYW5nZT8gSSBjYW4gc2VuZCBhIHByb3BlciBwYXRjaAo+IGlmIGl0IGhl
bHBzLgo+IAo+IElmIHRoaXMgd29ya3MgdGhlIERUUyBmaWxlcyBjYW4gKFNIT1VMRCkgYmUgZml4
ZWQgd2l0aCBwcm9wZXIgcmFuZ2VzIGxhdGVyLgo+IAo+IEl0IHdvdWxkIGJlIG5pY2UgaWYgd2Ug
Y291bGQgYXVnbWVudCB0aGUgcm9ja2NoaXAgcGluY3RybCBEVCBzY2hlbWEgdG8KPiBtYWtlIGdw
aW8tcmFuZ2VzIG1hbmRhdG9yeSBvbiBuZXcgU29Dcy4KPiAKPiBZb3VycywKPiBMaW51cyBXYWxs
ZWlqCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

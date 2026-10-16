Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C8D0CCF2C3
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 22:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8D44WtdCpOJJOGCvpKlawJ6FuePvoI8PDFO0/HBySuo=; b=SccACUebF7RGn9
	uPWsRqmOmos7Fl4dX5sfJCkqme7vX4t097Dg0G9O4gZxv010NeF4+Q3e0jkPglw6qhOnuIjiut42g
	bLdBqitLYskQ7AQRHnqts8wdrEI+IfB5M+K4UC7oakLXNjCQrSm83lQvduKIEaY9E4/4TCvXNfVWR
	uRRabDudCh6NPRgDG1T7LPSHvUG+yznqMD4aec09i+qrlwwT2N/A8n9/85JcMYbyung83VL+ESdjQ
	oWoUCC0HRWX3yTz3iqeHca0aTggefa2gSKCgQip+VRmYnJCb24H+iVpiFecRM8bl1LGxXByKAY6KO
	OcZ0EK9NCtsCbylvCpNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHqXt-00000004BDu-2iRL;
	Fri, 16 Oct 2026 22:37:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHqXr-00000004BDM-1o9O;
	Fri, 16 Oct 2026 22:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1OIdajx1AC8ugqYiL+Ehn0uiLIubAtd5Cp9SN33d2y8=; b=ckLBauByU8LiGS+iOGmWnvoPCs
	qtYSD2lPhfiqIO2+yDB7SYsjufItglhuWkLay6X2/EmI0R8w6DcjD28qZplPlwa6IDmG8JJYF4jck
	IbK46fQkvXsvNKgeh18s0WK9GFv5g4uy6doHl228Rkq0ZZln9ds+1732G4AHoG75pDmWNEZZWmo54
	skKD49uYCWSLCeUauzPyJ3nfLkrRfIZ9bPbGC7f7KPFwZkYQlGoUF8xeqPcFuqV2Fj1XhHkH2B+At
	ZnKjqBgNX4EbKQj+61fCaV0Bvxi5ln0H2oxwBIPLQX+0eEsgohu509hfL+m4f/FxX1uzPEUwtGXeM
	cZi3+7tA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Russell King <linux@armlinux.org.uk>, jbx6244@gmail.com
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2] ARM: rockchip: smp: enable secondary rk3066a/rk3188 CPUs
Date: Sat, 17 Oct 2026 00:36:55 +0200
Message-ID: <1979829.CQOukoFCf9@diego>
In-Reply-To: <20261013-cpu-v2-v2-1-fe3bbc9edd33@gmail.com>
References: <20261013-cpu-v2-v2-1-fe3bbc9edd33@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_153659_519921_229136AB 
X-CRM114-Status: GOOD (  21.82  )
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

SGkgSm9oYW4sCgpBbSBEaWVuc3RhZywgMTMuIE9rdG9iZXIgMjAyNiwgMTg6MjA6NDkgTWl0dGVs
ZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBKb2hhbiBKb25rZXIgdmlhIEI0IFJlbGF5
Ogo+IEZyb206IEpvaGFuIEpvbmtlciA8amJ4NjI0NEBnbWFpbC5jb20+Cj4gCj4gRWFybHkgUm9j
a2NoaXAgU29DcyBsaWtlIHJrMzA2NmEgYW5kIHJrMzE4OCBoYWQgYm9vdCBsb2FkZXJzCj4gdGhh
dCByZW1hcHBlZCB0aGUgYm9vdCBST00gYW5kIHRoZSBpbnRlcm5hbCBtZW1vcnkuIEN1cnJlbnRs
eQo+IFUtYm9vdCBtYWtlcyB1c2Ugb2YgYSBjb21tb24gYm9hcmQgZmlsZSB3aXRob3V0IHJlbWFw
cGluZwo+IHJlc3VsdGluZyBpbiB0aGUgc2Vjb25kYXJ5IENQVXMgcG93ZXIgdXAgaGFuZ2luZyBp
biBhIHdhaXQgbG9vcC4KPiAKPiBNYWtlIHRoZSB2YXJpb3VzIGJvb3QgbG9hZGVyIG1ldGhvZHMg
d29yayBieToKPiAKPiAqIGFkZCBjb2RlIHRoYXQgZGlzYWJsZXMgcmVtYXBwaW5nIG9uIGJvdGgg
cmszMDY2IGFuZCByazMxODgKPiAqIGNoYW5nZSB0byB1c2UgdGhlIHNhbWUgYm9vdCBST00gcGF0
aCBmb3IgYWxsIHNvY3MgaW4gcm9ja2NoaXBfYm9vdF9zZWNvbmRhcnkoKQo+ICogZHJvcCB0aGUg
cm9ja2NoaXBfc21wX3ByZXBhcmVfc3JhbSgpIHBhcnQKPiAKPiBTaWduZWQtb2ZmLWJ5OiBKb2hh
biBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPgoKaW4gZ2VuZXJhbCB0aGlzIHNlZW1zIHRvIHdv
cmsgb24gYm90aCBteSByazMxODgtcm9jayBhbmQgcmszMDY2LW1hcnNib2FyZCwKYWZ0ZXIgSSBk
aWQgc29tZSBjaGFuZ2VzOgoKPiAtLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL2NvcmUuaAo+
ICsrKyAvZGV2L251bGwKPiBAQCAtMSwxMCArMCwwIEBACj4gLS8qIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyICovCj4gLS8qCj4gLSAqIENvcHlyaWdodCAoYykgMjAx
MyBNdW5kb1JlYWRlciBTLkwuCj4gLSAqIEF1dGhvcjogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KPiAtICovCj4gLQo+IC1leHRlcm4gY2hhciByb2NrY2hpcF9zZWNvbmRhcnlfdHJh
bXBvbGluZTsKPiAtZXh0ZXJuIGNoYXIgcm9ja2NoaXBfc2Vjb25kYXJ5X3RyYW1wb2xpbmVfZW5k
Owo+IC0KPiAtZXh0ZXJuIHVuc2lnbmVkIGxvbmcgcm9ja2NoaXBfYm9vdF9mbjsKCnRoYXQgZmls
ZSBpcyBpbmNsdWRlZCByb2NrY2hpcC5jIGFzIHdlbGwsIG5vdCBzdXJlIHdoeSB0aGF0IGlzIGlu
IHRoZXJlLApidXQgdGhpcyBpbmNsdWRlIG5lZWRzIHRvIGJlIHJlbW92ZWQgdG9vLgoKWy4uLl0K
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jIGIvYXJjaC9h
cm0vbWFjaC1yb2NrY2hpcC9wbGF0c21wLmMKPiBpbmRleCBmNjU5ZDg5NGJmYWUuLmVjZTE3ZTlj
YmFjYSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3BsYXRzbXAuYwo+ICsr
KyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcGxhdHNtcC5jCgpbLi4uXQoKPiBAQCAtMzIwLDkg
KzI3OSwyNyBAQCBzdGF0aWMgdm9pZCBfX2luaXQgcm9ja2NoaXBfc21wX3ByZXBhcmVfY3B1cyh1
bnNpZ25lZCBpbnQgbWF4X2NwdXMpCj4gIAlmb3IgKGkgPSAxOyBpIDwgbmNvcmVzOyBpKyspCj4g
IAkJcG11X3NldF9wb3dlcl9kb21haW4oMCArIGksIGZhbHNlKTsKPiAgCj4gKwkvKiBNYWtlIHN1
cmUgdGhhdCB0aGUgcmVtYXAgZnVuY3Rpb24gaXMgZGlzYWJsZWQgKi8KPiAgCWlmIChyZWFkX2Nw
dWlkX3BhcnQoKSA9PSBBUk1fQ1BVX1BBUlRfQ09SVEVYX0E5KSB7Cj4gLQkJaWYgKHJvY2tjaGlw
X3NtcF9wcmVwYXJlX3NyYW0obm9kZSkpIHsKPiAtCQkJb2Zfbm9kZV9wdXQobm9kZSk7Cj4gKwkJ
dW5zaWduZWQgaW50IHJlZzsKPiArCQlpbnQgcmV0Owo+ICsKPiArCQlpZiAob2ZfbWFjaGluZV9p
c19jb21wYXRpYmxlKCJyb2NrY2hpcCxyazMwNjZhIikpIHsKPiArCQkJcmVnID0gUkszMDY2X0dS
Rl9TT0NfQ09OMDsKPiArCQkJZ3JmID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfY29tcGF0aWJs
ZSgicm9ja2NoaXAscmszMDY2LWdyZiIpOwo+ICsJCX0gZWxzZSB7Cj4gKwkJCXJlZyA9IFJLMzE4
OF9HUkZfU09DX0NPTjA7Cj4gKwkJCWdyZiA9IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X2NvbXBh
dGlibGUoInJvY2tjaGlwLHJrMzE4OC1ncmYiKTsKPiArCQl9Cj4gKwo+ICsJCWlmIChJU19FUlIo
Z3JmKSkgewo+ICsJCQlwcl9lcnIoIiVzOiBjb3VsZCBub3QgZmluZCBncmYgZHQgbm9kZVxuIiwg
X19mdW5jX18pOwo+ICsJCQlyZXR1cm47Cj4gKwkJfQo+ICsKPiArCQlyZXQgPSByZWdtYXBfdXBk
YXRlX2JpdHMoZ3JmLCByZWcsIE5PQ19SRU1BUCwgMCk7Cgp0aGUgR1JGIHJlZ2lzdGVycyB1c2Ug
aGlnaHdvcmQtbWFza3MsIHNvIHRoaXMgc2hvdWxkIHByb2JhYmx5IGJlIGxpa2UKCXJldCA9IHJl
Z21hcF93cml0ZShncmYsIHJlZywgTk9DX1JFTUFQIDw8IDE2KTsKZW5hYmxpbmcgdGhlIE5PQ19S
RU1BUCBiaXQgZm9yIHdyaXRpbmcgYW5kIHRodXMgaGF2aW5nICIwIiB3cml0dGVuCnRvIHRoYXQg
Yml0LgoKCkhlaWtvCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==

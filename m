Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8401D30CC1
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 21:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O222p0EWJlduftuTOXrU0mF58zDL6nUrgqnVWGDCvu4=; b=UDoP/GqH+A7p3X
	9cGe5oQ/B+4IwTyFcjHTK/TO2qAiH/wSg9vwL4wjxEPpoPR/B8rJDMyd62FyNQCmXd3pjA8uxL/VH
	olnvtnrQyoTARV/kf/FB+rRqcvF+ihMRh9GjFZVObbAeD4rOEI+tuXkgq37OdjVuq6qXQag/2mskl
	rW0FFHMBUqJCtiKRBywjjLuLVymEJtQtGORRMQupizYCsY/y3jpiv8H6fi/DAjQcu/qcRiLSygyBJ
	Bxn20sZ0RdwsTMlljB2nB5nkwH2ZQDykYKyhLlWsRMMMkSdue3b+GX0XARATtlG6yzQOd86MrtzSn
	2xrhXG1ZK54FgsVTVEtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vflqq-00000007kCO-2f18;
	Tue, 13 Jan 2026 21:22:56 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vflqm-00000007kBl-28kr;
	Tue, 13 Jan 2026 21:22:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1768339369; bh=Op0uamfeLyB3wX8fzuuz2awjdvaakOqefNAePnLsAu4=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=rBZ+dHU4g7jRvLFCk29jMddcSvXG3zd26NaCZBxXwg20pVqVlcD+fJDyT8QIHyRKm
	 IMboeluLxeeWx5EaL+IaZ8yvjoUEF/5J3TCC8aZCT1/NTiPjtfgUCAZnxll8V2g3aP
	 SQLjiRjcGvkRJKE5KNz7IeJQvqpMWTh7kWp+8Ulo=
Date: Tue, 13 Jan 2026 22:22:48 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: guptarud@gmail.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Remove interrupt GPIO for WiFi
 for the Pinephone Pro
Message-ID: <4upnfpxyn4mfxqsg6cl2a3tjpqwrwfdg3a3233ozwoaqrmjjpp@hh4zvr625lrp>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	guptarud@gmail.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-3-284d6e83b212@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112-ppp_connectivity-v1-3-284d6e83b212@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_132253_003945_9097292E 
X-CRM114-Status: GOOD (  17.90  )
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

SGkgUnVkcmFrc2hhLAoKT24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMTA6NDI6MjZQTSAtMDgwMCwg
UnVkcmFrc2hhIEd1cHRhIHZpYSBCNCBSZWxheSB3cm90ZToKPiBGcm9tOiBPbmRyZWogSmlybWFu
IDxtZWdpQHhmZi5jej4KPiAKPiBXaWZpIGlzIGN1cnJlbnRseSB1bnVzYWJsZSBpZiBpbnRlcnJ1
cHRzIGFyZSBkZWZpbmVkLiBMZXQncyByZW1vdmUgdGhlbQo+IHNvIHRoYXQgV2lmaSBuZXR3b3Jr
cyBhcmUgYWN0dWFsbHkgZGlzY292ZXJhYmxlLgo+IAo+IENvLWRldmVsb3BlZC1ieTogTWFydGlq
biBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+Cj4gU2lnbmVkLW9mZi1ieTogTWFydGlqbiBCcmFh
bSA8bWFydGlqbkBicml4aXQubmw+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBLYW1pbCBUcnpjacWEc2tp
IDxheXVmYW5AYXl1ZmFuLmV1Pgo+IFNpZ25lZC1vZmYtYnk6IEthbWlsIFRyemNpxYRza2kgPGF5
dWZhbkBheXVmYW4uZXU+CgpeXiB0aGVzZSBsaW5lcyBhcmUgaW5jb3JyZWN0IGFuZCB0aGUgcGF0
Y2ggaXMgbm90IG1lYW50IGZvciB1cHN0cmVhbWluZywgcmVhbGx5LgoKSSB0aGluayB3aGV0aGVy
IE9PQiBpbnRlcnJ1cHRzIHdvcmsgb3Igbm90IG9uIFBQUCBtYXkgYmUgYSBmdW5jdGlvbiBvZgp3
aGF0IEZXIGFuZCBmaXJtd2FyZSBjb25maWcgZmlsZSBpcyB1c2VkLiAKClNvIGVnLiBpbiBicmNt
Zm1hYzQzNDU1LXNkaW8ucGluZTY0LHBpbmVwaG9uZS1wcm8udHh0IHlvdSBjYW4gaGF2ZSBzZXR0
aW5ncwpsaWtlOgoKIyBPT0IgSVJRIHNldHRpbmdzIC0tIG5leHQgMyAic2QiIHBhcmFtZXRlcnMg
dW5jb21tZW50ZWQgZm9yIE9PQiBJUlEuIEVkZ2Ugc2Vuc2l0aXZlIGludGVycnVwdCB2aWEgV0xf
SE9TVF9XQUtFIGxpbmUuCiNtdXhlbmFiPTB4MTAKI3NkX2dwb3V0PTAKI3NkX29vYm9ubHk9MQoj
c2RfZ3B2YWw9MQoKVGhhdCBhZmZlY3QgT09CIGludGVycnVwdCBiZWhhdmlvci4gU28gRlcgY29u
ZmlnIG5lZWRzIHRvIG1hdGNoIGtlcm5lbCBEVAphbmQgdmljZSB2ZXJzYS4KCk15IEZXIGNvbmZp
ZyBkb2VzIG5vdCBzZXQgYW55IG9mIHRoZXNlIG9wdGlvbnMsIHNvIEkgZGlzYWJsZWQgdGhlIE9P
QiBpbnRlcnJ1cHQKaW4gRFQsIHRvby4gQmV0dGVyIG9wdGlvbiBtYXkgYmUgdG8gdXBzdHJlYW0g
TlZSQU0gY29uZmlnIGZpbGUgdG8KbGludXgtZmlybXdhcmUuIEJ1dCBJIGRvbid0IHRoaW5rIGFu
eW9uZSBoYXMgYW55IGlkZWEgd2hpY2ggZmlsZSBpcyBjb3JyZWN0LAphbmQgc2F0aXNmaWVzIHJl
Z3VsYXRvcnkgcmVxdWlyZW1lbnRzLgoKSSBndWVzcyBhZGRpbmcgbXV4ZW5hYj0weDEwIHdvdWxk
IGZpeCB0aGlzLCBzaW5jZSB0aGF0J3Mgd2hhdCBQaW5lYm9vayBQcm8gdXNlcwphbmQgaXQgaGFz
IHRoZSBzYW1lIFdpRmkgY2hpcCBhbmQgc2ltaWxhciBkZXNpZ24sIGFuZCBPT0IgaW50ZXJydXB0
cyB3b3JrIHRoZXJlLgoKQmVzdCByZWdhcmRzLAoJby4KCj4gU2lnbmVkLW9mZi1ieTogT25kcmVq
IEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gU2lnbmVkLW9mZi1ieTogUnVkcmFrc2hhIEd1cHRhIDxn
dXB0YXJ1ZEBnbWFpbC5jb20+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzIHwgMyAtLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcGluZXBob25lLXByby5kdHMKPiBpbmRleCA5N2QwYmY0NTUyNTguLjY5YmI5ZGU0Y2U1
NSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5l
cGhvbmUtcHJvLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LXBpbmVwaG9uZS1wcm8uZHRzCj4gQEAgLTgzNCw5ICs4MzQsNiBAQCAmc2RpbzAgewo+ICAJYnJj
bWY6IHdpZmlAMSB7Cj4gIAkJY29tcGF0aWJsZSA9ICJicmNtLGJjbTQzMjktZm1hYyI7Cj4gIAkJ
cmVnID0gPDE+Owo+IC0JCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW80PjsKPiAtCQlpbnRlcnJ1
cHRzID0gPFJLX1BEMCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiAtCQlpbnRlcnJ1cHQtbmFtZXMg
PSAiaG9zdC13YWtlIjsKPiAgCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICAJCXBpbmN0
cmwtMCA9IDwmd2lmaV9ob3N0X3dha2VfbD47Cj4gIAl9Owo+IAo+IC0tIAo+IDIuNTIuMAo+IAo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=

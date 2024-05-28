Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3713C25B7E
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 08:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGe4clnmufFvkhoyIkPLGoBIVamFmsL0MU233AZHDtk=; b=Zu2Lxpm2+TCdQ8
	TaKXxg15sk7XX5QMFJHGTZVm7WDXaZCdb4Tb4SUCkxd9KamQcxQlqHZO4XUpOc2ymips7f8RbTWJu
	fnkcEIpoS0FonvnUYvGVJxGGQEGjzqlMHzXCIkmKZjxbLG+HCjpSczTl+uOxG2Io5164k1mfMZSQ6
	R86prgZ30fX33sly9P/SPt8sFW5cVoLJJ+toI4z/GFZgZcyDRQLkQCrSmj2KtQ97bRCF0RvIG/h3H
	bImOMhpydG7nDnL6IkWMUBPzQFyacxv7Ti/jKXSGVHh9XL1ckDSGbaqMCZsYKlkoW82p8m3TxkOCM
	glNZibE+hH0C4UT0M/vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsRG-0000000HWj1-3DYh;
	Tue, 28 May 2024 08:44:10 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsRD-0000000HWhv-1l25
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 08:44:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1716885834;
 bh=GQr2PqTVIib2CwbHMvN8Y3i6rh0ebN+xNoUL7A1dzos=;
 b=N8N7Yyz+XiVCGNY/9/+kwTe/Hs4dGQZnp9pqovP0A4/X0wvlSWCA3WXoXPq7hO9GbwjliZ4Wc
 +ZAFkHevpm2adPN3/0NDo+2TNNiXhxQu79xqiaDmmdcVtXPcCwVcG0HCJzXzTV92mSt/eELqhl0
 09dYX/FGx46v84g+fzMSdJj5Nnkn2vhaPN3XIGbXQE1Fn6nKCw2jD4Ka90mrJ/WIT2DL/M1BBUI
 PqAKbOFCrn7wyD5cxzi22HwZiHCks/HBwJv30mIk9Jg6wkPf0gRqz7rg9WRPl6XKyI4WEG/kc91
 uTOMYKBRYsa2MRxTruUOl0/zjJm9/RSGfyy0lxhldv8w==
Message-ID: <82435177-1a4a-46c0-9a12-c056647d587f@kwiboo.se>
Date: Tue, 28 May 2024 10:43:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] pinctrl: rockchip: add rk3308b SoC support
To: "=?UTF-8?Q?Heiko_St=C3=BCbner?=" <heiko@sntech.de>, Dmitry Yashin
 <dmt.yashin@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Rob Herring
 <robh@kernel.org>, Jianqun Xu <jay.xu@rock-chips.com>,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
 <81aa0e4e-a3c7-41d1-8cd2-4d060730b37a@gmail.com>
 <20240517085832.365ac878@booty> <4771649.rnE6jSC6OK@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <4771649.rnE6jSC6OK@diego>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 665599456a993415841a589f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_014407_502932_0A775229 
X-CRM114-Status: GOOD (  18.54  )
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

T24gMjAyNC0wNS0yOCAxMDoxNywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRnJlaXRhZywg
MTcuIE1haSAyMDI0LCAwODo1ODozMiBDRVNUIHNjaHJpZWIgTHVjYSBDZXJlc29saToKPj4gSGVs
bG8gRG1pdHJ5LAo+Pgo+PiBPbiBUaHUsIDE2IE1heSAyMDI0IDE3OjA2OjQ2ICswNTAwCj4+IERt
aXRyeSBZYXNoaW4gPGRtdC55YXNoaW5AZ21haWwuY29tPiB3cm90ZToKPj4KPj4+IEhpIEx1Y2Es
Cj4+Pgo+Pj4gT24gMTUuMDUuMjQgMjE6MjksIEx1Y2EgQ2VyZXNvbGkgd3JvdGU6Cj4+Pj4gSSdt
IHNrZXB0aWNhbCBhYm91dCB0aGlzIGJlaW5nIGJvdW5kIHRvIGEgbmV3IERUIGNvbXBhdGlibGUu
IEFzIGZhciBhcyBJCj4+Pj4ga25vdyB0aGUgUkszMzA4IGFuZCBSSzMzMDhCIGFyZSBtb3N0bHkg
ZXF1aXZhbGVudCwgc28gaXQgbG9va3MgYXMgdGhlCj4+Pj4gcGluY3RybCBpbXBsZW1lbnRhdGlv
biBjb3VsZCBiZSBkZXRlY3RlZCBhdCBydW50aW1lLiBUaGlzIHdvdWxkIGxldAo+Pj4+IHByb2R1
Y3RzIHRvIGJlIGJ1aWx0IHdpdGggZWl0aGVyIGNoaXAgdmVyc2lvbiBhbmQgd29yayBvbiBhbnkg
d2l0aG91dAo+Pj4+IGFueSBEVCBjaGFuZ2UuICAKPj4+Cj4+Pgo+Pj4gVGhhbmtzIGZvciB5b3Vy
IGZlZWRiYWNrLgo+Pj4KPj4+IEluZGVlZCwgdGhlc2UgU29DJ3MgaGF2ZSBhIGxvdCBpbiBjb21t
b24sIGJ1dCBhcyBJIGNhbiBzZWUgdGhlIHJrMzMwOGIKPj4+IGhhcyBtb3JlIGJsb2NrcywgbGlr
ZSBleHRyYSBQV00ncyAocmszMzA4IGRhdGFzaGVldCAxLjUgWzBdIHNob3dzIG9ubHkKPj4+IDF4
IFBXTSA0Y2gsIHdoZW4gcmszMzA4YiBhbmQgcmszMzA4Yi1zIGhhdmUgM3ggUFdNIDRjaCksIDEt
d2lyZSBhbmQKPj4+IENBTiBjb250cm9sbGVyIChtZW50aW9uZWQgaW4gdGhlIFRSTSwgYnV0IGRy
b3BwZWQgZnJvbSByazMzMDhiCj4+PiBkYXRhc2hlZXQgZm9yIHNvbWUgcmVhc29uKS4KPj4+Cj4+
PiBTbywgaW4gbXkgdmlldywgaXQgcmVhbGx5IG1ha2VzIHNlbnNlIHRvIGFkZCByazMzMDhiLmR0
c2ksIHdoZXJlIGV4dHJhCj4+PiBQV00ncywgcGluY3RybCBjb21wYXRpYmxlIGFuZCBpdHMgcGlu
IGZ1bmN0aW9ucyBjYW4gYmUgbW92ZWQuIEFuZCBpZgo+Pj4gaXRzIG5vdCB3b3J0aCBpdCwgdGhl
biBJIHdpbGwgdHJ5IHRvIGFkYXB0IHRoZSBlbnRpcmUgc2VyaWVzIHRvIHJ1bnRpbWUKPj4+IGNv
bmZpZyBiYXNlZCBvbiBjcHVpZCBsaWtlIHlvdSBzdWdnZXN0ZWQuCj4+Cj4+IEhhdmluZyBhIHJr
MzMwOGIuZHRzaSB3b3VsZCBwcm9iYWJseSBtYWtlIHNlbnNlLCB5ZXMsIGFzIHRoZXJlIGFyZQo+
PiBzZXZlcmFsIGRpZmZlcmVuY2VzIGFzIHlvdSBkZXNjcmliZWQuIEhvd2V2ZXIgZm9yIHRoZSBw
aW5jdHJsIGl0IHNlZW1zCj4+IHByb2JhYmx5IG5vdCBuZWNlc3NhcnkuCj4+Cj4+IEkndmUgc2Vl
biBhY3R1YWwgcHJvZHVjdHMgYmVpbmcgbWFudWZhY3R1cmVkIHdpdGggdHdvIGRpZmZlcmVudCBS
SzMzMDgKPj4gdmFyaWFudHMgaW4gZGlmZmVyZW50IGxvdHMgb2YgcHJvZHVjdGlvbiwgYnV0IHdp
dGggdGhlIHNhbWUgRFQgdGhhdCBoYXMKPj4gcm9ja2NoaXAscmszMzA4LXBpbmN0cmwgaW4gaXQu
IFRob3NlIHdvdWxkIG5lZWQgYSBfc2VsZWN0aXZlXyBEVAo+PiB1cGdyYWRlIGluIG9yZGVyIHRv
IGJlbmVmaXQgZnJvbSB5b3VyIGNoYW5nZXMuCj4+Cj4+IEFuZCBldmVuIGlmIGEgcHJvZHVjdCBo
YWQgYWx3YXlzIHVzZWQgdGhlIEIgdmFyaWFudCwgaXQgd291bGQgbmVlZCBEVAo+PiB1cGdyYWRl
IHdoZW4gdXBncmFkaW5nIHRvIGEga2VybmVsIHdpdGggeW91ciBjaGFuZ2VzLiBPdGhlcndpc2Ug
d2l0aAo+PiBwYXRjaCAxLzMgb2YgdGhpcyBzZXJpZXMgdGhlIHBpY3RybCBkcml2ZXIgd291bGQg
bG9zZSBtYW55IHJvdXRlcyBhZnRlcgo+PiB1cGdyYWRpbmcgdGhlIGtlcm5lbCAoYnV0IG5vdCB0
aGUgRFQpOiBjYW4gdGhpcyBsZWFkIHRvCj4+IHByZXZpb3VzbHktd29ya2luZyBkZXZpY2VzIHRv
IHN0b3Agd29ya2luZz8gSSB0aGluayB0aGlzIGlzIGEKPj4gZnVuZGFtZW50YWwgcXVlc3Rpb24g
dG8gcmVwbHkuCj4gCj4gSWYgdGhpbmdzIGNhbiBiZSBydW50aW1lLWRldGVjdGFibGUsIHRoZXkg
c2hvdWxkIGJlIGRldGVjdGVkIGF0IHJ1bnRpbWUuCj4gU28geWVzLCB3aGlsZSB3ZSBuZWVkIHRv
IGtub3cgdGhhdCBpdCBpcyBhIHJrMzMwOC1zb21ldGhpbmcgYmVmb3JlCj4gdmlhIHRoZSBkdCwg
aWYgd2UgY2FuIGRpc3Rpbmd1aXNoIGJldHdlZW4gdGhlIHJrMzMwOCB2YXJpYW50cyBhdCBydW50
aW1lCj4gd2Ugc2hvdWxkIGRlZmluaXRseSBkbyBzby4KClRoZSBHUkZfQ0hJUF9JRCByZWcgKDB4
RkYwMDA4MDApIGNhbiBiZSB1c2VkIHRvIGlkZW50aWZ5IHdoYXQgbW9kZWwgaXMKdXNlZCBhdCBy
dW50aW1lOgoKUkszMzA4OiAweENFQSAoZXJyYXRhOiBjaGlwIGlkIHZhbHVlIGlzIDMyJ2gwY2Vh
ICgzMidkMzMwNikpClJLMzMwOEI6IDB4MzMwOApSSzMzMDhCUzogMHgzMzA4QwoKVmVuZG9yIFUt
Qm9vdCBtYWtlIHVzZSBvZiB0aGlzIHJlZyB0byBpZGVudGlmeSB3aGF0IG1vZGVsIGlzIHJ1bm5p
bmc6Cmh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC91LWJvb3QvYmxvYi9uZXh0LWRl
di9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL2NwdS5oI0w2OC1MODIKCkkgY2Fu
IG9ubHkgdmFsaWRhdGUgb24gcmVhbCBodyB0aGF0IHRoZSByZWcgdmFsdWUgaXMgMHgzMzA4IGZv
ciBSSzMzMDhCLgoKUmVnYXJkcywKSm9uYXMKCj4gCj4gSGVpa28KPiAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

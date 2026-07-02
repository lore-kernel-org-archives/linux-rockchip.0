Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9133C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 18:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InkEBRoJwkQMGaR9uxyiYf0RBT/AqKtqUmksU4ADEBQ=; b=4bmWKjDMTI0oXu
	ExI8z5QwsuVdO/1hMoxDhMMe9WLJ2cQJDVteuEtFuNrv3Il8AA29c5FnyTyGX4vvMhBPmP7K3UOID
	sWij+eXmmDz+span64q0spOdZ+Plgjvf1VjkhkVrqCc5P8czYxNpUryDhzWjy7mEMQnnGayXjAsIU
	bBk3HVVbGTB1dsqp7k+8tmeQTh12s5YmEL4JzjWOqwZ5RsMhJ18QX+YpWXsy/BkCxql53bsOqtQoD
	nkHzVbQLvTq5ndTYAyRwBISiWZVkmNgP7WrWncLyOzZyeWyDbJvIWCpenoqcKzdITdI81idyaNEP1
	2vPmMPAdskNgk0J1H6sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfM4e-00000005FuB-2CbX;
	Thu, 02 Jul 2026 18:23:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfM4b-00000005FtO-31Mj;
	Thu, 02 Jul 2026 18:23:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HMwrIHSesSwBeH6rt0sJESP8Af/ZauXLbklgi13pmLA=; b=NfmR94NelT+fa24vbw3X4cZSHb
	QvuasTkKBv7nIffde1TU80ZGRZNMujgsv/nuoVr3pIcjqDy7UPTdzPhtTHRVAuRk7JhYoTg9uHII1
	OXSywskLhP2W95jLSdoQhIR2fZTrye+LU2vzfa9Etb5OTfmJFQ6XHFQfu1sZlbRxoktutEE7P9SoB
	ArPm6ocKSke0tRI7ISqWohmMBzfpnbFQkUclzfS5GijvvmpVyKhpm6aoK5HSe/bsdsJEIDkx8WO8d
	ugD7ymSrVdM9xlSDc9/rOOCWLEx468ifdBKwzJAo50QBqnSdERWYx4IwvokZQ4i5enrACjARLo8IU
	wX/8jIZA==;
From: Heiko Stuebner <heiko@sntech.de>
To: oklopfer37@gmail.com, Oren Klopfer <oklopfer37@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Thorsten Leemhuis <regressions@leemhuis.info>, stable@vger.kernel.org
Subject: Re: [PATCH] Revert "arm64: dts: rockchip: Further describe the WiFi for the
 Pinephone Pro"
Date: Thu, 02 Jul 2026 20:23:38 +0200
Message-ID: <6745357.1oUyQt6lIG@phil>
In-Reply-To: <20260615225014.219115-1-oklopfer37@gmail.com>
References: <20260615225014.219115-1-oklopfer37@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_112341_780174_99044C8A 
X-CRM114-Status: GOOD (  15.25  )
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

SGkgT3JlbiwKCkFtIERpZW5zdGFnLCAxNi4gSnVuaSAyMDI2LCAwMDo1MDoxMyBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIE9yZW4gS2xvcGZlcjoKPiBUaGlzIHJldmVydHMg
Y29tbWl0IDA5NmJkOGM2NzkxODVmODk4Y2FlOTkzM2M2YTY4NjUwZmEyNmVhNGYuCj4gCj4gSnVz
dCBhcyB3aXRoIHRoZSBQaW5lYm9vayBQcm8sIHRoZXJlIGFyZSBtdWx0aXBsZSBjaGlwc2V0IHZh
cmlhbnRzIGZvciB0aGUgUGluZXBob25lIFBybywgYW5kIG11bHRpcGxlIGZpcm13YXJlIGJpbmFy
aWVzIGZvciBkaWZmZXJlbnQgZGlzdHJpYnV0aW9ucy4gVGhlIGNoYW5nZSBjYXVzZXMgaXNzdWVz
IHdpdGggc29tZSBvZiB0aGVzZSBjb21iaW5hdGlvbnMsIGFuZCByZXZlcnRpbmcgaXQgcmVzb2x2
ZXMgdGhlIGlzc3Vlcy4gU2VlIHRoZSBDbG9zZXMgYmVsb3cgZm9yIHRoZSBmdWxsIHJlcG9ydC4K
PiAKPiBTaW1pbGFybHkgd2l0aCB0aGUgUGluZWJvb2sgUHJvIGFkanVzdG1lbnQsIHRoZSBvcmln
aW5hbCBjb21taXQgb25seSBpbmRpY2F0ZXMgImZ1cnRoZXIgZGVzY3JpcHRpb24iIGFuZCBub3Qg
aW5kaWNhdGl2ZSBvZiBmaXhpbmcgYW55IGV4aXN0aW5nIGlzc3Vlcywgc28gcmV2ZXJ0aW5nIHNo
b3VsZCBub3Qga2ljayBhbnkgYmFjayB1cC4KClRoZSBjb21taXQgbWVzc2FnZSBkaWQgbm90IGdl
dCBhbnkgbGluZSBicmVha3MsIDcyIGNoYXJhY3RlcgppcyB0aGUgcHJlZmVycmVkIGxpbmUgbGVu
Z3RoLgoKQWxzbyB0aGUgcGF0Y2ggY29udGVudHMgaXRzZWxmIGdvdCBtYW5nbGVkLgpBbGwgdGhl
IGluZGVudGF0aW9uIGlzIHNldCBhcyBzcGFjZXMsIHNvIHRoYXQgcGF0Y2ggd29uJ3QgYXBwbHku
CgpQbGVhc2UgdHJ5IHVzaW5nIGI0IG9yIGF0IGxlYXN0IGdpdCBzZW5kLWVtYWlsIGZvciBzZW5k
aW5nIHBhdGNoZXMuCgpUaGFua3MgYSBsb3QKSGVpa28KCgo+IEZpeGVzOiAwOTZiZDhjNjc5MTgg
KCJhcm02NDogZHRzOiByb2NrY2hpcDogRnVydGhlciBkZXNjcmliZSB0aGUgV2lGaSBmb3IgdGhl
IFBpbmVwaG9uZSBQcm8iKQo+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+
IENjOiBQZXRlciBSb2JpbnNvbiA8cGJyb2JpbnNvbkBnbWFpbC5jb20+Cj4gQ2M6IFRob3JzdGVu
IExlZW1odWlzIDxyZWdyZXNzaW9uc0BsZWVtaHVpcy5pbmZvPgo+IENjOiBzdGFibGVAdmdlci5r
ZXJuZWwub3JnCj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjYwNjA3MjI1
OTAxLjY0MDE5LTEtb2tsb3BmZXIzN0BnbWFpbC5jb20vCj4gU2lnbmVkLW9mZi1ieTogT3JlbiBL
bG9wZmVyIDxva2xvcGZlcjM3QGdtYWlsLmNvbT4KPiAtLS0KPiAgLi4uL2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyB8IDE4IC0tLS0tLS0tLS0tLS0tLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMTggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKPiBpbmRleCA4ZDI2
YmQ5Yjc1MDAuLmQ0NmNkZmUzZjc4NCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCj4gQEAgLTczNCwxMiArNzM0
LDYgQEAgbGlnaHRfaW50X2w6IGxpZ2h0LWludC1sIHsKPiAgICAgICAgICB9Owo+ICAgICAgfTsK
PiAgCj4gLSAgICB3aWZpIHsKPiAtICAgICAgICB3aWZpX2hvc3Rfd2FrZV9sOiB3aWZpLWhvc3Qt
d2FrZS1sIHsKPiAtICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9IDw0IFJLX1BEMCBSS19GVU5D
X0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiAtICAgICAgICB9Owo+IC0gICAgfTsKPiAtCj4gICAg
ICB3aXJlbGVzcy1ibHVldG9vdGggewo+ICAgICAgICAgIGJ0X3dha2VfcGluOiBidC13YWtlLXBp
biB7Cj4gICAgICAgICAgICAgIHJvY2tjaGlwLHBpbnMgPSA8MiBSS19QRDIgUktfRlVOQ19HUElP
ICZwY2ZnX3B1bGxfbm9uZT47Cj4gQEAgLTc2NiwxOSArNzYwLDcgQEAgJnNkaW8wIHsKPiAgICAg
IHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gICAgICBwaW5jdHJsLTAgPSA8JnNkaW8wX2J1
czQgJnNkaW8wX2NtZCAmc2RpbzBfY2xrPjsKPiAgICAgIHNkLXVocy1zZHIxMDQ7Cj4gLSAgICAj
YWRkcmVzcy1jZWxscyA9IDwxPjsKPiAtICAgICNzaXplLWNlbGxzID0gPDA+Owo+ICAgICAgc3Rh
dHVzID0gIm9rYXkiOwo+IC0KPiAtICAgIGJyY21mOiB3aWZpQDEgewo+IC0gICAgICAgIGNvbXBh
dGlibGUgPSAiYnJjbSxiY200MzI5LWZtYWMiOwo+IC0gICAgICAgIHJlZyA9IDwxPjsKPiAtICAg
ICAgICBpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvND47Cj4gLSAgICAgICAgaW50ZXJydXB0cyA9
IDxSS19QRDAgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gLSAgICAgICAgaW50ZXJydXB0LW5hbWVz
ID0gImhvc3Qtd2FrZSI7Cj4gLSAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAt
ICAgICAgICBwaW5jdHJsLTAgPSA8JndpZmlfaG9zdF93YWtlX2w+Owo+IC0gICAgfTsKPiAgfTsK
PiAgCj4gICZwd20wIHsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

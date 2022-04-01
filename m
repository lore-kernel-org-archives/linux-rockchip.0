Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55401C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 18:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9b6VTD1GfLSBXsupf2tj16nilpmlwKHhDL/LdhEhXf0=; b=U4lIfBdeQ3S4sf
	cPOSoU6aQGPaZDjwyIYVLnu4bu1hUUVNF9xMJtYHun+0P1K7idUni1tE5/ZmZKmO92MHqbrbYMEFE
	w7WeCa+/YmbPYRlXzFsDiOS85pPczNzqLt3A9d/kHMzTHQZTpRc7+Z+cY9pLsKwux2i+St4jDuON3
	n7W1UhwaJt7XdRpQJ1IN1r3GuG36JtWvbTV1B69LlGoOUoPQ4ihp6rE21DOLM9RgAkkHJMjpRIIKj
	frLh8xxNYoZgB7AH7DR8HXxT88P6pz5WAlbPwFrTzJZdLvdwIdB7MCbKaIXYW0WYD3ons7IbqYpso
	W419gWr5BkZ5PIWvmRkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naLwe-006pTn-OB; Fri, 01 Apr 2022 18:24:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naLwU-006pRx-Fo; Fri, 01 Apr 2022 18:24:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 060E760C69;
 Fri,  1 Apr 2022 18:24:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 643DDC340EE;
 Fri,  1 Apr 2022 18:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648837453;
 bh=rcBit4D+cJoPaMnAkofaQ1xtj/Y+I4p055Ym5x4wpfg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=RHgJE8FS1xd73mO0tEcxy32mK8k0oW+n5FvSrRwp7qXoCHklunZnWADnIxsgwHIkx
 LSFEc8hkCjv6tHrZp8kOKfD3Sh34+R8VuWKmHeXT1cE9+Ru5aSOvubifCsmPUWgvO8
 2uD8kjzvMZPcQY4IbzO3rIWu9T9GAZZ/tMn/GCx6AjvjJpf89wObMEcMxTt2OsGKwb
 EUn+Up6C/MUZjFApbX4rlQ0eOVEVMp+FXnwZ6RlkXKXXbcHM/Gh6+ZPaHQ3BmXmKcv
 9ROrR2SNVB/R5DVLrk58YeiCLevP5lQsukCQRa5nAeojjWdmavQZzh4nHJF9mnSfag
 rybfMxJ6QHerQ==
MIME-Version: 1.0
In-Reply-To: <3107512.vfdyTQepKt@diego>
References: <20220329111323.3569-1-jbx6244@gmail.com>
 <20220331225134.7A0A9C340ED@smtp.kernel.org> <3107512.vfdyTQepKt@diego>
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
To: Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, zhangqing@rock-chips.com
Date: Fri, 01 Apr 2022 11:24:11 -0700
User-Agent: alot/0.10
Message-Id: <20220401182413.643DDC340EE@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_112414_639828_10F9C380 
X-CRM114-Status: GOOD (  24.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

UXVvdGluZyBIZWlrbyBTdMO8Ym5lciAoMjAyMi0wNC0wMSAwMDo1NTo1NSkKPiBIaSBTdGVwaGVu
LAo+IAo+IEFtIEZyZWl0YWcsIDEuIEFwcmlsIDIwMjIsIDAwOjUxOjMyIENFU1Qgc2NocmllYiBT
dGVwaGVuIEJveWQ6Cj4gPiBRdW90aW5nIEpvaGFuIEpvbmtlciAoMjAyMi0wMy0yOSAwNDoxMzoy
MikKPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9j
bG9jay9yb2NrY2hpcCxyazMxODgtY3J1LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszMTg4LWNydS55YW1sCj4gPiA+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gPiA+IGluZGV4IDAwMDAwMDAwMC4uZGRkN2U0NmFmCj4gPiA+IC0tLSAvZGV2
L251bGwKPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2Nr
L3JvY2tjaGlwLHJrMzE4OC1jcnUueWFtbAo+ID4gPiBAQCAtMCwwICsxLDc4IEBACj4gPiA+ICsj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiA+ICslWUFNTCAxLjIKPiA+ID4g
Ky0tLQo+ID4gPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9jbG9jay9yb2Nr
Y2hpcCxyazMxODgtY3J1LnlhbWwjCj4gPiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiA+ID4gKwo+ID4gPiArdGl0bGU6IFJvY2tjaGlw
IFJLMzE4OC9SSzMwNjYgQ2xvY2sgYW5kIFJlc2V0IFVuaXQgKENSVSkKPiA+ID4gKwo+ID4gPiAr
bWFpbnRhaW5lcnM6Cj4gPiA+ICsgIC0gRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlw
cy5jb20+Cj4gPiA+ICsgIC0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiA+ID4g
Kwo+ID4gPiArZGVzY3JpcHRpb246IHwKPiA+ID4gKyAgVGhlIFJLMzE4OC9SSzMwNjYgY2xvY2sg
Y29udHJvbGxlciBnZW5lcmF0ZXMgYW5kIHN1cHBsaWVzIGNsb2NrcyB0byB2YXJpb3VzCj4gPiA+
ICsgIGNvbnRyb2xsZXJzIHdpdGhpbiB0aGUgU29DIGFuZCBhbHNvIGltcGxlbWVudHMgYSByZXNl
dCBjb250cm9sbGVyIGZvciBTb0MKPiA+ID4gKyAgcGVyaXBoZXJhbHMuCj4gPiA+ICsgIEVhY2gg
Y2xvY2sgaXMgYXNzaWduZWQgYW4gaWRlbnRpZmllciBhbmQgY2xpZW50IG5vZGVzIGNhbiB1c2Ug
dGhpcyBpZGVudGlmaWVyCj4gPiA+ICsgIHRvIHNwZWNpZnkgdGhlIGNsb2NrIHdoaWNoIHRoZXkg
Y29uc3VtZS4gQWxsIGF2YWlsYWJsZSBjbG9ja3MgYXJlIGRlZmluZWQgYXMKPiA+ID4gKyAgcHJl
cHJvY2Vzc29yIG1hY3JvcyBpbiB0aGUgZHQtYmluZGluZ3MvY2xvY2svcmszMTg4LWNydS5oIGFu
ZAo+ID4gPiArICBkdC1iaW5kaW5ncy9jbG9jay9yazMwNjYtY3J1LmggaGVhZGVycyBhbmQgY2Fu
IGJlIHVzZWQgaW4gZGV2aWNlIHRyZWUgc291cmNlcy4KPiA+ID4gKyAgU2ltaWxhciBtYWNyb3Mg
ZXhpc3QgZm9yIHRoZSByZXNldCBzb3VyY2VzIGluIHRoZXNlIGZpbGVzLgo+ID4gPiArICBUaGVy
ZSBhcmUgc2V2ZXJhbCBjbG9ja3MgdGhhdCBhcmUgZ2VuZXJhdGVkIG91dHNpZGUgdGhlIFNvQy4g
SXQgaXMgZXhwZWN0ZWQKPiA+ID4gKyAgdGhhdCB0aGV5IGFyZSBkZWZpbmVkIHVzaW5nIHN0YW5k
YXJkIGNsb2NrIGJpbmRpbmdzIHdpdGggZm9sbG93aW5nCj4gPiA+ICsgIGNsb2NrLW91dHB1dC1u
YW1lczoKPiA+ID4gKyAgICAtICJ4aW4yNG0iICAgIC0gY3J5c3RhbCBpbnB1dCAgICAgICAgICAg
ICAgICAgLSByZXF1aXJlZAo+ID4gPiArICAgIC0gInhpbjMyayIgICAgLSBSVEMgY2xvY2sgICAg
ICAgICAgICAgICAgICAgICAtIG9wdGlvbmFsCj4gPiA+ICsgICAgLSAieGluMjdtIiAgICAtIDI3
bWh6IGNyeXN0YWwgaW5wdXQgb24gUkszMDY2IC0gb3B0aW9uYWwKPiA+ID4gKyAgICAtICJleHRf
aHNhZGMiIC0gZXh0ZXJuYWwgSFNBREMgY2xvY2sgICAgICAgICAgLSBvcHRpb25hbAo+ID4gPiAr
ICAgIC0gImV4dF9jaWYwIiAgLSBleHRlcm5hbCBjYW1lcmEgY2xvY2sgICAgICAgICAtIG9wdGlv
bmFsCj4gPiA+ICsgICAgLSAiZXh0X3JtaWkiICAtIGV4dGVybmFsIFJNSUkgY2xvY2sgICAgICAg
ICAgIC0gb3B0aW9uYWwKPiA+ID4gKyAgICAtICJleHRfanRhZyIgIC0gZXh0ZXJuYWwgSlRBRyBj
bG9jayAgICAgICAgICAgLSBvcHRpb25hbAo+ID4gCj4gPiBJJ2QgZXhwZWN0IGFsbCB0aGVzZSBj
bGtzIGhlcmUgdG8gYmUgaW5wdXRzIHRvIHRoaXMgbm9kZS4KPiAKPiBUaGUgb3B0aW9uYWwgY2xv
Y2tzIGFyZSBhbGwgcGFydCBvZiBhIGNpcmN1bGFyIGRlcGVuZGVuY3kuCj4gCj4gU28gZm9yIGV4
YW1wbGUgeGluMzJrIG5vcm1hbGx5IGlzIGdlbmVyYXRlZCBieSB0aGUgcG1pYyBhbmQgZmVkCj4g
YmFjayBpbnRvIHRoZSBzeXN0ZW0sIHNvIHRvIGdldCB4aW4zMmssIHdlIG5lZWQgdGhlIHBtaWMg
dG8gcHJvYmUsCj4gd2hpY2ggbmVlZHMgaTJjLCB3aGljaCBpbiB0dXJuIGFscmVhZHkgbmVlZHMg
dGhlIGNsb2NrIGNvbnRyb2xsZXIuCj4gCj4gT3Igb3B0aW9uYWwgY2xvY2tzIG1heSBub3QgYmUg
YXZhaWxhYmxlIGF0IGFsbC4KPiAKPiBTbyBmb3IgdGhlIHBhc3QgeWVhcnMgd2UgYWxyZWFkeSBy
ZWxpZWQgb24gdGhlIGNsb2NrLXN5c3RlbSdzCj4gc2VsZiBhZGFwdGF0aW9uIGlmIGEgY2xvY2sg
YmVjb21lcyBhdmFpbGFibGUgYXQgc29tZSBwb2ludAo+IGR1cmluZyBsYXRlciBib290IGFuZCBo
ZW5jZSBkbyBub3QgaGF2ZSB0aG9zZSBpbiBhIGNsb2Nrcy1wcm9wZXJ0eS4KPiAKCkFyZSB5b3Ug
c2F5aW5nIHRoYXQgd2UgY2FuJ3QgaGF2ZSB0aGVzZSBjbGtzIGluIHRoZSBjbG9ja3MgcHJvcGVy
dHkKYmVjYXVzZSB0aGVyZSdzIGEgY2lyY3VsYXIgZHJpdmVyIHByb2JlIGRlcGVuZGVuY3k/IEkg
ZG9uJ3Qgc2VlIGhvdyB0aGF0Cm1hdHRlcnMgZm9yIHRoZSBkdCBiaW5kaW5nLiBXaGF0IGlzIGJy
b2tlbiBpZiB0aGV5J3JlIHB1dCBpbiB0aGUgYmluZGluZwphbmQgc3BlY2lmaWVkIGluIHRoZSBu
b2RlPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=

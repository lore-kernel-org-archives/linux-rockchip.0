Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6540C7618B
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 08:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7FDaCu+oW/ivJi7Dz4pEk4G/NBk7YpLP/PQyMMtVxY=; b=F+xYY3gJJFdZ0F
	OoPwn+X4FemhJm8sIlGFFfoz3whiiHpNKo2btq9ZzmOFkcDuqA3SNcsNVrbrAXnR5DKbWzREb1uOW
	BgODAJEqVVr4udg9+k31hzDCvX5ZeZUOXodw4gPkX7QauAtiTTY5AQ0wmZGi8lkhDdJxeepB37WRo
	xGD3JpfkQr/OuRIx4aqsaxCgRIAUNi3wzYsWuCTYLwlEgqpsE8n6JUn5LkgHV2JIaAqAWuQyN4zV4
	i4DHKFOTUkTcjYzaMW6QIh6s/pyVgJr22Gz8i98vYEEZ3lWoePhEL9U04tkRbJdhMU7H/Tracu77M
	ZDCBwgXSku0LKO2Sc31g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcjFe-00Fk63-0E;
	Thu, 16 Mar 2023 08:46:22 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcjFZ-00Fk2E-2T;
	Thu, 16 Mar 2023 08:46:19 +0000
Received: by mail-ed1-x535.google.com with SMTP id eg48so4393621edb.13;
        Thu, 16 Mar 2023 01:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678956374;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F6P34+TGOqywF+lggu+lGsmpFltJF4GPVAdpCFRSroU=;
        b=PoY8ZKY5Ot9FwFQM0eQpIQoEo/+4/RAoN7eRKGnzYSLtbum4cpkSKwqWj2Jw1/NmGv
         +q3thyHAabSwfUEJKRaShlT6ZcySEMcH2HPpUdt9EsK2T+2WTdISwROG3iyzzQgb8cn/
         7zr4ZSIroP20IjlRLyHZC2SOe4/a4Qw85INvbCKYU1a2VHG2w8d+0J0nk8ianUzhYOo5
         61dOsQFKQwCVWB1rVbpJrMKWP/vGuiFmDUN0imPnxFFpnGlZW84OE6wZg1QQ5gw8MEMM
         qSr41lcQhqbgt4G/1agqp/8i4fOT73h1tH0rRjWpzaF1tM/5p3zWpcxLZitrfjacuFac
         Fagw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678956374;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F6P34+TGOqywF+lggu+lGsmpFltJF4GPVAdpCFRSroU=;
        b=xrgYrj+nD5FummiUCEBm0zMd9sZizK+fZ8EyWLFlJkGkwC8Tlo/T90julIlS6SJKDa
         CWkaaqj3o+yzyf0xSJ+F4IVwbmnow5D8RI7VJBrADk4gZUHbXPqBpLlwMj4YiPWKSJLA
         tp5XoDd3ms9q8FoyAKRKqgqfjezMNy/jcVMGxV4wHV0q1WCKLtVHhR2IpGo2d7JoBFCP
         EF7owHOvbDxknDgaUe/ip9tmdD+Z9PT7qBnrR20+AeTnUbkkTagJiuklya1enrqxPPe5
         pZ1fbTK72D9B83KrlSMlWGcESnKSxXXnf27pt+dytHspeYkk3PskJdpqYA6nWQ7OMSZ2
         Wn6g==
X-Gm-Message-State: AO0yUKXtpvy9JfXOOEYWVV5VXssHtEFN/d2LhlW6GzwfUwUA+kTyTi+Z
	4TPPugi15qkkVqhvsiBybMihz7dnEkTG3eD6rgM=
X-Google-Smtp-Source: AK7set+twqeimaEY47S7j8LHdHqS8lxV0WNRWhT6uLCEjZeTtafnFxPK4wcwlhf/MxfD0gJGf9iU5bOpZjIrvdeVCx4=
X-Received: by 2002:a17:906:8455:b0:930:f984:c56f with SMTP id
 e21-20020a170906845500b00930f984c56fmr53532ejy.12.1678956373887; Thu, 16 Mar
 2023 01:46:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230315160228.2362-1-cnsztl@gmail.com> <20230315160228.2362-5-cnsztl@gmail.com>
 <CA+E=qVei7T4T0FWhdUFnr5JbCWSgFbGLcmU2OHxx54yvnNR6mw@mail.gmail.com>
 <CAOP2_TiU815F528jVGvDbcg3kSG+ykepU-ZYz7VWMO84GgcwMg@mail.gmail.com> <71b16513-49b1-d9b3-b0b9-4c47e68563ba@kwiboo.se>
In-Reply-To: <71b16513-49b1-d9b3-b0b9-4c47e68563ba@kwiboo.se>
From: Tianling Shen <cnsztl@gmail.com>
Date: Thu, 16 Mar 2023 16:46:02 +0800
Message-ID: <CAOP2_TgieY2PNBJz9tE_+hxX14wBQ7RtFNfFhYd2_MCSnoZLxg@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: fix gmac support for NanoPi R5S
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jagan Teki <jagan@amarulasolutions.com>, Peter Geis <pgwipeout@gmail.com>, 
	Andy Yan <andyshrk@163.com>, Brian Norris <briannorris@chromium.org>, 
	Chris Morgan <macromorgan@hotmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andrew Lunn <andrew@lunn.ch>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Maya Matuszczyk <maccraft123mc@gmail.com>, 
	Andrew Powers-Holmes <aholmes@omnom.net>, Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_014617_839618_7FD84A31 
X-CRM114-Status: GOOD (  30.96  )
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

SGkgSm9uYXMsCgpPbiBUaHUsIE1hciAxNiwgMjAyMyBhdCAzOjM34oCvUE0gSm9uYXMgS2FybG1h
biA8am9uYXNAa3dpYm9vLnNlPiB3cm90ZToKPgo+IEhpIFRpYW5saW5nLAo+IE9uIDIwMjMtMDMt
MTYgMDY6MzQsIFRpYW5saW5nIFNoZW4gd3JvdGU6Cj4gPiBIaSBWYXNpbHksCj4gPgo+ID4gT24g
VGh1LCBNYXIgMTYsIDIwMjMgYXQgODoxNuKAr0FNIFZhc2lseSBLaG9ydXpoaWNrIDxhbmFyc291
bEBnbWFpbC5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gT24gV2VkLCBNYXIgMTUsIDIwMjMgYXQgOTow
MuKAr0FNIFRpYW5saW5nIFNoZW4gPGNuc3p0bEBnbWFpbC5jb20+IHdyb3RlOgo+ID4+Pgo+ID4+
PiAtIENoYW5nZWQgcGh5LW1vZGUgdG8gcmdtaWkuCj4gPj4+Cj4gPj4+IC0gRml4ZWQgcHVsbCB0
eXBlIGluIHBpbmN0cmwgZm9yIGdtYWMwLgo+ID4+Pgo+ID4+PiAtIFJlbW92ZWQgZHVwbGljYXRl
IHByb3BlcnRpZXMgaW4gbWRpbyBub2RlLgo+ID4+PiAgIFRoZXNlIHByb3BlcnRpZXMgYXJlIGRl
ZmluZWQgaW4gdGhlIGdtYWMwIG5vZGUgYWxyZWFkeS4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1i
eTogVGlhbmxpbmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4KPiA+Pj4gLS0tCj4gPj4+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1uYW5vcGktcjVzLmR0cyB8IDcgKystLS0t
LQo+ID4+PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkK
PiA+Pj4KPiA+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LW5hbm9waS1yNXMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgt
bmFub3BpLXI1cy5kdHMKPiA+Pj4gaW5kZXggZTlhZGY1ZTY2NTI5Li4yYTExMThmMTVjMjkgMTAw
NjQ0Cj4gPj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LW5hbm9w
aS1yNXMuZHRzCj4gPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4
LW5hbm9waS1yNXMuZHRzCj4gPj4+IEBAIC01Nyw3ICs1Nyw3IEBACj4gPj4+ICAgICAgICAgYXNz
aWduZWQtY2xvY2stcmF0ZXMgPSA8MD4sIDwxMjUwMDAwMDA+Owo+ID4+PiAgICAgICAgIGNsb2Nr
X2luX291dCA9ICJvdXRwdXQiOwo+ID4+PiAgICAgICAgIHBoeS1oYW5kbGUgPSA8JnJnbWlpX3Bo
eTA+Owo+ID4+PiAtICAgICAgIHBoeS1tb2RlID0gInJnbWlpLWlkIjsKPiA+Pj4gKyAgICAgICBw
aHktbW9kZSA9ICJyZ21paSI7Cj4gPj4+ICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKPiA+Pj4gICAgICAgICBwaW5jdHJsLTAgPSA8JmdtYWMwX21paW0KPiA+Pj4gICAgICAgICAg
ICAgICAgICAgICAgJmdtYWMwX3R4X2J1czIKPiA+Pj4gQEAgLTc5LDkgKzc5LDYgQEAKPiA+Pj4g
ICAgICAgICAgICAgICAgIHJlZyA9IDwxPjsKPiA+Pj4gICAgICAgICAgICAgICAgIHBpbmN0cmwt
MCA9IDwmZXRoX3BoeTBfcmVzZXRfcGluPjsKPiA+Pj4gICAgICAgICAgICAgICAgIHBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4gPj4+IC0gICAgICAgICAgICAgICByZXNldC1hc3NlcnQtdXMg
PSA8MTAwMDA+Owo+ID4+PiAtICAgICAgICAgICAgICAgcmVzZXQtZGVhc3NlcnQtdXMgPSA8NTAw
MDA+Owo+ID4+PiAtICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW8wIFJLX1BDNCBH
UElPX0FDVElWRV9MT1c+Owo+ID4+Cj4gPj4gSG1tLCBJIGRvbid0IHNlZSBSS19QQzQgYmVpbmcg
dXNlZCBhbnl3aGVyZSBlbHNlLiBnbWFjMCBoYXMgUktfUEM1IGFzCj4gPgo+ID4gWWVzLCBpdCdz
IGEgdHlwbywgaXQgc2hvdWxkIGJlIFJLX1JDNS4KPiA+Cj4gPj4gc25zcCxyZXNldC1ncGlvLiBT
byBpdCBlc3NlbnRpYWxseSBkcm9wcyByZXNldCBmb3IgdGhlIFBIWS4gSXMgaXQKPiA+PiBleHBl
Y3RlZD8KPiA+Cj4gPiBzbnNwLHJlc2V0LWdwaW8gZGVmaW5lZCByZXNldCBhbHJlYWR5LCBzbyB3
ZSBkb24ndCBuZWVkIHRvIHNldCBpdCBoZXJlIGFnYWluLgo+ID4KPiA+IC0tLQo+ID4KPiA+IHNu
c3AscmVzZXQtZ3BpbyBpcyB0aGUgbGVnYWN5IGJpbmRpbmcsIGJ1dCBJIHN0aWxsIGhhdmUgbm8g
aWRlYSB3aHkKPiA+IHJlc2V0LWdwaW9zIGRvZXNuJ3Qgd29yaywKPiA+IHRoZSBkd21hYyBkcml2
ZXIgd2lsbCBmYWlsIHRvIGxvb2t1cCBwaHk6Cj4gPgo+ID4gWyAgIDEwLjM5ODUxNF0gcmtfZ21h
Yy1kd21hYyBmZTJhMDAwMC5ldGhlcm5ldCBldGgwOiBubyBwaHkgZm91bmQKPiA+IFsgICAxMC4z
OTkwNjFdIHJrX2dtYWMtZHdtYWMgZmUyYTAwMDAuZXRoZXJuZXQgZXRoMDogX19zdG1tYWNfb3Bl
bjoKPiA+IENhbm5vdCBhdHRhY2ggdG8gUEhZIChlcnJvcjogLTE5KQo+ID4KPiA+IEFueSBpZGVh
cyB3b3VsZCBiZSBhcHByZWNpYXRlZC4KPgo+IEdlbmVyaWMgZXRoZXJuZXQgcGh5IGRyaXZlciBp
cyBub3QgcmVzZXR0aW5nIHRoZSBwaHkgaW4gdGhlIHNhbWUgd2F5Cj4gdGhhdCBzbnNwLHJlc2V0
LWdwaW8gZG9lcywgcGxlYXNlIHNlZSB0b3AgdHdvIGNvbW1pdHMgYXQgWzFdLgo+Cj4gSSBoYXZl
IGJlZW4gbWVhbmluZyB0byBzZW5kIHRoYXQgb3V0IGFzIGFuIFJGQyBidXQgSSBnb3Qgc3R1Y2sg
aW4gYQo+IHUtYm9vdCByYWJiaXQgaG9sZSwgYW5kIEkgYWxzbyBkbyBub3Qga25vdyB3aGF0IHRo
ZSBjb3JyZWN0IHdheSB0byBmaXgKPiB0aGlzIHdvdWxkIGJlLCBzbyBJIHBsYXllZCB3aXRoIGJv
dGggZGV2aWNlIHRyZWUgYW5kIGNvZGUgY2hhbmdlcy4KPiBXaWxsIHByaW9yaXRpemUgdGhpcyBh
bmQgc2VuZCBvdXQgYSBSRkMgbGF0ZXIgdG9kYXkuCj4KPiBbMV0gaHR0cHM6Ly9naXRodWIuY29t
L0t3aWJvby9saW51eC1yb2NrY2hpcC9jb21taXRzL3JrMzU2OC1ldGgtcGh5LXJlc2V0CgpUaGFu
a3MgZm9yIHRoZSBoaW50ISBJIHdpbGwgdGVzdCB5b3VyIHBhdGNoZXMgdG9uaWdodC4KClRoYW5r
cywKVGlhbmxpbmcuCgo+Cj4gUmVnYXJkcywKPiBKb25hcwo+Cj4gPgo+ID4gVGhhbmtzLAo+ID4g
VGlhbmxpbmcuCj4gPgo+ID4+Cj4gPj4+ICAgICAgICAgfTsKPiA+Pj4gIH07Cj4gPj4+Cj4gPj4+
IEBAIC0xMTUsNyArMTEyLDcgQEAKPiA+Pj4gICZwaW5jdHJsIHsKPiA+Pj4gICAgICAgICBnbWFj
MCB7Cj4gPj4+ICAgICAgICAgICAgICAgICBldGhfcGh5MF9yZXNldF9waW46IGV0aC1waHkwLXJl
c2V0LXBpbiB7Cj4gPj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBpbnMgPSA8
MCBSS19QQzQgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfZG93bj47Cj4gPj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQzQgUktfRlVOQ19HUElPICZwY2Zn
X3B1bGxfdXA+Owo+ID4+PiAgICAgICAgICAgICAgICAgfTsKPiA+Pj4gICAgICAgICB9Owo+ID4+
Pgo+ID4+PiAtLQo+ID4+PiAyLjE3LjEKPiA+Pj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

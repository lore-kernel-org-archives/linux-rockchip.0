Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EE75EEE271
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 23:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fo+Ms3E1wpfbdizMi4PCOekzuBLrH0F9ElVl4OUd0w=; b=ITKqWoG3drABmM
	oaE3jxACBGGxdq8CrBTrN3W/4VZbUBHp2o/y/cg8EyWBWYIQh7oMm1djBqmC4f2WxkSupdO72CpAh
	aKnrwly//O02otqHCtFTnzA4A66SdJ20Yr4DL26TTMNp6/heHO11/V47x5H4fhekfbWAZd+ggXJ7L
	mWv8BWFR+h+/YZzn2FFWbTUxymgTkDbmimBqml2OHVby/erjeENFFMgtJUlGT8C6moROzTGRs78no
	e4tB5OCZHQaRfOCzwAB2gEkc/sPFTowNXRSKpAac4O0UyJgjCCkF7scdPccDwDbQfR5Fd55MrYrZz
	vrJc33TZ6RAtv2lNb/Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sot7v-0000000ETwi-0C6v;
	Thu, 12 Sep 2024 23:21:27 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sot6m-0000000ETTo-1y3d;
	Thu, 12 Sep 2024 23:20:17 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5c412cab25cso357073a12.2;
        Thu, 12 Sep 2024 16:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726183214; x=1726788014; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vXhULeeV7vls+nv+QnnPDOCh7Gg8+iCwIhYeNnAxrac=;
        b=PumVudNrxFxwjcXHkU7RW0KGiQN72pyRyEW3M+Mx2uMEewbrQGOvY3xrcExSEvLIOI
         n4Dw9tQC10P3qt4qQAhMCOh4TQiV34RLdQAuyN+DhaPGBQRBYcMkmgD4xIw3oznQ5PG2
         SgEi1xxMjuhE3+BgiNV8S4C1BbSVEXAEVfZnJnoL4qZkdoqoZKykre8aY0LL6yS6/TDj
         ZXwyAos/X/9WaBdU1jlDFmjfy6WNttSeeIj4ma2cg4hG//T7dXg1OpyMoCwxrHZB5nFn
         KPQ1AH+3Dy7YURjsB2io8/cvtCayzIgLiqFlo2OCLWa+JZSjmTElSPHC24ARDf7SdUR+
         pvLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726183214; x=1726788014;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vXhULeeV7vls+nv+QnnPDOCh7Gg8+iCwIhYeNnAxrac=;
        b=Pi9+WksL6W2Za18PsBXY2ZwZVSvxnxCKp63edJZklfFetI1lTeuRgEtHXBQ7s+T5KW
         ef5a6iRQz3iQjz9KU0u3Nc/cFobcG0hEmhwQbpdTZfe+QtCE0VZ6CeAJc34JepPJJDKd
         Fepn3zj2lobEzl5TwiSyHPhfbK2xe53B8HB/MsvUfHwQX5Qywds+lnK6kSOQ5A59fhW+
         45VWViqjUmfbIp8+lJEhcnQSlatANu9PoDSAZB+ZqVfUUWfSb2vy7yLXx6880WZvVdJZ
         1bCvFOjKaeedQiC26yVnWKo8gfLZl8HrwOAOyLeUUHbwkUMoSOA4icLTapTjbPVZRJMm
         wvrg==
X-Forwarded-Encrypted: i=1; AJvYcCUURQnPfnUOhodn1f8eSoWPWmm4c4wx6E/0Vx7clWXSp4WNEb18MS7hyQu0QHOTxwjMaEZQrcAHIViUq6TGYOk=@lists.infradead.org, AJvYcCXCXRrZyU67E2Lwor1/vgleSwZhsM18fgqlvD+/JLHZhggBe6MG+1VkklNWTHqorMWnkPSuwvFHk6icZkU5eBUj@lists.infradead.org
X-Gm-Message-State: AOJu0YxEZTVFKaIZjW7E9l6ZO0qPFyFWg+ZfsEKkEnw6Zk9aXq5w9das
	lL+1WTWiHP4oSBsWAgooik03X7fpMoobNW/V2w6Z7F13+NpVD2ExnJNfpX6eejVDWw0njLOxE5M
	k1jT14QroohK5GMvStoP10vT+ao0=
X-Google-Smtp-Source: AGHT+IHbZo2wnjqdUsLgmBT4T7H7hcXQYR+XunYL7wqkMhhgveG3haS7KrE2iato4KRSLlyIyR37QuYUaUcqB8LNq1A=
X-Received: by 2002:a17:907:f763:b0:a86:81b8:543f with SMTP id
 a640c23a62f3a-a90480cef74mr48691066b.64.1726183213701; Thu, 12 Sep 2024
 16:20:13 -0700 (PDT)
MIME-Version: 1.0
References: <20240912025034.180233-1-CFSworks@gmail.com> <20240912025034.180233-5-CFSworks@gmail.com>
 <ed4b6913-f19b-4280-b3b2-f5bb1e7f47eb@kwiboo.se> <CAH5Ym4jEMvBVQNNS6U49RWTAVPX4GmOVC-VjgXsFCR=X68QWgA@mail.gmail.com>
 <8c0b8145-3e90-42e6-8e1a-5be6424d1055@kwiboo.se>
In-Reply-To: <8c0b8145-3e90-42e6-8e1a-5be6424d1055@kwiboo.se>
From: Sam Edwards <cfsworks@gmail.com>
Date: Thu, 12 Sep 2024 16:20:01 -0700
Message-ID: <CAH5Ym4hPGNgczG5TzYPqUHPE7Dsb2Kwyc9VJkoanMj=3AGZWVg@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: Enable all 3 USBs on Turing RK1
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>, 
	Chris Morgan <macromorgan@hotmail.com>, Alex Zhao <zzc@rock-chips.com>, 
	Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Jing Luo <jing@jing.rocks>, 
	Kever Yang <kever.yang@rock-chips.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Daniel_Kukie=C5=82a?= <daniel@kukiela.pl>, 
	Joshua Riek <jjriek@verizon.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_162016_583378_1C3BDD3D 
X-CRM114-Status: GOOD (  54.65  )
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

T24gVGh1LCBTZXAgMTIsIDIwMjQgYXQgMzozNeKAr1BNIEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3
aWJvby5zZT4gd3JvdGU6Cj4KPiBPbiAyMDI0LTA5LTEyIDIzOjA2LCBTYW0gRWR3YXJkcyB3cm90
ZToKPiA+IE9uIFRodSwgU2VwIDEyLCAyMDI0IGF0IDEyOjUz4oCvUE0gSm9uYXMgS2FybG1hbiA8
am9uYXNAa3dpYm9vLnNlPiB3cm90ZToKPiA+Pgo+ID4+IEhpIFNhbSwKPiA+Pgo+ID4+IFNvdW5k
cyBsaWtlIHRoaXMgbWF5IGJlIG1pc3NpbmcKPiA+Pgo+ID4+ICAgICAgICAgcm9ja2NoaXAsZHAt
bGFuZS1tdXggPSA8MCAxIDIgMz47Cj4gPj4KPiA+PiBvcgo+ID4+Cj4gPj4gICAgICAgICByb2Nr
Y2hpcCxkcC1sYW5lLW11eCA9IDwzIDIgMSAwPjsKPgo+IFNtYWxsIGNvcnJlY3Rpb24sIHRoZSBz
ZWNvbmQgNC1sYW5lIG1vZGUgd291bGQgYmUgZGVzY3JpYmVkIGFzOgo+Cj4gICAgICAgICByb2Nr
Y2hpcCxkcC1sYW5lLW11eCA9IDwyIDMgMCAxPjsKPgo+ID4+Cj4gPj4gaWYgYWxsIGxhbmVzIGFy
ZSB1c2VkIGZvciBEUCBhbmQgbm9uZSBhcmUgdXNlZCBmb3IgVVNCLgo+ID4+Cj4gPj4gSXQgc2hv
dWxkIGhlbHAgZGVzY3JpYmUgdGhlIGh3IGFuZCBhbHNvIGhlbHAgdGhlIGRyaXZlciBzZXQgbW9k
ZSB0bwo+ID4+IFVEUEhZX01PREVfRFAgYW5kIHRoYXQgc2hvdWxkIGRpc2FibGUgdGhlIHUzIHBv
cnQsIG9yIHRoZXJlIG1heSBiZSBhbgo+ID4+IGlzc3VlIHRvIGZpeCBpbiB0aGUgcGh5IGRyaXZl
ci4KPiA+Cj4gPiBUaGFua3MgZm9yIHlvdXIgaW5zaWdodHMgSm9uYXMhCj4gPgo+ID4gSSBoYXZl
bid0IHlldCBnb3R0ZW4gdG8gRFAgZW5hYmxlbWVudCBzbyBJIGRvbid0IGtub3cgdGhlIGNvcnJl
Y3QgRFAKPiA+IGxheW91dC4gVWx0aW1hdGVseSBJIGRvIHdhbnQgdGhlIFVTQkRQMCBub2RlIHRv
IGhhdmUgdGhlIG5lY2Vzc2FyeQo+ID4gcHJvcGVydGllcyBmb3IgRFAsIGJ1dCBhbGFzIHRoYXQn
cyBhIHBhdGNoIGZvciBhbm90aGVyIGRheS4KPiA+Cj4gPiBOb25ldGhlbGVzcywgSSBicmllZmx5
IHRyaWVkIGl0IGFuZCBJIGRvbid0IHRoaW5rIFVEUEhZX01PREVfRFAKPiA+IGFmZmVjdHMgdGhl
IFBIWSdzICJiYWNrZW5kIiAoY3RybDwtPnBoeSBpZmFjZSkgYXQgYWxsLCBvbmx5IHRoZQo+ID4g
YXZhaWxhYmlsaXR5IG9mIGZyb250ZW5kIGxhbmVzIHRvIHRoZSBVU0Itc3BlY2lmaWMgYmFja2Vu
ZDogU28gcG9ydCB1Mwo+ID4gaXMgc3RpbGwgZW5hYmxlZCwgdGhlcmUncyBqdXN0IG5vIHdheSB0
byByZWFjaCBpdCBlbGVjdHJpY2FsbHkuCj4gPgo+ID4gV2l0aCB0aGF0IGluIG1pbmQsIHdvdWxk
IHlvdSByZWNvbW1lbmQgdGhhdCBJIGFkZCBhIHBsYWNlaG9sZGVyCj4gPiBkcC1sYW5lLW11eCBv
ZiAwIDEgMiAzIGZvciBub3csIGp1c3QgdG8ga2VlcCB0aGUgUEhZIGZyb20gYXR0ZW1wdGluZwo+
ID4gdG8gc3BlYWsgVVNCIHRvIGEgRFAgZGV2aWNlPyBJIGRvbid0IGZvcmVzZWUgYW55IGhhcm0g
aW4gbGVhdmluZyBpdAo+ID4gYXMtaXMgYnV0IHlvdSBtYXkga25vdyBzb21ldGhpbmcgdGhhdCBJ
IGRvbid0Lgo+Cj4gVGhlIHJrX3VkcGh5X3UzX3BvcnRfZGlzYWJsZSgpIGNhbGwgaW4gdXNiZHAg
cGh5IGRyaXZlciBzaG91bGQgaGVscCBzZXQKPiB0aGUgdXNiM290ZzBfaG9zdF9udW1fdTNfcG9y
dD0wIHlvdSBtZW50aW9uZWQ6Cj4KPiAgIC51c2Izb3RnMF9jZmcgPSBSS19VRFBIWV9HRU5fR1JG
X1JFRygweDAwMWMsIDE1LCAwLCAweDExMDAsIDB4MDE4OCksCj4gICAudXNiM290ZzFfY2ZnID0g
UktfVURQSFlfR0VOX0dSRl9SRUcoMHgwMDM0LCAxNSwgMCwgMHgxMTAwLCAweDAxODgpLAo+Cj4g
SGVyZSB0aGUgZGlzYWJsZS9lbmFibGUgdmFsdWVzIGlzIGxpdHRsZSBiaXQgaW52ZXJ0ZWQgaW4g
bWFjcm8sIGkuZS4KPiBlbmFibGU9MHgwMTg4IGlzIHRoZSB2YWx1ZSBzZXQgd2hlbiB1M19wb3J0
X2Rpc2FibGUoZGlzYWJsZT10cnVlKSBpcwo+IGNhbGxlZC4KCkFoYSwgSSBkaWRuJ3Qgbm90aWNl
IHRoYXQgdGhlIFBIWSBkcml2ZXIgaGFkIHRoaXMsIHRoYW5rcyBmb3IgcG9pbnRpbmcKaXQgb3V0
ISBZZXMsIGl0J3MgZ29vZCB0aGF0IGl0J3MgYWxzbyBzd2l0Y2hpbmcgdGhlIGNsb2NrIHNvdXJj
ZSBhbmQKZGlzYWJsaW5nIFBIWSBzdGF0dXMgc2lnbmFscyBzbyBJIHNob3VsZCBkZWZpbml0ZWx5
IGJlIHJlbHlpbmcgb24gdGhpcwpjb2RlIGZvciBub3cuCgo+Cj4gR3Vlc3NpbmcgdGhhdCBiZWNh
dXNlIHRoZSBwaHkgaXMgbm90IHJlZmVyZW5jZWQgaXRzIGluaXQoKSBvcHMgbmV2ZXIKPiBnZXRz
IGNhbGxlZCBhbmQgdTMgbmV2ZXIgZ2V0cyBkaXNhYmxlZCB1bmxlc3MgYSB1c2IzLXBoeSBpcyBy
ZWZlcmVuY2VkLgo+Cj4gPgo+ID4+Cj4gPj4+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+Pj4g
K307Cj4gPj4+ICsKPiA+Pj4gKyZ1c2JfaG9zdDBfeGhjaSB7Cj4gPj4+ICsgICAgIGV4dGNvbiA9
IDwmdTJwaHkwPjsKPiA+Pj4gKyAgICAgbWF4aW11bS1zcGVlZCA9ICJoaWdoLXNwZWVkIjsKPiA+
Pgo+ID4+IElmIHRoaXMgb25seSB1c2UgdGhlIFVTQjIgcGh5LCB0aGlzIHNob3VsZCBwcm9iYWJs
eSBhbHNvIG92ZXJyaWRlIHRoZQo+ID4+IGRlZmF1bHQgcGh5cyBhbmQgcGh5LW5hbWVzIHByb3Bz
IHdpdGg6Cj4gPj4KPiA+PiAgICAgICAgIHBoeXMgPSA8JnUycGh5MF9vdGc+Owo+ID4+ICAgICAg
ICAgcGh5LW5hbWVzID0gInVzYjItcGh5IjsKPiA+Cj4gPiBJIGFncmVlIGNvbXBsZXRlbHk6IGlm
IHRoZSBjb250cm9sbGVyIGRvZXNuJ3QgbmVlZCB0aGUgVVNCMyBQSFksIHRoZW4KPiA+IGl0IHNo
b3VsZCBub3QgKGltcGxpY2l0bHkpIGJlIHNwZWNpZmllZCBpbiB0aGUgRFQuIEJlaW5nIGFibGUg
dG8gYWRkCj4gPiB0aGVzZSBvdmVycmlkZXMgaXMgYSBiaWcgZ29hbCBvZiBtaW5lIGFzIHdlbGwu
IDopCj4gPgo+ID4gU2FkbHksIGBwaHlzYCBpcyB3aGF0IGluaXRpYWxpemVzIFVTQkRQJ3MgVVNC
LXNpZGUgYmFja2VuZCwgc28gd2l0aG91dAo+ID4gaXQgdGhlIFJYX1NUQVRVUyBsaW5lIGdvZXMg
ZmxvYXRpbmcsIGFuZCBiZWNhdXNlIHRoZSBjb250cm9sbGVyIHN0aWxsCj4gPiBleHBlY3RzIGEg
cG9ydCB0aGVyZSwgaXQgbWlzYmVoYXZlczoKPiA+IFsgICAzMC45ODEwNzZdIHVzYiB1c2IyLXBv
cnQxOiBjb25uZWN0LWRlYm91bmNlIGZhaWxlZAo+ID4KPiA+IEkgY2FuIHRlbGwgdGhlIGNvbnRy
b2xsZXIgdGhhdCB0aGVyZSBpcyBubyB1MyBwb3J0IGJ5IGRvaW5nIHRoaXMgaW4gVS1Cb290Ogo+
ID4gPT4gbXcubCAweGZkNWFjMDFjIDB4ZjAwMDAwMDAgIyB1c2Izb3RnMF9ob3N0X251bV91M19w
b3J0PTAKPiA+ID0+IGJvb3QKPiA+IC4uLmFuZCB0aGF0IG1ha2VzIHNpbmdsZS1QSFkgb3BlcmF0
aW9uIHdvcmsgcGVyZmVjdGx5ISBCdXQgdW5sZXNzCj4gPiBMaW51eCBpdHNlbGYgZWZmZWN0cyB0
aGF0IGNoYW5nZSwgdGhpcyBwYXRjaCBjYW4ndCByZWx5IG9uIHRoYXQgR1JGCj4gPiBiZWluZyBz
ZXQgY29ycmVjdGx5Lgo+ID4KPiA+IERvIHlvdSBoYXZlIGEgcmVjb21tZW5kYXRpb24gb24gaG93
IEkgbWlnaHQgZ28gYWJvdXQgZGlzYWJsaW5nIHRoaXMKPiA+IHBvcnQ/IEkgc2VudCBhIHBhdGNo
c2V0IGxhc3QgeWVhciBbMV0gdGhhdCBoYWQgdGhlIERXQzMveEhDSSBkcml2ZXIKPiA+IGlnbm9y
ZSBlbnVtZXJhdGVkIHUzIHBvcnRzIHdoZW4gdGhlIG1heGltdW0tc3BlZWQgd2FzIHNldCB0bwo+
ID4gaGlnaC1zcGVlZCwgYnV0IHRoZSBjb25zZW5zdXMgc2VlbXMgdG8gYmUgdGhhdCB0aGlzIHNo
b3VsZG4ndCBiZQo+ID4gYWRkcmVzc2VkIGF0IHRoZSB4SENJIGRyaXZlciBsZXZlbCwgc28gc29t
ZWhvdyB6ZXJvaW5nIHRoZSBuZWNlc3NhcnkKPiA+IEdSRiBiaXRzIHNvdW5kcyBsaWtlIHRoZSB3
YXkgdG8gZ28gaGVyZS4gV2hhdCBkbyB5b3UgdGhpbms/Cj4KPiBOb3Qgc3VyZSBpZiBpdCB3b3Vs
ZCBoZWxwIGJ1dCBjb3VsZCBiZSB0aGF0IHBhcnQgb2YgaW5pdCgpIG9wcyBzaG91bGQgYmUKPiBt
b3ZlZCB0byBwcm9iZSgpLiBXb3VsZCBzdGlsbCByZXF1aXJlIHRoZSBwaHkgZHJpdmVyIHRvIHBy
b2JlIGJlZm9yZSB1c2IKPiBjb250cm9sbGVyIGZvciB0aGF0IHRvIGhlbHAvd29yay4KPgo+IEFk
ZGluZyBhIHJvY2tjaGlwLGRwLWxhbmUtbXV4IHByb3AgYW5kIGtlZXBpbmcgdGhlIHBoeXMgcHJv
cCBhcy1pcyBpcwo+IHByb2JhYmx5IGVhc2llc3Qgd2F5IGZvciBub3cuCgpDb250aW51aW5nIG15
IGNvbW1lbnRzIGFib3ZlOiBJIGFncmVlIGZ1bGx5LiBNeSB2MiB3aWxsIGFkZCBhCnBsYWNlaG9s
ZGVyIGRwLWxhbmUtbXV4LgoKTWFpbnRhaW5lcnM6IEkgd2lsbCBiZSBzZW5kaW5nIGEgdjIgb2Yg
dGhpcyBwYXRjaCBzZXBhcmF0ZWx5IGluIHRoZQpmdXR1cmU7IHBsZWFzZSBjb25zaWRlciB0aGlz
IHBhdGNoIHdpdGhkcmF3biBmcm9tIHRoZSBzZXJpZXMuCgo+IE9uZSBvcHRpb24gZm9yIGZ1dHVy
ZSBjb3VsZCBwb3NzaWJsZSBiZSB0byBoYXZlIGdyZiBkcml2ZXIgZGlzYWJsZSB1Mwo+IGFuZCBt
b2RpZnkgdXNiZHAgcGh5IGRyaXZlciB0byBlbmFibGUgdTMgaW5zdGVhZCBvZiBkaXNhYmxlIHUz
LCBub3QKPiBzdXJlIHRoaXMgd2lsbCBmdWxseSB3b3JrLCBpbml0IG9mIHRoZSB1c2JkcCBwaHkg
c2VlbSB2ZXJ5IHNlbnNpdGl2ZQo+IGFuZCBwb3NzaWJsZSBhIG9uZS10aW1lIG9wLiBUcnlpbmcg
dG8gInVzYiBzdGFydCIgaW4gVS1Cb290IHdpbGwgb25seQo+IHdvcmsgb25lIHRpbWUsIHVzaW5n
ICJ1c2IgcmVzZXQiIG9yIGEgInVzYiBzdG9wL3N0YXJ0IiBjeWNsZSB3aWxsIGNhdXNlCj4gdXNi
ZHAgcGh5IGluaXQgdG8gZmFpbCBhbmQgYSBmdWxsIGJvYXJkIHJlc2V0IGlzIG5lZWRlZCB0byBn
ZXQgcG9ydAo+IHdvcmtpbmcgYWdhaW4uCgpBcmd1YWJseSwgaXQgZG9lc24ndCBtYWtlIHNlbnNl
IGZvciB0aGUgVVNCRFAgZHJpdmVyIHRvIGJlIGFmZmVjdGluZwp0aGVzZSBHUkZzIGF0IGFsbCwg
YmVjYXVzZSAqdGVjaG5pY2FsbHkqIHRoZXkncmUgY29uZmlndXJhdGlvbiBzaWduYWxzCmZlZCBp
bnRvIHRoZSBEV0MzOiB0aGVyZWZvcmUgd2hhdGV2ZXIgZHJpdmVyIGJpbmRzIHRvCiJyb2NrY2hp
cCxyazM1ODgtZHdjMyIgb3VnaHQgdG8gYmUgc2V0dGluZyB0aGVtIGFjY29yZGluZyB0byB0aGUg
UEhZcwppdCBkaXNjb3ZlcnMgaW4gdGhlIERULiBJIHN1c3BlY3QgdGhhdCB0aGlzIGNvZGUgd2Fz
IG9ubHkgcHV0IGluIHRoZQpQSFkgZHJpdmVyIGJlY2F1c2UgdGhhdCdzIGEgbW9yZSBjb252ZW5p
ZW50IHBsYWNlIHRvIHB1dApSb2NrY2hpcC1zcGVjaWZpYyBtYW5hZ2VtZW50IGNvZGUgZm9yIHRo
ZSB0aW1lIGJlaW5nLgoKT2YgY291cnNlLCB0aGlzIGlzIGFsbCBhIGRpc2N1c3Npb24gdG8gYmUg
aGFkIGluIGEgZGlmZmVyZW50IHRocmVhZC4KRm9yIG5vdywgc3VmZmljZSB0byBzYXksIEkgYWdy
ZWUgd2l0aCB5b3VyIHRob3VnaHRzIGFib3V0IHRoZSBVU0IzT1RHbgpHUkYgbWFuYWdlbWVudCBz
aXR1YXRpb24gbmVlZGluZyBpbXByb3ZlbWVudCBhbmQgYW0gaW50ZXJlc3RlZCBpbgpsZW5kaW5n
IGEgaGFuZCB3aGVyZXZlciBJIGNhbi4gOikKClRoYW5rIHlvdSBmb3IgeW91ciBpbnNpZ2h0cywK
U2FtCgo+Cj4gUmVnYXJkcywKPiBKb25hcwo+Cj4gPgo+ID4gS2luZCByZWdhcmRzLAo+ID4gU2Ft
Cj4gPgo+ID4gWzFdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzEyMDgyMTA0NTgu
OTEyNzc2LTEtQ0ZTd29ya3NAZ21haWwuY29tLwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

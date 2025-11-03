Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6721DCCFA07
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Nov 2025 07:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUMloiXIfEpTTxgq0foqoK6MR6FHmCYNCeQ2aG509C4=; b=2she18x2iyP8S8
	gP9POsnjXLHcGmQoQPOCdijA9sB3kXUXOkknYy7vmhGtN02/qypMQeCDDnkA+BPNI0TJZqtoZUWw4
	EYipMNxCI9MbYyy0dWy55kgKzSsC/1yHd3s/Iyu+ZpbI0UMCWMmLJroS1VUWXhr/yzNI2UbCybUGK
	MLNS8xpFScKVestWiVeWnEaMC19XdxRBAm4sc7Z3VmoMQb5e0buO4btniq3lUV9IiOhfikcA9BZWV
	/+5ETMvMlDP9RNuAE5EbTxZm4jILXNoycHCVHQ8XBn5h5bgQHKet+ml17YOtX/N4z9JecVgxQQKSo
	gwFxi3WKH/YbPPhFUx/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFp3F-00000009Mbx-1sm1;
	Mon, 03 Nov 2025 07:32:29 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFp3C-00000009Mak-1pPd
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Nov 2025 07:32:27 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-378d710caedso37258511fa.3
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Nov 2025 23:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762155144; x=1762759944; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DaaUEDVSi1zym8/RCHGJWc+jChnQELjhyUR46GKHyw4=;
        b=BrV8K/AOGtHhEuoUsxxuoCq73Jr/9nMjIKRc6PYBtdko9dxys7uYBxy1u0Eqns8MRP
         D/hRCjA4Nbo5n/zWpbylRsQqtVJD5CP3p+pAAD6ajHMHWmNWz4TO7/llNopXrDw2K9/Q
         wGKSVd8kD7KvjKmP/byqbN7KPaH8Xhq2uWWeSCJvtsPH9cFkKl6TCuj1VEmJFQGpvbME
         TkXtBaXBEoH39i9zt4z+Oyl7CGWQEdSf0ULjmRG+XOymlZ4beCMzvGMC1fut1jZtCt+4
         9H8t8UcfMyBYgUoBYyEjB639sAjVJBIc7MaTg91nNK7cRqbJHlUWlwpYFl5ajetzlQ9z
         iCIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762155144; x=1762759944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DaaUEDVSi1zym8/RCHGJWc+jChnQELjhyUR46GKHyw4=;
        b=r2107lihnAa62HfhFB9IZHgaxPYSheqtQIbanxPpdKpxSajMLI5R6bbs9uKeGWdqac
         1p5v0ZVrCbR2Xelgh3rYmq5sdQ9+HSE/4C3+BkD0Dj3lT6G9KJPEWAbo8zMZfXgKqJZa
         FdU/5qpYK2ox6j2ypZnLEH98zxwOd0pw9V6EvSo9bSE3xkDULVLZxS6weF/FMZIIoNEc
         o47mE3RE5EsjvBPFjSnYna7rUH6hO9vCzYyewbtD6M+WHtxgM9jrt1qy+TecewK7CSxu
         VCDhV+c3i7nmEucO7IQ23BUmTbSpmu5uWzxmrd2H7fvwadk53WSLoNhU2wnO+AUlR3me
         jDNw==
X-Forwarded-Encrypted: i=1; AJvYcCUWxJDw84l+bldjBigN2oSMn3/g+ihHD7PM1R5feilYDC22Gxl1i/vFdBW3SlASNysE/RvY5QldaM1JuGH3/Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9JEwPFFHtYZlDQDNmFhKhggQHgil67ZaRvZmMwCIta+SAZB85
	ikM97L2/kT38C5wIC0OnSQ2D6eNQccSCObxM/SarZ5ckV3kcU0L2QQpo3vWLWjkqehjN6n1FX73
	06gjoVRUC9dM4RDN35WU7LB36DZ06wdw=
X-Gm-Gg: ASbGncth5pEk3ZTGR421beT7YsigpdWweDJjfVVE4WrtfEZZzVuzUJstqXua4zepNyg
	y0JY66qb3oN2q1PpS91Mrogcn2FvhgDe0/XfqPxWfvoqAz0ixR/ErucPvDhbQqfQqTU6W35Isnx
	LCW9WAo4ckcMfiiWhxcOm0FhNq0ye0LNojQUXU0/KqlcQrSaR8N3019siRXk6050xWHglgUGoIA
	8Z0v7hleA1l8DbDbutR4Bk/UfI79R0LMcRd9eL+bRwnfYKzuT1scwrAFLwedE7r109EZw==
X-Google-Smtp-Source: AGHT+IG4k1+p/ZVOhwkHMtbxP47toCZzPfmoTR7VNJnn8PaEuHNkJSbLEbbfSA/3JaBOQkl8L2AQgGcDYyL6IRs5bS4=
X-Received: by 2002:a2e:a90a:0:b0:373:a465:292c with SMTP id
 38308e7fff4ca-37a18dc179dmr33747461fa.21.1762155143653; Sun, 02 Nov 2025
 23:32:23 -0800 (PST)
MIME-Version: 1.0
References: <20251024173830.49211-1-xakep.amatop@gmail.com> <1499f50e-aa4f-454a-b8b5-c9a21bef7f72@collabora.com>
In-Reply-To: <1499f50e-aa4f-454a-b8b5-c9a21bef7f72@collabora.com>
From: Mykola Kvach <xakep.amatop@gmail.com>
Date: Mon, 3 Nov 2025 09:32:12 +0200
X-Gm-Features: AWmQ_bklMXYT4Ul_3Xqst3SNaatN_W8582juobBsGuz0hO38xKkJv60xkRmG9BY
Message-ID: <CAGeoDV-+HjpW9CMy5ypsMFDYgYKrV-5zMDGie0=_JyTCo7NF2Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: orangepi-5: fix PCIe 3.3V regulator voltage
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Cenk Uluisik <cenk.uluisik@googlemail.com>, Johan Jonker <jbx6244@gmail.com>, 
	Jimmy Hon <honyuenkwun@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Muhammed Efe Cetin <efectn@6tel.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_233226_509988_63E98726 
X-CRM114-Status: GOOD (  22.39  )
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

SGkgTWljaGFlbCwKClRoYW5rIHlvdSBmb3IgdGhlIGZhc3QgcmVzcG9uc2UgYW5kIHRoZSByZXZp
ZXcuCgpPbiBNb24sIE9jdCAyNywgMjAyNSBhdCAyOjM54oCvUE0gTWljaGFlbCBSaWVzY2gKPG1p
Y2hhZWwucmllc2NoQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gSGkgTXlrb2xhLAo+Cj4gVGhh
bmtzIGZvciB5b3VyIHBhdGNoLgo+Cj4gQ2M6IE11aGFtbWVkIHdobyBpcyB0aGUgYXV0aG9yIG9m
IGNvbW1pdCBiNmJjNzU1ZDgwNmUKPgo+IE9uIDEwLzI0LzI1IDE5OjM4LCBNeWtvbGEgS3ZhY2gg
d3JvdGU6Cj4gPiBUaGUgdmNjM3YzX3BjaWUyMCBmaXhlZCByZWd1bGF0b3IgcG93ZXJzIHRoZSBQ
Q0llIGRldmljZS1zaWRlIDMuM1YKPiA+IHJhaWwgZm9yIHBjaWUyeDFsMiB2aWEgdnBjaWUzdjMt
c3VwcGx5LiBUaGUgRFRTIG1pc3Rha2VubHkgc2V0IGl0cwo+ID4gcmVndWxhdG9yLW1pbi9tYXgt
bWljcm92b2x0IHRvIDE4MDAwMDAuIENvcnJlY3QgYm90aCB0byAzMzAwMDAwCj4gPiB0byBtYXRj
aCB0aGUgcmFpbCBuYW1lLCB0aGUgUENJZS9NLjIgcG93ZXIgcmVxdWlyZW1lbnQsIGFuZCB0aGUK
PiA+IGFjdHVhbCBoYXJkd2FyZSB3aXJpbmcgb24gT3JhbmdlIFBpIDUuCj4gPgo+Cj4gSSBndWVz
cyBhICJGaXhlcyIgdGFnIGlzIGluIG9yZGVyIGhlcmU6Cj4KPiBGaXhlczogYjZiYzc1NWQ4MDZl
ICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBPcmFuZ2UgUGkgNSIpCgpUaGFuayB5b3UgZm9y
IHBvaW50aW5nIHRoYXQgb3V0LiBJIHdpbGwgYWRkIHRoZSBGaXhlcyB0YWcgaW4gdjIuCgo+Cj4g
QW5kIG1ha2Ugc3VyZSB0byBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+CgpXaWxsIGRvLgoK
Pgo+ID4gU2lnbmVkLW9mZi1ieTogTXlrb2xhIEt2YWNoIDx4YWtlcC5hbWF0b3BAZ21haWwuY29t
Pgo+Cj4gVGhlIGNoYW5nZSBpdHNlbGYgbWFrZXMgc2Vuc2UgdG8gbWUuCj4KPiBSZXZpZXdlZC1i
eTogTWljaGFlbCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQGNvbGxhYm9yYS5jb20+CgpUaGFua3Mh
IEkgd2lsbCBjYXJyeSB5b3VyIFJldmlld2VkLWJ5IGluIHYyIChkaWZmIHVuY2hhbmdlZCkuCgoK
QmVzdCByZWdhcmRzLApNeWtvbGEKCj4KPiBCZXN0IHJlZ2FyZHMsCj4gTWljaGFlbAo+Cj4gPiAt
LS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3JhbmdlcGktNS5k
dHMgfCA0ICsrLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OHMtb3JhbmdlcGktNS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OHMtb3JhbmdlcGktNS5kdHMKPiA+IGluZGV4IGFkNmQwNDc5M2IwYS4uODNiOWI2NjQ1YTFl
IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW9y
YW5nZXBpLTUuZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OHMtb3JhbmdlcGktNS5kdHMKPiA+IEBAIC0xNCw4ICsxNCw4IEBAIHZjYzN2M19wY2llMjA6IHJl
Z3VsYXRvci12Y2MzdjMtcGNpZTIwIHsKPiA+ICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8w
IFJLX1BDNSBHUElPX0FDVElWRV9ISUdIPjsKPiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5h
bWUgPSAidmNjM3YzX3BjaWUyMCI7Cj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290LW9u
Owo+ID4gLSAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsK
PiA+IC0gICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4g
PiArICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4g
KyAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiA+ICAg
ICAgICAgICAgICAgc3RhcnR1cC1kZWxheS11cyA9IDw1MDAwMD47Cj4gPiAgICAgICAgICAgICAg
IHZpbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+ID4gICAgICAgfTsKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

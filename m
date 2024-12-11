Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2535E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 23:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BPZl6nzJOoYRyPZ+zyBK/fCONHeDiWvslcvZp5nleU=; b=gBEvNeZBfWw2Xj
	D2UGb9mhDeNkHwcbFOADH9s3YrKR6TCWdOVFz6l0R2Ya4Ms8KLsvTAPFfrH1Sk3tYguQQHtqUkuia
	kbnEZJ+2EYnUdWpfGrSNi+7w7V/C7PJs0352VvxEincn2WxDdWKx0vqOP62j5bubYPdhCMU7jVUsb
	y7FyZCT16EX7tGs+7wEl/iST3YnIVPmg4XM0w1RhJPb+FeU23DbSW3NYL+Q1qZrieg12eYIKoIjIh
	Z195zOsykhLLMkS1MjmA86ZzfUxnYuZO8HgN5NTcBjB9XRrSqMfwRziJMvb+eQs/dvq6TftKmHMNd
	LdTbbB8QOftNXUaD5Y+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLVrr-0000000GRB1-1dlG;
	Wed, 11 Dec 2024 23:11:43 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLVro-0000000GRAV-1SHq
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 23:11:41 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5d34030ebb2so10241711a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Dec 2024 15:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733958698; x=1734563498; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7DEsYbv+14YcD3cx8SHU+N63+rhoslsxxNsNwT6XSRs=;
        b=Sg58Ac8DUfJ21ddkHf6FYy6U5bDNm1j45anEdiAGuTwiGMnc6ci4WZHmZ/hzeeOApv
         rmXLYJn3l0MpjLHVVZZfSnuw4OGPfy8i7irfkDGyPMjK/4+Ku28VDfPOKolWdhgR/6Kv
         lcuAXjGjobhj8tutYc0SUOXBYxbAibwkJgXEKOYyuB8VWe1h+FoDQl9S8EBkCAUUJAkx
         oZLG0lF2DnTQCx/YcSvnQfHuHX++Gpib0sLQlmECI8Wqzwc89d8oCHgYzmeibhjgoZFa
         bSLPijel5up+yxSrf3S5dgM3xyB0KiB2yRU5xPqv1pCcDnPtoWIb683xDiEp++ugprac
         3wvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733958698; x=1734563498;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7DEsYbv+14YcD3cx8SHU+N63+rhoslsxxNsNwT6XSRs=;
        b=DxNW2CKCeZt7M6NXUy3FFlGG3B24Ow99VrWkVoNGB0s57ZVuoMrqFmn3yzpxonKwKB
         7+MILrZikhqwoCj2ttwlUoFmrjn8kgCE6ptpPfUs2zPYSAovQ6nx3X8M0jEzEK2sQaQl
         Icc3EBTInRRR6GQqm3OfQdK+kUwnC93LdfDYZj/VcCjxCJ2B4pD5jdTY/tbihHbFUhZW
         hAYDWWYhiZ8ed1lADutGXBpmKFt7CfGZ/Y9thKcUxw6IBFshmu6tPYhaQuD7lw5zXEJ7
         2R5iefT5ABjLHXJfl+viPM/H+rjYgrfD30J6tZBsdcDoSPPdOqZZY660HKQGTDNpdbtM
         WORw==
X-Forwarded-Encrypted: i=1; AJvYcCVhpavxeJoNPdxXIekzu3Eoo3gMmT9V4Ozq3Om4fcoC96IH+L4gSGDRTwTXiTXijEx5fvWf3854gFY1BtghMA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyk13ofFiMjGCB0vFvA7/+od4X2sra3BGVHXsurNuU7cmLMRkq8
	4f0RUSbIAw4fMLlVf8ryU5mniI+RMv5kyiMSTnUKXRgSQrjho/OrMk47UrNbA83t5ciiyCANSc5
	Yz0q+rw5srdihQyXSVYITxT711p4=
X-Gm-Gg: ASbGnct2o9arOy5uK0M2N/RHbWg98eOpFABkFhBn8NuL3r9e9wTQKCLkmYVjeOjUfj+
	D+MTS5B17gf7ttCQqaRFRasnmG2Es+Kkq7fA+rK4=
X-Google-Smtp-Source: AGHT+IEYnXu22m40I+M5yIWPJ0DddwBgpRlRSQLnu5K7XsASm55CzvCUktO2mqurNfbV8WshyxJABShiYjVjYlW2C5o=
X-Received: by 2002:a05:6402:2114:b0:5d0:d9e6:fea1 with SMTP id
 4fb4d7f45d1cf-5d4330d3799mr3651305a12.19.1733958697900; Wed, 11 Dec 2024
 15:11:37 -0800 (PST)
MIME-Version: 1.0
References: <20241211143044.9550-1-sebastian.reichel@collabora.com>
 <20241211143044.9550-4-sebastian.reichel@collabora.com> <CAMdYzYqLq=kSC8fiBapRS_8w0s8PaL9Yd46VgM56YbTEmUG1xA@mail.gmail.com>
 <xe2wqm4ktutycxj7x4rskz4pn4cfmoci6zcgfxecmvc5bu7cqi@mqxi3pnehqq3>
In-Reply-To: <xe2wqm4ktutycxj7x4rskz4pn4cfmoci6zcgfxecmvc5bu7cqi@mqxi3pnehqq3>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 11 Dec 2024 18:11:24 -0500
Message-ID: <CAMdYzYpDXHtz_Fq5NJXqTdxVTcJcHkjcjU4-J=zwmE0BWmSsNw@mail.gmail.com>
Subject: Re: [PATCH v5 3/7] pmdomain: rockchip: forward rockchip_do_pmu_set_power_domain
 errors
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com, 
	Dragan Simic <dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_151140_386230_D2DA0C2F 
X-CRM114-Status: GOOD (  38.70  )
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

T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMzo0NuKAr1BNIFNlYmFzdGlhbiBSZWljaGVsCjxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEhlbGxvIFBldGVyLAo+Cj4g
T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMDI6NTM6MzRQTSAtMDUwMCwgUGV0ZXIgR2VpcyB3cm90
ZToKPiA+IE9uIFdlZCwgRGVjIDExLCAyMDI0IGF0IDk6MzLigK9BTSBTZWJhc3RpYW4gUmVpY2hl
bAo+ID4gPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gPgo+ID4g
PiBDdXJyZW50bHkgcm9ja2NoaXBfZG9fcG11X3NldF9wb3dlcl9kb21haW4gcHJpbnRzIGEgd2Fy
bmluZyBpZiB0aGVyZQo+ID4gPiBoYXZlIGJlZW4gZXJyb3JzIHR1cm5pbmcgb24gdGhlIHBvd2Vy
IGRvbWFpbiwgYnV0IGl0IGRvZXMgbm90IHJldHVybgo+ID4gPiBhbnkgZXJyb3JzIGFuZCByb2Nr
Y2hpcF9wZF9wb3dlcigpIHRyaWVzIHRvIGNvbnRpbnVlIHNldHRpbmcgdXAgdGhlCj4gPiA+IFFP
UyByZWdpc3RlcnMuIFRoaXMgdXN1YWxseSByZXN1bHRzIGluIGFjY2Vzc2luZyB1bnBvd2VyZWQg
cmVnaXN0ZXJzLAo+ID4gPiB3aGljaCB0cmlnZ2VycyBhbiBTRXJyb3IgYW5kIGEgZnVsbCBzeXN0
ZW0gaGFuZy4KPiA+ID4KPiA+ID4gVGhpcyBpbXByb3ZlcyB0aGUgZXJyb3IgaGFuZGxpbmcgYnkg
Zm9yd2FyZGluZyB0aGUgZXJyb3IgdG8gYXZvaWQKPiA+ID4ga2VybmVsIHBhbmljcy4KPiA+Cj4g
PiBJIHRoaW5rIHdlIHNob3VsZCBtZXJnZSB5b3VyIHBhdGNoIGhlcmUgd2l0aCBteSBwYXRjaCBm
b3IgcmV0dXJuaW5nCj4gPiBlcnJvcnMgZnJvbSByb2NrY2hpcF9wbXVfc2V0X2lkbGVfcmVxdWVz
dCBbMV0uCj4KPiBJIHdpbGwgaGF2ZSBhIGxvb2suCj4KPiA+ID4gUmV2aWV3ZWQtYnk6IEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gPiA+IFRlc3RlZC1ieTogSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4KPiA+ID4gVGVzdGVkLWJ5OiBBZHJpYW4gTGFydW1iZSA8YWRy
aWFuLmxhcnVtYmVAY29sbGFib3JhLmNvbT4gIyBPbiBSb2NrIDVCCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+
ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jIHwg
MzQgKysrKysrKysrKysrKysrKystLS0tLS0tLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBp
bnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jIGIvZHJpdmVycy9wbWRvbWFpbi9y
b2NrY2hpcC9wbS1kb21haW5zLmMKPiA+ID4gaW5kZXggYTE2MWVlMTNjNjMzLi44ZjQ0MGYyODgz
ZGIgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlu
cy5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCj4g
PiA+IEBAIC01MzMsMTYgKzUzMywxNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BtdV9kb21haW5f
bWVtX3Jlc2V0KHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkKQo+ID4gPiAgICAgICAgIHJl
dHVybiByZXQ7Cj4gPiA+ICB9Cj4gPiA+Cj4gPiA+IC1zdGF0aWMgdm9pZCByb2NrY2hpcF9kb19w
bXVfc2V0X3Bvd2VyX2RvbWFpbihzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWluICpwZCwKPiA+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCBvbikKPiA+
ID4gK3N0YXRpYyBpbnQgcm9ja2NoaXBfZG9fcG11X3NldF9wb3dlcl9kb21haW4oc3RydWN0IHJv
Y2tjaGlwX3BtX2RvbWFpbiAqcGQsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgYm9vbCBvbikKPiA+ID4gIHsKPiA+ID4gICAgICAgICBzdHJ1Y3Qgcm9j
a2NoaXBfcG11ICpwbXUgPSBwZC0+cG11Owo+ID4gPiAgICAgICAgIHN0cnVjdCBnZW5lcmljX3Bt
X2RvbWFpbiAqZ2VucGQgPSAmcGQtPmdlbnBkOwo+ID4gPiAgICAgICAgIHUzMiBwZF9wd3Jfb2Zm
c2V0ID0gcGQtPmluZm8tPnB3cl9vZmZzZXQ7Cj4gPiA+ICAgICAgICAgYm9vbCBpc19vbiwgaXNf
bWVtX29uID0gZmFsc2U7Cj4gPiA+ICsgICAgICAgaW50IHJldDsKPiA+ID4KPiA+ID4gICAgICAg
ICBpZiAocGQtPmluZm8tPnB3cl9tYXNrID09IDApCj4gPiA+IC0gICAgICAgICAgICAgICByZXR1
cm47Cj4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gMDsKPiA+ID4KPiA+ID4gICAgICAgICBp
ZiAob24gJiYgcGQtPmluZm8tPm1lbV9zdGF0dXNfbWFzaykKPiA+ID4gICAgICAgICAgICAgICAg
IGlzX21lbV9vbiA9IHJvY2tjaGlwX3BtdV9kb21haW5faXNfbWVtX29uKHBkKTsKPiA+ID4gQEAg
LTU1NywxNiArNTU4LDIxIEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2RvX3BtdV9zZXRfcG93ZXJf
ZG9tYWluKHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkLAo+ID4gPgo+ID4gPiAgICAgICAg
IHdtYigpOwo+ID4gPgo+ID4gPiAtICAgICAgIGlmIChpc19tZW1fb24gJiYgcm9ja2NoaXBfcG11
X2RvbWFpbl9tZW1fcmVzZXQocGQpKQo+ID4gPiAtICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4g
PiArICAgICAgIGlmIChpc19tZW1fb24pIHsKPiA+ID4gKyAgICAgICAgICAgICAgIHJldCA9IHJv
Y2tjaGlwX3BtdV9kb21haW5fbWVtX3Jlc2V0KHBkKTsKPiA+ID4gKyAgICAgICAgICAgICAgIGlm
IChyZXQpCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ICsg
ICAgICAgfQo+ID4gPgo+ID4gPiAtICAgICAgIGlmIChyZWFkeF9wb2xsX3RpbWVvdXRfYXRvbWlj
KHJvY2tjaGlwX3BtdV9kb21haW5faXNfb24sIHBkLCBpc19vbiwKPiA+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBpc19vbiA9PSBvbiwgMCwgMTAwMDApKSB7Cj4gPiA+
IC0gICAgICAgICAgICAgICBkZXZfZXJyKHBtdS0+ZGV2LAo+ID4gPiAtICAgICAgICAgICAgICAg
ICAgICAgICAiZmFpbGVkIHRvIHNldCBkb21haW4gJyVzJywgdmFsPSVkXG4iLAo+ID4gPiAtICAg
ICAgICAgICAgICAgICAgICAgICBnZW5wZC0+bmFtZSwgaXNfb24pOwo+ID4gPiAtICAgICAgICAg
ICAgICAgcmV0dXJuOwo+ID4gPiArICAgICAgIHJldCA9IHJlYWR4X3BvbGxfdGltZW91dF9hdG9t
aWMocm9ja2NoaXBfcG11X2RvbWFpbl9pc19vbiwgcGQsIGlzX29uLAo+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaXNfb24gPT0gb24sIDAsIDEwMDAwKTsKPiA+
ID4gKyAgICAgICBpZiAocmV0KSB7Cj4gPiA+ICsgICAgICAgICAgICAgICBkZXZfZXJyKHBtdS0+
ZGV2LCAiZmFpbGVkIHRvIHNldCBkb21haW4gJyVzJyAlcywgdmFsPSVkXG4iLAo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICBnZW5wZC0+bmFtZSwgb24gPyAib24iIDogIm9mZiIsIGlzX29u
KTsKPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ICAgICAgICAgfQo+ID4g
PiArCj4gPiA+ICsgICAgICAgcmV0dXJuIDA7Cj4gPiA+ICB9Cj4gPiA+Cj4gPiA+ICBzdGF0aWMg
aW50IHJvY2tjaGlwX3BkX3Bvd2VyKHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkLCBib29s
IHBvd2VyX29uKQo+ID4gPiBAQCAtNTkyLDcgKzU5OCwxMSBAQCBzdGF0aWMgaW50IHJvY2tjaGlw
X3BkX3Bvd2VyKHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkLCBib29sIHBvd2VyX29uKQo+
ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcF9wbXVfc2V0X2lkbGVfcmVxdWVz
dChwZCwgdHJ1ZSk7Cj4gPiA+ICAgICAgICAgICAgICAgICB9Cj4gPiA+Cj4gPiA+IC0gICAgICAg
ICAgICAgICByb2NrY2hpcF9kb19wbXVfc2V0X3Bvd2VyX2RvbWFpbihwZCwgcG93ZXJfb24pOwo+
ID4gPiArICAgICAgICAgICAgICAgcmV0ID0gcm9ja2NoaXBfZG9fcG11X3NldF9wb3dlcl9kb21h
aW4ocGQsIHBvd2VyX29uKTsKPiA+ID4gKyAgICAgICAgICAgICAgIGlmIChyZXQgPCAwKSB7Cj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGNsa19idWxrX2Rpc2FibGUocGQtPm51bV9jbGtz
LCBwZC0+Y2xrcyk7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4g
Pgo+ID4gTG9va2luZyBhdCBpdCwgd2Ugc2hvdWxkbid0IHJldHVybiBkaXJlY3RseSBmcm9tIGhl
cmUgYmVjYXVzZSB0aGUKPiA+IG11dGV4IG5ldmVyIGdldHMgdW5sb2NrZWQuCj4KPiBZZXMsIHdl
IHNob3VsZCBkbyB0aGF0IGFmdGVyIHBhdGNoIDIvNyBmcm9tIHRoaXMgc2VyaWVzIDopCgpUaGF0
J3MgZXhjZWxsZW50IQoKPgo+ID4gSW5zdGVhZCBvZiByZXBlYXRpbmcgY2xrX2J1bGtfZGlzYWJs
ZSBhbmQgcmV0dXJuIHJldCBmb3IgZWFjaCBmYWlsdXJlLAo+ID4gd2UgY2FuIGluaXRpYWxpemUg
cmV0ID0gMCwgaGF2ZSBhIGdvdG86IG91dCBwb2ludGluZyB0bwo+ID4gY2xrX2J1bGtfZGlzYWJs
ZSwgYW5kIGNoYW5nZSByZXR1cm4gMCB0byByZXR1cm4gcmV0IGF0IHRoZSBlbmQuCj4KPiBSaWdo
dCBub3cgdGhlcmUgaXMgb25seSBhIHNpbmdsZSBjbGtfYnVsa19kaXNhYmxlKCkgaW4gYW4gZXJy
b3IKPiBjYXNlLCBzbyBJIGRpZCBub3QgdXNlIHRoZSB0eXBpY2FsIGVycm9yIGdvdG8gY2hhaW4u
IEkgc3VwcG9zZQo+IGl0IG1ha2VzIGEgbG90IG1vcmUgc2Vuc2Ugd2l0aCBwcm9wZXIgZXJyb3Ig
aGFuZGxpbmcgZm9yIHRoZSBjYWxscwo+IHRvIHJvY2tjaGlwX3BtdV9zZXRfaWRsZV9yZXF1ZXN0
KCkuCgpJZiB5b3UnZCBsaWtlLCBJIGNhbiBiYXNlIG15IHYyIG9uIHRoaXMgcGF0Y2ggc2VyaWVz
IHdpdGggdGhlIGNoYW5nZXMKSSdtIHN1Z2dlc3Rpbmc/Cgo+Cj4gR3JlZXRpbmdzLAo+Cj4gLS0g
U2ViYXN0aWFuCj4KPiA+Cj4gPiBXaGF0IGRvIHlvdSB0aGluaz8KPiA+Cj4gPiBWZXJ5IFJlc3Bl
Y3RmdWxseSwKPiA+IFBldGVyIEdlaXMKPiA+Cj4gPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtcm9ja2NoaXAvMjAyNDEyMTAwMTMwMTAuODEyNTctMi1wZ3dpcGVvdXRAZ21haWwu
Y29tLwo+ID4KPiA+ID4gKyAgICAgICAgICAgICAgIH0KPiA+ID4KPiA+ID4gICAgICAgICAgICAg
ICAgIGlmIChwb3dlcl9vbikgewo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAvKiBpZiBw
b3dlcmluZyB1cCwgbGVhdmUgaWRsZSBtb2RlICovCj4gPiA+IC0tCj4gPiA+IDIuNDUuMgo+ID4g
Pgo+ID4gPgo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+ID4gPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiA+ID4gTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

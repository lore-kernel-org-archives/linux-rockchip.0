Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E45C8C021B3
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 01:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skYlWOaLB9wg46TvW/AOlKHQo+zjXXt2xsfK9l2FWfw=; b=ML2AzKMnLeoeta
	up4TtL/IjKlKgZlaGPigxEK3VNUVnJyJEQAMB19wkQOapmVT57cV0CXeo7Hj0Yha1rdYY81+nHH//
	ivtqoaTQtIvCp/S/1BGFOUx0jvI2gevUYtAcChkdupgaiShEjyFYkaTO7te4l7bfyscBtfB332OVp
	Xp0erQkRQBp4r6jQbljga5gEdqphtg8nzs3jdouO5jFMJwUj+7f/tmkcQVIqSd/E7g8R+y3qK56HQ
	AR67DgvOSVgAd+v3E+ihoeHWOVZjla8veovyws/DiBXJHMv4bJlpBPqGlxBY0H/vW2gn0aWn143uH
	tQzFbHO2jtY8nl1yQQWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tleGa-00000007Hpr-1YaR;
	Sat, 22 Feb 2025 01:25:16 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tleF6-00000007HjQ-0n2h;
	Sat, 22 Feb 2025 01:23:45 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-38f31f7731fso1340513f8f.0;
        Fri, 21 Feb 2025 17:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740187422; x=1740792222; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yhpklwBnBdF83FBre0/tkR3DVtuVLWezPApNRpdK4qw=;
        b=QiXAgX5ZuT2yPL1K2eMcz65/cifrgaFmQeS9r7CpMANlq2CnjVd4ZcBH/M9OEMDAA+
         A9++Th4Q4evM0+LU86eLS8OWMfo5EiLZ8PgHztwhSit4FiY0AH2qOC/mOpzQIbT6dv77
         xu7HlZn+8jO68bmZOaS5fHfA6qVQ/RFRulpOfEBtMfj7mm7ltePh7rJR7w4GernezGr7
         1jdNlSGRDiAhw4rEi9tzHMCv6U/WW5U937tnqgmgJHPPaimhm6NOrFZGZA9jamXnF4p+
         yETpW0dJMCYl56ZITcLPG9I9mCdiCGAEUmFq7lnsnBnQIPyTRxENJC67df8Ww9xXWvF3
         tvlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740187422; x=1740792222;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yhpklwBnBdF83FBre0/tkR3DVtuVLWezPApNRpdK4qw=;
        b=lg/0ZmmgdWsWKv/53D1TOOVH8FWV1/FQH+Ycbg0ZhBcjkjQ93iMJx0/MUfcH6IBJRz
         M/y0S8VDFS3lrjB/pFUYmxujqtAkko0Oly6PBGJZv2BDL5p7HMPhuz6flN4lEbggpQVz
         pku2lcJ+BpuS+rg94Y6fmZ9zlkPoV5liqeeqI/hmQFh9j4HBf1jH0GoUMI5xxok6X2H4
         RDTycpTv5J/H3Z1rrHOoZK3cDCgpsg/MfM5wZ26O8CMfu/oxxk7sJgOYXEjb2nvWcMre
         8sG4hN6na2jUXlmX4whZAb/D9OQIl1pNqkCWn5kRD2gl7CN8wyJwPS+76RiMGXI29RXx
         3jlw==
X-Forwarded-Encrypted: i=1; AJvYcCUGBzZtP6uZTycCITSQ7b9oQJTVjaH2UxF+QhDOsnjTFWx7tWvuSV0MYa2rv9w9DYpCTNN8vWxT+kuH/W9sa7M0@lists.infradead.org, AJvYcCWM7mIFjcpOqmd1IjI9Q7yYI7lelkpwrPp0fKuctQHpFA04E9uWO3gFQAhSGXrYqetHCWR7PjEUwUrOWKrL0rM=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywo/qKFWY/z0JzqdPz8MGvyEYu4h/2f35+6U5XVV0qwr9sn4niL
	bTB/OP89MaLqRbltqwNVr/VkU73BAy/9zpppzdxpVJf/N3YQnj6TiRTISnlkF12165vM/i8wVB5
	4jriJT4d3GCatmM8l2lBvsUDvZWU=
X-Gm-Gg: ASbGnctcI5XKECae/s3zZcSjr7mdbtFry0jDDgdp6717sTvhN2xdV3ZU1CBRU/r3hlW
	CRqEKntnhshGC3bTu4/vnVZ2p4jPED8+yaf8yzu5DHbc3luS+Y6LlHfqu4I+cY4EEf6SONheNLN
	6Ftew8CeJ/1y0G9uOiBLdJOBbrjimx/cKgJopHVAU=
X-Google-Smtp-Source: AGHT+IG6BhZoWxIICbyhwCocwO6xXPSTdwoF7JNw6rq6Z7HpxVUaKQWpWlNOEVmxHVYRzUrHtcVK/scClbl6g5MFXm4=
X-Received: by 2002:a05:6000:1f83:b0:38f:2193:f8c2 with SMTP id
 ffacd0b85a97d-38f6e979541mr4649885f8f.31.1740187421737; Fri, 21 Feb 2025
 17:23:41 -0800 (PST)
MIME-Version: 1.0
References: <20250220041010.3801-1-honyuenkwun@gmail.com> <20250221231340.GS16911@sventech.com>
In-Reply-To: <20250221231340.GS16911@sventech.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 21 Feb 2025 19:23:30 -0600
X-Gm-Features: AWEUYZmVkmKF-0YNx_3i9PYhg9DTepHiFBL2v1CGPi2zlflcOJAt316mjfq3NKU
Message-ID: <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
To: Johannes Erdfelt <johannes@erdfelt.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_172344_234203_D9A477A4 
X-CRM114-Status: GOOD (  20.14  )
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

T24gRnJpLCBGZWIgMjEsIDIwMjUgYXQgNToxM+KAr1BNIEpvaGFubmVzIEVyZGZlbHQgPGpvaGFu
bmVzQGVyZGZlbHQuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgRmViIDE5LCAyMDI1LCBKaW1teSBI
b24gPGhvbnl1ZW5rd3VuQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiBUaGlzIHBhdGNoc2V0IGlzIGxv
b2tpbmcgZm9yIHRlc3RlcnMuIEkgZG8gbm90IGhhdmUgdGhlIGhhcmR3YXJlIHRvIHRlc3QuCj4K
PiBJIGRvIGhhdmUgaGFyZHdhcmUgYW5kIEkgZ2F2ZSB5b3VyIGJyYW5jaFsxXSBhIHRlc3QuClRo
YW5rcyBmb3IgdGhlIHRlc3QgcmVzdWx0cwoKPgo+IFRoZSBmb2xsb3dpbmcgdGhpbmdzIHRlc3Rl
ZCBzdWNjZXNzZnVsbHkgZm9yIG1lOgo+IC0gS2VybmVsIGJvb3RzCj4gLSBFdGhlcm5ldAo+IC0g
U1BJIE5PUgo+IC0gTWljcm8gU0QgY2FyZAo+IC0gZU1NQwo+IC0gQm90dG9tIE0uMiBNLWtleSBz
bG90ICh1c2luZyBhbiBOVk1FIGRyaXZlKQo+IC0gVVNCIDIuMCBwb3J0cwo+IC0gQmx1ZSBMRUQg
KHVzaW5nIGhlYXJ0YmVhdCB0cmlnZ2VyIGF0IGxlYXN0KQo+Cj4gSSBkaWQgbm90IHRlc3Q6Cj4g
LSBSVEMKPiAtIFVBUlQKPiAtIEhETUkxCj4gLSBIRE1JIElOCj4gLSBBbmFsb2cgYXVkaW8KPiAt
IE1hbGkgR1BVCj4gLSBIZWF0IHNpbmsgZmFuCj4KPiBIb3dldmVyLCBuZWl0aGVyIG9mIHRoZSBV
U0IgMy4wIHBvcnRzIHdvcmsuIFRoZXJlIGFyZSBubyBYSENJIG1lc3NhZ2VzCj4gZHVyaW5nIGJv
b3QuIEkgY29uZmlybWVkIG15IGtlcm5lbCBjb25maWcgZG9lcyBidWlsZCBYSENJLiBJIGhhdmVu
J3QKPiBydWxlZCBvdXQgYSBtaXN0YWtlIG9uIG15IGVuZCB5ZXQuCkRvZXMgeW91ciBrZXJuZWwg
Y29uZmlnIGhhdmUgQ09ORklHX1BIWV9ST0NLQ0hJUF9VU0JEUD8KQm90aCBVU0IgMyBwb3J0cyBv
biB0aGUgTWF4L1VsdHJhIHBvcnRzIGFyZSB3aXJlZCB0byB0aGUgdXNiZHAKY29udHJvbGxlciBh
bmQgbm90IGNvbWJwaHkyX3BzdSBjb250cm9sbGVyLgpJdCdsbCBiZSBzZXQgaWYgeW91J3JlIHVz
aW5nIHRoZSBhcm02NCBkZWZjb25maWcuCgpPbiBteSBPcmFuZ2UgUGkgNSBNYXgsIGRtZXNnIHwg
Z3JlcCB4aGNpIHdpbGwgc2hvdyAoZS5nLiBpbyBtZW0pClsgICAgMC43Njk2OTldIHhoY2ktaGNk
IHhoY2ktaGNkLjQuYXV0bzogeEhDSSBIb3N0IENvbnRyb2xsZXIKWyAgICAwLjc2OTkxOV0geGhj
aS1oY2QgeGhjaS1oY2QuNC5hdXRvOiBuZXcgVVNCIGJ1cyByZWdpc3RlcmVkLAphc3NpZ25lZCBi
dXMgbnVtYmVyIDEKWyAgICAwLjc3MDA2Ml0geGhjaS1oY2QgeGhjaS1oY2QuNC5hdXRvOiBoY2Mg
cGFyYW1zIDB4MDIyMGZlNjQgaGNpCnZlcnNpb24gMHgxMTAgcXVpcmtzIDB4MDAwMDgwODAwMjAw
MDAxMApbICAgIDAuNzcwMTE5XSB4aGNpLWhjZCB4aGNpLWhjZC40LmF1dG86IGlycSA4OSwgaW8g
bWVtIDB4ZmMwMDAwMDAKWyAgICAwLjc3MDM1MV0geGhjaS1oY2QgeGhjaS1oY2QuNC5hdXRvOiB4
SENJIEhvc3QgQ29udHJvbGxlcgpbICAgIDAuNzcwNTg1XSB4aGNpLWhjZCB4aGNpLWhjZC40LmF1
dG86IG5ldyBVU0IgYnVzIHJlZ2lzdGVyZWQsCmFzc2lnbmVkIGJ1cyBudW1iZXIgMgpbICAgIDAu
NzcwNjAyXSB4aGNpLWhjZCB4aGNpLWhjZC40LmF1dG86IEhvc3Qgc3VwcG9ydHMgVVNCIDMuMCBT
dXBlclNwZWVkClsgICAgMC43NzA4MzddIHVzYiB1c2IxOiBNYW51ZmFjdHVyZXI6IExpbnV4IDYu
MTQuMC1yYzEtMi1yb2NrY2hpcC1BUkNIIHhoY2ktaGNkClsgICAgMC43NzA4NDRdIHVzYiB1c2Ix
OiBTZXJpYWxOdW1iZXI6IHhoY2ktaGNkLjQuYXV0bwpbICAgIDAuNzcyMDY5XSB1c2IgdXNiMjog
TWFudWZhY3R1cmVyOiBMaW51eCA2LjE0LjAtcmMxLTItcm9ja2NoaXAtQVJDSCB4aGNpLWhjZApb
ICAgIDAuNzcyMDc2XSB1c2IgdXNiMjogU2VyaWFsTnVtYmVyOiB4aGNpLWhjZC40LmF1dG8KWyAg
ICAwLjc5MjM2OV0geGhjaS1oY2QgeGhjaS1oY2QuNS5hdXRvOiB4SENJIEhvc3QgQ29udHJvbGxl
cgpbICAgIDAuNzkyNjQwXSB4aGNpLWhjZCB4aGNpLWhjZC41LmF1dG86IG5ldyBVU0IgYnVzIHJl
Z2lzdGVyZWQsCmFzc2lnbmVkIGJ1cyBudW1iZXIgMwpbICAgIDAuNzkyNzgxXSB4aGNpLWhjZCB4
aGNpLWhjZC41LmF1dG86IGhjYyBwYXJhbXMgMHgwMjIwZmU2NCBoY2kKdmVyc2lvbiAweDExMCBx
dWlya3MgMHgwMDAwODA4MDAyMDAwMDEwClsgICAgMC43OTI4MjZdIHhoY2ktaGNkIHhoY2ktaGNk
LjUuYXV0bzogaXJxIDkwLCBpbyBtZW0gMHhmYzQwMDAwMApbICAgIDAuNzkzMDU4XSB4aGNpLWhj
ZCB4aGNpLWhjZC41LmF1dG86IHhIQ0kgSG9zdCBDb250cm9sbGVyClsgICAgMC43OTMzMTFdIHho
Y2ktaGNkIHhoY2ktaGNkLjUuYXV0bzogbmV3IFVTQiBidXMgcmVnaXN0ZXJlZCwKYXNzaWduZWQg
YnVzIG51bWJlciA0ClsgICAgMC43OTMzMjddIHhoY2ktaGNkIHhoY2ktaGNkLjUuYXV0bzogSG9z
dCBzdXBwb3J0cyBVU0IgMy4wIFN1cGVyU3BlZWQKWyAgICAwLjc5MzUzMF0gdXNiIHVzYjM6IE1h
bnVmYWN0dXJlcjogTGludXggNi4xNC4wLXJjMS0yLXJvY2tjaGlwLUFSQ0ggeGhjaS1oY2QKWyAg
ICAwLjc5MzUzN10gdXNiIHVzYjM6IFNlcmlhbE51bWJlcjogeGhjaS1oY2QuNS5hdXRvClsgICAg
MC43OTQ3MDNdIHVzYiB1c2I0OiBNYW51ZmFjdHVyZXI6IExpbnV4IDYuMTQuMC1yYzEtMi1yb2Nr
Y2hpcC1BUkNIIHhoY2ktaGNkClsgICAgMC43OTQ3MTBdIHVzYiB1c2I0OiBTZXJpYWxOdW1iZXI6
IHhoY2ktaGNkLjUuYXV0bwoKPgo+IEFsc28sIHRoZSBncmVlbiBMRUQgaXMgY29uc3RhbnRseSBs
aXQgZXZlbiB3aGVuIHRoZSB0cmlnZ2VyIGlzIHNldCB0bwo+IG5vbmUgYW5kIHRoZSBicmlnaHRu
ZXNzIGlzIHNldCB0byAwLiBUaGlzIG1hZGUgaXMgYSBiaXQgaGFyZGVyIHRvCj4gY29uZmlybSB0
aGF0IHRoZSBibHVlIExFRCB3YXMgd29ya2luZy4gSSBoYXZlbid0IHJ1bGVkIG91dCBhIG1pc3Rh
a2Ugb24KPiBteSBlbmQgZm9yIHRoaXMgb25lIHlldCBlaXRoZXIuCkNoZWNraW5nIHRoZSBzY2hl
bWF0aWMgZm9yIHRoZSBNYXggYW5kIHRoZSBVbHRyYSwgdGhleSBib3RoIHVzZQpQV000X00wIGFu
ZCBQV001X00xIHRvIGNvbnRyb2wgdGhlIGJsdWUgYW5kIGdyZWVuIExFRHMuCgpIYXZlIHlvdSB0
cmllZCBib290aW5nIHRoZSB2ZW5kb3IgQlNQIDUuMTAgb3IgNi4xIGtlcm5lbHM/IFdoYXQncyB0
aGUKYmVoYXZpb3Igb24gdGhvc2Uga2VybmVscz8gSXQncyB1c2luZyBHUElPIHBpbnMgdGhlcmUs
IHdoZXJlYXMgd2UncmUKdXNpbmcgUFdNIHRvIGJlIGFibGUgdG8gY29udHJvbCBicmlnaHRuZXNz
LgoKPgo+IEknbGwgYWxzbyBzZWUgaWYgSSBjYW4gZ2l2ZSBIRE1JIGEgdGVzdC4KUGxlYXNlIHJl
cG9ydCB5b3VyIHJlc3VsdHMgd2hlbiB5b3UgZG8uIFRoaXMgaXMgb25lIG9mIHRoZSBkaWZmZXJl
bmNlcwpmcm9tIHRoZSBPcmFuZ2UgUGkgNSBNYXguIFRoZSBIRE1JMSBwaW5jdHJscyBkb2VzIG5v
dCB1c2UgdGhlIGRlZmF1bHQKcGluY3RybHMgbGlrZSBvdGhlciBSSzM1ODggYm9hcmRzIChpbmNs
dWRpbmcgdGhlIE9yYW5nZSBQaSA1IFBsdXMpLgoKPgo+IEpFCj4KPiBbMV0gaHR0cHM6Ly9naXRo
dWIuY29tL2ppbW15aG9uL2xpbnV4L3RyZWUvaW50ZWdyYXRlLTYuMTUKPgoKSmltbXkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

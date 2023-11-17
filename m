Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60B00C072A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 06:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmag0DFKlRoTR41WksD/G5R6NeabAvS5Xyxnn7ugDHA=; b=v8LrCiIu9Q+wWC
	vmvrj2O56mmz+1UtTli8DcQlJCK4oSnqyrG00XThRdGRf4xN5twkycR01Zw17Ry+rDaNuQgT5rZm8
	X+GQ/chCLcDa5kvWMIuZV7OWIJCs8IfkTmimkdHxSpQTyz0WFPCycptmEI/vqINz4Jzg8RllUGMw6
	Dh6+yPa2W5Ogi8MtAnxZIKFnufAFFSPCfG2ch7/swEy2sKjB+vZZbcrnVNIBjjg0ru1DFnJGupCIx
	KOlHsNp57egTlQ5POgAns6LW9YiBqImTWZmjtln4w3mzPtK8NLv/IdGzR/FhjOo1XQ94pkvPfdSM8
	OkdfRuRvpb/whrb+qPzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3s5F-005jCV-0a;
	Fri, 17 Nov 2023 06:12:05 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3s5C-005jBb-1s
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 06:12:03 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507f1c29f25so2256913e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Nov 2023 22:12:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700201519; x=1700806319; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dzkIKBP1RSNSjcHa3ooQec7vnsT1BIreWgj3m6bqwkw=;
        b=dVzUclt9IyY2DoKmW0pWXxIFz5ycyhoKnP90YgvM6bLxRha4kkmdl4yHVrNiK5oZyM
         b7ZKDZ5owwscXilIinOVoUOIasyGBf5Hvkq6Z//gOZNr/bgSY8yjcvaERA2fm7cp8oAe
         xqQciFPscASMp+0OrjpMa89krr0Nngm25M+ug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700201519; x=1700806319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dzkIKBP1RSNSjcHa3ooQec7vnsT1BIreWgj3m6bqwkw=;
        b=jzogcyo6cfAkvxmXZWafcQJRyVkjPXeuN3CX8T3EvDDknZA+sCS393bYrtQ4hEQJlN
         AowvcJGzP5vJVWJ2Msq9/pBMiRylh4RPx8+Uh/9MINcdGHuwrH8Dlz5jSPKOGGYsTBcX
         FUglmztIkMw2xjTA7HlHdQ3WCecIFANN3hsZcvlqDX8/pdIWKm16oyN4YRN37Fjmy0gq
         wR1UlsCVjp1pVsuCtPFUqIW0pCjHrEHYR0TPMqAZCWr741BT/me9376WfkumGcFlQADK
         Jm9yccX8Sjlt4ARG+sMsD4cwDd4BunIejrNr+HHssyH4wm2Eor/75cLSeferiZxqhyNz
         fZ7w==
X-Gm-Message-State: AOJu0Yzgf7VO+7DySrVTBlE0+RzOqfOm3m94SZJ9re/PZwSebN1R+jsx
	YlqeIlfvc35ABpienIEddO5QX3A3hZdHxfMjc7akjQ==
X-Google-Smtp-Source: AGHT+IFbPm0GAk/S8jZWFqJiaxpI9RRydHhWmQXXbn39qHE7VNrw5ZxXw95aX6hOEaZc2PyZQeXNgpYfKQi/QvJmefo=
X-Received: by 2002:a05:6512:39c9:b0:50a:7640:6a7f with SMTP id
 k9-20020a05651239c900b0050a76406a7fmr15645335lfu.12.1700201519373; Thu, 16
 Nov 2023 22:11:59 -0800 (PST)
MIME-Version: 1.0
References: <20231116154816.70959-1-andrzej.p@collabora.com> <20231116154816.70959-4-andrzej.p@collabora.com>
In-Reply-To: <20231116154816.70959-4-andrzej.p@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 17 Nov 2023 14:11:48 +0800
Message-ID: <CAGXv+5GhaF94ZRwrZ_CWg3j6bVYyEqZru9LM7ABDB29-cPhqSQ@mail.gmail.com>
Subject: Re: [RFC 3/6] media: verisilicon: Improve constant's name
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Hugues Fruchet <hugues.fruchet@foss.st.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Daniel Almeida <daniel.almeida@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_221202_617905_98AD198B 
X-CRM114-Status: GOOD (  15.85  )
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

T24gVGh1LCBOb3YgMTYsIDIwMjMgYXQgMTE6NDjigK9QTSBBbmRyemVqIFBpZXRyYXNpZXdpY3oK
PGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEZvciBWUDggQklUKDE4KSBvZiB0
aGlzIHJlZ2lzdGVyIGlzIGZvciBlbmFibGluZyB0aGUgYm9vbGVhbiBlbmNvZGVyLgoKWWVzLCBi
dXQgZm9yIEguMjY0IGl0IHNlbGVjdHMgdGhlIGVudHJvcHkgY29kaW5nIG1vZGUsIDAgZm9yIENB
VkxDCmFuZCAxIGZvciBDQUJBQy4gWW91IGV2ZW4gYWRkIGl0IGJhY2sgaW4gdGhlIGxhc3QgcGF0
Y2guIEknZCBkbyBpdApoZXJlLCBzbyB5b3UgZGlzYW1iaWd1YXRlIHRoZSBkZWZpbml0aW9uIHdp
dGhpbiBvbmUgcGF0Y2guCgpDaGVuWXUKCgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJ6ZWogUGlldHJh
c2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2gxX3JlZ3MuaCAgICB8IDIgKy0KPiAgZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faDFfdnA4X2VuYy5jIHwgMiArLQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19oMV9y
ZWdzLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19oMV9yZWdz
LmgKPiBpbmRleCA3NzUyZDEyOTFjMGUuLmMxYzY2YzkzNGEyNCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19oMV9yZWdzLmgKPiArKysgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19oMV9yZWdzLmgKPiBAQCAt
NzAsNyArNzAsNyBAQAo+ICAjZGVmaW5lICAgIEgxX1JFR19FTkNfQ1RSTDJfRElTQUJMRV9RVUFS
VEVSX1BJWE1WICAgICAgQklUKDIyKQo+ICAjZGVmaW5lICAgIEgxX1JFR19FTkNfQ1RSTDJfVFJB
TlM4WDhfTU9ERV9FTiAgICAgICAgICAgQklUKDIxKQo+ICAjZGVmaW5lICAgIEgxX1JFR19FTkNf
Q1RSTDJfQ0FCQUNfSU5JVF9JREMoeCkgICAgICAgICAgKCh4KSA8PCAxOSkKPiAtI2RlZmluZSAg
ICBIMV9SRUdfRU5DX0NUUkwyX0VOVFJPUFlfQ09ESU5HX01PREUgICAgICAgICAgICAgICAgQklU
KDE4KQo+ICsjZGVmaW5lICAgIEgxX1JFR19FTkNfQ1RSTDJfVlA4X0JPT0xFTkNfRU5BQkxFICAg
ICAgICAgQklUKDE4KQo+ICAjZGVmaW5lICAgIEgxX1JFR19FTkNfQ1RSTDJfSDI2NF9JTlRFUjRY
NF9NT0RFICAgICAgICAgQklUKDE3KQo+ICAjZGVmaW5lICAgIEgxX1JFR19FTkNfQ1RSTDJfSDI2
NF9TVFJFQU1fTU9ERSAgICAgICAgICAgQklUKDE2KQo+ICAjZGVmaW5lICAgIEgxX1JFR19FTkNf
Q1RSTDJfSU5UUkExNlgxNl9NT0RFKHgpICAgICAgICAgKCh4KSkKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faDFfdnA4X2VuYy5jIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faDFfdnA4X2VuYy5jCj4gaW5k
ZXggMDVhYTBkZDljMDljLi4wOGM1MDc5ZmJmZDAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faDFfdnA4X2VuYy5jCj4gKysrIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faDFfdnA4X2VuYy5jCj4gQEAgLTEy
MjYsNyArMTIyNiw3IEBAIHN0YXRpYyB2b2lkIGhhbnRyb19oMV92cDhfZW5jX3NldF9wYXJhbXMo
c3RydWN0IGhhbnRyb19kZXYgKnZwdSwgc3RydWN0IGhhbnRyb19jCj4gICAgICAgICByZWcgPSAw
Owo+ICAgICAgICAgaWYgKG1iX3dpZHRoICogbWJfaGVpZ2h0ID4gTUFYX01CX0NPVU5UX1RPX0RJ
U0FCTEVfUVVBUlRFUl9QSVhFTF9NVikKPiAgICAgICAgICAgICAgICAgcmVnID0gSDFfUkVHX0VO
Q19DVFJMMl9ESVNBQkxFX1FVQVJURVJfUElYTVY7Cj4gLSAgICAgICByZWcgfD0gSDFfUkVHX0VO
Q19DVFJMMl9FTlRST1BZX0NPRElOR19NT0RFOwo+ICsgICAgICAgcmVnIHw9IEgxX1JFR19FTkNf
Q1RSTDJfVlA4X0JPT0xFTkNfRU5BQkxFOwo+Cj4gICAgICAgICBpbnRlcl9mYXZvciA9IDEyOCAt
IGN0eC0+dnA4X2VuYy5wcm9iX2ludHJhOwo+ICAgICAgICAgaWYgKGludGVyX2Zhdm9yID49IDAp
Cj4gLS0KPiAyLjI1LjEKPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AF4DC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 20:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/iEl22B0MD518MMyxTqdFTQc1YI5FemT/nAvAi2ftNg=; b=aJu3RilZVaqrUr
	RuY8EugQP+r4GievVcPuDlaaYMH0HxObs7MWjkrdY7qJoxAsTqSOAq6CpbklR1KDRH/kQvTIJzQvV
	NoqBtydDrFzjaK48cKLSeVEsqsRi40Iv05M22pH01jC3h04ZpLseDsKsrm7OJvBsB06YguW51Nwg6
	JsEp7eWVnr5BiToJ7wkRof5g8a+jJQMQ6SVCfWza2P7wzMLYb3mGeW5fQu2PZOFeBP57f6rhNReen
	MplA5R97cKfqBulNscPUR6/ZEdn92w+O90JR7fQAvH3837UX3OLmuUvCLqLXzdRnTxMnFB425hCjW
	3naUFQu07abVLpSKrV2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Mkz-001uzW-Lc; Mon, 19 Dec 2022 20:29:05 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Mkp-001uc8-I6
	for linux-rockchip@lists.infradead.org; Mon, 19 Dec 2022 20:28:56 +0000
Received: by mail-qt1-x82d.google.com with SMTP id z12so9308118qtv.5
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Dec 2022 12:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PECBBcrgpKAeHwq8TDeEP5JS5G3rnettIaoWdcM7j1Y=;
        b=W1blpq5+a9QGCDuj+ebjQo6UJdZOn1UG0Be52m8UmMOlWV4eArUHbQrV4nAvUDk3uK
         18Hd+tT1f90ljLLwwdiOXB/JrVt5gydloMRTRgFVzWBZYCrnIzZUQQME1rnbNYnmV3U+
         wKEJPFpa8x7FhOjyGiPqa7l6pNJqQMNyIWU+4WF56yCJvAR86MYf/XlzeUKaAAZQJ4xG
         lnjJJW/qdGxtKxk2QSd/tRh+foWvzkpNEC+XRtPkD4NrcjRVaq/apzufNhPgoREKu08a
         D42j5OURe9wKigUsFZBsQhrbkB1DNeTkFbLWtjvHQT2jhHLvlAa7KfPCiNqN02EYqckP
         tjiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PECBBcrgpKAeHwq8TDeEP5JS5G3rnettIaoWdcM7j1Y=;
        b=qmtTiVWxXCfQA0S1rBP4/SziottOU71bmSUmpAlfSb3jVWHpmExD0gbBQKhjyNk2iu
         tfx7ZlPflSLM/0TSDCEQGsnjxlaUonfkK/1aHCOYi/YzgYs8xT9/6anCEiS0v95oMM4+
         4kJQR6kJY0dnTx3KU28YLDnSnLGNWotlNM1bm0Ws0jD3000a7ZDrgNw97UKaScDWzQTr
         nzhX++0N7bscVf7ts2ayEs64yD83bLv3qZDvmCOwH1FFAcCQXlO16Ei1xEhki4smiwBI
         5fJvNT2YcairjJroLyVjNIH+wQBYgt6FXwH5DhhJ6qnXBqF7E3eKFoQgb4BrrQK0CrTq
         TUsA==
X-Gm-Message-State: ANoB5pmYSCJ51faX/04y1z5nR6uZ3Nufrp2c111l0iwl7VEB9iqk2iTN
	RTvNiWinBR/vFraaM74llWmHog==
X-Google-Smtp-Source: AA0mqf6aOuki7WAAYbi0dAxo2ur7bA3i9IwDBkMk78Jl1dEcj+6GgwyewWvr3HhJZnhoPSQ/KnGKMA==
X-Received: by 2002:a05:622a:5085:b0:3a7:e110:81e5 with SMTP id fp5-20020a05622a508500b003a7e11081e5mr54094898qtb.53.1671481730077;
        Mon, 19 Dec 2022 12:28:50 -0800 (PST)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id r3-20020ac85e83000000b0039953dcc480sm6478803qtx.88.2022.12.19.12.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 12:28:49 -0800 (PST)
Message-ID: <ab54d584ce30b99ace048da9b9c9ee317df1a5c5.camel@ndufresne.ca>
Subject: Re: [PATCH v1 2/9] media: verisilicon: Add AV1 decoder mode and
 controls
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Mon, 19 Dec 2022 15:28:48 -0500
In-Reply-To: <20221219155616.848690-3-benjamin.gaignard@collabora.com>
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
	 <20221219155616.848690-3-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_122855_631715_D55D96DB 
X-CRM114-Status: GOOD (  12.83  )
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

TGUgbHVuZGkgMTkgZMOpY2VtYnJlIDIwMjIgw6AgMTY6NTYgKzAxMDAsIEJlbmphbWluIEdhaWdu
YXJkIGEgw6ljcml0wqA6Cj4gQWRkIEFWMSBkZWNvZGVyIGFzIG5ldyBkZWNvZGVyIG1vZGUgdG8g
SGFudHJvIGRyaXZlci4KPiBSZWdpc3RlciBuZWVkZWQgQVYxIGNvbnRyb2xzIGZvciB0aGUgZGVj
b2Rlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNv
bGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oICAgfCAgMyArKysKPiAgLi4uL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyAgIHwgMjEgKysrKysrKysrKysrKysrKysrKwo+ICAy
IGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaCBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvLmgKPiBpbmRleCAyOTg5ZWJjNjMxY2MuLjYxNDgwODI1
Yjg1NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyby5oCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8u
aAo+IEBAIC0zOCw2ICszOCw3IEBAIHN0cnVjdCBoYW50cm9fcG9zdHByb2Nfb3BzOwo+ICAjZGVm
aW5lIEhBTlRST19IMjY0X0RFQ09ERVIJQklUKDE4KQo+ICAjZGVmaW5lIEhBTlRST19IRVZDX0RF
Q09ERVIJQklUKDE5KQo+ICAjZGVmaW5lIEhBTlRST19WUDlfREVDT0RFUglCSVQoMjApCj4gKyNk
ZWZpbmUgSEFOVFJPX0FWMV9ERUNPREVSCUJJVCgyMSkKPiAgI2RlZmluZSBIQU5UUk9fREVDT0RF
UlMJCTB4ZmZmZjAwMDAKPiAgCj4gIC8qKgo+IEBAIC0xMTEsNiArMTEyLDcgQEAgc3RydWN0IGhh
bnRyb192YXJpYW50IHsKPiAgICogQEhBTlRST19NT0RFX1ZQOF9ERUM6IFZQOCBkZWNvZGVyLgo+
ICAgKiBASEFOVFJPX01PREVfSEVWQ19ERUM6IEhFVkMgZGVjb2Rlci4KPiAgICogQEhBTlRST19N
T0RFX1ZQOV9ERUM6IFZQOSBkZWNvZGVyLgo+ICsgKiBASEFOVFJPX01PREVfQVYxX0RFQzogQVYx
IGRlY29kZXIKPiAgICovCj4gIGVudW0gaGFudHJvX2NvZGVjX21vZGUgewo+ICAJSEFOVFJPX01P
REVfTk9ORSA9IC0xLAo+IEBAIC0xMjAsNiArMTIyLDcgQEAgZW51bSBoYW50cm9fY29kZWNfbW9k
ZSB7Cj4gIAlIQU5UUk9fTU9ERV9WUDhfREVDLAo+ICAJSEFOVFJPX01PREVfSEVWQ19ERUMsCj4g
IAlIQU5UUk9fTU9ERV9WUDlfREVDLAo+ICsJSEFOVFJPX01PREVfQVYxX0RFQywKPiAgfTsKPiAg
Cj4gIC8qCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
aGFudHJvX2Rydi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
ZHJ2LmMKPiBpbmRleCA4Y2I0YTY4YzkxMTkuLjQ1MDBlMWZjMGYyYyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+ICsrKyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gQEAgLTQ5OCw2
ICs0OTgsMjcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9fY3RybCBjb250cm9sc1tdID0g
ewo+ICAJCS5jZmcgPSB7Cj4gIAkJCS5pZCA9IFY0TDJfQ0lEX1NUQVRFTEVTU19WUDlfQ09NUFJF
U1NFRF9IRFIsCj4gIAkJfSwKPiArCX0sIHsKPiArCQkuY29kZWMgPSBIQU5UUk9fQVYxX0RFQ09E
RVIsCj4gKwkJLmNmZyA9IHsKPiArCQkJLmlkID0gVjRMMl9DSURfU1RBVEVMRVNTX0FWMV9GUkFN
RSwKPiArCQl9LAo+ICsJfSwgewo+ICsJCS5jb2RlYyA9IEhBTlRST19BVjFfREVDT0RFUiwKPiAr
CQkuY2ZnID0gewo+ICsJCQkuaWQgPSBWNEwyX0NJRF9TVEFURUxFU1NfQVYxX1RJTEVfR1JPVVBf
RU5UUlksCj4gKwkJCS5kaW1zID0geyBWNEwyX0FWMV9NQVhfVElMRV9DT1VOVCB9LAo+ICsJCX0s
Cj4gKwl9LCB7Cj4gKwkJLmNvZGVjID0gSEFOVFJPX0FWMV9ERUNPREVSLAo+ICsJCS5jZmcgPSB7
Cj4gKwkJCS5pZCA9IFY0TDJfQ0lEX1NUQVRFTEVTU19BVjFfU0VRVUVOQ0UsCj4gKwkJfSwKPiAr
CX0sIHsKPiArCQkuY29kZWMgPSBIQU5UUk9fQVYxX0RFQ09ERVIsCj4gKwkJLmNmZyA9IHsKPiAr
CQkJLmlkID0gVjRMMl9DSURfU1RBVEVMRVNTX0FWMV9GSUxNX0dSQUlOLAo+ICsJCX0sCj4gIAl9
LAo+ICB9Owo+ICAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==

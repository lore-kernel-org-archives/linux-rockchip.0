Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C099C02192
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Feb 2025 19:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWWNfcPKFAiD99x9mTlS5/+TPEfQI4TP9iPKPjDcnrU=; b=x0tqqGpzGRMKSV
	GCUdka5AlthsxOKpFEvv15MGHN4m3am8Z4nUx5Fj4qyeyBbZeRZPkKWJwkBAqrxVG9DO9DzDH/kZb
	LRF3p3Fp2w7jubjpp+09YoWOZxcxsI1azYCut2iArn/4HX8Hadbnv5MuSFc/6g04M6LIeKEpbnG0N
	WIVaiS5XmYklp9bt28oBRUX3XDLqigqGMomKv7OJ61zNrU1bD2RWsJJEiCQHIAHoAbEI7j+1P0V2Y
	kJL47VMOmKIrYyNpZ6W3vHnsMDdKD4LAo1T9M5Me1wmK3CoYlpQhpdOFvoZXEOdNMnyB39JbtbWdU
	Ko48VUbG28zsNM6nHmNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf1hY-0000000GNyR-0jAO;
	Mon, 03 Feb 2025 19:01:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf1Vw-0000000GKTY-0OMW;
	Mon, 03 Feb 2025 18:49:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A66155C684D;
	Mon,  3 Feb 2025 18:49:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C132C4CEE5;
	Mon,  3 Feb 2025 18:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738608583;
	bh=e6mfjCAhjspD99GgKLJ+Kp3DDrQVj0wKKan7rFRR2f0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=pSvxJvFF9UrjbVoIUYRuKL8lqdMqjS9oiOYB4XkfY+N/aKtbtlPuD3WnV6xRx4yfF
	 SGjNNta3TeOU6GasV3698gpylNBR3o+AvQRHdvl9gNUrzXnRxxzEKz9Io+Wa0Ytg9y
	 s0FjFS+x1I/yk3ZxLNgIyjb5ef9IN9gxgErdsVNdZc/ZzpaJARwOa1ZHt3uMaSEA1+
	 2JPLKv3q9llRr5B4w+x3yQa+/jd48QiMC9XqEc4C1Mbxiw9r2JOsy65WEtY7p7zNOi
	 /ECsK0HWi5hUNeRSDrD/q6u181GIBrqatCMVoDHGxU+wn8DMaXuDE9OWxO7uLUw5UQ
	 9tHTGyWcu92Rg==
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d414b8af7bso9580524a12.0;
        Mon, 03 Feb 2025 10:49:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVQ9JcPgMAPXZyfnhGm/IVHLMEUCN8oZgWBwjEnIItdvql8i/t3OOfH/8vasRyxuw3LHBeSwKc+eWmOA5ykQec=@lists.infradead.org, AJvYcCVX9msrUa2TWZcnba2XNoTyc9tCRKT9jwuPSKIhxFqYQkqyO5sm6Cfl5OJ8fmCvUtn1mO5aw73fvQfJ@lists.infradead.org, AJvYcCWB4cyjM5iGDwa+Tu3TTpUQDfslPRtm2Wp+Xii+ZrkBb6YFANsqYKpiCI501mMNqBlrQxnaC5nR0RE9AznFMQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzmExncuFQbbOto/5kR4fHhHFGPT8qP2aX0zqNbsxeJC9aF2PPl
	e2n18Vz03nz2kDnHXKRKjGog90vEkhi2nZx0A2WTwo/pcfqedp3q4lmZpnV/1gVCS1jfoLVFd0t
	iWs5i7iqIsqfwYMyqIZhQ6hLwuQ==
X-Google-Smtp-Source: AGHT+IHRZ8R8fpMxBKgCgw8bavXdzA9H5kA8wOOZn2wZu4+SQJ2Dew1ZJUxSmYvEqAH1df8byjuznOAH4vRk3K9otZo=
X-Received: by 2002:a05:6402:274f:b0:5dc:58ad:b8d5 with SMTP id
 4fb4d7f45d1cf-5dc5efc112cmr25980752a12.9.1738608581813; Mon, 03 Feb 2025
 10:49:41 -0800 (PST)
MIME-Version: 1.0
References: <20241231163121.241543-1-robh@kernel.org>
In-Reply-To: <20241231163121.241543-1-robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 3 Feb 2025 12:49:30 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL7jUGqfFcpv6-WahhF69xQb9ODTU_xxm-Q3ySJusyi3w@mail.gmail.com>
X-Gm-Features: AWEUYZmiVScQsdeQTyyJLHGWj9QAFvMynSzif201Zu1U_YbABWsPT1LJOWLY8wM
Message-ID: <CAL_JsqL7jUGqfFcpv6-WahhF69xQb9ODTU_xxm-Q3ySJusyi3w@mail.gmail.com>
Subject: Re: [PATCH] phy: Use (of|device)_property_present() for non-boolean properties
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_104944_215889_57BC3E85 
X-CRM114-Status: GOOD (  16.73  )
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

T24gVHVlLCBEZWMgMzEsIDIwMjQgYXQgMTA6MzLigK9BTSBSb2IgSGVycmluZyAoQXJtKSA8cm9i
aEBrZXJuZWwub3JnPiB3cm90ZToKPgo+IFRoZSB1c2Ugb2YgKG9mfGRldmljZSlfcHJvcGVydHlf
cmVhZF9ib29sKCkgZm9yIG5vbi1ib29sZWFuIHByb3BlcnRpZXMKPiBpcyBkZXByZWNhdGVkIGlu
IGZhdm9yIG9mIChvZnxkZXZpY2UpX3Byb3BlcnR5X3ByZXNlbnQoKSB3aGVuIHRlc3RpbmcKPiBm
b3IgcHJvcGVydHkgcHJlc2VuY2UuCj4KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyAoQXJt
KSA8cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRr
LXRwaHkuYyAgICAgICAgICAgfCA0ICsrLS0KPiAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLWlubm8tdXNiMi5jIHwgNCArKy0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQoKUGluZy4gVGhlc2Ugbm93IGNhdXNlIHdhcm5pbmdzIGlu
IHY2LjE0LXJjMS4KCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10
ay10cGh5LmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLXRwaHkuYwo+IGluZGV4IDNm
NzA5NWVjNTk3OC4uZDM2ZjY4ZGQ2MjJlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L21lZGlh
dGVrL3BoeS1tdGstdHBoeS5jCj4gKysrIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay10
cGh5LmMKPiBAQCAtMTIxNSw3ICsxMjE1LDcgQEAgc3RhdGljIGludCBwaHlfdHlwZV9zeXNjb25f
Z2V0KHN0cnVjdCBtdGtfcGh5X2luc3RhbmNlICppbnN0YW5jZSwKPiAgICAgICAgIGludCByZXQ7
Cj4KPiAgICAgICAgIC8qIHR5cGUgc3dpdGNoIGZ1bmN0aW9uIGlzIG9wdGlvbmFsICovCj4gLSAg
ICAgICBpZiAoIW9mX3Byb3BlcnR5X3JlYWRfYm9vbChkbiwgIm1lZGlhdGVrLHN5c2Nvbi10eXBl
IikpCj4gKyAgICAgICBpZiAoIW9mX3Byb3BlcnR5X3ByZXNlbnQoZG4sICJtZWRpYXRlayxzeXNj
b24tdHlwZSIpKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPgo+ICAgICAgICAgcmV0ID0g
b2ZfcGFyc2VfcGhhbmRsZV93aXRoX2ZpeGVkX2FyZ3MoZG4sICJtZWRpYXRlayxzeXNjb24tdHlw
ZSIsCj4gQEAgLTEyNzgsNyArMTI3OCw3IEBAIHN0YXRpYyBpbnQgcGh5X2VmdXNlX2dldChzdHJ1
Y3QgbXRrX3RwaHkgKnRwaHksIHN0cnVjdCBtdGtfcGh5X2luc3RhbmNlICppbnN0YW5jCj4gICAg
ICAgICB9Cj4KPiAgICAgICAgIC8qIHNvZnR3YXJlIGVmdXNlIGlzIG9wdGlvbmFsICovCj4gLSAg
ICAgICBpbnN0YW5jZS0+ZWZ1c2Vfc3dfZW4gPSBkZXZpY2VfcHJvcGVydHlfcmVhZF9ib29sKGRl
diwgIm52bWVtLWNlbGxzIik7Cj4gKyAgICAgICBpbnN0YW5jZS0+ZWZ1c2Vfc3dfZW4gPSBkZXZp
Y2VfcHJvcGVydHlfcHJlc2VudChkZXYsICJudm1lbS1jZWxscyIpOwo+ICAgICAgICAgaWYgKCFp
bnN0YW5jZS0+ZWZ1c2Vfc3dfZW4pCj4gICAgICAgICAgICAgICAgIHJldHVybiAwOwo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYyBi
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+IGluZGV4IDk2
ZjNkODY4YTUyNi4uYjVlNmE4NjRkZWViIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+IEBAIC00NDAsNyArNDQwLDcgQEAgc3RhdGljIGlu
dCByb2NrY2hpcF91c2IycGh5X2V4dGNvbl9yZWdpc3RlcihzdHJ1Y3Qgcm9ja2NoaXBfdXNiMnBo
eSAqcnBoeSkKPiAgICAgICAgIHN0cnVjdCBleHRjb25fZGV2ICplZGV2Owo+ICAgICAgICAgaW50
IHJldDsKPgo+IC0gICAgICAgaWYgKG9mX3Byb3BlcnR5X3JlYWRfYm9vbChub2RlLCAiZXh0Y29u
IikpIHsKPiArICAgICAgIGlmIChvZl9wcm9wZXJ0eV9wcmVzZW50KG5vZGUsICJleHRjb24iKSkg
ewo+ICAgICAgICAgICAgICAgICBlZGV2ID0gZXh0Y29uX2dldF9lZGV2X2J5X3BoYW5kbGUocnBo
eS0+ZGV2LCAwKTsKPiAgICAgICAgICAgICAgICAgaWYgKElTX0VSUihlZGV2KSkKPiAgICAgICAg
ICAgICAgICAgICAgICAgICByZXR1cm4gZGV2X2Vycl9wcm9iZShycGh5LT5kZXYsIFBUUl9FUlIo
ZWRldiksCj4gQEAgLTEzMjMsNyArMTMyMyw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdXNiMnBo
eV9vdGdfcG9ydF9pbml0KHN0cnVjdCByb2NrY2hpcF91c2IycGh5ICpycGh5LAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+ICAgICAgICAgICAgICAgICB9Cj4KPiAtICAgICAg
ICAgICAgICAgaWYgKCFvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wocnBoeS0+ZGV2LT5vZl9ub2RlLCAi
ZXh0Y29uIikpIHsKPiArICAgICAgICAgICAgICAgaWYgKCFvZl9wcm9wZXJ0eV9wcmVzZW50KHJw
aHktPmRldi0+b2Zfbm9kZSwgImV4dGNvbiIpKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
LyogZG8gaW5pdGlhbCBzeW5jIG9mIHVzYiBzdGF0ZSAqLwo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIGlkID0gcHJvcGVydHlfZW5hYmxlZChycGh5LT5ncmYsICZycG9ydC0+cG9ydF9jZmctPnV0
bWlfaWQpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGV4dGNvbl9zZXRfc3RhdGVfc3luYyhy
cGh5LT5lZGV2LCBFWFRDT05fVVNCX0hPU1QsICFpZCk7Cj4gLS0KPiAyLjQ1LjIKPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

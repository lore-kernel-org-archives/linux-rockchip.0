Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B9EAE7AD41
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Dec 2025 08:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbCQMdwEvMlfq5mq/Yii7mpUJy3OkN15OGLxsb3CN3k=; b=Jrsm/BGpoVVeJv
	GiADAi9jui4TZquyc20SHk74/mzWmIL7+D0V0X+wjYHhFUEbp9nCLtVH3ukZn23ti4sGm9fAshU9K
	fv+V8Uige4rUwt8V/9eIHkVhm3BNBNEXfj0OHQghhmOvTNnaTgMX0yVZDoOdKvgY9Z/oPMVq2cW0u
	UKUN9IhOHD/gl8Arhw4CR2YSeugEsqdiOmHWjXGxUSgHHjLBkIsFjXbeJds/zvlKCN93T2xJO5ZzG
	QjYEjxdg533e0cfqswIJOoFm7duZdgyYvJ0Bh6UFlULwfWWx9+FxpFtF607T8KrtdJ7QtOmmr5WXN
	qm3K1FAXImRSGxsnwxPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYgpw-00000000EBJ-3zvt;
	Thu, 25 Dec 2025 08:36:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYgpt-00000000EAp-3oEm;
	Thu, 25 Dec 2025 08:36:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C0D5B41926;
	Thu, 25 Dec 2025 08:36:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3F42C4CEF1;
	Thu, 25 Dec 2025 08:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766651800;
	bh=+LTmmExZhYIq3wRPRw18QmDP2pXk7ZkD9j48bgY5Hgs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Y49kadE8vK3VRthElztNnUF2LI97elLlbCHeguKGaq0lZhke/QNdqrZ8ckdZYU7OF
	 Vh9b3NA6JEWJXHG8SMmP/59gZ7hMBqSNEolfLd14p+KL/iepV6MSzvEZjFyQFDFPC3
	 9TX7QnsbDclAgVY18zA094ew0RCsSoFSl/oH4sEMiBzhyrwPeuZwofUeFCD3LU0Rm1
	 BabJZdvQMNdtZs5wlrN/JDVR3Fx+JYKyMw8NRoX0yBGJmMGrZ7Lv2DQW7TdhkG4vIG
	 ct/QP2lg+Lwe6RdCIitD9pU+fT4PMEjD9BP2+2OUF5p50kEkERMV3lJ25hnpyzP1Gm
	 Pa+j1M3K5vHJg==
Message-ID: <f58ccc03-286e-4ca0-acc4-6c6474a9df5c@kernel.org>
Date: Thu, 25 Dec 2025 09:36:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/7] dt-bindings: pinctrl: rockchip: Add RMIO
 controller binding
To: Ye Zhang <ye.zhang@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 tao.huang@rock-chips.com
References: <20251216112053.1927852-1-ye.zhang@rock-chips.com>
 <20251216112053.1927852-7-ye.zhang@rock-chips.com>
 <5154ca76-0f23-4b52-8e6d-07005c52ac6d@kernel.org>
 <8e126c63-1388-40ff-9046-818f7a8c969f@rock-chips.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <8e126c63-1388-40ff-9046-818f7a8c969f@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251225_003642_089727_C0683CB3 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
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

T24gMjUvMTIvMjAyNSAwNDoyNSwgWWUgWmhhbmcgd3JvdGU6Cj4+PiArLyogUk1JTyBmdW5jdGlv
biBkZWZpbml0aW9uICovCj4+PiArI2RlZmluZSBSTUlPX1VBUlQxX1RYCQkJMQo+Pj4gKyNkZWZp
bmUgUk1JT19VQVJUMV9SWAkJCTIKPj4+ICsjZGVmaW5lIFJNSU9fVUFSVDJfVFgJCQkzCj4+PiAr
I2RlZmluZSBSTUlPX1VBUlQyX1JYCQkJNAo+Pj4gKyNkZWZpbmUgUk1JT19VQVJUM19UWAkJCTUK
Pj4+ICsjZGVmaW5lIFJNSU9fVUFSVDNfUlgJCQk2Cj4+PiArI2RlZmluZSBSTUlPX1VBUlQzX0NU
U04JCQk3Cj4+PiArI2RlZmluZSBSTUlPX1VBUlQzX1JUU04JCQk4Cj4+PiArI2RlZmluZSBSTUlP
X1VBUlQ0X1RYCQkJOQo+Pj4gKyNkZWZpbmUgUk1JT19VQVJUNF9SWAkJCTEwCj4+PiArI2RlZmlu
ZSBSTUlPX1VBUlQ0X0NUU04JCQkxMQo+Pj4gKyNkZWZpbmUgUk1JT19VQVJUNF9SVFNOCQkJMTIK
Pj4+ICsjZGVmaW5lIFJNSU9fTUlQSVRFCQkJMTMKPj4+ICsjZGVmaW5lIFJNSU9fQ0xLXzMySwkJ
CTE0Cj4+PiArI2RlZmluZSBSTUlPX0kyQzBfU0NMCQkJMTUKPj4+ICsjZGVmaW5lIFJNSU9fSTJD
MF9TREEJCQkxNgo+Pgo+PiBJIGRvIG5vdCBzZWUgaG93IHRoaXMgaXMgYSBiaW5kaW5nLiBQbGVh
c2UgcG9pbnQgbWUgdG8gdGhlIHBhdGNoIHVzaW5nCj4+IHRoaXMgaW4gdGhlIGRyaXZlci4KPiBU
aGVzZSBtYWNyb3MgYXJlIGludGVuZGVkIHRvIGJlIHVzZWQgaW4gdGhlIERldmljZSBUcmVlIHNv
dXJjZXMgdG8gCj4gaW1wcm92ZSByZWFkYWJpbGl0eSwgYXZvaWRpbmcg4oCcbWFnaWMgbnVtYmVy
c+KAnSBmb3IgdGhlIFJNSU8gZnVuY3Rpb24gSURzLgoKVGhhdCB3YXMgbm90IG15IHF1ZXN0aW9u
LiBSZWFkIGFnYWluIHdoYXQgSSBhc2tlZC4KClNvIG5vdCBhIGJpbmRpbmcsIHJlbW92ZS4KCgpC
ZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

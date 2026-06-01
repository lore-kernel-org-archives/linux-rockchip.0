Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F918CD6E55
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 14:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6aPOf692crrZk2oNRxXI5c5540UkA5AnrHEJV7kkfQs=; b=qHFciVPtJvaK5m
	2/1IxEBBzoQHAvqqCtq/Ku2xrGbvXuRMdAn9kbCJtegFLKNIr5kU8jkfZITh3P+Qb2yAIL/mo68Jg
	gopYfG5HoNTxDv6FNXygYHqlJ2I5nfGtia+qWE9Epudw0BTe3NTwAbR+x13wwUTyVoI+VTdqrTLzu
	SHxozMciGoy4X7bHsO0fBtnLvzVShIWrjSq0E6UZKDskp0Foqd2Mt4T8wZrnl1qgXeRpr+Z2AEqXC
	taUyRCH/HK/VC1pnGBjeIYXziqBhXVWvQ82QPlC5besCqRG6AP8/rk/a4EqSdnwuYHnB5Z3ppFHiC
	NXnTiLD8QEdkpmQNXvhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU3DJ-0000000BFMI-2tOV;
	Mon, 01 Jun 2026 14:01:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU3DG-0000000BFLq-3Bm9;
	Mon, 01 Jun 2026 14:01:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=BWbTpayQTM0Gx96Gg+SvhuaJwtUEzeScK/94+YHwkXM=; b=xSKIwsHTmTtIJ6L3wEy+XknIH4
	9MBclto9aEnpLIX5yR8h7wsgjAJGlFl45ufb+IJB1ihjF8qdXbejGjjYse9C7FBoBYz6772sqnYhd
	HBRtzPkpi3oeCtHQGwgjVK5ZSz4W2GRlfqv9Ob5fcK+GnhH6s/EEaDNkGHzhvpr32sKZ7bprEOwns
	NKxvwaBG57kUEDF6WEB/UwCwP+75q0wUrwyYFb2OBsti981mnVQgAmcQpmo+T3pXd6njW45K5J0RE
	F5uf5HXeojR0ewvF4ynjCWZRtHx7uTKrt8LDutFCw9lnDl1GPj5LXvs+fNkHhkU2c9B2+d+RZq0O9
	9caWjf/w==;
From: Heiko Stuebner <heiko@sntech.de>
To: Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: rockchip: add Vicharak Axon board
Date: Mon, 01 Jun 2026 16:01:50 +0200
Message-ID: <13821740.F0gNSz5aLb@phil>
In-Reply-To: <20260601132529.139172-3-hrushirajg23@gmail.com>
References: <20260601132529.139172-1-hrushirajg23@gmail.com>
 <20260601132529.139172-3-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_070154_822543_610F472F 
X-CRM114-Status: GOOD (  13.64  )
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

QW0gTW9udGFnLCAxLiBKdW5pIDIwMjYsIDE1OjI1OjI5IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgSHJ1c2hpcmFqIEdhbmRoaToKPiBBZGQgdGhlIGRldmljZSB0cmVlIGJp
bmRpbmcgZm9yIHRoZSBWaWNoYXJhayBBeG9uIHNpbmdsZS1ib2FyZAo+IGNvbXB1dGVyIGJhc2Vk
IG9uIHRoZSBSb2NrY2hpcCBSSzM1ODggU29DLCBhbmQgYWRkIHRoZSB2aWNoYXJhawo+IHZlbmRv
ciBwcmVmaXggdG8gdGhlIHZlbmRvci1wcmVmaXhlcyBsaXN0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6
IEhydXNoaXJhaiBHYW5kaGkgPGhydXNoaXJhamcyM0BnbWFpbC5jb20+CgpJIGRvIGJlbGlldmUg
dGhvc2UgYWxzbyBuZWVkIHRvIGJlIHNlcGFyYXRlIHBhdGNoZXMuCk9uZSB0byBhZGQgdGhlIHZl
bmRvci1wcmVmaXgsIG9uZSBmb3IgdGhlIGJpbmRpbmcuCgoKSGVpa28KCj4gLS0tCj4gIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCAgICB8IDUgKysr
KysKPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55
YW1sIHwgMiArKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwK
PiBpbmRleCAxYTlkZGUxODYyNmQuLmIwMjNkNGNjOTg0MiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiBAQCAtMTMw
Niw2ICsxMzA2LDExIEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAtIGNvbnN0OiB0dXJpbmcs
cmsxCj4gICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1ODgKPiAgCj4gKyAgICAgIC0g
ZGVzY3JpcHRpb246IFZpY2hhcmFrIEF4b24KPiArICAgICAgICBpdGVtczoKPiArICAgICAgICAg
IC0gY29uc3Q6IHZpY2hhcmFrLGF4b24KPiArICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJr
MzU4OAo+ICsKPiAgICAgICAgLSBkZXNjcmlwdGlvbjogV29sZlZpc2lvbiBQRjUgbWFpbmJvYXJk
Cj4gICAgICAgICAgaXRlbXM6Cj4gICAgICAgICAgICAtIGNvbnN0OiB3b2xmdmlzaW9uLHJrMzU2
OC1wZjUKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Zl
bmRvci1wcmVmaXhlcy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Zl
bmRvci1wcmVmaXhlcy55YW1sCj4gaW5kZXggMjg3ODRkNjZhZTdiLi41MDRhNjkxYTMzYjkgMTAw
NjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVm
aXhlcy55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRv
ci1wcmVmaXhlcy55YW1sCj4gQEAgLTE3OTEsNiArMTc5MSw4IEBAIHBhdHRlcm5Qcm9wZXJ0aWVz
Ogo+ICAgICAgZGVzY3JpcHRpb246IFZJQSBUZWNobm9sb2dpZXMsIEluYy4KPiAgICAiXnZpYWxh
YiwuKiI6Cj4gICAgICBkZXNjcmlwdGlvbjogVklBIExhYnMsIEluYy4KPiArICAiXnZpY2hhcmFr
LC4qIjoKPiArICAgIGRlc2NyaXB0aW9uOiBWaWNoYXJhayBDb21wdXRlcnMgUHZ0LiBMdGQuCj4g
ICAgIl52aWNvciwuKiI6Cj4gICAgICBkZXNjcmlwdGlvbjogVmljb3IgQ29ycG9yYXRpb24KPiAg
ICAiXnZpZGVvc3Ryb25nLC4qIjoKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

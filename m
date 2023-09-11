Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F32A5EE7FF4
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Sep 2023 08:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NoZiEgufHXTdvhIevxDA+t/rJu0J+c+ItnroCShXUBk=; b=Wz3xYLYjSJxFxy
	fmaDhATzhcEunz8EI7wjodgejCO0LLq7cHVtkXjq1M3cwdIHkxDL9zTmRsx3GCagb2nFzt7PSZ+TC
	PF9M3OuhVK+GkmnkE2618Q2+oOhUsMegDMOK8s2mBdoIlonClYC4FTAhedFEsG6mB8aB7ehuVBpKK
	6ZFj5TsTi+TnvdO9PTEVDHO7m9Rbvb1GxtKG3v0LRGEP+k3IercHExxGh0s24XkgSQBnrJGhy4j4R
	3iE5yT4CpFJdQbKTmwWD8s7ysJD/57SbyxnKrLMxU9DLuoICCPJiF4axIflKWaBiZ2xPtY6oG9dCG
	peES6y5ZLpNjHQ0ziDYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfchT-00HZg8-0m;
	Mon, 11 Sep 2023 08:55:19 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfchP-00HZcv-16;
	Mon, 11 Sep 2023 08:55:16 +0000
Received: from [IPV6:2a01:e0a:120:3210:f6d2:1ce:5613:f24a] (unknown [IPv6:2a01:e0a:120:3210:f6d2:1ce:5613:f24a])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 91D0D6603102;
	Mon, 11 Sep 2023 09:55:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694422505;
	bh=bXZ/y5UwHuIW7LHJ/2UaGAz707yCMlzXFy5iLkMD5KE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LSvj0uuM7T/1Mnr3Ka3vwgUPI90SIUqU28BQnuh1OWQDZrhsHjfYL8jl60GKQdhfr
	 R14jZlT+4oGAAiDbD0SvczFfNn/jWzYj9K6Yvc4fhOiXf5To04ZZduEF38xYfwbdba
	 orjsx1a2Whu90oN2NAx/5a9CFeFaNNGbpvt2zUhOtDAn2ApK/dIsmJYm+syj84pyso
	 To0uuVEWS9AeZRuwnBoEvzL1M9nmtYQ4dB3OnVRajh78Hbx6pgBZlbNoxAi7GgIxwe
	 tVnBC2pzEoT+aGS7JwYU0dM2IiQbiSa2vhpDtb6vprr1FM7FxZTJB45HDY49iSVOaJ
	 msYSYfexglywQ==
Message-ID: <7da0a2ab-032a-9de9-e136-58f973238c5b@collabora.com>
Date: Mon, 11 Sep 2023 10:55:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v6 14/18] media: verisilicon: vp9: Use destination buffer
 height to compute chroma offset
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
 ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230901124414.48497-1-benjamin.gaignard@collabora.com>
 <20230901124414.48497-15-benjamin.gaignard@collabora.com>
 <4856958.31r3eYUQgx@jernej-laptop>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <4856958.31r3eYUQgx@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_015515_524709_CC5D311E 
X-CRM114-Status: GOOD (  17.05  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDEwLzA5LzIwMjMgw6AgMTU6MjEsIEplcm5laiDFoGtyYWJlYyBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluIQo+Cj4gRG5lIHBldGVrLCAwMS4gc2VwdGVtYmVyIDIwMjMgb2IgMTQ6NDQ6MTAg
Q0VTVCBqZSBCZW5qYW1pbiBHYWlnbmFyZAo+IG5hcGlzYWwoYSk6Cj4+IFNvdXJjZSBhbmQgZGVz
dGluYXRpb24gYnVmZmVyIGhlaWdodCBtYXkgbm90IGJlIHRoZSBzYW1lIGJlY2F1c2UKPj4gYWxp
Z25tZW50IGNvbnN0cmFpbnQgYXJlIGRpZmZlcmVudC4KPj4gVXNlIGRlc3RpbmF0aW9uIGhlaWdo
dCB0byBjb21wdXRlIGNocm9tYSBvZmZzZXQgYmVjYXVzZSB3ZSB0YXJnZXQKPj4gdGhpcyBidWZm
ZXIgYXMgaGFyZHdhcmUgb3V0cHV0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWln
bmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gRml4ZXM6IGUyZGE0NjU0
NTVjZSAoIm1lZGlhOiBoYW50cm86IFN1cHBvcnQgVlA5IG9uIHRoZSBHMiBjb3JlIikKPj4gLS0t
Cj4+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfdnA5X2Rl
Yy5jIHwgNCArLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0
aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9oYW50cm9fZzJfdnA5X2RlYy5jCj4+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fZzJfdnA5X2RlYy5jIGluZGV4Cj4+IDZkYjFjMzJmY2U0ZC4uMWYzZjVl
N2NlOTc4IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L2hhbnRyb19nMl92cDlfZGVjLmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fZzJfdnA5X2RlYy5jCj4+IEBAIC05Myw5ICs5Myw3IEBAIHN0YXRpYyBp
bnQgc3RhcnRfcHJlcGFyZV9ydW4oc3RydWN0IGhhbnRyb19jdHggKmN0eCwgY29uc3QKPj4gc3Ry
dWN0IHY0bDJfY3RybF92cDlfIHN0YXRpYyBzaXplX3QgY2hyb21hX29mZnNldChjb25zdCBzdHJ1
Y3QgaGFudHJvX2N0eAo+PiAqY3R4LAo+PiAgIAkJCSAgICBjb25zdCBzdHJ1Y3QgdjRsMl9jdHJs
X3ZwOV9mcmFtZQo+ICpkZWNfcGFyYW1zKQo+PiAgIHsKPj4gLQlpbnQgYnl0ZXNfcGVyX3BpeGVs
ID0gZGVjX3BhcmFtcy0+Yml0X2RlcHRoID09IDggPyAxIDogMjsKPj4gLQo+PiAtCXJldHVybiBj
dHgtPnNyY19mbXQud2lkdGggKiBjdHgtPnNyY19mbXQuaGVpZ2h0ICogYnl0ZXNfcGVyX3BpeGVs
Owo+PiArCXJldHVybiBjdHgtPmRzdF9mbXQud2lkdGggKiBjdHgtPmRzdF9mbXQuaGVpZ2h0ICog
Y3R4LT5iaXRfZGVwdGggLwo+IDg7Cj4KPiBDb21taXQgbWVzc2FnZSBkb2Vzbid0IG1lbnRpb24g
Yml0X2RlcHRoIGNoYW5nZSBhdCBhbGwuIFdoaWxlIEkgdGhpbmsgdGhlcmUgaXMKPiBubyBkaWZm
ZXJlbmNlIGJldHdlZW4gZGVjX3BhcmFtcy0+Yml0X2RlcHRoIGFuZCBjdHgtPmJpdF9kZXB0aCwg
eW91IHNob3VsZG4ndAo+IGp1c3QgdXNlIG9yZGluYXJ5IGRpdmlzaW9uLiBJZiBiaXRfZGVwdGgg
aXMgMTAsIGl0IHdpbGwgYmUgcm91bmRlZCBkb3duLiBBbmQKPiBpZiB5b3UgZGVjaWRlIHRvIHVz
ZSBiaXRfZGVwdGggZnJvbSBjb250ZXh0LCBwbGVhc2UgcmVtb3ZlIGRlY19wYXJhbXMKPiBhcmd1
bWVudC4KCkkgd2lsbCBjaGFuZ2UgdGhpcyBwYXRjaCBhbmQgY3JlYXRlIGEgaGVscGVycyBmdW5j
dGlvbiBmb3IgY2hyb21hIGFuZCBtb3Rpb24gdmVjdG9ycwpvZmZzZXRzIHRoYXQgVlA5IGFuZCBI
RVZDIGNvZGUgd2lsbCB1c2Ugc2luY2UgdGhleSBhcmUgaWRlbnRpY2FsLgpJIGRvbid0IHNlZSBp
c3N1ZSB3aXRoIHRoZSBkaXZpc2lvbi4gSWYgeW91IGhhdmUgaW4gbWluZCBhIHNvbHV0aW9uIHBs
ZWFzZSB3cml0ZSBpdApzbyBJIGNvdWxkIHRlc3QgaXQuCgpSZWdhcmRzLApCZW5qYW1pbgoKPgo+
IEJlc3QgcmVnYXJkcywKPiBKZXJuZWoKPgo+PiAgIH0KPj4KPj4gICBzdGF0aWMgc2l6ZV90IG12
X29mZnNldChjb25zdCBzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+Cj4KPgo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4EEAC636D3
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Feb 2023 18:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzEUQFSh5Q4MB0zVtzDEnZ7Nn4x9R9Ch5IJMxe7zmmA=; b=LP8UxhOvCsZEMO
	JaesibUCBfORJLQBOUQeZV4j/3mJcJGY3iKk/FdUbA/Qc9Y/HcostQs0uJ0JUHIrLb211MOYL0FLQ
	ZTGfYvc17caIyAwWZO69ka+BxJtHbMIIAsmoziBvHjsyqJiFZLSHKcYohxmDuwruuPIJv54YFsVsl
	l96Jd9cXEGOnfVUYnHKzl6O2w0dZpT4s0q6mTvX5pstlkcnqtjVxbQpIlR3WGhvM1vbgpQOgjcPWg
	U/JmBqCF49wxtAXXv8bq3jtX1ylMbmujnqG4rMu99t2Mb+gwbz/BtoTWqWDhITfEpwg/NYOJ2yqdh
	ZLIB3pd1egedl8xrmm6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP6Wf-009eER-CV; Mon, 06 Feb 2023 18:47:37 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP6Wc-009eDL-Ba
	for linux-rockchip@lists.infradead.org; Mon, 06 Feb 2023 18:47:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 428D6B815C6;
	Mon,  6 Feb 2023 18:47:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6987CC433D2;
	Mon,  6 Feb 2023 18:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675709250;
	bh=QBQbut+dS9DWWb7cU2SLLEmpT5wVs6vyJKlsVYbSx5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N35UigjewuSkXwfDWjd3Fs4r+fvjjuqkXTuNIVyYAcbcvr9GONO0uIwCQtnwNJtIz
	 hqgHuxEsCZyiaKYW2jD/3IhLJef33P2YlM8wk56MRo2EDT6eo+hsf4m+n3C235C+Xi
	 YmP530h/A1VRbrhbk94oDaYFN96R7k/br27z+8I5b2BZ4fmrb9O5bEGQS5sV1Qz1rp
	 HECf4i8IxBYW/14Rt+dxz12ltQsrC75xCbjrLdXUJm2Z419JdQaJdtqKHMaSxr+r8H
	 pze5Rh+nSoCQWbo389i7imDSUuCs1CgLXsWvN+lhx1lofws32ONzw0z28imyXVCCW2
	 McqZbAWYOFF0w==
Date: Mon, 6 Feb 2023 10:47:28 -0800
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv6 05/11] mfd: rk808: split into core and i2c
Message-ID: <Y+FLQL08U7wXjqi+@google.com>
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
 <20230127181244.160887-6-sebastian.reichel@collabora.com>
 <Y95jJYlqDayiaMP1@google.com>
 <Y95lSpUaOnbSAOIC@google.com>
 <20230205010632.wt5m3a7w7k62w6se@mercury.elektranox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230205010632.wt5m3a7w7k62w6se@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_104734_722425_F60DE8FE 
X-CRM114-Status: GOOD (  22.37  )
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

T24gU3VuLCAwNSBGZWIgMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IEhpIExlZSwK
PiAKPiBPbiBTYXQsIEZlYiAwNCwgMjAyMyBhdCAwMjowMTo0NlBNICswMDAwLCBMZWUgSm9uZXMg
d3JvdGU6Cj4gPiBPbiBTYXQsIDA0IEZlYiAyMDIzLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiA+IE9u
IEZyaSwgMjcgSmFuIDIwMjMsIFNlYmFzdGlhbiBSZWljaGVsIHdyb3RlOgo+ID4gPiA+IFNwbGl0
IHJrODA4IGludG8gYSBjb3JlIGFuZCBhbiBpMmMgcGFydCBpbiBwcmVwZXJhdGlvbiBmb3IKPiA+
ID4gPiBTUEkgc3VwcG9ydC4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3Rp
YW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiA+ID4gPiAtLS0K
PiA+ID4gPiAgZHJpdmVycy9jbGsvS2NvbmZpZyAgICAgICAgICAgICAgICAgICB8ICAgMiArLQo+
ID4gPiA+ICBkcml2ZXJzL2lucHV0L21pc2MvS2NvbmZpZyAgICAgICAgICAgIHwgICAyICstCj4g
PiA+ID4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgICAgICAgICAgICAgfCAgIDcgKy0KPiA+
ID4gPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8ICAgMyArLQo+ID4g
PiA+ICBkcml2ZXJzL21mZC97cms4MDguYyA9PiByazh4eC1jb3JlLmN9IHwgMjA5ICsrKysrLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gIGRyaXZlcnMvbWZkL3JrOHh4LWkyYy5jICAgICAg
ICAgICAgICAgfCAyMDAgKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gIGRyaXZlcnMv
cGluY3RybC9LY29uZmlnICAgICAgICAgICAgICAgfCAgIDIgKy0KPiA+ID4gPiAgZHJpdmVycy9w
b3dlci9zdXBwbHkvS2NvbmZpZyAgICAgICAgICB8ICAgMiArLQo+ID4gPiA+ICBkcml2ZXJzL3Jl
Z3VsYXRvci9LY29uZmlnICAgICAgICAgICAgIHwgICAyICstCj4gPiA+ID4gIGRyaXZlcnMvcnRj
L0tjb25maWcgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KPiA+ID4gPiAgaW5jbHVkZS9saW51
eC9tZmQvcms4MDguaCAgICAgICAgICAgICB8ICAgNiArCj4gPiA+ID4gIHNvdW5kL3NvYy9jb2Rl
Y3MvS2NvbmZpZyAgICAgICAgICAgICAgfCAgIDIgKy0KPiA+ID4gPiAgMTIgZmlsZXMgY2hhbmdl
ZCwgMjU2IGluc2VydGlvbnMoKyksIDE4MyBkZWxldGlvbnMoLSkKPiA+ID4gPiAgcmVuYW1lIGRy
aXZlcnMvbWZkL3tyazgwOC5jID0+IHJrOHh4LWNvcmUuY30gKDc2JSkKPiA+ID4gPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL3JrOHh4LWkyYy5jCj4gPiA+IAo+ID4gPiBMb29rcyBs
aWtlIHlvdSBjb21wbGV0ZWx5IGlnbm9yZWQgKG5vIHJlc3BvbnNlIC8gbm8gYWN0aW9uKSBteSBy
ZXZpZXcgb2YKPiA+ID4gdjQuICBUaGlzIHN1Ym1pc3Npb24gaXMgdGhlcmVmb3JlIG5vdCBnZXR0
aW5nIG9uZSEgIEFsbCBjb21tZW50cyBjYW4gYmUKPiA+ID4gc3VwZXJpbXBvc2VkIGZyb20gdjQu
Cj4gPiAKPiA+IHMvdjQvdjUvCj4gCj4gbm90IHN1cmUgd2hhdCB5b3UgYXJlIHRhbGtpbmcgYWJv
dXQuIEkgZHJvcHBlZCB0aGUgUE0gd3JhcHBlcnMgYW5kCj4gYWRkZWQgYSBuZXcgcGF0Y2ggbW92
aW5nIHRoZSBkcml2ZXIgdG8gdXNlIE9GIG1hdGNoLiBUaGVyZSB3ZXJlIG5vCj4gb3RoZXIgY29t
bWVudHMgYXMgZmFyIGFzIEkgY2FuIHRlbGwuIERpZCBJIG1pc3MgYSBzZWNvbmQgbWFpbCB3aXRo
Cj4gbW9yZSBjb21tZW50cz8KCkFoLCB0aGUgZHJpdmVyIHdhcyBzcGxpdCAqdGhlbiogeW91IGlt
cGxlbWVudGVkIG15IHN1Z2dlc3Rpb25zLgoKVGhhdCdzIG5vdCB3aGF0IEkgd2FzIGV4cGVjdGlu
ZywgYnV0IGlzIGFsc28gdmFsaWQuCgpWZXJ5IHdlbGwsIGlnbm9yZSBteSBsYXN0IC0gdGhpcyBz
ZXQgaXMgYmFjayBpbiBteSB0by1yZXZpZXcgcXVldWUuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzm
lq9dCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

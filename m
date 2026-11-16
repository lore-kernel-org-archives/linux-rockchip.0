Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D675C606A322
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 18:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nbas6grF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=W5OzgRlU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=c31WO1SpkSkrKHh3XFoRVLZ6Ww2jbLw+tEoC0dyDVH8=; b=nbas6grF7gYK9oi7m59Xfo5rsT
	6f6XnLryq0+RFkx56ILYZb4u/NsrqXpEvq205gpCcUSMfPO4sD9r0GorS/AGju2kxr0HjvR5Rm8Va
	epIiDP07bjm0aFlQtRY1U4itOTT50JzN7wIAOEbqPnG0EJdQbw2RozuxOg/7TmL0bDYNaBRsuUxEx
	PlSDSWoL92wiZJc8NNes20mzf0Jea7bWGanGJ26lCz+R5VWx+jtLPoailTqbK8BpB/co6eGEBTbE2
	p1tPj+KPos2c3B3nTlsWjNw+0rOAr3555MhPqQkaoIqcdithGEYGicvZ5Jm+oB4L3zGaPG+QY9aHW
	8AMZtRiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT1Vi-00000003aLA-3wjF;
	Mon, 16 Nov 2026 18:32:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT1Vf-00000003aHI-1q0F;
	Mon, 16 Nov 2026 18:32:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pLbSnLN6/1576pxJwaqXyR5opWYY3qz9oGloy9SS1q0=; b=W5OzgRlUb1W/Hy9/J3QxAUN0Ix
	FTvWd6w8rA4xJKPDV7q7tiHeFGhHmexLSo+OyjFj+fh7gaCCXiuokLsz2R9isWIjyZZ4y67Pr04Og
	6B9jZi5gQ2KtsPdY9Vs4WFs1bKrkf7/kASFGwwxDSYlmewoFW3DE+IqoHoPRvee6SZtpfIlgwuo2B
	Ie39YEw5gIBSjAvy7MJChKRJGId29KvnUavjpV3rl+rjHB6J8rSjb7SuZfj6FywiUYPzGHDIiucyI
	ixzkPp1rhsFMu1IVDCUxpW1fxBcZPe1X4u172PyuYoc5CqoOguLD9naFLThZ3cBaW+vA9IzgqlLvU
	+mYDz+Jg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Arun Iyengar <aiyengar1990@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add IEP2 deinterlacer to RK3588
Date: Mon, 16 Nov 2026 19:32:49 +0100
Message-ID: <yRxnTArhQFiS4u_tncJj-g@sntech.de>
In-Reply-To: <20261116-luminous-heavenly-guan-b20f2e@quoll>
References: <20261115-iep2-v2-0-3d8798cd9a55@gmail.com>
 <20261115-iep2-v2-3-3d8798cd9a55@gmail.com>
 <20261116-luminous-heavenly-guan-b20f2e@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_103255_502985_FFE03049 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gTW9udGFnLCAxNi4gTm92ZW1iZXIgMjAyNiwgMTM6MzU6MjggTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBLcnp5c3p0b2YgS296bG93c2tpOgo+IE9uIFN1biwgTm92IDE1
LCAyMDI2IGF0IDA4OjQ3OjQ0QU0gKzAwMDAsIEFydW4gSXllbmdhciB3cm90ZToKPiA+IEFkZCB0
aGUgSUVQMiBkZWludGVybGFjZXIgYW5kIGl0cyBJT01NVSB0byB0aGUgUkszNTg4IGJhc2UgZHRz
aS4gQm90aAo+ID4gc2hhcmUgR0lDIFNQSSAxMTcgYW5kIHNpdCBpbiB0aGUgVkRQVSBwb3dlciBk
b21haW4uCj4gPiAKPiA+IEFkZHJlc3NlcywgY2xvY2tzLCByZXNldHMgYW5kIHRoZSBpbnRlcnJ1
cHQgYXJlIHRha2VuIGZyb20gdGhlIFJvY2tjaGlwCj4gPiBCU1AgcmszNTg4cy5kdHNpIChkZXZl
bG9wLTYuMSkuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEFydW4gSXllbmdhciA8YWl5ZW5nYXIx
OTkwQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LWJhc2UuZHRzaSB8IDIyICsrKysrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCj4gPiBpbmRleCBhYTY5ZmQzNzkzZmQuLjUyOTc1
MTliZDI1MSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LWJhc2UuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtYmFzZS5kdHNpCj4gPiBAQCAtMTM5Nyw2ICsxMzk3LDI4IEBAIHZlcHUxMjFfM19tbXU6IGlv
bW11QGZkYmFjODAwIHsKPiA+ICAJCSNpb21tdS1jZWxscyA9IDwwPjsKPiA+ICAJfTsKPiA+ICAK
PiA+ICsJaWVwOiBkZWludGVybGFjZUBmZGJiMDAwMCB7Cj4gCj4gV2h5IGFsbCB0aGVzZSBhcmUg
b3V0c2lkZSBzb2Mgbm9kZT8gVGhhdCdzIG1vcmUgb2YgYSBxdWVzdGlvbiB0bwo+IGV4aXN0aW5n
IGNvZGUuLi4KCk1hbnkgeWVhcnMgYmFjaywgZHVyaW5nIHRoZSBSSzMyODggYWRkaXRpb24gSSBn
b3QgdGhlIGNvbW1lbnQgZnJvbSB0aGUKYXJtLXNvYyBtYWludGFpbmVyIHRvIGRyb3AgdGhlIHNv
YyBub2RlIFswXToKCiJbLi4uXSB0aGlzIGlzbid0IGhvdyB3ZSB0ZW5kIHRvIGRvIGl0IGFueSBt
b3JlICh1bmxlc3MgYWxsIGRldmljZXMKYXJlIHBoeXNpY2FsbHkgb24gYSBidXMsIGJ1dCB0aGVu
IGl0IHNob3VsZCBwcm9iYWJseSBiZSBuYW1lZCBzb21ldGhpbmcgZWxzZQp0aGFuICdzb2MnKS4i
CgpTbyBzaW5jZSB0aGVuIHdlIGRpZG4ndCBoYXZlIHNvYyBub2Rlcy4gRXhjZXB0IGluIHRpbWUg
Zm9yIHRoZSBSSzM1NzYsIHRoZQp0dW5lIGhhcyBjaGFuZ2VkLCBzbyBzb2NzIGZyb20gdGhlbiBv
biBoYXZlIGEgc29jIG5vZGUgYWdhaW4gOy0pIC4KCgpIZWlrbwoKClswXSBodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xpbnV4LWFybS1rZXJuZWwvMjAxNC1KdWx5LzI3Mjc3
OS5odG1sCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

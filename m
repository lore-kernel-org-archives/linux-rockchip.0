Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1706CA1013
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 16:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+aWRyghvK4EdBiRmaB7RUxCfNSwefeg5TeK+rOy/4c=; b=boNHA7JNQJRgWm
	MHrR2SsLHLI6OW20EQUj3r9j7bLLtVQrtBdajzKFGQC6zuL67knJvYzMFb0TkX+vkypHvmyv/WfMg
	y7ezSxV2vmYd0TI5/4XbOAHiU2wY0qM0iHKIcjFG/IUv4gsO2TlQb3Gv6J5FI+6UFa3oziAJEDFpS
	O6SC/BLqrmM6+X6JkXvdBqlQhO7IrmVVmGV9cBeaNRJm5fHPYtS2HD8pgcBAIjH1Bw67wjVn1PY4u
	TGX6pNcI1SlzKmdYs3Md6+j/NmamxzciAreWDFQd2gCu5tgdyuoWrlrk9f3LmOTZ4JjrmMdXKPGoT
	URFiuOfy5UpbrjkoM1VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzHOl-00000000bax-3wea;
	Thu, 18 Sep 2025 16:22:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzHOk-00000000bae-2nHX;
	Thu, 18 Sep 2025 16:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=6tkeGma96gdssMGmQ/bwCDw+4IJuG2DJOLS8GBEx04Y=; b=fktl7AGd7hcsQy3ydyb+S3qj+w
	z2mkksiK1ygCEJhw0h64/u3JvgWwXBxtLG4L30D9O5RwpOiiNL+dFRDEMhdmrz1qW9nF8HzGFOoCB
	k0kmfvpMDwHEKyIA3tabA8B/H+nmcHFs4Mwvi3j8L3gfv+iBYkoJcjlYgqQiw/Z2XfWdAjSe8eU8k
	tp9LsLH9ftsP/riEnwfiMPcd4t3iYXW4qPR6DHSRmN7mSONBg1Im0CI+BHxKylSCPjaEFELw+ceHJ
	EBkamirLL6EIMdcfjB3duphkeRF05sm1nQ5VPiaeZ+guuTK8J0FH41nNFCTBB7W1PslNXtf4qSz76
	mzJfw0bw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzHOh-00000007eoo-3oro;
	Thu, 18 Sep 2025 16:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Cc;
	bh=6tkeGma96gdssMGmQ/bwCDw+4IJuG2DJOLS8GBEx04Y=; b=UU28H28T+IdwxcIHhq6+rQWoDs
	IXX+mglDASqKZjCoFLpOY2a/8JmSWvc1dslZiwKZUDPkXpE4p4J5bZpgJNNe2SxAak00fpBKzgq6r
	ym5g09YcoUdpoB9aDbFHKILO3eTm62DeZWAiKyh2EJqGoLoMM+rabCh1d/4GcyVgVGATw3PsGgam4
	bXwy4vLPJ3LmnkmDiEQYbiubibtaKvyfJ31thciTeNr5wnYCYltUXNwMl6X+vh/yMKf34hSolXW8F
	yPY+pCGtFXzEa8B7aOUG35Ntfw1hh8l1Ny4WStmmxg++V0chMIYn2y1VSUoVAUwNxk5QfDogLjK2W
	wXIBePTQ==;
Received: from i53875b0a.versanet.de ([83.135.91.10] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uzHOf-0001zZ-MR; Thu, 18 Sep 2025 18:22:13 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ed Wildgoose <lists@wildgooses.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ed Wildgoose <lists@wildgooses.com>
Subject: Re: [PATCH 2/2] rockchip: dts: Enable UART DMA by adding default dma-names
 property
Date: Thu, 18 Sep 2025 18:22:12 +0200
Message-ID: <3477683.usfYGdeWWP@diego>
In-Reply-To: <20250918093246.15623-3-lists@wildgooses.com>
References: <20250917114932.25994-1-lists@wildgooses.com>
 <20250918093246.15623-1-lists@wildgooses.com>
 <20250918093246.15623-3-lists@wildgooses.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_172216_046204_64C7FB3A 
X-CRM114-Status: GOOD (  16.77  )
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

SGksCgpBbSBEb25uZXJzdGFnLCAxOC4gU2VwdGVtYmVyIDIwMjUsIDExOjMyOjQ2IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRWQgV2lsZGdvb3NlOgo+IEtlcm5lbCBhcHBl
YXJzIHRvIG5lZWQgYSBkbWEtbmFtZXMgc2V0IGZvciBETUEgdG8gYWN0dWFsbHkgZW5hYmxlLiBT
ZXQgYQo+IGRlZmF1bHQgZG1hLW5hbWVzIHByb3BlcnR5IGZvciBhbGwgVUFSVHMgZGVmaW5lZCBp
biB0aGUgYm9hcmQKPiBkZWZpbml0aW9uOiByazM1NjYtcmFkeGEtemVyby0zLmR0c2kKPiAKPiBU
aGlzIGlzIHRlc3RlZCBvbiBhIFJhZHhhIFplcm8gM1cgKHdoaWNoIGhhcyA1eCBVQVJUcykgYW5k
IHJlbW92ZXMgdGhlCj4gd2FybmluZ3MgYW5kIGVuYWJsZXMgRE1BIG9uIHRoaXMgcGxhdGZvcm0K
CnRoZSBrZXJuZWwgZG9lcyBub3QgX25lZWRfIHRoZSBkbWFzIGFuZCB0aGUgdWFydCB3aWxsIHdv
cmsganVzdCBmaW5lCndpdGhvdXQuCgpBbmQgYXMgd2FzIHBvaW50ZWQgb3V0IGluIHRoZSBwcmV2
aW91cyB2ZXJzaW9uLCB0aGUgdWFydHMgaGF2ZSBwb3NzaWJsZQpzdGFiaWxpdHkgaXNzdWVzLCB3
aGVuIGNvbm5lY3RlZCB0byBzcGVjaWZpYyBwZXJpcGhlcmFscwoKU28gSSdkIHByZWZlciB0byBu
b3QgZW5hYmxlIHVhcnQgZG1hcyAianVzdCBmb3IgZnVuIi4KCkhlaWtvCgoKPiBTaWduZWQtb2Zm
LWJ5OiBFZCBXaWxkZ29vc2UgPGxpc3RzQHdpbGRnb29zZXMuY29tPgo+IC0tLQo+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1yYWR4YS16ZXJvLTMuZHRzaSB8IDggKysrKysr
KysKPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1yYWR4YS16ZXJvLTMuZHRzaSBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXJhZHhhLXplcm8tMy5kdHNpCj4gaW5k
ZXggZTY0NGJmYzljLi5mYzI2YTRhNTIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjYtcmFkeGEtemVyby0zLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1yYWR4YS16ZXJvLTMuZHRzaQo+IEBAIC00ODgsMjEgKzQ4
OCwyOSBAQCAmdHNhZGMgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiArJnVhcnQx
IHsKPiArCWRtYS1uYW1lcyA9ICJ0eCIsICJyeCI7Cj4gK307Cj4gKwo+ICAmdWFydDIgewo+ICsJ
ZG1hLW5hbWVzID0gInR4IiwgInJ4IjsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAgCj4g
ICZ1YXJ0NHsKPiArCWRtYS1uYW1lcyA9ICJ0eCIsICJyeCI7Cj4gIAlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+ICAJcGluY3RybC0wID0gPCZ1YXJ0NG0xX3hmZXI+Owo+ICB9Owo+ICAKPiAg
JnVhcnQ1IHsKPiArCWRtYS1uYW1lcyA9ICJ0eCIsICJyeCI7Cj4gIAlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+ICAJcGluY3RybC0wID0gPCZ1YXJ0NW0xX3hmZXI+Owo+ICB9Owo+ICAKPiAg
JnVhcnQ5IHsKPiArCWRtYS1uYW1lcyA9ICJ0eCIsICJyeCI7Cj4gIAlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+ICAJcGluY3RybC0wID0gPCZ1YXJ0OW0xX3hmZXI+Owo+ICB9Owo+IAoKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

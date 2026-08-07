Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92258C5AC7A
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 07:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JA+/WPcQB+7zh9TL2TTDVeyUB6yJckT5NBtaxj0Oiw=; b=EzUqXWMvXy4gUs
	CAVM/X9hkzrm/YbiJDuRG3McLNp51gQM6G4bFRI9IKyqnDwpZHKEeDNhgpoi6J9PZitL7yLBdSCnx
	hOrMGoN8rKsUEHveto1r1xe+kY3+7+58s3OiIHkkvEOYdc2hU9VKf5PkmNF+84iXYIA7WVz0o0WuD
	NNLMXFzm9JtN6gsT/unOG5h+fpLxC8O2fBM/RYoSEipwHHo4p6Ga2MPnAMClzeGadlgB+nZGwlq10
	fxayclnWrRQMQU0a3InaNmslS54k6RViO+rgO3iSmue5gwBWQCqAGiXpX+Q+tL7Y7uevagaCjs9qU
	M1PrPMRGXhg4xMi0iTQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsFF6-00000007HjR-0FTF;
	Fri, 07 Aug 2026 07:43:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsFF4-00000007HhX-1lFo;
	Fri, 07 Aug 2026 07:43:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=zJDGvHNzyPJzBg2Gr80EJpq1olmLSKAd+7nnwt0Qai4=; b=gysSq7wqVVxQPxW6unuxL5d+fm
	HaFSM1BNGomxyaoO0EruVFQpl56uLftO4y0/0P1TpnaaArZOTXeOhYlH3UIHfEqBJTG1ln2WnCQnL
	5ad4idZI2Wn7qL63Liilscoe0C0pQoldQA7WWmk9OiW/xpwnucdGkyCHDOL43qTbYOVNu4zOefPfM
	A8n0ZD39XWA4n69aeulDfb27IUuaINTP19t53W3cY+UNweT8bQ0mHS4/MUiCPgXsIlstNA808SmuF
	LH2cKUACHKjYqw22lRyr+JWsrxUR17R1+4DIWXWVS5pMjovmkwcpsKiXR8HXGXRKTKTIB3fwnJVCs
	4tV/7y0g==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wsFF1-0000000C9TZ-2eNM;
	Fri, 07 Aug 2026 07:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=zJDGvHNzyPJzBg2Gr80EJpq1olmLSKAd+7nnwt0Qai4=; b=i5nO0QXpBMJAJCP1h0853SVIfv
	njaw20WcD8pQ8I3+sEAYsbIBJ4KCRTvU2ppajxQtOv7g3+H4QclYwQBUtuwxCldVkVAQauJgBd1hP
	9E5e4+g1dbTvZpGuSS9QVGx57ttCKIJB34z1YHVnxV4Yx/I7b8PQm1fMzrpLlFHa+b2n/AbgLK9cu
	mf1bCYRANeeZCUKAHxjG9cfsPouHIRV6RGRemCA7cnbNQeu1A2FxbfDK8w25WgIZ2omH33+NLhbSW
	mZO9NANTrXx7qJVqUcHMFDsW8aekUJjxSqt8r4thJuCL3d7SSF9fVWVj3eyWBAgK+ciLCYImozMip
	dJYmY0kQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Simon Glass <sjg@chromium.org>, Linus Walleij <linusw@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-gpio@vger.kernel.org, Vladislav Leonov <vlad@zlab.su>,
 Jonas Karlman <jonas@kwiboo.se>, Fabio Estevam <festevam@nabladev.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, huang lin <hl@rock-chips.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] pinctrl: rockchip: Two fixes for latent driver bugs
Date: Fri, 07 Aug 2026 09:43:30 +0200
Message-ID: <5262877.taCxCBeP46@diego>
In-Reply-To: <CAD++jLn8nZT9a0Qe+wtk+2zJ5tPvHjAq4PDPt18ANWiyJPdXpw@mail.gmail.com>
References: <20260803141028.710706-1-sjg@chromium.org>
 <CAD++jLn8nZT9a0Qe+wtk+2zJ5tPvHjAq4PDPt18ANWiyJPdXpw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_084343_746020_EC6DDF21 
X-CRM114-Status: GOOD (  18.06  )
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

QW0gRnJlaXRhZywgNy4gQXVndXN0IDIwMjYsIDAwOjEyOjUxIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTGludXMgV2FsbGVpajoKPiBIaSBTaW1vbiwKPiAKPiBPbiBNb24s
IEF1ZyAzLCAyMDI2IGF0IDQ6MTDigK9QTSBTaW1vbiBHbGFzcyA8c2pnQGNocm9taXVtLm9yZz4g
d3JvdGU6Cj4gCj4gPiBUaGlzIHNlcmllcyBjb250YWlucyB0d28gc21hbGwgZml4ZXMgZm9yIHBy
ZS1leGlzdGluZyBpc3N1ZXMgaW4gdGhlCj4gPiBSb2NrY2hpcCBwaW5jdHJsIGRyaXZlciwgZm91
bmQgYnkgdGhlIHNhc2hpa28gQUkgcmV2aWV3IG9mIG15IFJWMTEwNgo+ID4gc2VyaWVzLgo+ID4K
PiA+IFRoZSBmaXJzdCBtYWtlcyB0aGUgU29DLWRhdGEgY2FsY3VsYXRpb24gc2FmZSB3aGVuIHRo
ZSBwcm9iZSBydW5zCj4gPiBtb3JlIHRoYW4gb25jZSBkdWUgdG8gYSBwcm9iZSBkZWZlcnJhbDog
dGhlIHBpbiBjb3VudCBjdXJyZW50bHkKPiA+IGFjY3VtdWxhdGVzIGFjcm9zcyBydW5zLCBzaGlm
dGluZyBldmVyeSBiYW5rJ3MgcGluIGJhc2UuIFRoZSBzZWNvbmQKPiA+IGFsaWducyB0aGUgUlYx
MTAzQiBkcml2ZS10eXBlIG92ZXJyaWRlIGluIHRoZSBnZXQgcGF0aCB3aXRoIHRoZSBzZXQKPiA+
IHBhdGgsIHdoaWNoIHJlc3RyaWN0cyBpdCB0byBiYW5rIDIuCj4gPgo+ID4gVGhlIGZpcnN0IGZp
eCBpcyB0ZXN0ZWQgb24gYSBMdWNrZm94IFBpY28gTWluaSBCIGJ5IGZvcmNpbmcgdGhlCj4gPiBw
cm9iZSB0byBkZWZlciBvbmNlOiB3aXRob3V0IHRoZSBmaXggdGhlIHNlY29uZCBwcm9iZSBkb3Vi
bGVzIHRoZQo+ID4gcGluIGNvdW50IGFuZCBubyBHUElPIGJhbmsgY29tZXMgdXAsIHdoaWxlIHdp
dGggaXQgdGhlIHZhbHVlcyBhcmUKPiA+IHJlY2FsY3VsYXRlZCBpZGVudGljYWxseSBhbmQgYWxs
IGJhbmtzIHdvcmsuIFRoZSBzZWNvbmQgaXMgYQo+ID4gYmVoYXZpb3VyYWwgbm8tb3AgdW50aWwg
ZHJpdmUtc3RyZW5ndGggZGVjb2RpbmcgaXMgYWRkZWQgdG8gdGhlIGdldAo+ID4gcGF0aCwgc28g
aXQgaXMgdmVyaWZpZWQgYnkgaW5zcGVjdGlvbiBhZ2FpbnN0IHRoZSBzZXQgcGF0aC4KPiAKPiBQ
YXRjaGVzIGxvb2tzIGdvb2QgYW5kIHRoZSBSb2NrY2hpcCBtYWludGFpbmVycyBoYXZlbid0Cj4g
Y29tbWVudGVkIG9uIHRoZSBvdGhlciB3ZWVrLW9sZCBwYXRjaGVzIHlldCBzbyBJIGFwcGxpZWQK
PiB0aGVzZSB0d28gcGF0Y2hlcy4KPiAKPiBJZiB0aGUgbWFpbnRhaW5lcnMgaGF2ZSBpc3N1ZXMg
d2l0aCB0aGVtIEkgY2FuIHB1bGwgdGhlbSBvdXQuCgpubyBpc3N1ZXMgLi4udGhleSBsb29rIGNv
cnJlY3QuCgpBbmQgSSdsbCB0cnkgdG8gbG9vayBhdCB0aGUgcGVuZGluZyBuZXcgc29jIHBpbmN0
cmwgdG9kYXkuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

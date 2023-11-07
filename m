Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E683CC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 22:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEn0FgSzKGqIfES6FSv4FtMKfdmsCBHGrbGp79/79SA=; b=z/RkNQg1c/NwSs
	Le4Ri7lDS+kIa/mRnf5yQ6I6Pzt0Ycho3Kbcj8jElLdjkLJhIM+6gFz9Qy2uJnwExiIbTbjokKptp
	ditioJl3XedaKScAviIeE1cpXsEJlXDK7tQyEkxuPl3/kIq87MSs/LqUelu8+wLP7v3U1wYTLqfdG
	0afzhUTwxanzJ3dWB0Y4A8xLfKobKag8sC7fXB0e2ohsQ6v0VdOvB5gu88Xe++blaFVUKpNgHSczF
	Bj/Ia2dDcxvrX/8GJMGHhD4wyzWwLH6p6GEiV/5kktK43oggHW3VuLjWQDgr3QexJr1ojibXtN09i
	fO9AgvRIn6TOBymmB3Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0U8N-002VOR-24;
	Tue, 07 Nov 2023 22:01:19 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0U8K-002VN5-1j
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 22:01:17 +0000
Received: from [100.84.166.245] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9073C66074B5;
	Tue,  7 Nov 2023 22:01:11 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699394473;
	bh=kl2jjVmIoGV4j4wny32gFtvgWSKHKwWLI3Ngr8+kGgE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=B//ZgroOgxg/nhU4EmN+zhYY3+pIKTam4MPNMg0n87Wd4iQVXG9FyhsDMWcKj75iR
	 PIQIIq1j9o62aRqKWUWbhAzx725msK3iXOghpJrk6nyHSjNwEciklkmq30s7dz+Was
	 drfy0fX7WCjRiEv1LLED1TwbPVEHkj4wvU5NyK1g3kFI+q5JnSE87LMDYhzfjshraC
	 VZ6abiqhAx0oA1Rrz0jMxTDhj52FqckO7wfszj09SEfeVETfqebqf7gE+2lOkgZWCx
	 bpU/QQDtAsWuZX97J8LdWNfZ8cF/fOjI4hNwO4djFeeTDN3ZWRQqbfWCyuWtrI8EMp
	 bHH+KpW/08Q9g==
Message-ID: <c75c894a09292775773ad338121ee81924337cf0.camel@collabora.com>
Subject: Re: [PATCH v4 05/11] media: rkvdec: h264: Remove SPS validation at
 streaming start
From: Nicolas  Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Hans Verkuil <hverkuil-cisco@xs4all.nl>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>, Sebastian Fricke
	 <sebastian.fricke@collabora.com>, Christopher Obbard
	 <chris.obbard@collabora.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Tue, 07 Nov 2023 17:01:02 -0500
In-Reply-To: <20231105165521.3592037-6-jonas@kwiboo.se>
References: <20231105165521.3592037-1-jonas@kwiboo.se>
	 <20231105165521.3592037-6-jonas@kwiboo.se>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_140116_704123_AD4A0DBF 
X-CRM114-Status: GOOD (  19.21  )
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

TGUgZGltYW5jaGUgMDUgbm92ZW1icmUgMjAyMyDDoCAxNjo1NSArMDAwMCwgSm9uYXMgS2FybG1h
biBhIMOpY3JpdMKgOgo+IFNQUyBwYXJhbWV0ZXJzIGlzIHZhbGlkYXRlZCBpbiB0cnlfY3RybCgp
IG9wcyBzbyB0aGVyZSBpcyBubyBuZWVkIHRvCgogICAgICAgICAgICAgICAgIGFyZQoKPiByZS12
YWxpZGF0ZSB3aGVuIHN0cmVhbWluZyBzdGFydHMuCj4gCj4gUmVtb3ZlIHRoZSB1bm5lY2Vzc2Fy
eSBjYWxsIHRvIHZhbGlkYXRlIHNwcyBhdCBzdHJlYW1pbmcgc3RhcnQuCgpUaGlzIHBhdGNoIGlz
IG5vdCB3b3JraW5nIHNpbmNlIHVzZXIgbWF5IGNoYW5nZSB0aGUgZm9ybWF0IGFmdGVyIHRoZQpj
b250cm9sIGhhdmUgYmVlbiBzZXQuIFRoZSBwcm9wZXIgZml4IHNob3VsZCBhY3R1YWxseSByZXNl
dCB0aGUgU1BTCih3ZWxsIGFsbCBoZWFkZXIgY29udHJvbHMpIHRvIG1hdGNoIHRoZSB0aGUgbmV3
bHkgc2V0IGZvcm1hdC4gVGhlbiB0aGlzCnZhbGlkYXRpb24gd29uJ3QgYmUgbmVlZGVkIGFueW1v
cmUuCgpUaGUgc2VxdWVuY2UgdGhhdCBpcyBwcm9ibGVtYXRpYyBhZnRlciB0aGlzIHBhdGNoIGlz
OgoKU19GTVQgKE9VVFBVVCwgd2lkdGgsIGhlaWdodCk7ClNfQ1RSTCAoU1BTKSAvLyB2YWxpZApT
X0ZNVChPVVRQVVQsIHdpZHRoJywgaGVpZ2h0Jyk7IC8vIFNQUyBpcyBubyBsb25nZXIgdmFsaWQK
Ck9uZSBzdWdnZXN0aW9uIEkgbWF5IG1ha2UgaXMgdG8gYWRkIGEgb3BzIHNvIHRoYXQgZWFjaCBj
b2RlYwppbXBsZW1lbnRhdGlvbiBjYW4gcmVzZXQgdGhlaXIgaGVhZGVyIGNvbnRyb2xzIHRvIG1h
a2UgaXQgdmFsaWQgYWdhaW5zdAp0aGUgbmV3IHJlc29sdXRpb24uIFdpdGggdGhhdCBpbiBwbGFj
ZSB5b3UnbGwgYmUgYWJsZSBkcm9wIHRoZSBjaGVjay4KCk5pY29sYXMKCnAucy4geW91IGNhbiBh
bHNvIGp1c3QgZHJvcCB0aGlzIHBhdGNoIGZyb20gdGhlIHNlcmllcyBhbmQgcmV2aXNpdCBpdAps
YXRlciwgdGhvdWdoIEkgdGhpbmsgaXRzIHdvcnRoIGZpeGluZy4KCj4gCj4gU3VnZ2VzdGVkLWJ5
OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQHZhbmd1YXJkaWFzdXIuY29tLmFyPgo+IFNpZ25l
ZC1vZmYtYnk6IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPiAtLS0KPiB2NDoKPiAt
IE5vIGNoYW5nZQo+IAo+IHYzOgo+IC0gTmV3IHBhdGNoCj4gCj4gIGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYyB8IDE5ICsrLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYyBiL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYwo+IGluZGV4IDhiY2U4OTAyYjhk
ZC4uODE1ZDUzNTlkZGQ1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3Zk
ZWMvcmt2ZGVjLWgyNjQuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2
ZGVjLWgyNjQuYwo+IEBAIC0xMDcwLDE3ICsxMDcwLDYgQEAgc3RhdGljIGludCBya3ZkZWNfaDI2
NF9zdGFydChzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4KQo+ICAJc3RydWN0IHJrdmRlY19kZXYgKnJr
dmRlYyA9IGN0eC0+ZGV2Owo+ICAJc3RydWN0IHJrdmRlY19oMjY0X3ByaXZfdGJsICpwcml2X3Ri
bDsKPiAgCXN0cnVjdCBya3ZkZWNfaDI2NF9jdHggKmgyNjRfY3R4Owo+IC0Jc3RydWN0IHY0bDJf
Y3RybCAqY3RybDsKPiAtCWludCByZXQ7Cj4gLQo+IC0JY3RybCA9IHY0bDJfY3RybF9maW5kKCZj
dHgtPmN0cmxfaGRsLAo+IC0JCQkgICAgICBWNEwyX0NJRF9TVEFURUxFU1NfSDI2NF9TUFMpOwo+
IC0JaWYgKCFjdHJsKQo+IC0JCXJldHVybiAtRUlOVkFMOwo+IC0KPiAtCXJldCA9IHJrdmRlY19o
MjY0X3ZhbGlkYXRlX3NwcyhjdHgsIGN0cmwtPnBfbmV3LnBfaDI2NF9zcHMpOwo+IC0JaWYgKHJl
dCkKPiAtCQlyZXR1cm4gcmV0Owo+ICAKPiAgCWgyNjRfY3R4ID0ga3phbGxvYyhzaXplb2YoKmgy
NjRfY3R4KSwgR0ZQX0tFUk5FTCk7Cj4gIAlpZiAoIWgyNjRfY3R4KQo+IEBAIC0xMDg5LDggKzEw
NzgsOCBAQCBzdGF0aWMgaW50IHJrdmRlY19oMjY0X3N0YXJ0KHN0cnVjdCBya3ZkZWNfY3R4ICpj
dHgpCj4gIAlwcml2X3RibCA9IGRtYV9hbGxvY19jb2hlcmVudChya3ZkZWMtPmRldiwgc2l6ZW9m
KCpwcml2X3RibCksCj4gIAkJCQkgICAgICAmaDI2NF9jdHgtPnByaXZfdGJsLmRtYSwgR0ZQX0tF
Uk5FTCk7Cj4gIAlpZiAoIXByaXZfdGJsKSB7Cj4gLQkJcmV0ID0gLUVOT01FTTsKPiAtCQlnb3Rv
IGVycl9mcmVlX2N0eDsKPiArCQlrZnJlZShoMjY0X2N0eCk7Cj4gKwkJcmV0dXJuIC1FTk9NRU07
Cj4gIAl9Cj4gIAo+ICAJaDI2NF9jdHgtPnByaXZfdGJsLnNpemUgPSBzaXplb2YoKnByaXZfdGJs
KTsKPiBAQCAtMTEwMCwxMCArMTA4OSw2IEBAIHN0YXRpYyBpbnQgcmt2ZGVjX2gyNjRfc3RhcnQo
c3RydWN0IHJrdmRlY19jdHggKmN0eCkKPiAgCj4gIAljdHgtPnByaXYgPSBoMjY0X2N0eDsKPiAg
CXJldHVybiAwOwo+IC0KPiAtZXJyX2ZyZWVfY3R4Ogo+IC0Ja2ZyZWUoaDI2NF9jdHgpOwo+IC0J
cmV0dXJuIHJldDsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgcmt2ZGVjX2gyNjRfc3RvcChzdHJ1
Y3Qgcmt2ZGVjX2N0eCAqY3R4KQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

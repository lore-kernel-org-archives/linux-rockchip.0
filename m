Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DDF9C7EE26
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 16:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kf3MUcrS2mJZIs/SSH7xDMjT+lI5EpH6JmuQCrRd01s=; b=XijLSJY2QWB988
	AShrB0vebjiqytRx/rjhj8nctWTUGJy/E/fWgFhmhHmdIdHB8cKkzrF33thqrOQeTsPL26x+tIrEX
	luVgrJ5phFlFwtmrHmcZ2OKUazbua+Etq7cq9D2am5KspFnD+j87LlKsPcD0RwnXNSUhdUw97OP6d
	+k0mt6x5TvdufK/th8Tf9drN1GV3Mf/k5fidLObSzyR/7TA5HnwAVyUtR9P25q1j6shTOsrxjOgo8
	u+K7fZvRWtknBK+3a6GNIfnwEQFUaMB3PSlAM1xlww2QxPXtAeIxeGUP8UY68kQOZyxvzNjUxXq3M
	78/VlwTTeiKJYWu1FrLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Ux8-00AoVZ-16;
	Tue, 23 May 2023 16:33:38 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Ux5-00AoTi-2N
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 16:33:37 +0000
Received: from [IPV6:2a01:e0a:120:3210:1ba:3e91:de16:9b34] (unknown [IPv6:2a01:e0a:120:3210:1ba:3e91:de16:9b34])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8B2D16605961;
	Tue, 23 May 2023 17:33:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684859610;
	bh=hm9GXI++V1p38wPBhy077rjD8CVi06sRryeA4cCqMHg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kVuXKut9UkTmyvKnD09JMb0Aq3PPcm1cOV6Wrxmksx+I+PGRLsexTAkGogbN0VeYU
	 5qxJy63D8psw8n37zasdU1AIY+kHJ1NE+yycRw/HRZHZnkhi7FaVy1d2KrIjTnHQ7G
	 bJkHMMLfpW4FqauR+X3+15sXQkxtVPLEkDdWuA0cqifCsY4ELOto3+OsW4Sn95MMJC
	 VXdH4cuLcZZRAO4ft4pMWk+RANhrzjBuO6R5U0l8SqGK5W34HsiYKb+3/tfoy7A3h7
	 YsCsydvzJ+B+ReYqKGggxjLxZfrSItSI2T3hp27bYvuU09zReWzP6bpcXy4mek54Hs
	 BTXcVF0Nf7woA==
Message-ID: <50d751a5-c6bb-0b4b-4d4f-2a5d87be3dd4@collabora.com>
Date: Tue, 23 May 2023 18:33:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] media: verisilicon: Additional fix for the crash when
 opening the driver
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, m.szyprowski@samsung.com, m.tretter@pengutronix.de,
 didi.debian@cknow.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, hverkuil-cisco@xs4all.nl, kernel@pengutronix.de,
 regressions@lists.linux.dev
References: <20230523162515.993862-1-benjamin.gaignard@collabora.com>
 <CAAEAJfDgJM++zHzR9ez94ZgRSr7H6NrohsG8=+8722ZEjC1gRg@mail.gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <CAAEAJfDgJM++zHzR9ez94ZgRSr7H6NrohsG8=+8722ZEjC1gRg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_093335_908054_04EB9591 
X-CRM114-Status: GOOD (  17.15  )
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

CkxlIDIzLzA1LzIwMjMgw6AgMTg6MjgsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluLAo+Cj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guCj4KPiBPbiBUdWUsIE1heSAyMywg
MjAyMyBhdCAxOjI14oCvUE0gQmVuamFtaW4gR2FpZ25hcmQKPiA8YmVuamFtaW4uZ2FpZ25hcmRA
Y29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+IFRoaXMgZml4ZXMgdGhlIGZvbGxvd2luZyBpc3N1ZSBv
YnNlcnZlZCBvbiBPZHJvaWQtTTEgYm9hcmQ6Cj4+Cj4+ICAgVW5hYmxlIHRvIGhhbmRsZSBrZXJu
ZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGF0IHZpcnR1YWwgYWRkcmVzcyAwMDAwMDAwMDAw
MDAwMDA4Cj4gV2hhdCBwb2ludGVyIGlzIE5VTEw/IGN0eC0+c3JjX2ZtdCA/Cgp5ZXMgY3R4LT52
cHVfc3JjX2ZtdCBwb2ludGVyIHdhcyBOVUxMIHdoZW4gcHJvYmluZyB0aGUgZW5jb2Rlci4KCj4K
Pj4gICBNZW0gYWJvcnQgaW5mbzoKPj4gICAuLi4KPj4gICBNb2R1bGVzIGxpbmtlZCBpbjogY3Jj
dDEwZGlmX2NlIGhhbnRyb192cHUgc25kX3NvY19zaW1wbGVfY2FyZCBzbmRfc29jX3NpbXBsZV9j
YXJkX3V0aWxzIHY0bDJfdnA5IHY0bDJfaDI2NCByb2NrY2hpcF9zYXJhZGMgdjRsMl9tZW0ybWVt
IHZpZGVvYnVmMl9kbWFfY29udGlnIHZpZGVvYnVmMl9tZW1vcHMgcnRjX3JrODA4IHZpZGVvYnVm
Ml92NGwyIGluZHVzdHJpYWxpb190cmlnZ2VyZWRfYnVmZmVyIHJvY2tjaGlwX3RoZXJtYWwgZHdt
YWNfcmsgc3RtbWFjX3BsYXRmb3JtIHN0bW1hYyB2aWRlb2RldiBrZmlmb19idWYgZGlzcGxheV9j
b25uZWN0b3IgdmlkZW9idWYyX2NvbW1vbiBwY3NfeHBjcyBtYyByb2NrY2hpcGRybSBhbmFsb2dp
eF9kcCBkd19taXBpX2RzaSBkd19oZG1pIGRybV9kaXNwbGF5X2hlbHBlciBwYW5mcm9zdCBkcm1f
c2htZW1faGVscGVyIGdwdV9zY2hlZCBpcF90YWJsZXMgeF90YWJsZXMgaXB2Ngo+PiAgIENQVTog
MyBQSUQ6IDE3NiBDb21tOiB2NGxfaWQgTm90IHRhaW50ZWQgNi4zLjAtcmM3LW5leHQtMjAyMzA0
MjAgIzEzNDgxCj4+ICAgSGFyZHdhcmUgbmFtZTogSGFyZGtlcm5lbCBPRFJPSUQtTTEgKERUKQo+
PiAgIHBzdGF0ZTogNjA0MDAwMDkgKG5aQ3YgZGFpZiArUEFOIC1VQU8gLVRDTyAtRElUIC1TU0JT
IEJUWVBFPS0tKQo+PiAgIHBjIDogaGFudHJvX3RyeV9mbXQrMHhhMC8weDI3OCBbaGFudHJvX3Zw
dV0KPj4gICBsciA6IGhhbnRyb190cnlfZm10KzB4OTQvMHgyNzggW2hhbnRyb192cHVdCj4+ICAg
Li4uCj4+ICAgQ2FsbCB0cmFjZToKPj4gICAgaGFudHJvX3RyeV9mbXQrMHhhMC8weDI3OCBbaGFu
dHJvX3ZwdV0KPj4gICAgaGFudHJvX3NldF9mbXRfb3V0KzB4M2MvMHgyOTggW2hhbnRyb192cHVd
Cj4+ICAgIGhhbnRyb19yZXNldF9yYXdfZm10KzB4OTgvMHgxMjggW2hhbnRyb192cHVdCj4+ICAg
IGhhbnRyb19zZXRfZm10X2NhcCsweDI0MC8weDI1NCBbaGFudHJvX3ZwdV0KPj4gICAgaGFudHJv
X3Jlc2V0X2VuY29kZWRfZm10KzB4OTQvMHhjYyBbaGFudHJvX3ZwdV0KPj4gICAgaGFudHJvX3Jl
c2V0X2ZtdHMrMHgxOC8weDM4IFtoYW50cm9fdnB1XQo+PiAgICBoYW50cm9fb3BlbisweGQ0LzB4
MjBjIFtoYW50cm9fdnB1XQo+PiAgICB2NGwyX29wZW4rMHg4MC8weDEyMCBbdmlkZW9kZXZdCj4+
ICAgIGNocmRldl9vcGVuKzB4YzAvMHgyMmMKPj4gICAgZG9fZGVudHJ5X29wZW4rMHgxM2MvMHg0
OGMKPj4gICAgdmZzX29wZW4rMHgyYy8weDM4Cj4+ICAgIHBhdGhfb3BlbmF0KzB4NTUwLzB4OTM0
Cj4+ICAgIGRvX2ZpbHBfb3BlbisweDgwLzB4MTJjCj4+ICAgIGRvX3N5c19vcGVuYXQyKzB4YjQv
MHgxNjgKPj4gICAgX19hcm02NF9zeXNfb3BlbmF0KzB4NjQvMHhhYwo+PiAgICBpbnZva2Vfc3lz
Y2FsbCsweDQ4LzB4MTE0Cj4+ICAgIGVsMF9zdmNfY29tbW9uKzB4MTAwLzB4MTIwCj4+ICAgIGRv
X2VsMF9zdmMrMHgzYy8weGE4Cj4+ICAgIGVsMF9zdmMrMHg0MC8weGE4Cj4+ICAgIGVsMHRfNjRf
c3luY19oYW5kbGVyKzB4YjgvMHhiYwo+PiAgICBlbDB0XzY0X3N5bmMrMHgxOTAvMHgxOTQKPj4g
ICBDb2RlOiA5N2ZjOGE3ZiBmOTQwYWE4MCA1Mjg2NGE2MSA3MmE2ODZjMSAoYjk0MDA4MDApCj4+
ICAgLS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tCj4+Cj4+IEZpeGVzOiBkYjZm
NjhiNTFlNWMgKCJtZWRpYTogdmVyaXNpbGljb246IERvIG5vdCBzZXQgY29udGV4dCBzcmMvZHN0
IGZvcm1hdHMgaW4gcmVzZXQgZnVuY3Rpb25zIikKPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFt
aW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiAg
IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyB8IDYgKysr
Ky0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX3Y0bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0
bDIuYwo+PiBpbmRleCA4MzU1MTg1MzRlM2IuLjYxY2ZhYWY0ZTkyNyAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4+ICsrKyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+PiBAQCAt
Mzk3LDEwICszOTcsMTIgQEAgaGFudHJvX3Jlc2V0X3Jhd19mbXQoc3RydWN0IGhhbnRyb19jdHgg
KmN0eCwgaW50IGJpdF9kZXB0aCkKPj4gICAgICAgICAgaWYgKCFyYXdfdnB1X2ZtdCkKPj4gICAg
ICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4KPj4gLSAgICAgICBpZiAoY3R4LT5pc19l
bmNvZGVyKQo+PiArICAgICAgIGlmIChjdHgtPmlzX2VuY29kZXIpIHsKPj4gICAgICAgICAgICAg
ICAgICBlbmNvZGVkX2ZtdCA9ICZjdHgtPmRzdF9mbXQ7Cj4+IC0gICAgICAgZWxzZQo+PiArICAg
ICAgICAgICAgICAgY3R4LT52cHVfc3JjX2ZtdCA9IHJhd192cHVfZm10Owo+PiArICAgICAgIH0g
ZWxzZSB7Cj4+ICAgICAgICAgICAgICAgICAgZW5jb2RlZF9mbXQgPSAmY3R4LT5zcmNfZm10Owo+
PiArICAgICAgIH0KPj4KPj4gICAgICAgICAgaGFudHJvX3Jlc2V0X2ZtdCgmcmF3X2ZtdCwgcmF3
X3ZwdV9mbXQpOwo+PiAgICAgICAgICByYXdfZm10LndpZHRoID0gZW5jb2RlZF9mbXQtPndpZHRo
Owo+PiAtLQo+PiAyLjM0LjEKPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

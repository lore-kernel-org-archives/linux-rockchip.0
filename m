Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B715EC54EBE
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 10:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OHmqZ0aSqQf3V5NflJuwcdGLUpjTCzf1IqiB+tSURY=; b=OjtKNnQydcEbs7
	vDN4sn7DEs1FPI/WgtfxprWS34IsCNx8qrilRqDP2lCxnm3TnWYbcfDOVorOefGN7rxjoHPCcd16d
	HRAMliWmMPhErgcyckpVXOGDG8lGejnvQ1untDBURiEyFl5XVMYGgoqb4JbI/wT/FQc5qbheBxuTQ
	wtb88w5y+weDzmmQYAeU20kw6XBxv5Rr8reC5XCX+v8+MNbenhxRgQEiiLGwZHCv6bMBN9lKedtST
	bNcFIMlKpphDhXzyeP+l3N3/eUmoZmh/oJtwI9ODAi0RIDXIAsmllGDjNZ7nX8b6YEQZfPV3DODhu
	bEGjux0VhhfOBhmkKcug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHMHi-009XIR-IX; Mon, 16 Jan 2023 10:00:10 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHMHf-009XHF-99
	for linux-rockchip@lists.infradead.org; Mon, 16 Jan 2023 10:00:09 +0000
Received: from [192.168.0.192] (unknown [194.146.248.75])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 06DC36602AA1;
	Mon, 16 Jan 2023 10:00:04 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673863205;
	bh=bteXBz8BLiztEyL7HtssVPl+baNjigI3gWj/ST9tDa0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aJYKfJiPhFWcCppJFPrl60DfbWgsRc7GY6t2GzHT4tus3wVdBiou5+4Gfjcuh2923
	 EHmu3YIfHo+vaBf2UgnGJU/y3DEV9nNY7dqJJ8vvIqRO5GcSjTVeSNwAQbJ6NarlEQ
	 qV2UvlqPbYYT+ExP8u0WX78BEpcMbcCdNAN4PMok/VvFvPwfhH7YhvLR2l0VU3eGgm
	 eDDROmNA0L1IDkiJwg3VN2+QiVzODbQSDSJzWI12aIP1lOyK8cJ2hV6rydebPKDBNY
	 ZHnvqyKtNUwjUXfyjVQtiIczAgQzJc67pcyb/I9+wGCu8Zb/VTMOGwsI/OhnbyMoXf
	 zHRMLpDD3qLoA==
Message-ID: <075169b4-3c6a-2379-0dc9-34b89fb83ef1@collabora.com>
Date: Mon, 16 Jan 2023 11:00:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 05/12] staging: media: rkvdec: Add SPS structure to
 internal context
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel-domain <kernel@collabora.com>,
 Robert Beckett <bob.beckett@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
 <20230101-patch-series-v2-6-2-rc1-v2-5-fa1897efac14@collabora.com>
 <CAAEAJfDqXJf-UovhGnmN7FDY-skSu-x5Rgz+K2WVQP+PKUVbsQ@mail.gmail.com>
Content-Language: en-US
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <CAAEAJfDqXJf-UovhGnmN7FDY-skSu-x5Rgz+K2WVQP+PKUVbsQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_020007_488653_9D79E77E 
X-CRM114-Status: GOOD (  20.43  )
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

SGkgU2ViYXN0aWFuLAoKVyBkbml1IDEyLjAxLjIwMjMgb8KgMTY6MDIsIEV6ZXF1aWVsIEdhcmNp
YSBwaXN6ZToKPiBIaSBTZWJhc3RpYW4sCj4gCj4gT24gVGh1LCBKYW4gMTIsIDIwMjMgYXQgOTo1
NiBBTSBTZWJhc3RpYW4gRnJpY2tlCj4gPHNlYmFzdGlhbi5mcmlja2VAY29sbGFib3JhLmNvbT4g
d3JvdGU6Cj4+Cj4+IFByZXBhcmUgc3RvcmluZyB0aGUgU1BTIHN0cnVjdHVyZSBmb3IgSEVWQyAm
IEgyNjQgaW4gdGhlIGludGVybmFsCj4+IGNvbnRleHQgb2YgdGhlIHJrdmRlYyBpbnN0YW5jZS4g
VGhpcyBzdHJ1Y3R1cmUgaXMgdXNlZCB0byBmaWd1cmUgb3V0Cj4+IHdoaWNoIGNhcHR1cmUgcXVl
dWUgZm9ybWF0IGlzIGFwcHJvcHJpYXRlIGZvciBkZWNvZGluZy4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogU2ViYXN0aWFuIEZyaWNrZSA8c2ViYXN0aWFuLmZyaWNrZUBjb2xsYWJvcmEuY29tPgo+PiAt
LS0KPj4gICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5oIHwgMSArCj4+ICAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5oIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3Jr
dmRlYy9ya3ZkZWMuaAo+PiBpbmRleCA2MzMzMzVlYmI5YzQuLjMzMjEyNmU3YjgxMiAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuaAo+PiArKysgYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5oCj4+IEBAIC0xMDUsNiArMTA1LDcg
QEAgc3RydWN0IHJrdmRlY19jdHggewo+PiAgICAgICAgICBzdHJ1Y3QgdjRsMl9jdHJsX2hhbmRs
ZXIgY3RybF9oZGw7Cj4+ICAgICAgICAgIHN0cnVjdCBya3ZkZWNfZGV2ICpkZXY7Cj4+ICAgICAg
ICAgIHZvaWQgKnByaXY7Cj4+ICsgICAgICAgdm9pZCAqc3BzOwo+IAo+IEkgZG9uJ3QgcmVhbGx5
IGxpa2UgcmUtY2FjaGluZyB0aGUgU1BTIGluIHRoZSBjb250ZXh0LAo+IHNpbmNlIGFsbCB0aGUg
Y29udHJvbHMgYXJlIGFscmVhZHkgc3RvcmVkIGluIHRoZSBjb250ZXh0LAo+IHZpYSB0aGUgY3Ry
bF9oYW5kbGVyLgo+IAo+IFNlZSBoYW50cm9fZ2V0X2N0cmwoKS4KPiAKPiBEdXBsaWNhdGluZyBz
dGF0ZSBjYW4gbGVhZCB0byBwcm9ibGVtcyBhbmQgZXZlbiBpZiB3ZSBnZXQgaXQKPiByaWdodCB0
aGlzIHRpbWUsIHdpbGwgYmUgaGFyZCB0byBtYWludGFpbi4KPiAKCkFsc28sIGp1c3QgbG9va2lu
ZyBhdCB0aGlzIHBhdGNoIGlzIHNlZW1zIGEgYml0IHRvbyBmaW5lLWdyYWluZWQKYSBjaGFuZ2Ug
dG8gYWRkIGEgbWVtYmVyIHRvIGEgZHJpdmVyLWludGVybmFsIHN0cnVjdCBhbmQgaGF2ZSBubwp1
c2VycyBhdCB0aGUgc2FtZSB0aW1lLiBPVE9IIEV6ZXF1aWVsIGhhcyBlYXNpbHkgc3BvdHRlZCBp
dCA6RAoKQW5kcnplagoKPiBUaGFua3MsCj4gRXplcXVpZWwKPiAKPj4gICB9Owo+Pgo+PiAgIHN0
YXRpYyBpbmxpbmUgc3RydWN0IHJrdmRlY19jdHggKmZoX3RvX3JrdmRlY19jdHgoc3RydWN0IHY0
bDJfZmggKmZoKQo+Pgo+PiAtLQo+PiAyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

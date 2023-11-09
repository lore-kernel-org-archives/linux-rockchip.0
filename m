Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 241DEC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 11:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMPt/KZ1efqkWZzLih5A/hVud+eofjP67SuyA/F+ly0=; b=Mc1D3BMDRXcjMt
	vtBrzniLYI+bivSX7laPezinPc1IFwuxGMJZ5F0ScMyuUaTLMZCkTTd4AxUFoBJKWCGr3+VOhxjGK
	RiiYI2wdyJbtww+u8XcrGTVI/CMJS69kyL83/VGvxDsVoHqClqaZZu6La/Gbg7QEVAahmYEaY3RFy
	6Qr7SsWGNwBo22Z5C0DXkZY/S011aXgzR7mWXXg+gpLW8gZegXOAnK2RlNn6qN0i1az2nuhjfF3XG
	dYDm6uFhz5YTayO25C+wzje61gBgZ8LdGiyQOR+MCooRNGtrYrwkpO4wO+l4HYNbsNk62/vDcqw8/
	3sDzl/ygpjC4qtUMUF7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r134h-006319-0b;
	Thu, 09 Nov 2023 11:19:51 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r134d-0062ze-1i;
	Thu, 09 Nov 2023 11:19:48 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0F597660745F;
	Thu,  9 Nov 2023 11:19:44 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699528786;
	bh=n5ME7SmWZNZRvgb0w3nunEyLQd4iUQAOH5nCJG6H6ik=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MHJMl57VTOZfvON/Jp8Vvh0d3D0I2lnpz0lA/SZHcMhZTPxcKOwBQJFW4fVzLcrpS
	 McA9j84OjxTAJSEjibqMq8qdWfYbJTJT/I4+ksSJhRMngy7vUr9bJJbEkP5rdxGqnF
	 NX7TCLKHwe2QyCQ8gexteKddZ5poBYKdmq9PcOc9aptXnWiZbpO7JOJBkRsTwipSw3
	 5JUIAieQyeH+uM1rF1IN3UQWTO8T+TCg60qGufgYfQ11NExnXuDVD1VM1q4hF4jb+v
	 Om4itFV4xodHJkKXkN1VkJC8Wcae93BgNuSgj4U75MYrjhV3MJ19UkuwCJth7XkpM9
	 jfTrL0VrRLdrg==
Message-ID: <705dfab2-dbb5-44f2-b40b-c7d56945ba22@collabora.com>
Date: Thu, 9 Nov 2023 12:19:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 34/56] sample: v4l: Stop direct calls to queue
 num_buffers field
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-35-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-35-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_031947_693552_AC88AA58 
X-CRM114-Status: GOOD (  15.00  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFVz
ZSB2YjJfZ2V0X251bV9idWZmZXJzKCkgdG8gYXZvaWQgdXNpbmcgcXVldWUgbnVtX2J1ZmZlcnMg
ZmllbGQgZGlyZWN0bHkuCj4gVGhpcyBhbGxvd3MgdXMgdG8gY2hhbmdlIGhvdyB0aGUgbnVtYmVy
IG9mIGJ1ZmZlcnMgaXMgY29tcHV0ZWQgaW4gdGhlCj4gZnV0dXJlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoK
UmV2aWV3ZWQtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5j
b20+Cgo+IC0tLQo+ICAgc2FtcGxlcy92NGwvdjRsMi1wY2ktc2tlbGV0b24uYyB8IDUgKysrLS0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL3NhbXBsZXMvdjRsL3Y0bDItcGNpLXNrZWxldG9uLmMgYi9zYW1wbGVzL3Y0
bC92NGwyLXBjaS1za2VsZXRvbi5jCj4gaW5kZXggYTYxZjk0ZGIxOGQ5Li5hNjVhYTlkMWU5ZGEg
MTAwNjQ0Cj4gLS0tIGEvc2FtcGxlcy92NGwvdjRsMi1wY2ktc2tlbGV0b24uYwo+ICsrKyBiL3Nh
bXBsZXMvdjRsL3Y0bDItcGNpLXNrZWxldG9uLmMKPiBAQCAtMTU1LDYgKzE1NSw3IEBAIHN0YXRp
YyBpbnQgcXVldWVfc2V0dXAoc3RydWN0IHZiMl9xdWV1ZSAqdnEsCj4gICAJCSAgICAgICB1bnNp
Z25lZCBpbnQgc2l6ZXNbXSwgc3RydWN0IGRldmljZSAqYWxsb2NfZGV2c1tdKQo+ICAgewo+ICAg
CXN0cnVjdCBza2VsZXRvbiAqc2tlbCA9IHZiMl9nZXRfZHJ2X3ByaXYodnEpOwo+ICsJdW5zaWdu
ZWQgaW50IHFfbnVtX2J1ZnMgPSB2YjJfZ2V0X251bV9idWZmZXJzKHZxKTsKPiAgIAo+ICAgCXNr
ZWwtPmZpZWxkID0gc2tlbC0+Zm9ybWF0LmZpZWxkOwo+ICAgCWlmIChza2VsLT5maWVsZCA9PSBW
NEwyX0ZJRUxEX0FMVEVSTkFURSkgewo+IEBAIC0xNjcsOCArMTY4LDggQEAgc3RhdGljIGludCBx
dWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwKPiAgIAkJc2tlbC0+ZmllbGQgPSBWNEwy
X0ZJRUxEX1RPUDsKPiAgIAl9Cj4gICAKPiAtCWlmICh2cS0+bnVtX2J1ZmZlcnMgKyAqbmJ1ZmZl
cnMgPCAzKQo+IC0JCSpuYnVmZmVycyA9IDMgLSB2cS0+bnVtX2J1ZmZlcnM7Cj4gKwlpZiAocV9u
dW1fYnVmcyArICpuYnVmZmVycyA8IDMpCj4gKwkJKm5idWZmZXJzID0gMyAtIHFfbnVtX2J1ZnM7
Cj4gICAKPiAgIAlpZiAoKm5wbGFuZXMpCj4gICAJCXJldHVybiBzaXplc1swXSA8IHNrZWwtPmZv
cm1hdC5zaXplaW1hZ2UgPyAtRUlOVkFMIDogMDsKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

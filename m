Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D12A4C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Dec 2022 00:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2os+74BjPiv4WsGx+P1k0n/0EwP7jtCFc/J8fqLmLHg=; b=dBGE4tRxhNlI4K
	6E+Sytsf2Efdy+pTFQJbnERQuOqVUmh41idiRSg2d9XgDpDogIHM8hmIuqSvoi8brmBuTDiKKx5XA
	lA43QpAYVzsDUA3nN4E8+9rtPLy7uR5+xpGUP5jUDUi5PCe27dsqSkGCTJ7Y/hiBXwWxp7oaviSbI
	t+TeEQfDkKre9yx6BBLi1JA9mbBPMKkAjpB0wPc74QvqwMhLULj64FWVzG/GQyW3Te9G3Xic2Bx+O
	3L6yDX+V0MLYGf45bP6Xqe4ZM37CUkCYN11qj3ZdK6RLTBQhK0fLh7I/AIQX1YZLfUljgaEBX5bAK
	FcdZGH0NY3rNVy/lEwhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9Eia-004SxB-SJ; Sun, 25 Dec 2022 00:18:20 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9EfP-004Qon-Ps
	for linux-rockchip@lists.infradead.org; Sun, 25 Dec 2022 00:15:06 +0000
Received: from [IPV6:2003:c7:df11:b00:fc6d:91a:a11d:a091] (p200300c7df110b00fc6d091aa11da091.dip0.t-ipconnect.de [IPv6:2003:c7:df11:b00:fc6d:91a:a11d:a091])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: rmader)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8100B6601B06;
	Sun, 25 Dec 2022 00:14:56 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671927297;
	bh=Ssm3igtjYoF1mqISjvcxMuDfQYYSzbscwC6hQ4FM+xM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eLpvf+vxIZZrECDM65IenJkrV8/2zA+B/WEGfgbHXf58IX96XfZIXxwfOKd5IYkXL
	 sSmbnoqVHGNK0eQajyJ/S4Rd8yeUjOIgHN+b0E2j5HbcBPDxmk6mkJT0TfP9LTdiUC
	 jebC1NnO42xOE2JlcVQ/8QaRdlsEU7dvdmyj7qybSsI4GZVSHRARYxVq4ABkY8f9DR
	 elSvubXQO352g3sOB3JYaLQffWbYQKyGqiC+J749vmMe02vFE/YBjn9LHB6DBpFpW2
	 t865uwz+IZ0pfhB+LgDYS6VoiIXDxR6SL5kv51956jkCJRkC+Chgvd1kkN/0SXc38n
	 fzK5fRRjRENbQ==
Message-ID: <9cb9a6dc-1bc6-ce32-0948-8f87014aae87@collabora.com>
Date: Sun, 25 Dec 2022 01:14:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2] hantro: Fix JPEG encoder ENUM_FRMSIZE on RK3399
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, kernel@collabora.com,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221223181647.720918-1-nicolas.dufresne@collabora.com>
 <8d13ffb9-74cb-00f9-072a-0614e341e1ef@collabora.com>
 <Y6cw3dU8Ku2+aL9y@eze-laptop>
Content-Language: en-US
From: Robert Mader <robert.mader@collabora.com>
In-Reply-To: <Y6cw3dU8Ku2+aL9y@eze-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221224_161504_135241_B0469093 
X-CRM114-Status: GOOD (  15.59  )
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

T24gMjQuMTIuMjIgMTg6MDMsIEV6ZXF1aWVsIEdhcmNpYSB3cm90ZToKPiBPbiBTYXQsIERlYyAy
NCwgMjAyMiBhdCAwOTowMzo1OUFNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4g
TGUgMjMvMTIvMjAyMiDDoCAxOToxNiwgTmljb2xhcyBEdWZyZXNuZSBhIMOpY3JpdMKgOgo+Pj4g
U2luY2UgNzljOTg3ZGU4YjM1NCwgZW51bWVyYXRpbmcgZnJhbWVzaXplIG9uIGZvcm1hdCBzZXQg
d2l0aCAiTU9ERV9OT05FIgo+Pj4gKGFueSByYXcgZm9ybWF0cykgaXMgcmVwb3J0aW5nIGFuIGlu
dmFsaWQgZnJtc2l6ZS4KPj4+Cj4+PiAgICAgU2l6ZTogU3RlcHdpc2UgMHgwIC0gMHgwIHdpdGgg
c3RlcCAwLzAKPj4+Cj4+PiBCZWZvcmUgdGhpcyBjaGFuZ2UsIHRoZSBkcml2ZXIgd291bGQgcmV0
dXJuIEVJTlZBTCwgd2hpY2ggaXMgYWxzbyBpbnZhbGlkIGJ1dAo+Pj4gd29ya2VkIGluIEdTdHJl
YW1lci4gVGhlIG9yaWdpbmFsIGludGVudCB3YXMgbm90IHRvIGltcGxlbWVudCBpdCwgaGVuY2Ug
dGhlCj4+PiAtRU5PVFRZIHJldHVybiBpbiB0aGlzIGNoYW5nZS4gV2hpbGUgZHJpdmVycyBzaG91
bGQgaW1wbGVtZW50IEVOVU1fRlJNU0laRSBmb3IKPj4+IGFsbCBmb3JtYXRzIGFuZCBxdWV1ZXMs
IHRoaXMgY2hhbmdlIGlzIGxpbWl0ZWQgaW4gc2NvcGUgdG8gZml4IHRoZSByZWdyZXNzaW9uLgo+
Pj4KPj4+IFRoaXMgZml4ZXMgdGFraW5nIHBpY3R1cmUgaW4gR25vbWUgQ2hlZXNlIHNvZnR3YXJl
LCBvciBhbnkgc29mdHdhcmUgdXNpbmcKPj4+IEdTdGVhbWVyIHRvIGVuY29kZSBKUEVHIHdpdGgg
aGFyZHdhcmUgYWNjZWxlcmF0aW9uLgo+Pj4KPj4+IEZpeGVzOiA3OWM5ODdkZThiMzU0ICgibWVk
aWE6IGhhbnRybzogVXNlIHBvc3QgcHJvY2Vzc29yIHNjYWxpbmcgY2FwYWNpdGllcyIpCj4+PiBS
ZXBvcnRlZC1ieTogUm9iZXJ0IE1hZGVyIDxyb2JlcnQubWFkZXJAY29sbGFib3JhLmNvbT4KPj4+
IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFi
b3JhLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWln
bmFyZEBjb2xsYWJvcmEuY29tPgo+Pgo+IFJldmlld2VkLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6
ZXF1aWVsQHZhbmd1YXJkaWFzdXIuY29tLmFyPgo+Cj4gVGhhbmtzLAo+IEV6ZXF1aWVsCgpUZXN0
ZWQtYnk6IFJvYmVydCBNYWRlciA8cm9iZXJ0Lm1hZGVyQGNvbGxhYm9yYS5jb20+CgpUaGFua3Mg
YSBsb3QgZm9yIHRoaXMgQ2hyaXN0bWFzIHByZXNlbnQsIGNvbmZpcm1lZCB0aGF0IGl0IGZpeGVz
IHRoZSAKYWZmZWN0ZWQgYXBwcyAvIHVzZS1jYXNlcyBmb3IgbWUgOikKCj4KPj4+IC0tLQo+Pj4g
ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jIHwgNyAr
KysrKy0tCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb192NGwyLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyb192NGwyLmMKPj4+IGluZGV4IDJjN2E4MDUyODllN2IuLjMwZTY1MGVkYWVhOGEgMTAwNjQ0
Cj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwy
LmMKPj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0
bDIuYwo+Pj4gQEAgLTE2MSw4ICsxNjEsMTEgQEAgc3RhdGljIGludCB2aWRpb2NfZW51bV9mcmFt
ZXNpemVzKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+Pj4gICAgCX0KPj4+ICAgIAkv
KiBGb3Igbm9uLWNvZGVkIGZvcm1hdHMgY2hlY2sgaWYgcG9zdHByb2Nlc3Npbmcgc2NhbGluZyBp
cyBwb3NzaWJsZSAqLwo+Pj4gLQlpZiAoZm10LT5jb2RlY19tb2RlID09IEhBTlRST19NT0RFX05P
TkUgJiYgaGFudHJvX25lZWRzX3Bvc3Rwcm9jKGN0eCwgZm10KSkgewo+Pj4gLQkJcmV0dXJuIGhh
bnRvX3Bvc3Rwcm9jX2VudW1fZnJhbWVzaXplcyhjdHgsIGZzaXplKTsKPj4+ICsJaWYgKGZtdC0+
Y29kZWNfbW9kZSA9PSBIQU5UUk9fTU9ERV9OT05FKSB7Cj4+PiArCQlpZiAoaGFudHJvX25lZWRz
X3Bvc3Rwcm9jKGN0eCwgZm10KSkKPj4+ICsJCQlyZXR1cm4gaGFudG9fcG9zdHByb2NfZW51bV9m
cmFtZXNpemVzKGN0eCwgZnNpemUpOwo+Pj4gKwkJZWxzZQo+Pj4gKwkJCXJldHVybiAtRU5PVFRZ
Owo+Pj4gICAgCX0gZWxzZSBpZiAoZnNpemUtPmluZGV4ICE9IDApIHsKPj4+ICAgIAkJdnB1X2Rl
YnVnKDAsICJpbnZhbGlkIGZyYW1lIHNpemUgaW5kZXggKGV4cGVjdGVkIDAsIGdvdCAlZClcbiIs
Cj4+PiAgICAJCQkgIGZzaXplLT5pbmRleCk7CgotLSAKUm9iZXJ0IE1hZGVyCkNvbnN1bHRhbnQg
U29mdHdhcmUgRGV2ZWxvcGVyCgpDb2xsYWJvcmEgTHRkLgpQbGF0aW51bSBCdWlsZGluZywgU3Qg
Sm9obidzIElubm92YXRpb24gUGFyaywgQ2FtYnJpZGdlIENCNCAwRFMsIFVLClJlZ2lzdGVyZWQg
aW4gRW5nbGFuZCAmIFdhbGVzLCBuby4gNTUxMzcxOAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

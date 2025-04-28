Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94BDFC369DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Apr 2025 17:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xD9sgy87AOFxZi7HDt3wz8ytZCtkMzxp4QGdQmJh4Lw=; b=US6rGznIjQnyRo
	WeglyW8ADh/5j8xfw4tJ5A3L6bS+ddGI4TAs95RodQDOUALSpNiLEVbyu+fyN89MrHPQ2z3r+D8EZ
	uxwIarBYdTyoBoE6oPs/swiWqHpOfic63pNuzJlEeOJOJQqgKS4Quq6Nyq7x2ajaFGoqN5gR7ozNa
	WOgMdWDJnBEZXovWqovc/fHUmKK82PSmDwqzBhLr4qbcjtg8ISMG5DnuXQdb1z4Scxfv+hUKPIFgV
	IH6pXMoMFImUQkFTXty0cKyPiAQ3es0ed5vqQW4bcD+NhHgkus+61EvxKTO5qT8NX9WmuW7JJGPzm
	kxpsZXhi8NpCQKaxaUAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9SQf-0000000772s-2KyW;
	Mon, 28 Apr 2025 17:38:05 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9SF1-000000075MX-4C1o
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Apr 2025 17:26:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1745861161;
	bh=cmQBBf3nlrtWpI6KU14LdCq98gV6uMF56G0Dt/F29vA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=KOAlFSVgb2w2fzFPmcnlJp+nWpbUg6M2Ysqyv50fykpqHWN9svrNe0ta8xSRTGVah
	 Z3/mBDRwsqzu0rYvgsEiKkE1hTyFgYusbxwwt+gly7F/7mmjoW+K8qYdT6hADMknhQ
	 /dBqMPKC45u3E92n++ouWpnh7JWs+zcmWk+w+EXgtEOyEcCvo+hxBEaFICJrezbZY3
	 tvTeAi07VF+7r52N/Rlo+6o2xaG1RM+oTd7LQhh9bokm2GVFX0GcUG+ux7OAKQX9tm
	 UIcXbOLx0r16fMz/Ygz4QAol8VO2adR32dcrL+wFqMTgUvkGiYryl++jsva7K8GUJP
	 ye0BP1hUYsnAw==
Received: from [IPv6:2606:6d00:15:9913::5ac] (unknown [IPv6:2606:6d00:15:9913::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9D3E717E0F66;
	Mon, 28 Apr 2025 19:26:00 +0200 (CEST)
Message-ID: <d901822b2710a2d642f1372fbfb53f99f1e60b2e.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: Free post processor buffers on error
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Detlev Casanova <detlev.casanova@collabora.com>, 
	linux-kernel@vger.kernel.org
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	kernel@collabora.com
Date: Mon, 28 Apr 2025 13:25:59 -0400
In-Reply-To: <20250425192447.227063-1-detlev.casanova@collabora.com>
References: <20250425192447.227063-1-detlev.casanova@collabora.com>
Organization: Collabora Canada
User-Agent: Evolution 3.56.1 (3.56.1-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_102604_193527_00C78168 
X-CRM114-Status: GOOD (  17.63  )
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

TGUgdmVuZHJlZGkgMjUgYXZyaWwgMjAyNSDDoCAxNToyNCAtMDQwMCwgRGV0bGV2IENhc2Fub3Zh
IGEgw6ljcml0wqA6Cj4gV2hlbiBpbml0aWFsaXppbmcgdGhlIHBvc3QgcHJvY2Vzc29yLCBpdCBh
bGxvY2F0ZXMgdGhlIHNhbWUgbnVtYmVyIG9mCgpXaGF0IGRvIHlvdSB0aGluayByZXdvcmtpbmcg
YXM6CgogIER1cmluZyBpbml0aWFsaXphdGlvbiwgdGhlIHBvc3QgcHJvY2Vzc29yIGFsbG9jYXRl
cyB0aGUgc2FtZSBudW1iZXIgb2YKCj4gYnVmZmVycyBhcyB0aGUgYnVmIHF1ZXVlLgo+IEFzIHRo
ZSBpbml0IGZ1bmN0aW9uIGlzIGNhbGxlZCBpbiBzdHJlYW1vbigpLCBpZiBhbiBhbGxvY2F0aW9u
IGZhaWxzLAo+IHN0cmVhbW9uIHdpbGwgcmV0dXJuIGFuIGVycm9yIGFuZCBzdHJlYW1vZmYoKSB3
aWxsIG5vdCBiZSBjYWxsZWQsIGtlZXBpbmcKPiBhbGwgcG9zdCBwcm9jZXNzb3IgYnVmZmVycyBh
bGxvY2F0ZWQuCj4gCj4gVG8gYXZvaWQgdGhhdCwgYWxsIHBvc3QgcHJvYyBidWZmZXJzIGFyZSBm
cmVlZCBpbiBjYXNlIG9mIGFuIGFsbG9jYXRpb24KPiBlcnJvci4KPiAKPiBGaXhlczogMjY3MTE0
OTFhODA3ICgibWVkaWE6IHZlcmlzaWxpY29uOiBSZWZhY3RvciBwb3N0cHJvY2Vzc29yIHRvIHN0
b3JlIG1vcmUgYnVmZmVycyIpCj4gU2lnbmVkLW9mZi1ieTogRGV0bGV2IENhc2Fub3ZhIDxkZXRs
ZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25l
IDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+CgpJZiB5b3UgYXJlIGZpbmUgd2l0aCB0
aGUgc3VnZ2VzdGlvbiwgSSBjYW4gbWFrZSB0aGUgY2hhbmdlcyB3aGlsZQphcHBseWluZy4KCj4g
LS0tCj4gwqBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJv
Yy5jIHwgNCArKystCj4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vaGFudHJvX3Bvc3Rwcm9jLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L2hhbnRyb19wb3N0cHJvYy5jCj4gaW5kZXggYzQzNWEzOTNlMGNiNy4uOWY1NTlhMTNkNDA5YiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19w
b3N0cHJvYy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm9fcG9zdHByb2MuYwo+IEBAIC0yNTAsOCArMjUwLDEwIEBAIGludCBoYW50cm9fcG9zdHByb2Nf
aW5pdChzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+IMKgCj4gwqAJZm9yIChpID0gMDsgaSA8IG51
bV9idWZmZXJzOyBpKyspIHsKPiDCoAkJcmV0ID0gaGFudHJvX3Bvc3Rwcm9jX2FsbG9jKGN0eCwg
aSk7Cj4gLQkJaWYgKHJldCkKPiArCQlpZiAocmV0KSB7Cj4gKwkJCWhhbnRyb19wb3N0cHJvY19m
cmVlKGN0eCk7Cj4gwqAJCQlyZXR1cm4gcmV0Owo+ICsJCX0KPiDCoAl9Cj4gwqAKPiDCoAlyZXR1
cm4gMDsKCi0tIApOaWNvbGFzIER1ZnJlc25lClByaW5jaXBhbCBFbmdpbmVlciBhdCBDb2xsYWJv
cmEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1886FC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kOfPcnRo+dIRnOcApG37GfurGjJOmVRs/2IKmte1tVs=; b=BEcqhmHcrQzpsl
	SfwHcBoVwOVqDKUAyUlIBE6SRFKajxQiI5isKFcc8vNlxsXm7WGrKWGH6xMMuTwh8JAhJTaNPz7tH
	YyIQJnW+CmYNItVo3jLY6UoYapHgludLEkOfjmg9gWC2feK2EovcY31mMRyc2U9dlvI65Fx5ewBaM
	9vqKtngT1vzF16ja+3AhvqjLulUxqrzMRKDjnEDGP+uDXC4ayLEXXIwTcBT5OeqRD4pBHL52Yq4DM
	308G+Q5fdZ0bwfMe4bhSKyIe0okigQJxs6p7MmM+xCHjx+pMvTQ7bkbNoKHb1MLeA2k4iAN2kdxrn
	Zpvw23w5VQNOJP5pxkkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r127m-005vBz-0I;
	Thu, 09 Nov 2023 10:18:58 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r127i-005vAw-0f;
	Thu, 09 Nov 2023 10:18:55 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 400616601F0E;
	Thu,  9 Nov 2023 10:18:51 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699525132;
	bh=KpcH3p7Di0WfpDAec7/coHT3wwJ2tMCcKVBEP9IvkxI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=S7hKjWNqdY4+kEYTV3fHYECTnId1ck6/Q8VjUtOzsTzCur5OxfLGsk8FZafnsHbHQ
	 dhKL/PrZE9qssX7AgYWZfg+dKczsNmmn5FCQceo9tR1XilOCt2tcsDotyc0s+zXCKX
	 lLdKPcVjh27J/oRLsGMb83WQXLuxrMulequvQfVkPOTiB+8Kj7cCk5o/y5JW/hRByM
	 83wxC67EdZ+CTVjPH9WXNEZI7ahrP+eIu95J/BgcQL0tIjZIN3PC1je2T3KkcbTrqN
	 +215fO6cvTMxZdmc1K6xyr3EzUUi2TbgR/qD6BasIsWFBVCP/BqWf+04jHKXe55EOE
	 tEs96G0UWbtTA==
Message-ID: <683359b7-bab4-4eef-a047-c3dc1a04f9d6@collabora.com>
Date: Thu, 9 Nov 2023 11:18:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 26/56] media: i2c: video-i2c: Stop direct calls to
 queue num_buffers field
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Matt Ranostay <matt.ranostay@konsulko.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-27-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-27-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_021854_373562_2AE65B6C 
X-CRM114-Status: GOOD (  17.86  )
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

SGkgQmVuamFtaW4sCgpXIGRuaXUgMzEuMTAuMjAyMyBvwqAxNzozMCwgQmVuamFtaW4gR2FpZ25h
cmQgcGlzemU6Cj4gVXNlIHZiMl9nZXRfbnVtX2J1ZmZlcnMoKSB0byBhdm9pZCB1c2luZyBxdWV1
ZSBudW1fYnVmZmVycyBmaWVsZCBkaXJlY3RseS4KPiBUaGlzIGFsbG93cyB1cyB0byBjaGFuZ2Ug
aG93IHRoZSBudW1iZXIgb2YgYnVmZmVycyBpcyBjb21wdXRlZCBpbiB0aGUKPiBmdXR1cmUuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNv
bGxhYm9yYS5jb20+Cj4gQ0M6IE1hdHQgUmFub3N0YXkgPG1hdHQucmFub3N0YXlAa29uc3Vsa28u
Y29tPgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS9pMmMvdmlkZW8taTJjLmMgfCA1ICsrKy0tCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2kyYy92aWRlby1pMmMuYyBiL2RyaXZlcnMvbWVkaWEv
aTJjL3ZpZGVvLWkyYy5jCj4gaW5kZXggMTc4YmQwNmNjMmVkLi5lYmYyYWM5OGEwNjggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9pMmMvdmlkZW8taTJjLmMKPiArKysgYi9kcml2ZXJzL21l
ZGlhL2kyYy92aWRlby1pMmMuYwo+IEBAIC00MDUsOSArNDA1LDEwIEBAIHN0YXRpYyBpbnQgcXVl
dWVfc2V0dXAoc3RydWN0IHZiMl9xdWV1ZSAqdnEsCj4gICB7Cj4gICAJc3RydWN0IHZpZGVvX2ky
Y19kYXRhICpkYXRhID0gdmIyX2dldF9kcnZfcHJpdih2cSk7Cj4gICAJdW5zaWduZWQgaW50IHNp
emUgPSBkYXRhLT5jaGlwLT5idWZmZXJfc2l6ZTsKPiArCXVuc2lnbmVkIGludCBxX251bV9idWZz
ID0gdmIyX2dldF9udW1fYnVmZmVycyh2cSk7Cj4gICAKPiAtCWlmICh2cS0+bnVtX2J1ZmZlcnMg
KyAqbmJ1ZmZlcnMgPCAyKQo+IC0JCSpuYnVmZmVycyA9IDI7Cj4gKwlpZiAocV9udW1fYnVmcyAr
ICpuYnVmZmVycyA8IDIpCj4gKwkJKm5idWZmZXJzID0gMiAtIHFfbnVtX2J1ZnM7CgpUaGlzIGFj
dHVhbGx5IGNoYW5nZXMgdGhlIGxvZ2ljLiBNYXliZSBpdCBoYXMgYWxyZWFkeSBiZWVuIGRpc2N1
c3NlZCBhbmQKdGhlIHJlc3VsdCBvZiB0aGF0IGRpc2N1c3Npb24gaXMgdGhpcyBjaGFuZ2UgaW4g
bG9naWM/IExvb2tpbmcgYXQgb3RoZXIKZHJpdmVycyAqbmJ1ZmZlcnMgPSAyIC0gcV9udW1fYnVm
czsgc2VlbXMgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvLgpCdXQgdGhlbiBhdCBsZWFzdCB0aGUgY29t
bWl0IG1lc3NhZ2UgYm9keSBJTU8gc2hvdWxkIG1lbnRpb24gdGhpcyBjaGFuZ2UuCk9yLCBwcmVm
ZXJhYmx5LCB0aGUgY2hhbmdlIGluIGxvZ2ljIHNob3VsZCBiZSBhIHNlcGFyYXRlIHBhdGNoIHRv
IGJlIGFwcGxpZWQKYmVmb3JlIHRoaXMgb25lLgoKUmVnYXJkcywKCkFuZHJ6ZWoKCj4gICAKPiAg
IAlpZiAoKm5wbGFuZXMpCj4gICAJCXJldHVybiBzaXplc1swXSA8IHNpemUgPyAtRUlOVkFMIDog
MDsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

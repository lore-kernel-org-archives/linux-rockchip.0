Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB33BCD1292
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 18:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qf4WgcyfWX2oBW/l7UCdjs87zhLt3nBcvW2AlvnrLTw=; b=ztNjWDa0euVLN8
	w61LI0ie3248UR6oz4sa1gybKfX1Ks1ISBS73LAjFpo/8TGxmfVbdKG+oKaCPEHMmnmGiyKbx4ROe
	wWy6WW5VPjDT3Xbj/czuQy+t5prJtCmXgfeg0l2R0jD4GcoLfmyeipLI9jSKm6LA0ToecN+Gf1rFs
	18v2ekF5RMCNuQJiQafzHslYul3n6nMMMVhbHahLt8hu5F1b8Xo1QyR5OBAYO9JqEAutDOwCDqOeE
	hRys89V4Vt/eL+eaNajJZTcai/LXLctSLfZzXEZjXaEcIueRso4eXIZgiZ0d5Z2++Z7v0tu9vOOIl
	4RlWEPYBaGOu/RSvHj3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsROY-00000003k1f-1bYE;
	Thu, 04 Apr 2024 18:01:05 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsROV-00000003k0C-2Jb0
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 18:01:00 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-6962950c6bfso8151466d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Apr 2024 11:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1712253657; x=1712858457; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vkxFEmPPLSP0VfvXbMRLD3bWGs6AEqwLVGDVK0uQkn0=;
        b=h2XE6SX7hTjqOEuI4XnqF2FLodq5iIAw81JnldXk9qkY0ECV0+P3lEnfVAW9NTRBe0
         k70MFdqOt9VCiOrXT10M/P3Os5YRrLBdaL/yR5POplToQOyM5eqBnqoJ3R2STIf150Bg
         e5eoB8qU358YUmsfLyYOrlzVS5Cym6ydlwi5mqNYuqODbDMkx3gZcWfqflMdq7/gn3x/
         WRg+53cHnu26DNYQl0J4hj1C1M4/QyZ9RYDMIp5tpjhTAGRpk+HyX8Su7xOUrOBVklHQ
         vH0vluNjobrgM9YYxHD3mQq6FT7GB2WO2YbuwsXXFiCE6spm/BKVcNnAXbhtm36S96fV
         wI7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712253657; x=1712858457;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vkxFEmPPLSP0VfvXbMRLD3bWGs6AEqwLVGDVK0uQkn0=;
        b=raTu0Gvl09HmMu3tRGefkfk0pCp1bq8WxPhg+53NNi+Zi8aauWk2Qu2g8a5ySx3xKS
         rXd1SWxqBuFg8TXZ9XHHt0WRIUlyy0IfHQ2ePHbzNzJWHxWSqG1oQFzE5MtYvn2qXCYt
         ONzlJ0JssXezrM2QKMxLTvJbR85Jy5nRIIYHQtB2HS/SvuanFAib/m0olq+d1M+Xv5UM
         CNsASRMiHqdWV3y67E2PP/9OjNCwJmetoneIfymnmP8XGqIgGC7qLnHj61Mg9nfAb8K+
         UoCMzJQrYfnYwEfOxODnh2tOVKuBZL6v/LP+7l1dUTakqC6H3IlzgM+77E3DS1+71T34
         iIcg==
X-Forwarded-Encrypted: i=1; AJvYcCVZ2lJ17ee+ywZCQ6/bh3I3Z51BSRBPrR4NBzqhf211RYKwgC+b8XkU6Xrn402j6Vi4Lum8Eve2oKGhf7Eq2iEW27bAIm8RuM3m2hYgHwzw0+XU
X-Gm-Message-State: AOJu0YzvOo8sBaMBh1fP+oWzSGZnAFIMny/Kri8SGa1iHEOjbv971yxT
	XXoaY+XuLK/CFD6sz7Y1kaovZC2Y9sxvrWddykn4lNcUGiSe6Vpt3S4YY09eRJI=
X-Google-Smtp-Source: AGHT+IH5WeZ2YgQGDHZQ6kTSNkiS96RsVtVNAM1zKjHTx5GxORjHkJqWQS2v09JhoN1YdgLCXq40tw==
X-Received: by 2002:a05:6214:1c87:b0:699:2c7d:407b with SMTP id ib7-20020a0562141c8700b006992c7d407bmr3325785qvb.23.1712253656947;
        Thu, 04 Apr 2024 11:00:56 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:17:6448:fa75:a4ff:fe45:b56])
        by smtp.gmail.com with ESMTPSA id gw4-20020a0562140f0400b00698fd28cad3sm5421334qvb.80.2024.04.04.11.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 11:00:56 -0700 (PDT)
Message-ID: <c8de69fc6cb6029e96f3e6b6c1eeb1de9304ccff.camel@ndufresne.ca>
Subject: Re: [PATCH] media: verisilicon: Fix auxiliary buffers allocation
 size
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Date: Thu, 04 Apr 2024 14:00:55 -0400
In-Reply-To: <20240328093439.18712-2-benjamin.gaignard@collabora.com>
References: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
	 <20240328093439.18712-2-benjamin.gaignard@collabora.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_110059_626514_48AC5195 
X-CRM114-Status: GOOD (  12.73  )
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

SGksCgpMZSBqZXVkaSAyOCBtYXJzIDIwMjQgw6AgMTA6MzQgKzAxMDAsIEJlbmphbWluIEdhaWdu
YXJkIGEgw6ljcml0wqA6Cj4gVXNlIHY0bDJfYXYxX3RpbGVfaW5mby0+dGlsZV9jb2xzIHRvIGtu
b3cgdGhlIG51bWJlciBvZiBjb2xvbnMKPiBpbiB0aGUgZnJhbWUuIFRoaXMgbWFkZSBhdXhpbGlh
cnkgYnVmZmVycyBtZW9yeSBzaXplIGNvbXB1dGF0aW9uCj4gbW9yZSBhY2N1cmF0ZS4KClNlZW1z
IGxpa2UgdGhpcyBpcyBwb3RlbnRpYWxseSBnb2luZyB0byBpbXBhY3Qgc29tZSBjb25mb3JtYW5j
ZSB0ZXN0cy4gQW55dGhpbmcKdG8gcmVwb3J0IGZyb20gZmx1c3RlciByZXN1bHRzID8KCk5pY29s
YXMKCj4gCj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWdu
YXJkQGNvbGxhYm9yYS5jb20+Cj4gRml4ZXM6IDcyN2E0MDA2ODZhMiAoIm1lZGlhOiB2ZXJpc2ls
aWNvbjogQWRkIFJvY2tjaGlwIEFWMSBkZWNvZGVyIikKPiAtLS0KPiAgLi4uL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMgICAgfCAzICsrLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1
OTgxX2h3X2F2MV9kZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9j
a2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+IGluZGV4IGNjNDQ4Mzg1NzQ4OS4uNjVlOGYyZDA3
NDAwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9j
a2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
dmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+IEBAIC0yNTcsNyArMjU3
LDggQEAgc3RhdGljIGludCByb2NrY2hpcF92cHU5ODFfYXYxX2RlY190aWxlc19yZWFsbG9jYXRl
KHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4gIAlzdHJ1Y3QgaGFudHJvX2RldiAqdnB1ID0gY3R4
LT5kZXY7Cj4gIAlzdHJ1Y3QgaGFudHJvX2F2MV9kZWNfaHdfY3R4ICphdjFfZGVjID0gJmN0eC0+
YXYxX2RlYzsKPiAgCXN0cnVjdCBoYW50cm9fYXYxX2RlY19jdHJscyAqY3RybHMgPSAmYXYxX2Rl
Yy0+Y3RybHM7Cj4gLQl1bnNpZ25lZCBpbnQgbnVtX3RpbGVfY29scyA9IDEgPDwgY3RybHMtPnRp
bGVfZ3JvdXBfZW50cnktPnRpbGVfY29sOwo+ICsJY29uc3Qgc3RydWN0IHY0bDJfYXYxX3RpbGVf
aW5mbyAqdGlsZV9pbmZvID0gJmN0cmxzLT5mcmFtZS0+dGlsZV9pbmZvOwo+ICsJdW5zaWduZWQg
aW50IG51bV90aWxlX2NvbHMgPSB0aWxlX2luZm8tPnRpbGVfY29sczsKPiAgCXVuc2lnbmVkIGlu
dCBoZWlnaHQgPSBBTElHTihjdHJscy0+ZnJhbWUtPmZyYW1lX2hlaWdodF9taW51c18xICsgMSwg
NjQpOwo+ICAJdW5zaWduZWQgaW50IGhlaWdodF9pbl9zYiA9IGhlaWdodCAvIDY0Owo+ICAJdW5z
aWduZWQgaW50IHN0cmlwZV9udW0gPSAoKGhlaWdodCArIDgpICsgNjMpIC8gNjQ7CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

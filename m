Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5B58E7719A
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 09:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfVAhhWzjcjJuvqFbP6KW6JpAPAEj4T4qYMVkfwc7qY=; b=ftKKqwfSY6hzeO
	3zjAbiySHOJOlyqEqqQVdpbYT7RlfBQbesmQBkGuObybFXHFXK4h+dpoxo+G1zAuXM0DCQOKLaxNa
	wGqGGGvoKUxh7XYUKe2/36F/5zotqiE6Z72hExQMI/9YN0hJR+RxDdGe0MJzfb8iqLV4ilnimwKuG
	/HjSpkRIde2PJCJrXYx+4qDSfyDKvHNtACDbgYnNv0Xa9gdpl1b0QbWGUyJBAMzGJ+oU4oHCmagEC
	JxljtHa+Tv4vIaz9k9JQDiFEImBgzNlDNfxkSdP1UvCtcGB69roaha8GbdQu85XmDlY6UuSDRWx6f
	6nDXDRzxi7RFyK8K7mpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSCb-00000007kBj-2vVC;
	Wed, 08 Jan 2025 09:18:13 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSBK-00000007jMf-1D8M;
	Wed, 08 Jan 2025 09:16:55 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-21680814d42so206883765ad.2;
        Wed, 08 Jan 2025 01:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736327813; x=1736932613; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b+lsaFQ6qjDO50EbBx7FyJYhCbTrcZAazW4ep3ah4bQ=;
        b=VAtlLQ7UjMrsWTBWXtLwtAlwE2/9CA6sRTMwt4EyQsf6shtIsfD4T5e0BqW7U35QGg
         1EYvZTAD7Ef7FQvTFX0DAkMjrGqv/xqgLCVcJ69aPOBjYJfgJ1ySqHfj6Ytpgadc1MtU
         TT+Xh10eJa8gXEq3vQr9DneWmRxqs22jCV0CeIWVvHofVTK3tXhnsEdxM2As3GS4eF/y
         uJElD8I4XEowPkTta0Ykb7TNNprecXYQCsOCAJYExl+hwmrSkgD6A0s8mOc706OG87mK
         L24UQBZ/l4wHePLBc2o5s9mPkmwGj8m0mG0/hI1xWYQ2CQHdytkL45hXlzEwUrUkUM0b
         IA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736327813; x=1736932613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b+lsaFQ6qjDO50EbBx7FyJYhCbTrcZAazW4ep3ah4bQ=;
        b=VdDzGAuQqodVjR4fzcDxPsrwEAw7y612ieuHrh57Qh6REtfsJz5jUiLmRGcui2V1qp
         oOjDxwFvw5xOeg1HaQk2haStTczOvoT4tuacxvGW/uD4Ml8DYcayvG8ERxMSnFz+oFNN
         +p4QT+7JcAiCxuv6848VQ+T1YPlB63xpeSTKILFpzP/EVlH4etFmQOeWSTtD5gphCsW+
         8ke9Dr2CK2K6TXbHp0SaLyQrsaflp6GM1bSzKqrNtgQwxEaMvMO79jIPRM517QQA9vWL
         C3TUXWLRKChYEB7yHa/VHEfHKbth5/+IdKuxQ9qJ5Hrh3NIS1kwvL27JsOgrQiOfQbvb
         CPjA==
X-Forwarded-Encrypted: i=1; AJvYcCVubCDHSG4K9YDzk3eT9v8xUEPgSIoLtqwLSglKN/kLiDDRd+LwOoD51ttYAbD/x50JY1RnFufWufhx5e6Xyx5r@lists.infradead.org, AJvYcCW4/8Yg6oDLdOIAhBTVYKHmWpleB9DfG8Q9LFZWNcPi8naX9tVDVIR8N6D/yLV35I9mzR94M3kiCoMYNz9JNSM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqUzV7OYm53EELVLBhKgVE3qWrDjj7hlRYBFOGub3DNNeyjy4g
	ckEx6JCGDFiTiBvuC6AUIWC98ibO8h6vMY/UYUHm4ZTLM4bqFYJie/ZH1Yj+FXS2y6VgGkMQW1Q
	HuZ64uzw41tnCmJV1QgI/0/wEUic=
X-Gm-Gg: ASbGncupbLCs3LJSbkY2sQTy7eqd64twhSxBZlerz+ZVTS1+dbGELXF9qjHzp7V4SGn
	pWHDOBS3Kkm7NqTB96fYqk3cpaQSD2i0UDKwz1AuZMENFEJWDEA==
X-Google-Smtp-Source: AGHT+IH3iOc2Myq1ZFaIa3sLIrFF2t3w3HdXbphVO11vWiGihfTl8kdvLLfGeZBOO3GJq1a+M+hcUjbLLuFVFCQP8Aw=
X-Received: by 2002:a05:6a00:4502:b0:724:f86e:e3d9 with SMTP id
 d2e1a72fcca58-72d21f64f72mr3418520b3a.14.1736327813534; Wed, 08 Jan 2025
 01:16:53 -0800 (PST)
MIME-Version: 1.0
References: <20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com>
 <20250106-rk3588-h96-max-v58-v1-1-d25255f851fc@gmail.com> <n4p5ixqoqm6innjzqk5wlcugok737f6yv2zto2sdgpm4ew2bhq@3bhqk3mkott5>
In-Reply-To: <n4p5ixqoqm6innjzqk5wlcugok737f6yv2zto2sdgpm4ew2bhq@3bhqk3mkott5>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 8 Jan 2025 13:16:40 +0400
X-Gm-Features: AbW1kvbaaglzhbFnXw6JwID8AFi1sMusKHWcifZ0v6WJbwKA_uyX39-6rXdPIWo
Message-ID: <CABjd4YzZ_uf1J9ARxsuH161hfM5F-mRxo-f6DcUGZHAoi2WLnQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add H96 Max V58 TV box
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_011654_322627_99934A23 
X-CRM114-Status: GOOD (  10.53  )
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

T24gVHVlLCBKYW4gNywgMjAyNSBhdCAxMToxMeKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sIEphbiAwNiwgMjAyNSBhdCAwMTowNzox
N0FNICswNDAwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IEg5NiBNYXggVjU4IGlzIGEgY29t
cGFjdCBSb2NrY2hpcCBSSzM1ODggYmFzZWQgZGV2aWNlIHRoYXQgc2hpcHMKPiA+IHdpdGggQW5k
cm9pZCBhbmQgaXMgbWVhbnQgZm9yIHVzZSBhcyBhIFRWIGNvbm5lY3RlZCBtZWRpYSBib3guCj4g
Pgo+ID4gQWRkIGRldmljZSB0cmVlIGJpbmRpbmcgZm9yIGl0Lgo+Cj4gQlRXLCB0aGlzIGNhbiBi
ZSB3cml0dGVuIHNob3J0ZXIgYW5kIGNsZWFyZXI6Cj4gQWRkIERldmljZXRyZWUgYmluZGluZyBm
b3IgSDk2IE1heCBWNTg6IGEgY29tcGFjdCBSb2NrY2hpcCBSSzM1ODggYmFzZWQKPiBkZXZpY2Ug
dGhhdCBzaGlwcyB3aXRoIEFuZHJvaWQgYW5kIGlzIG1lYW50IGZvciB1c2UgYXMgYSBUViBjb25u
ZWN0ZWQKPiBtZWRpYSBib3guCgpUaGFuayB5b3UgS3J6eXN6dG9mLCB0aGlzIGRvZXMgaW5kZWVk
IHJlYWQgYmV0dGVyLiBVc2VkIHlvdXIgd29yZGluZwppbiB2MiBvZiB0aGlzIHNlcmllcyB0aGF0
IEkndmUganVzdCBzZW50IFsxXS4KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUw
MTA4LXJrMzU4OC1oOTYtbWF4LXY1OC12Mi0wLTUyMjMwMWI5MDVkNkBnbWFpbC5jb20KCkJlc3Qg
cmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==

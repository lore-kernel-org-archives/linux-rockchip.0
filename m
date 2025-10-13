Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1DC3CCD18D
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZysvLqda5SlcgtIxj2yGf4ALlHBS5bdD/zstBVJdbo=; b=sqiM3RXQ+L5w/5
	saODtGpVkQb5o85LdoyTO+Jmmv0XAmoQTg38zwxmNc9BAJMtaiIScjUL0Q0t9hk6IyMheOfLuNX/a
	XrtV75/7rnlG+vbGqwVKnaXM+IqRGH2lA66r2ANN89CSZjRqakSuQTnak2LI+AcsIeEvO4fToB1aE
	gVwv3QunJjEOboMVioAp0ZlVZ9ZwJua3GfD5cH+gnsQ1Rk3/s1IZESSEiIeKJX3i/QVb57sTXndkS
	u7fTuyV+SfKDGmnMPXPuAKJ3HBsVQjhP+of96yISVGyiI6CnnprSjIzwa2qsEAWzgZMFGbQ5/gOx7
	G9gZ8BzjY4NBRcX4V88w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8J8w-0000000DIa3-3jpT;
	Mon, 13 Oct 2025 14:03:18 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8J8t-0000000DIZ2-34a0
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:03:16 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-8738c6fdbe8so67944966d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760364194; x=1760968994; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EsvwD+Fi4syTXky3R6aiFFqllKikijYJhVHTrHzkF44=;
        b=izMlENl8W63woSsXhEUcvBePix11w+Te+D63RqoxDzkI6xGVMVgMBxlO4+Czzi43RG
         OXzb+hnEEVuO6K553yCAWE6Hh5dkJpJqOSBF2UHB6PaHGvY2ZDwuDbdriNv4uxJ5B28k
         oJ63XQV8ZIO2wtqwWfxyBcIpRZCRs7qnMVOlOmT1AIXhD7MLxH6gnpXwuAGPvkqQhs2l
         FdS+sYlgPejtD6La0dtqxGz3oo+0bZJ5GM0khuN0l0Y6uMTHM85/sSueZfFSZ7BoK/z6
         xxM1U+VH9Q7Dl/bv+taPWBLsx3wJJwFjz56oBW/smQdskEAb2I96KTPRm9/jWX6zjvBV
         xlTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364194; x=1760968994;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EsvwD+Fi4syTXky3R6aiFFqllKikijYJhVHTrHzkF44=;
        b=rrrsDLD10AbR4ltxoXKt33Tum33M7f1gSL5yKlYkOnv1R4m2CrtNKNnPQ4wIsZjqiJ
         TXyAhW6sPkC3Zc0ahlzPSbeV80yrgtAil6KthDt7gU4KokhPbshiM1MBm+Fim21QOj3s
         OeZCQPxve67CIE0SGLIrVO+Awg/3lIOfJ5MZZLCluXYtecCmwu1T4xVxU7gIevz7ruHX
         7m60slG+b1dEd9XRox2cEVgABmOOm4ninlyK8LiCaonxWWmZ01c54lEtPFE+dY3D44sh
         oX8SHFn7oFxL2tLJLQWSNrqyQxCHfsXHG/DvglYEausmFgdpMJkkjtdnLOiJsp40+bCT
         CjXQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1+l7zyraoSbix/eYvBqVo/FDn08Up8cr3XCnwV7bulk1WdjOavSfkFhdQ7ojn+5N/nBUEUp5y+Hoo1TOokQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4knSB7bbOOd5D/aCqozGANX+2dM23GEQc0LUZgUx7vmd0KwNI
	ZMuu3iDeGR+MyXhJbERWzSncCuf852bILSMJL7F16twPUGqDq17bGHPcldGX+FpeWj33/P3SUOu
	gR1l/kvWHNTTGyHjmB/huTOBNwCcjIhc=
X-Gm-Gg: ASbGncsqxDYXeuHdBTGMqOKGCOOCfzsjs4WbTDA2SsyhuE+un29cmC6AwmoyfIB3z3p
	Cj4k2Z5CuEhaUi2zz4P5zF4ZrZXctFnrWlZEk/cEhDg/mFZVlHpfKP7qMBlZibdXsHbs2BHzH1W
	Er29NMIJ4YuuZd/UA82QKPPpOrSGa+W53aRC4oCScLZAgHJhuBdYgqGCbfj0gKKsIDxm8Lbgl5a
	yngqJIcNzvXkkgkCHjsaFrg38ei3zXxcLa7Ng==
X-Google-Smtp-Source: AGHT+IFvq5k1EuebtHjH8NtC18O9Z9IQYxbVQCJ9hJgUzNYb51sqTyvtRgLwUZEROHyWBv2AmHidhVXrKQI11wj9UYk=
X-Received: by 2002:a05:6214:5018:b0:7e6:7392:f7df with SMTP id
 6a1803df08f44-87b3a784170mr279102566d6.6.1760364194107; Mon, 13 Oct 2025
 07:03:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAP_9mL5=GmtJF3nSbfX6gRzPc=fAMrTOfMuOLyWFwq5D4OYUFw@mail.gmail.com>
 <20251013130010.143271-1-amadeus@jmu.edu.cn>
In-Reply-To: <20251013130010.143271-1-amadeus@jmu.edu.cn>
From: Liangbin Lian <jjm2473@gmail.com>
Date: Mon, 13 Oct 2025 22:03:01 +0800
X-Gm-Features: AS18NWAoIMYqp_P27rsiPm63GVautCNYpIalpnf8xGliTTm_E7ySNqCl1fUxC1Y
Message-ID: <CAP_9mL7eaDBtVE-VUEMojG9wz34Cfa+N4Ekorj165M=_4zpPbQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, 
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_070315_791699_172EDCC8 
X-CRM114-Status: GOOD (  10.08  )
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

Q2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNuPiDkuo4yMDI15bm0MTDmnIgxM+aXpeWRqOS4
gCAyMTowMOWGmemBk++8mgo+Cj4gSGksCj4KPiA+ICsmcGluY3RybCB7Cj4gPiArICAgICBnbWFj
MCB7Cj4gPiArICAgICAgICAgICAgIGV0aF9waHkwX3Jlc2V0X3BpbjogZXRoLXBoeTAtcmVzZXQt
cGluIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxwaW5zID0gPDIgUktfUEQz
IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsg
ICAgIH07Cj4KPiBMZWF2ZSBhIGJsYW5rIGxpbmUuCj4KPiA+ICsgICAgIGdtYWMxIHsKPiA+ICsg
ICAgICAgICAgICAgZXRoX3BoeTFfcmVzZXRfcGluOiBldGgtcGh5MS1yZXNldC1waW4gewo+ID4g
KyAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBpbnMgPSA8MiBSS19QRDEgUktfRlVOQ19H
UElPICZwY2ZnX3B1bGxfdXA+Owo+ID4gKyAgICAgICAgICAgICB9Owo+ID4gKyAgICAgfTsKPgo+
ID4gKyAgICAgZ3Bpby1sZWRzIHsKPiA+ICsgICAgICAgICAgICAgc3RhdHVzX2xlZF9waW46IHN0
YXR1cy1sZWQtcGluIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxwaW5zID0K
Pgo+IE5vIGxpbmUgYnJlYWsgcmVxdWlyZWQgaGVyZS4KPgo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPDIgUktfUEQ3IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ID4g
KyAgICAgICAgICAgICB9Owo+ID4gKyAgICAgfTsKPgo+ID4gVkJVUyBvbiB1c2IycGh5MF9vdGcg
aXMgZmxvYXRpbmcsIHRoaXMgVVNCIHBvcnQgb25seSB3b3JrcyBvbgo+ID4gZGV2aWNlIChwZXJp
cGhlcmFsKSBtb2RlLgo+ID4gcGh5LXN1cHBseSBpcyBvcHRpb25hbCwgc28gdGhpcyBzaG91bGQg
YmUgZmluZSwgcmlnaHQ/Cj4KPiBZZXMsIGlmIHRoZXJlIGlzIG5vIGxvZyBsaWtlIHRoaXM6Cj4g
c3VwcGx5IHBoeSBub3QgZm91bmQsIHVzaW5nIGR1bW15IHJlZ3VsYXRvcgouLi4KCj4gPiBWQlVT
IG9uIHVzYjJwaHkwX290ZyBpcyBmbG9hdGluZywgdGhpcyBVU0IgcG9ydCBvbmx5IHdvcmtzIG9u
Cj4gPiBkZXZpY2UgKHBlcmlwaGVyYWwpIG1vZGUuCj4gPiBwaHktc3VwcGx5IGlzIG9wdGlvbmFs
LCBzbyB0aGlzIHNob3VsZCBiZSBmaW5lLCByaWdodD8KPgo+IFllcywgaWYgdGhlcmUgaXMgbm8g
bG9nIGxpa2UgdGhpczoKPiBzdXBwbHkgcGh5IG5vdCBmb3VuZCwgdXNpbmcgZHVtbXkgcmVndWxh
dG9yCgpJIGhhdmUgY2hlY2tlZCB0aGUgbG9nLCAnc3VwcGx5IHBoeSBub3QgZm91bmQsIHVzaW5n
IGR1bW15IHJlZ3VsYXRvcicKbm90IHByZXNlbnQgb24gdXNiLCBidXQgcHJlc2VudCBvbiBnbWFj
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=

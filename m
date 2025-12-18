Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C5D7D6D224
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Dec 2025 14:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxCKY2UvvKsJmwLqTaW1KyY4UHTYAF0iS+Vue9VztPo=; b=phdzIma/kNyyAK
	EB+DEmZCJKPzuk6vhpY2eQuBqx1B9bYneH+fHhHDi5onfKIjqkKnOlYJ2iV+0ReWr6tK7xs1tsK0+
	fWBfdSejisPuIWKreY6r6cJnaDIc6F9EZfx2eGfopP/GfDE9FZk7B7o8r7gFXhgvjrcGCcUUfGL8O
	BlDqNAe+NZIH3UF5orCVwXsRdVKn4qAp+Gv2LRmH3cl+8jNxMnqwVs7fN1Ah+HTZJ1HSAV8j0/zMs
	cz0WzAlUXKb/M98JDN21kJ/lVMPPyvmY3ksPjT0+BzHL28JQIA5dUIddowwAKZQPeRKdIFvnj5eWf
	bBrdiwcHrGXzGyOhv2hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWEdg-00000008aUL-1DvU;
	Thu, 18 Dec 2025 14:05:56 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWEdd-00000008aTQ-3tsz
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Dec 2025 14:05:55 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-8b220ddc189so83552385a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Dec 2025 06:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766066752; x=1766671552; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ltmK9xpXSaIRz3pvhRTJSdN7AZMXyRyfcfKgFOhGZkg=;
        b=Y6PvpVpo978FQmBDQkKYR8dcplI5UboYJSpFXy2OBk0Dalf9Vb7DPpowHEoilBJpnp
         ivhZ+7nkDGoNmZZpkKvmo2gqLErtsEoQT3Q2e8l1J//5eKXlz04b6axOlMiwAanCInPX
         4xxezqpjAwnIX/4Fwms3aSGW9Y0E9ilxHM3TDStdXOtq8tglYxXKKz0ao70zelkulBxv
         pIEjgKBskJdPst/ks3syARN8/v0n7BxL2pGlPyqBWbkntmxsZ6oOeyiFdQ0ebCx80StS
         vUVo0qtPz7D35a4cBels3DzJqTLWZNkazSr2CzDOkT0zDh7L3/QvNKK2b0aGyZizuBY1
         i/cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766066752; x=1766671552;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ltmK9xpXSaIRz3pvhRTJSdN7AZMXyRyfcfKgFOhGZkg=;
        b=Zsa8d9t/9uNw7rrdLlp3/Yy1ZZRRCh4aZf2zwtMXvShLUfewAIVXaeKFFFYYUA4R5N
         Bb/hgrBBkihNkhyL/DAUJfkYq7pxhW7jhKUfNYJAf5h/TBUNiYFOgKJUPOErhE4oEx6t
         +WWrzseOM+iqKysSmZvwZ5YZPrQRTXau1BeAdheIW0D2u1OHZ5bJtYRu67P+7mEsnvOG
         xlS1mJjiM5zGP60txAaZ4Eqq7VQmvUUQ1Hj1gNzSqmcvOsPwKnY1HPH4+iHXyHN2kAp1
         xYmwOrp+9icxAPjn9rSfVrhtqwEuIsuHFZBw14teRQARvUvjr1+AaNSVXRz4KlheGRDn
         cKGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdnfRFxMrlJwuLZoApWy7qD9WE3Q0pY/OT1/MbNqounSaIlvB2fmj9dRRaDisQM4pK7ftygQ97G9Hb7FJWdA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0sruM5qVVEruwFENAnKByDKyGxNMv1iSXjqgjCMmqny7zH/0Q
	dRIH2BHXS8rfe0dBygqmTo/DG0qekhnBKFX8vwRzzVShDfznPQJPo4gbmRB83tdt+qWpf5kejcv
	+AvCwBE6zf2oSyLMQgc2rsLj8cA/yyixDhuzj
X-Gm-Gg: AY/fxX5zhOj/5f0BW0fyyfDl+TGCaHe384M25jUUeysZjmEr7+tbdaYMdUkvwJoWQQr
	OcpwhAAyzjya5ImkHUEEKv1reA4gDdgWq/7ccw3JHJsYPt//diVonWnLoIE/V+j/6sVgkqDdOfJ
	zVGnbgUXDraC01dZOXro+1i9o5LGVBdEBQCB0HtGYJlhNGtSRtQMvp9dVzDJO9yfXEk1vj+lPyJ
	oaew0CsD+ag7UYm68HDjodwkYAimIdlRX2OMpWXdNDkfp+atapBdJYQeLiJ9485UEG2hTSH1abM
	s/QSi6qB/d367pqG8mFTcUFbaLQ=
X-Google-Smtp-Source: AGHT+IEHaG4sTwzH22c/ZckVsDWqoLw43GJHfQ60VdybglqFIrU9y64fZ28TTU627IQMx5MWOzC0Peqta/5kUNVhrBM=
X-Received: by 2002:a05:622a:24e:b0:4f3:565b:c52c with SMTP id
 d75a77b69052e-4f4a68998f7mr11781131cf.39.1766066751883; Thu, 18 Dec 2025
 06:05:51 -0800 (PST)
MIME-Version: 1.0
References: <20251201-nanopi-m5-ufs-v2-1-ece9c0ee17c4@gmail.com>
In-Reply-To: <20251201-nanopi-m5-ufs-v2-1-ece9c0ee17c4@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 18 Dec 2025 18:05:39 +0400
X-Gm-Features: AQt7F2qXR-Ldb2gzOSYhMd9ao4yiFrifIbHOf6R3C3iyK7IWZa4Dc1eeoJgW3oo
Message-ID: <CABjd4Ywc-L0jvXwk253MDZwgN3srY6WQ5EhoKZ6wb+Hae376_A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_060553_967741_4665B8C1 
X-CRM114-Status: GOOD (  10.73  )
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

SGkgSGVpa28sCgpPbiBNb24sIERlYyAxLCAyMDI1IGF0IDM6MzXigK9QTSBBbGV4ZXkgQ2hhcmtv
diA8YWxjaGFya0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gVGhlIE5hbm9QaSBNNSBib2FyZCBzdXBw
b3J0cyBwbHVnZ2FibGUgVUZTIG1vZHVsZXMgdXNpbmcgdGhlIFVGU0hDCj4gaW5zaWRlIGl0cyBS
b2NrY2hpcCBSSzM1NzYgU29DLgo+Cj4gRW5hYmxlIHRoZSByZXNwZWN0aXZlIGRldmljZXRyZWUg
bm9kZSBhbmQgYWRkIGl0cyBzdXBwbHkgcmVndWxhdG9ycy4KPgo+IExpbms6IGh0dHBzOi8vd2lr
aS5mcmllbmRseWVsZWMuY29tL3dpa2kvaW1hZ2VzLzkvOTcvTmFub1BpX001X0xQNV8yNDExX1ND
SC5wZGYKPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+
Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIERlc2NyaWJlIFVGUyBzdXBwbHkgcmVndWxhdG9y
cwo+IC0gQWRkIGxpbmsgdG8gc2NoZW1hdGljCj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9yLzIwMjUxMTI3LW5hbm9waS1tNS11ZnMtdjEtMS0wZDI4ZDE1NzcxMmNAZ21h
aWwuY29tCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LW5hbm9w
aS1tNS5kdHMgfCAyNyArKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwg
MjcgaW5zZXJ0aW9ucygrKQoKV291bGQgeW91IG1pbmQgcHVsbGluZyB0aGlzIG9uZSwgb3IgZG8g
eW91IGhhdmUgYW55IHJlc2VydmF0aW9ucz8KVGhlcmUgaGFzbid0IGJlZW4gYW55IGRpc2N1c3Np
b24sIGJ1dCBpdCBsb29rcyBsaWtlIGEgcHJldHR5IHNpbXBsZQpjaGFuZ2UsIHJ1bnRpbWUgdGVz
dGVkIGFuZCBzY2hlbWEtdGVzdGVkLgoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

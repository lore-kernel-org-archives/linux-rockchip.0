Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E185D0C604
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 20:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ux8yQ+Co5LVKy3Mm5rE4xRKvthSHCahSFGp5f8esye8=; b=VV53X3IULykj1O
	MKWMkteS0FBuFGafZlG9Nk3LfW1IKUzoKQS1H/6sJ9DFwIAhQdozO/7TnX2bXKlpa4kKvx0WzCtwb
	8ZPL9w7I6nYTgzIvbOqo2968wJtPklKsNWKm5vUzq513GZpLogGIiyMafBkqN+/Bxri9FhPwlyPrx
	8Nbb72xXxyyfijBhAdimE6ll7GW4/PUVFeF6URCSrJ8liu4h+pH8mGogi+RcutIvAjqK4cdBC/pqq
	s7FWDAjJpJL8fFSyMtTDB8d3AhcuT610PhTeqRZ6MC+47KA5FEuOg+FR0lULbH0gWo+lV3R2dpDYY
	UaF4Dm2A3LuRBKFFQtzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4npT-00000007EoN-1U2H;
	Sat, 26 Oct 2024 20:56:11 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4njQ-00000007EHd-34Rm
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 20:49:58 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4314c452180so28278335e9.0
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 13:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729975795; x=1730580595; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pZvoxqxdolc2ZgU6Up3oAfKc3txXrNvR2eWotAaOdhU=;
        b=XOC5RGVp/SnLUMgvt38K5Sffsh9GVUQIx1N08/ZSia6TZTBmmoMgw8pdO4hXd0Srnc
         lLnvL0buTWnL92WFXHNHH++WyUM7dK4E4CLcQ4ex0Xocu61WnheD/3VNu93xiK1FyjOW
         s/3LlmiYFETNfkl2ndwOoXRaOXYKWqZ9PcWmXpxe/Mhn0ogjHEtrstMXXjh9qmtnUgOe
         lXPIcUlfATw8Vnt4hLXgF2zUNo9maI40RKz9gUCRZQ2TgsC2d/tkYonSDESAFmvuUWAH
         kwoGCgGO+U6G9mBvyMQ49LAVgJat/KKqpjFBlrgZjMeBSE8RAPCYt0IpavsP1OM/kUJm
         QglA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729975795; x=1730580595;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pZvoxqxdolc2ZgU6Up3oAfKc3txXrNvR2eWotAaOdhU=;
        b=BjW6I6qwdkaKOHJeBRBqAs3k1lmMlXNdKkaLxYD8XautYXLpQsBp/3xmCFOidwiq6B
         iuz9wdWfiO9Vn5YtNLlXvXb6sGfM2yHoARjAUKCRdaibyi+VUC2s+zOXKQ/9oauYyDau
         CqeL6dXoDnJt0gXZ5qXfFKrkYJOhesi4kDeICYTEtUniWH8QlKnakyKIJUyIOFSA7osm
         5WiM3ScLt+kzuFG06yJRkLIo4gAccM5OWVhRbJE4owfans0tgORjkq+FdwrsBBrJySfR
         VOcyo3bkx4HhSGoxuCO+QEAx746oc3SbOyEWRKtIKW9Xl21V9SAc7v2dGlNABMdzWzdl
         mTag==
X-Forwarded-Encrypted: i=1; AJvYcCUoX5OcxPezMvKI7I/asFdxYAaudvnITZMTdGJBURiMjsPHB0ruwPs/SVHRJDbqfCQ8MpgCXisvXYaaWwUklA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxvr9EPOet9e9QfTz7MCmUgU8OeZE3c/VQ6hHU6qfz12LpvKL04
	jarhBGfhx4eaKs/xzTZTv2/Va9Z02UfoGS69kKp5KWysW29Pk1RYBpUOB9Vb9ZtM9M8knyAWOwd
	SWAhYeqU4nEP8PPhZO+b3b9afHNd0ONVAtWL2jg==
X-Google-Smtp-Source: AGHT+IEPUx2GUNVoUi2qZGnY7cCsWMFpcrscn2hCAsYLG2yVkiT+3GFFDBaFzbOaJ9iOb2X3ImTR9zofcsjxSd/WFXc=
X-Received: by 2002:adf:e944:0:b0:374:c21a:9dd4 with SMTP id
 ffacd0b85a97d-38060f37aafmr2805355f8f.20.1729975794532; Sat, 26 Oct 2024
 13:49:54 -0700 (PDT)
MIME-Version: 1.0
References: <20241026100310.52679-1-honyuenkwun@gmail.com> <20241026100310.52679-10-honyuenkwun@gmail.com>
 <CALWfF7KRwBYOwZqTivpLrd6W45UHXX3CAixs-AMZTB13jWsapg@mail.gmail.com>
In-Reply-To: <CALWfF7KRwBYOwZqTivpLrd6W45UHXX3CAixs-AMZTB13jWsapg@mail.gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sat, 26 Oct 2024 15:49:43 -0500
Message-ID: <CALWfF7KWsKXWNfzpVNdNJpf-G+pJpZEV-9mCwvvev21XSLTPyg@mail.gmail.com>
Subject: Re: [PATCH 09/15] arm64: dts: rockchip: add lower USB3 port to opi5max
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, 
	Ondrej Jirman <megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_134956_796922_6C06397A 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
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

T24gU2F0LCBPY3QgMjYsIDIwMjQgYXQgMzo0MOKAr1BNIEppbW15IEhvbiA8aG9ueXVlbmt3dW5A
Z21haWwuY29tPiB3cm90ZToKPgo+IEluIHRoZSBjYXNlIG9mIHRoZSBPUEk1UGx1cyBbMl0gcGFn
ZSAxNiwgaXQgdXNlcyBhIGRpZmZlcmVudCBFTiBwaW4KPiBmb3IgdmNjNXYwX3VzYjMwLiBIb3dl
dmVyLCBpbiB0aGUgbWFpbmxpbmUgT1BJNVBsdXMsIGl0IGxlZnQKPiB2Y2M1djBfdXNiMzAgcmVn
dWxhdG9yIG91dCBvZiB0aGUgZHRzIFszXS4KPgo+IFsxXSBodHRwOi8vd3d3Lm9yYW5nZXBpLm9y
Zy9odG1sL2hhcmRXYXJlL2NvbXB1dGVyQW5kTWljcm9jb250cm9sbGVycy9zZXJ2aWNlLWFuZC1z
dXBwb3J0L09yYW5nZS1QaS01LU1heC5odG1sCj4gWzJdIGh0dHA6Ly93d3cub3JhbmdlcGkub3Jn
L2h0bWwvaGFyZFdhcmUvY29tcHV0ZXJBbmRNaWNyb2NvbnRyb2xsZXJzL3NlcnZpY2UtYW5kLXN1
cHBvcnQvT3JhbmdlLVBpLTUtcGx1cy5odG1sCj4gWzNdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUtcGx1cy5kdHMjbjIwOQo+Cj4g
SmltbXkKV2FpdCwgSSdtIHdyb25nIGFib3V0IHRoZSBVU0IgMyBmdW5jdGlvbmFsaXR5IG9uIHRo
ZSBPcmFuZ2UgUGkgNSBQbHVzLgpUaGUgT3JhbmdlIFBpIDUgUGx1cyBpcyBvbmx5IGVuYWJsaW5n
IHVzYl9ob3N0MV94aGNpIG5vdyBbMV0uIEhvd2V2ZXIsCml0J3Mgb25seSBhZGRpbmcgdGhlIFR5
cGUgQyByZWd1bGF0b3Igd2l0aG91dCB0aGUgdXNiMzAgcmVndWxhdG9yLgoKWzFdIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTAyNTE3NTQxNS44ODczNjgtMS13ZW5zQGtlcm5lbC5v
cmcvCgpKaW1teQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

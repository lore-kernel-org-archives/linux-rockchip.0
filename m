Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86CC60A260B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 15:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ucv1JU6+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=XQj4uUnH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TgxbZ78gZuHLIDlOKP16zAU9i5pE0eeTaXaoPtyAWTI=; b=ucv1JU6+6zqskqhL7LfOmSm71C
	zKFMC5tpYTEGHg1vAOe05LCzIM1iKdQ9P6njFj83CW2Lv5EOKKb/iAQKKaRsFeXXdItPVQh5B+Ljs
	KgFl3THq5H0bN3ak3RZRO0c2viY97qfVrKrZQPkyHbiV3/NfIwwrsLLe9XcNVCKZQEcLATpj9oXv4
	6dnsszPQORanoVtvtL8+8GDi/UuBkYfVA3mvjpwOqcsn0tWgH7yHu8vB6p5rgKjdOEL8vmDNKoKHP
	mxSt+LkqgnGUc2vGaLvvwD+8M50OEHRJz08Li4hPQGq/lBcL5z5pQzVgLGFVr+Yafe7qmvQRt6SXQ
	x38YCGUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOcii-00000005jzR-1UuQ;
	Wed, 04 Nov 2026 15:16:12 +0000
Received: from mail-ej2-x04.google.com ([2a00:1450:4864:34::4])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOcif-00000005jxW-1WBO
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Nov 2026 15:16:10 +0000
Received: by mail-ej2-x04.google.com with SMTP id a640c23a62f3a-c4cd284c63bso57883266b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2026 07:16:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793805364; cv=none;
        d=google.com; s=arc-20260327;
        b=HgX4DntQh/pk4cDmoMpeSYs3/gKOKJ7AIrPayK+MYa/WroEHiLz39M1gLkAuA8ABCJ
         RJ6J2E48J67XxMU2CNdiuhx7+kahPb8Lilr6zpSsWUfgTdsjpZJlaQoDK03LK8SAB2Y6
         deQXdUX6lbM50WpjxCKabbppF88b9qgObo0IGofo/aQCNeh0HR3Gjsu4sezjxXIF5syU
         vTqwoFDlprTmS5+CD1oaOFEr3XEvKTOkaut9trSGddam5z5gf0evNzVcwH7d49nk/sIc
         eW7pILIoPsK57LjnrD2OmiR1uvLwQRWi8tiGzxU586qm8arDXtyObrtPuxulwjDy3aCT
         vsNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kdTVz8w7xpVwwFxFrP/pPSrvcaXONHeufsr6axyMCLQ=;
        fh=mdFlnVg+eSap0EBsiVsu/7o3SmB0nRjuYXdC3lAnnBs=;
        b=oDKj8ABYO9lXScjfOibyw4W5T9Jtyf2ZfhPPA+0FLQgNIplPi7qX5KjIwXV82YgUyH
         td75yY86W6jJHZ3RVWaRQaOr/0ZLRLhFUTa+GqHKKNFZ3p05KkudEGSRHFFGKD3lzQFg
         l5gfxLCPQRp/QWpNR0p7FU7YY00OMumeZTfcSOwPoNUUvK+J6/bvvFbVuUMrj+c0xuwC
         iXjzzSsdGqtYK5joGIv+KJU5xgSsJbEV/dK/qv6YiC2qlC9agzxNP0qavYW0SNXMexuO
         us9LUSJnaKzM0uWeFV8SzW6w02bcgPON2g2C8rzIWSJvACOadSTKVmMJ7gVy/vx/DpL2
         CXbQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793805364; x=1794410164; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=kdTVz8w7xpVwwFxFrP/pPSrvcaXONHeufsr6axyMCLQ=;
        b=XQj4uUnHTG8GqH8AJEFCUsf89l0cIiyulzWwq6b5q0OReXfJFtvQb195hhVkCgypSw
         S88fXh1LAc0SOTaLv/xd9oUdOGkD3GH8DDUD9UQ6YZ0ZTE3QpP5ya61UGzHIqynlo/8d
         5bjEAXtUjSzFyzYL65Nkap9oHMsNWnZfyyQ9kFCzKvn26xPM9d80Lucm0tBnp7tePmGH
         q6tNJj+fShu5AQT//9e/8x2gyzhbjbV8INgADApbzbFUeq8Yv6HMQwe0D79kmGE2qebL
         3N+r3n/tlRX/TNyG8dXQwcR7bIOjTkPU5WR5Y3QmiatRdwojmmybx3oSIeFmceHySv/7
         27mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793805364; x=1794410164;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kdTVz8w7xpVwwFxFrP/pPSrvcaXONHeufsr6axyMCLQ=;
        b=ggvdDLxo4x6LI3tfnX2D0Zqdg5xXyV0rzebNrNczFrvIKuSL6SgKUBXc8sLT5iK1fv
         Ft/ShdSQHkR/ugwphqjL7eqAVrFzTMQqJ/ZnoHuUWIkdcxyD7V9F3m9d7PHlflV5bAN3
         KFhDxpPVoUq5fusfk5cwbgpvwCcNxmKMaOBDfRdb32nxhkYgoV96ZgI8MRHRrwcq6RTJ
         TOImjq7lSwIVFpsDGuN5z2pDTlIGOGt3nbPvLqfQ4yyk3L0tYEoNwRgDj9+HVHHWIM1e
         5ZRSGr+/J0CgFApBVSb7vnbnkTASUE76QK+aw65B61IFFReC6+2v4gRkTxa//SKKCGQw
         q1hw==
X-Forwarded-Encrypted: i=1; AKwUvByJ/xBgpIojQS1TIRIea1zFkpc0bG/4q1nQqvOkUDQUPQ8Xjf5b1gsedPCQucrHvh4UGR8E2Nqf5ZuwIwMk7Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z8bU0cc0J4yj1y9zdMtPZeZ+Q4jBqBQ6BOQzJl673Yzxy23wsXL
	5VUrOU/x0A/FWfaAwBtENGbrujwQ09yX7dyhc1sxC3x7JrC8eyfA0bTyZSyGw9aHvuE3Say/7zV
	zWTd8zmvyQl3IQ12SR19as+FZ6hL9tWhzjBAEfyInRQ==
X-Gm-Gg: AYBFou3M3HGudV6tQBIM6UBOlJFY8RxzkdXU/ZkTa4CdBT6GVojfQx6l5dLAjh5HHsS
	Ry4ufKQZIO7AeImIZt0bzcyweKbWaMvnLrabR1icqMJr1EpkceGYylWL3d82HKqlUYLTdlqocyO
	bXkTZs3lhDifD8Nm5/sQMi2nl2YSdza2MTE39jGyV2qMEB1tynhinobvEPA/9YTXXFzDLWVjfpd
	TKR81L/u030g8GwI8FF/zpQNZIUfo5gdryYAeXymx2qJlsNJ09RH7j1vwFKO3h2IpCRl9mSvQzA
	f05jrQuk57CA6khp4TAQ66H5t1mBA9cpl8vWJ0NCuXMGQJod4upDomWXSe3YD+O1RQPvcufpfp8
	J0VQ+myobBHZL9wBTcoCGQS/uoV4j8eQUj7cW55iGRz7hQjYtFa5NsEo=
X-Received: by 2002:a17:906:99cd:b0:c46:50c6:f737 with SMTP id
 a640c23a62f3a-c4ca7a8459cmr1547068466b.31.1793805363810; Wed, 04 Nov 2026
 07:16:03 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261102174450.3000397-6-coiaprant@gmail.com> <20261104124020.3546166-1-amadeus@jmu.edu.cn>
In-Reply-To: <20261104124020.3546166-1-amadeus@jmu.edu.cn>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 4 Nov 2026 23:15:51 +0800
X-Gm-Features: AclHuK-zeYM4UdtsZyf6UCuVcNw6qYpttvJKvduU9hQNxft_dHREd_O22uUfBMU
Message-ID: <CALj3r0ijsuzadYoi0NPkSpT8smRyi607APfxLS8_u3JSH3+dPg@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] arm64: dts: rockchip: fix USB OTG power on
 Photonicat in battery mode
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: bigfoot@classfun.cn, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_071609_418399_B142C7DD 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: 0.4 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Q2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNuPiDkuo4yMDI25bm0MTHmnIg05pel5ZGo5LiJ
IDIwOjQw5YaZ6YGT77yaCj4KPiBIaSwKPgo+ID4gcmVndWxhdG9yXzV2X2Jvb3N0OiByZWd1bGF0
b3ItNXYtYm9vc3Qgewo+Cj4gSSBwcmVmZXIgdG8gdXNlIHZjYyBhcyBhIHByZWZpeCBmb3IgY29u
c2lzdGVuY3kuCj4KPiA+ICsgICAgICAqIDVWX09VVCBpcyB0aGUgT1ItZWQgY29tYmluYXRpb24g
b2YgdGhlIFZCQVQgYm9vc3QgKHZpYSBENTAwMikKPiA+ICsgICAgICAqIGFuZCBWQ0NJTl81ViAo
dmlhIEQxNikuCj4gPiArICAgICAgKiBJdCBoYXMgbm8gZW5hYmxlIHBpbiBvZiBpdHMgb3duLgo+
ID4gKyAgICAgICogTW9kZWwgaXQgYXMgYSBmaXhlZCByZWd1bGF0b3IgZGVwZW5kaW5nIG9uIHRo
ZSBib29zdCBjb252ZXJ0ZXIsCj4gPiArICAgICAgKiBzbyB0aGF0IFZCQVQgaXMgYm9vc3RlZCB3
aGVuIHJ1bm5pbmcgb24gYmF0dGVyeS4KPgo+IFdoYXQgYXJlIHRoZSBiZW5lZml0cyBvZiBkb2lu
ZyB0aGlzPyBUaGlzIGlzIG5vdCBhIHJlYWwgcmVndWxhdG9yLgo+IEl0IGlzIHRoZSBzYW1lIHBh
dGggYXMgNVZfQk9PU1QuIEQxNiBjb250cm9scyB3aGljaCBjaGFubmVsIHRoZSBWSU4KPiBvZiBW
Q0M1VjBfVVNCMzBfT1RHMCBjb21lcyBmcm9tLgoKSGksCgpUaGFua3MgZm9yIHRoZSBmZWVkYmFj
ay4KCjEuIE5hbWluZzogSSdkIHByZWZlciB0byBrZWVwIHRoZSBuYW1lcyBhcyBgcmVndWxhdG9y
LTV2LWJvb3N0YCBhbmQKICAgYHJlZ3VsYXRvci01di1vdXRgLiBUaGVzZSBtYXRjaCB0aGUgZXhh
Y3QgbmV0IG5hbWVzIGluIHRoZSBzY2hlbWF0aWMKICAgKDVWX0JPT1NUIGFuZCA1Vl9PVVQpLiBB
ZGRpbmcgYSBgdmNjYCBwcmVmaXggd291bGQgYnJlYWsgdGhlIDE6MQogICBtYXBwaW5nIGJldHdl
ZW4gdGhlIERUUyBhbmQgdGhlIHNjaGVtYXRpYywgbWFraW5nIGl0IGhhcmRlciBmb3IKICAgYW55
b25lIHRyYWNpbmcgdGhlIGJvYXJkIHBvd2VyLgoKMi4gUmVnYXJkaW5nIHRoZSA1Vl9PVVQgbm9k
ZTogSSB1bmRlcnN0YW5kIHlvdXIgcG9pbnQgdGhhdCBEMTYvRDUwMDIKICAgYXJlIGhhcmR3YXJl
IE9SaW5nIGFuZCB0aGVyZSBpcyBubyBzb2Z0d2FyZSBjb250cm9sLiBIb3dldmVyLCA1Vl9PVVQK
ICAgaXMgYSBkaXN0aW5jdCBuZXQgaW4gdGhlIHNjaGVtYXRpYy4gS2VlcGluZyB0aGUgbm9kZSBt
YWtlcyB0aGUgRFQKICAgcG93ZXIgdHJlZSBhY2N1cmF0ZWx5IHJlZmxlY3QgdGhlIGhhcmR3YXJl
IGFuZCBjbGVhcmx5IGRvY3VtZW50cwogICB0aGF0IGJvdGggdGhlIFVTQiBWQlVTIGFuZCBIRE1J
IDVWIGRvbWFpbnMgc2hhcmUgdGhpcyBPUi1lZCBzb3VyY2UuCgogICBUaGUgYHJlZ3VsYXRvci1m
aXhlZGAgYmluZGluZyBzdXBwb3J0cyBtb2RlbGluZyBhbHdheXMtb24gZml4ZWQKICAgcmFpbHMs
IHNvIHRoaXMgZG9lc24ndCBicmVhayB0aGUgcmVndWxhdG9yIHNlbWFudGljcy4gSWYgdGhlIGtl
cm5lbAogICBsYXRlciBzdXBwb3J0cyBtdWx0aXBsZSBgdmluLXN1cHBseWAgaW5wdXRzLCB3ZSBj
YW4gdXBkYXRlIHRoaXMgbm9kZQogICB0byBsaXN0IGJvdGggdGhlIGJvb3N0IGFuZCBWQ0NJTl81
ViBleHBsaWNpdGx5LiBGb3Igbm93LCBjaGFpbmluZwogICBgdmNjNXYwX3VzYjMwX290ZzBgIC0+
IGA1dl9vdXRgIC0+IGA1dl9ib29zdGAgaXMgdGhlIG1vc3QgYWNjdXJhdGUKICAgcmVwcmVzZW50
YXRpb24uCgpDb2lhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==

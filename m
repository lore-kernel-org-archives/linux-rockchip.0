Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CA41E6F066
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Nov 2024 14:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l//vUfv7excpqiFFP9qGNdZLQiwGccBaGk68Z2TcBXU=; b=PJYyPyJh+Vn8E5
	wDMVryUtN3bkC5lUnZW+sTO8RwESnazlfyn8RALDR0hDpHIXsWpKUxZM1KYQsXi16zTv+B9BVKwal
	ga6A9dWNAor7atrMpa/qCjNiFArzBJxuEHYt7bG7uIJ1vNAn5o/DfPyiPiOLghTZSbHeoe3GI+6zF
	Mm+rY0e7G6Yrr2Bt6iiC3jMq8XuJqFOGfDE7jYnLB9YmLB453aUuUCJ6fEmRkfIw4I4QH0Kl5dGcv
	wqEPqgQzPK3UqNLQZlxLgayafMsBkt6kJQdnL8h7awbCqNZxjP0Vyxy3XkiXcbMang7Uu+fTMnGL9
	UrzdjC7jH5KHRwP1hpEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6szN-00000007Orp-0Yuq;
	Fri, 01 Nov 2024 14:51:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6sqB-00000007NGF-0jUL
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Nov 2024 14:41:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 262D55C102B
	for <linux-rockchip@lists.infradead.org>; Fri,  1 Nov 2024 14:40:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4DDDC4CED4
	for <linux-rockchip@lists.infradead.org>; Fri,  1 Nov 2024 14:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730472089;
	bh=AmkGd1YtaRBsWyY/PhDUar+x9+0lYLo6JDmoiR2N3Xo=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=AsGAiBG8azxgn6tnEmoy7OPWNv9wH7dvvBmKRqwRlDS6El8ZkLSF7hStvzpydtYqK
	 Pg5U2v/XQgBSQ9woSXb4HgoYm5rAAh3FcyBnfnMi85QP47sBxwDT2xqqmKmfFiyGfN
	 1Y0iE0agDo9xuE99kEd7u3NspQZ/oVY6Zia0FXOGbLYkixeY1P/lcyOr+xrssHoV/r
	 AGq3E/3JlxyV0DK5mzg9n7rBazFqkJeBjZMS16hZitnq+FWPMT73pZF00gzXz8tDfG
	 QM4oRnDSh4Lmo3J70NF8YzPohTt7sLCMKiigBtuVG5l9PzQ81Ej6QH5Z/FnikcwwEk
	 ISMwhKfON1zXA==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fb518014b9so17332931fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Nov 2024 07:41:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVVZ2gkRq5wpGhtGvdO6/ulxGmF5rYjua4YV9dHLkSjOtHlP7Z5ohDrzcHot3ELlsA90YnH1vTdk0U5UObb9Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzjON/PjnCkOwlsOiyJr+d8+zONP/eDLUqSQK/PW0Pcoq7bMLa9
	10yvKbqr8sZEr+zRliWH5waiIRLPVpV1hJB0A/gmJLr3QcEfb4uETzr3IUzVG8PhOxZ+Q9CnOrw
	hvmr2tUHKIxZPfqfL9oWoOb1yCkA=
X-Google-Smtp-Source: AGHT+IHc9jUui8eLzC4XhWJRVn+/2ELdbimwXFbBNramNpQcny1mdNUt1lZXT7vOKkYTUPt/Ls2DNpMd04J+Sb8odzA=
X-Received: by 2002:a05:651c:19ab:b0:2fb:8774:4412 with SMTP id
 38308e7fff4ca-2fcbdfc9303mr104550731fa.24.1730472088063; Fri, 01 Nov 2024
 07:41:28 -0700 (PDT)
MIME-Version: 1.0
References: <20241022154508.63563-1-sebastian.reichel@collabora.com>
 <CAPDyKFoAv1jeQitHmTMhvwG9vGzN-vLby0fPzkX1E6+-Qe2dog@mail.gmail.com>
 <CAPDyKFp=sRLVBhW2aK87pYHVGi_6gNw=e3j3AGMnEWP2SVYFpw@mail.gmail.com> <9b4c9b61-a2be-465e-a4d9-034951fc862f@sirena.org.uk>
In-Reply-To: <9b4c9b61-a2be-465e-a4d9-034951fc862f@sirena.org.uk>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 1 Nov 2024 22:41:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v65ahUB_Q+HPFV6B-UqWCbCNLdGz58BGo9iHRhVyf1ruZA@mail.gmail.com>
Message-ID: <CAGb2v65ahUB_Q+HPFV6B-UqWCbCNLdGz58BGo9iHRhVyf1ruZA@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Fix RK3588 GPU domain
To: Mark Brown <broonie@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_074131_324505_0EFD477F 
X-CRM114-Status: GOOD (  19.34  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBOb3YgMSwgMjAyNCBhdCAxMDozNuKAr1BNIE1hcmsgQnJvd24gPGJyb29uaWVAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksIE5vdiAwMSwgMjAyNCBhdCAxMjo1NjoxNlBNICsw
MTAwLCBVbGYgSGFuc3NvbiB3cm90ZToKPiA+IE9uIFdlZCwgMjMgT2N0IDIwMjQgYXQgMTI6MDUs
IFVsZiBIYW5zc29uIDx1bGYuaGFuc3NvbkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+ID4gPiBUaGUg
bWVyZ2Ugc3RyYXRlZ3kgc2VlbXMgcmVhc29uYWJsZSB0byBtZS4gQnV0IEkgYW0gZmluZSB3aXRo
IHRoYXQKPiA+ID4gd2hhdGV2ZXIgd29ya3MgZm9yIE1hcmsuCj4KPiA+IE1hcmssIGFueSB1cGRh
dGUgb24gdGhpcz8KPgo+ID4gSWYgZWFzaWVyLCB5b3UgY291bGQgYWxzbyBqdXN0IGFjayB0aGUg
cmVndWxhdG9yIHBhdGNoIChwYXRjaDEpLCBhbmQKPiA+IGNhbiBqdXN0IHRha2UgaXQgYWxsIHZp
YSBteSB0cmVlLgo+Cj4gSSdtIHN0aWxsIGRlY2lkaW5nIHdoYXQgSSB0aGluayBhYm91dCB0aGUg
cmVndWxhdG9yIHBhdGNoLCBJIGNhbiBzZWUgd2h5Cj4gaXQncyB3YW50ZWQgaW4gdGhpcyBzaXR1
YXRpb24gYnV0IGl0J3MgYWxzbyBhbiBpbnZpdGF0aW9uIHRvIG1pc3VzZSBieQo+IGRyaXZlcnMg
anVzdCBibGluZGx5IHJlcXVlc3RpbmcgYWxsIHN1cHBsaWVzIGFuZCBub3QgY2FyaW5nIGlmIHRo
aW5ncwo+IHdvcmsuCgpJIHN1cHBvc2UgYW4gYWx0ZXJuYXRpdmUgaXMgdG8gZmxhZyB3aGljaCBw
b3dlciBkb21haW5zIGFjdHVhbGx5IG5lZWQKYSByZWd1bGF0b3Igc3VwcGx5LiBUaGUgTWVkaWFU
ZWsgcG93ZXIgZG9tYWluIGRyaXZlciBkb2VzIHRoaXMuCgpUaGVyZSdzIHN0aWxsIHRoZSBpc3N1
ZSBvZiBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSB3aXRoIG9sZGVyIGRldmljZQp0cmVlcyB0aGF0
IGFyZSBtaXNzaW5nIHNhaWQgc3VwcGx5IHRob3VnaC4KCgpDaGVuWXUKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0B28C5B553
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 May 2025 17:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+5PAK1PctC0/MpQZCvQxcwWaIQPr4fe2ufajyfKXP0=; b=WWZnTnZWj4W/OA
	JNWemSe1253k0TKG65BkQ8xe+adf/hCPQ0DJSGqlKmdiaUJ8h+c+aCWj0HvypCdHf+dBO2MdqJP29
	PXpMMcmzCD49GiMQtA1o8YUrr420KwInCgU8wDtsA5fovjOqidIvYr64qJV3t3qD7xeHEQ+0AKogb
	8bhDJYjWiPB4fhgAwq5mDS3wrQ/boc+ui8Iy0eLn+M6J3J+I/MzoGiqFWXNwbryjJMQVTx9MVXVGE
	NJ3tVulaNfqMEzraTR03vaYeNi5FgmeGpCbpB0oKsIhXmjsIBpi9XcX7vV+uWElmNlFwqEZmS/SEb
	DTcoDOroimZw0lrYNa9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKh2Y-0000000GHcM-2WE5;
	Thu, 29 May 2025 17:27:38 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKh2K-0000000GHYH-25q5
	for linux-rockchip@lists.infradead.org;
	Thu, 29 May 2025 17:27:25 +0000
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-86a464849faso81544139f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 29 May 2025 10:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748539643; x=1749144443; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ajQTKsp2k+COAp8eVCvXoYherc4TbcmqdYiY2XM3q3g=;
        b=ICBP59y384G2nFdzfOERRh7n1D+htK9VBVo+NLw57+VW+lhsKrSuNjfINxfSd2VZJI
         GOfN+HYKDzo1FCF2S5VbU5rUptUDSVkmj9P60TDidURA+t5XWYgF2chaYgjvmmsfY4pp
         hY85ROOHooGH2uCn43AzFRLLZBgFWaP7r+/Eba9Ixcs/3/yG6gyCfXOrzvn+jggivQ5H
         1Ozx8VYOzo3gmSKrQXJZD26lyeURWfS3Uxzf4TgpCsuzjtCBAke8086xMShjUBsIFxTC
         gGxx9V8S2LiouHZ5bOkrOxBKc66k/geS/LzG4oIQ2HZ0WE7pAGJiB6E7f5RRb7qIcdkg
         euJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748539643; x=1749144443;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ajQTKsp2k+COAp8eVCvXoYherc4TbcmqdYiY2XM3q3g=;
        b=U6znSGjWrKuXLUTAEeU5AO0DKQkx/D5TaoZQP4uQDY4ExC7IBfOdfaN0bs284mdwJz
         kd3JKsTZt9ZssZNS0Ayr7F7jMTlecCLNmNeUqnEV5V68I2A9ZxebDKT2NvsFQfsqkHVN
         ywX3kaJHzF5sZMTFGkMHsjmdn2oV6Z0y1CP5JHuH3Azngkk8tZZ1IJqjt/KXkFUU4GVF
         K1/ksCqsmwNWyoBzCqXubh1/yARIQS+rmnwFPmod57A9mXU5XyR7U7vbZYoQWuRD4vD1
         D8GsFTF2bfg1mRX87EhYrBzDX3PbbYvptfGZ5RQfBEG75ErcdaiviJNEWeRAfgy3cMJi
         RnXw==
X-Forwarded-Encrypted: i=1; AJvYcCWJV28d9kif9ZtcILgTgz3hqAo83WTPpmRGBvhyLNOUc01OohXLvd76U34KNPjNotSzTkRDADcOPKDj1tPCKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyPHr7YxUkDHR8yTTq3QIF3FTcIbl5siimN5QTyhpNDlPnxWku+
	i+NxpUTCWWnmGX5UO0xfZVH3dwqR5Ze8WwiRd7a2hnkP1d0zscO3w6Nao6pWbf6h5AR3KiLj57C
	OsE/jDqaRtwzrCUb+cUzu0KGjVo8iNDE=
X-Gm-Gg: ASbGncsiQHShxICe79wjk597c1pWbzkXREPn4/Bzij0fi2bc6Pg9YO89PEMPsuateXH
	8ap8m8QRm+fRcog/M9FBlOhBoUoiM9OwrKonW7isApXN1AXjf1CeMwfPmKmZkTB1hmmlmN/CciL
	7mrHwhiUSTyrbteaixgZzOl7Xjww9lrzVF2ajXs/PLKQ==
X-Google-Smtp-Source: AGHT+IGmfLftFKbDjPUrwhZwicuqQxLIwzoCfWWeirKpn1IUl46FhVaamkvogKo9NxIBYcyFiWPlwqFTeQ9zfcW19XI=
X-Received: by 2002:a05:6e02:3c86:b0:3dc:857c:c61e with SMTP id
 e9e14a558f8ab-3dd99c289c0mr9051885ab.15.1748539643157; Thu, 29 May 2025
 10:27:23 -0700 (PDT)
MIME-Version: 1.0
References: <174735136138.1544989.11909422896170025756.robh@kernel.org>
 <20250528221823.2974653-1-joseph.kogut@gmail.com> <20250528221823.2974653-2-joseph.kogut@gmail.com>
 <20250529-impressive-real-monkey-a7818b@kuoka> <CAMWSM7i+eyV4t3xzSXdDyGrBr101V9rG1xMgsTbpjyqpu+hjYw@mail.gmail.com>
 <3a2b9bfb-81b0-473a-b58c-76a2dd7f434e@kernel.org>
In-Reply-To: <3a2b9bfb-81b0-473a-b58c-76a2dd7f434e@kernel.org>
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Thu, 29 May 2025 10:26:47 -0700
X-Gm-Features: AX0GCFvNxRjPdyr8yhbcLu1TfazWvzDwAFaQdGZbh1fnbTEWqCXXjJppI9Ifugk
Message-ID: <CAMWSM7h-naYcgy7hrfNd0tDLTx21jFmvV4X8vU1V4py21PNVPw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Steve deRosier <derosier@cal-sierra.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_102724_536440_CB3B40F2 
X-CRM114-Status: GOOD (  15.29  )
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

T24gVGh1LCBNYXkgMjksIDIwMjUgYXQgMTA6MDfigK9BTSBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gMjkvMDUvMjAyNSAxOTowMCwgSm9zZXBoIEtv
Z3V0IHdyb3RlOgo+ID4gSSd2ZSByZXZpZXdlZCB0aGUgbWFuIHBhZ2UgZm9yIGdpdC1zZW5kLWVt
YWlsLiBJZiBJJ20gdW5kZXJzdGFuZGluZwo+ID4gY29ycmVjdGx5LCBJIHNob3VsZCBvbmx5IHRo
cmVhZCB0aGUgKmNvdmVyIGxldHRlciogb2YgdGhlIHBhdGNoIHNlcmllcwo+ID4gd2hlbiBzdWJt
aXR0aW5nIGEgbmV3IHZlcnNpb24uIFRoYXQgZGlkbid0IHdvcmsgZm9yIG1lIGhlcmUgYmVjYXVz
ZSBJCj4gPiBkaWRuJ3QgaW5pdGlhbGx5IGluY2x1ZGUgYSBjb3ZlciBsZXR0ZXIsIHRoZW4gdHJp
ZWQgdG8gdGhyZWFkIHRoZQo+ID4gZmlyc3QgcGF0Y2ggaW4gdGhlIHNlcmllcy4gSSBzZWUgbm93
IGhvdyB0aGF0IHdvdWxkIGJlIGRpc3J1cHRpdmUuCj4gWW91IHNob3VsZCBub3QgdGhyZWFkIG1h
bnVhbGx5IGFueXRoaW5nLiBiNCBkb2VzIGl0IGZvciB5b3UuIElmIHlvdSB3YW50Cj4gdG8gdXNl
IGdpdC1zZW5kLWVtYWlsLCB0aGVuIHlvdSBhbHNvIGRvbid0IGNhcmU6Cj4KPiBnaXQgZm9ybWF0
LXBhdGNoIC12MyAtMyBIRUFECj4gZ2l0IHNlbmQtZW1haWwgPHdoYXRldmVyLXRvLWFuZC1jYy1h
cmd1bWVudHM+IHYzKgo+Cj4gVGhhdCdzIGl0LiBObyBtYW51YWwgdGhyZWFkaW5nLgo+CgpJIHdh
c24ndCBhd2FyZSBvZiBiNCwgaXQgbG9va3MgbGlrZSBhIGdyZWF0IHRvb2wgZm9yIHRoaXMgd29y
a2Zsb3cuClRoYW5rcyBhZ2FpbiBmb3IgeW91ciBoZWxwLCBJJ2xsIGdpdmUgaXQgYSB0cnkuCgpC
ZXN0LApKb3NlcGgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

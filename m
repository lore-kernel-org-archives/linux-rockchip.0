Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0B41C282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 23:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVaKoSFki7qY91qkBCjRde//0xWItEm/19fV1Npv6nE=; b=u5W/aiYWqSNUH/
	i27Bw668ZZMOAp5Zymnv/AauLYhVmd0QG9uxi4FDUz2+Y5b/TqItrZPmVAnYmV2MedlF2WP9+uI4D
	R7uozwrkYw5rmpWl374dKNaeQ2cOa8N/1OvWai8tIU/r98Ztb0ZiuCTwcgdbeW9RPgbVO6O+UFCH0
	aOOCuBlnxhhHFRl+F6eSxRnM6KVIyYsEEiv+jG0KoYzixn19PjnWjr278//Ov1kLGbHXU04cbl6QK
	uJ3nbp7xwQaJjbvwI4/57hAUuBF7XIurzga32NOA07UWZIgusTmyeyje2dDHmSNKBf6asicpgx3rv
	KG/1FaFsCEIJSOXwdNRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ts8pP-00000007ALW-41PP;
	Tue, 11 Mar 2025 23:16:03 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ts8pN-00000007AKh-0ohy;
	Tue, 11 Mar 2025 23:16:02 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-43d07ca6a80so6274535e9.1;
        Tue, 11 Mar 2025 16:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741734958; x=1742339758; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tX/dTIeYNxTzj5gZHvJ5AtwpzySsIM3wBh1XC79KOyI=;
        b=dXtFjgHUEZdNF4CrNZtU4gEnp0Val8+zT/fhkGxIW/4lnHMkI1zUGYzE0vaY10SR2s
         wE4qo2vJUOn0A53KcDRc34UWwVD2+MPTjb26QXOrjgSnJ0pFNtWOmH9JPWOALWgspLe0
         mQLf3Yo86m7ZwsOiUsgbnbIFn2tqb4VL0Sk27ebietGB8QHVyEBOBkk5ox19UyGkzjTc
         bTGPPKC95HF3GRqCDpA4hXvr5ftU2BSHsd0wXc+BOW2yf0QgjnVotQ8tLaa5iS9kDUj6
         UyRRbyvwox7lV+79QVyVnKbYBl9rPsL7xZMu7zf/PYru0Hhg5VkBAXVHbf+/X013sEu/
         qayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741734958; x=1742339758;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tX/dTIeYNxTzj5gZHvJ5AtwpzySsIM3wBh1XC79KOyI=;
        b=NdzD/xwAN4AYzeC8xdAzO4QZ3DQrni+z1B+NRTQDvzPjUfpbMP/HlViQarjd3sKapH
         8+Iq1W94v52z37uyBgIWOsxHOdLrfAlKMUJqD+3RpXi74zEopQyS8Vci73gCla9tTG5L
         q42djYl5xfK9lvn8esWzTJdNyDJmzkG++3Pfriae+HlqxL5GqHbzNGU2yhDGk78HjqgQ
         jN6ZXvhBMJV9b+Qx07yJgctEVHPf4gOlmraXIPl9qUU3CqrTRktq4SozGhm6k0CvTKt6
         58rVJe50fwiEug4sXBC0myO0V9x3wnqMlWLNr6cdO633PkxEDTiVlbA4lwyDLycR2uCK
         IPvg==
X-Forwarded-Encrypted: i=1; AJvYcCVmH96tIMqpsDDJwbQIUnHvf7KB1iSYlRu5ffO6LGIFNRUpwdRbit/k1U2/5mVzobHsgvxDW8eQB/DH4OX44vh7@lists.infradead.org
X-Gm-Message-State: AOJu0YwJoZ1l5ezRjr0/lruTep38BSsw2+YVMBy4eRABiynx3fKg+zEP
	2kuVhdrJUoZXq8UvT7SFAIv5nNOsb8f+Eqx6M98mBcvUSBkBjFSVdMBYLHTbYGr4v4Lb+AbdJhR
	0QMiYILs16YgpWu7+oJM2Bd5aMCk=
X-Gm-Gg: ASbGnct0NEX9O8l5nCDq77P+8FB0z/SwDsqe+NP5f1Yv+qPfI5DCVOWh2gkYxRiT9O4
	42znVE8CgnjDXnWultesqkwmVBFstF9MB0nnzBuodc40Wn5anA/xFfrceWn9NEj7WmnyOQ2Jqin
	VlwP/mqqJtb733nNLvN8xciBdW6WBryCJ52cKBS12pV+7K6Bji5basKoBf3jHi3WZf3Hn4
X-Google-Smtp-Source: AGHT+IHdE+IvjKPy/H/187X9ESbJuc1W239VyqGDem3VC44hAK/6v4MUY7Ogj5IPUx6y6MopfRCWPyu9jEmvdN+2VSY=
X-Received: by 2002:a5d:47cc:0:b0:391:23de:b1b4 with SMTP id
 ffacd0b85a97d-39132db0648mr15300763f8f.45.1741734958355; Tue, 11 Mar 2025
 16:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250311141245.2719796-1-liujianfeng1994@gmail.com>
In-Reply-To: <20250311141245.2719796-1-liujianfeng1994@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 11 Mar 2025 18:15:47 -0500
X-Gm-Features: AQ5f1JpTXjTmVT-uFEQ-cp0wVYjs646Qn0g9ep9yELCKIu65h4ws4boyJnIroik
Message-ID: <CALWfF7JfJxudKKfvOBXiLOMijUi+xZCAUL_WRsB-UxpV3XKDEg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix pcie reset gpio on Orange Pi 5 Max
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_161601_239077_03BA4DBC 
X-CRM114-Status: GOOD (  18.14  )
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

T24gVHVlLCBNYXIgMTEsIDIwMjUgYXQgOToxM+KAr0FNIEppYW5mZW5nIExpdSA8bGl1amlhbmZl
bmcxOTk0QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBBY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRpYywg
cGNpZSByZXNldCBncGlvIGlzIEdQSU8zX0Q0LAo+IG5vdCBHUElPNF9ENC4KVGhhbmtzIGZvciB0
aGUgY29ycmVjdGlvbi4KQWxzbyBhcHBsaWVzIHRvIHRoZSBPcmFuZ2UgUGkgNSBVbHRyYS4KCkkg
bWFkZSB0aGUgdHlwbyB3aGVuIHN0YXJ0aW5nIHdpdGggdGhlIE9yYW5nZSBQaSA1IFBsdXMgd2l0
aCAiZ3BpbzMKUktfUEIzIiBhbmQgY2hhbmdlZCBib3RoICIzIiB0byAiNCIuCgpJJ20gZ3Vlc3Np
bmcgdS1ib290IGhhcyBhbHJlYWR5IGluaXRpYWxpemVkIHRoZSBkZXZpY2UsIG90aGVyd2lzZSB0
aGUKcHJvYmxlbSB3b3VsZCBiZSBtb3JlIG9idmlvdXMuCgo+Cj4gRml4ZXM6IGM2MDBkMjUyZGM1
MiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgT3JhbmdlIFBpIDUgTWF4IGJvYXJkIikKPiBT
aWduZWQtb2ZmLWJ5OiBKaWFuZmVuZyBMaXUgPGxpdWppYW5mZW5nMTk5NEBnbWFpbC5jb20+ClJl
dmlld2VkLWJ5OiBKaW1teSBIb24gPGhvbnl1ZW5rd3VuQGdtYWlsLmNvbT4KCj4gLS0tCj4KPiAg
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1jb21wYWN0LmR0
c2kgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9y
YW5nZXBpLTUtY29tcGFjdC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtb3JhbmdlcGktNS1jb21wYWN0LmR0c2kKPiBpbmRleCA2ZTRkY2Q4ZmZmMjYuLmY3NDhjNmY3
NjBkOCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1v
cmFuZ2VwaS01LWNvbXBhY3QuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LW9yYW5nZXBpLTUtY29tcGFjdC5kdHNpCj4gQEAgLTY0LDcgKzY0LDcgQEAgJmxl
ZF9ibHVlX3B3bSB7Cj4KPiAgLyogcGh5MiAqLwo+ICAmcGNpZTJ4MWwxIHsKPiAtICAgICAgIHJl
c2V0LWdwaW9zID0gPCZncGlvNCBSS19QRDQgR1BJT19BQ1RJVkVfSElHSD47Cj4gKyAgICAgICBy
ZXNldC1ncGlvcyA9IDwmZ3BpbzMgUktfUEQ0IEdQSU9fQUNUSVZFX0hJR0g+Owo+ICAgICAgICAg
dnBjaWUzdjMtc3VwcGx5ID0gPCZ2Y2MzdjNfcGNpZV9ldGg+Owo+ICAgICAgICAgc3RhdHVzID0g
Im9rYXkiOwo+ICB9Owo+IC0tCj4gMi40My4wCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

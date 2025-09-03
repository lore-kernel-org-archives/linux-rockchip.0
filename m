Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70A76CA0FF2
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Sep 2025 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8asZlScxwRw4h1wRKVRYjchPlnydlo1px8f8+zKB5Bo=; b=b52TMAYTW7+fOM
	hkSMTxmjAd1Gwq7So1pGv0Fu7fyYDaBggLd/71ZNQA3GgmJ4II84GwxWA00ImiXDE1ciNB0QKPYE6
	XncageNvGujD5+2kW56FvPvoucgFxKk+E9QAMwwhJgVAZx6KTT1HtnPmffzJCd9P/vF2HpnbaW9kf
	Knum2lmbAJ0tyTZNgrJLaKqCE8Gz9sXafJCimg2OOlApT8O2XjhiIUVhTO3QzSq0ZXqGvktgGGjHU
	TNGgBAJuoJRBd+gQdUNX/J6EEnWxSWOX76YcHEQo1TDsDqcALzZYdbSVlKL/tXdHnts9STZKD1Bfd
	UYl0IKK0TpQFoeKFWXxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utrDQ-00000007BOj-32jA;
	Wed, 03 Sep 2025 17:24:12 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utng3-00000006cYE-1jJE;
	Wed, 03 Sep 2025 13:37:32 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-61e8fdfd9b4so2051754a12.1;
        Wed, 03 Sep 2025 06:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756906650; x=1757511450; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PbL/EGQbhxJhOitVzc5HwwJYAZFXLJWkRn1NxA9OrZc=;
        b=KIo/pYVWeuNL/d7N3BAkUf8PAEgwmqRz9Pokd2Yb1VHBYg0ncvbImS7A9Lr/dd0mxV
         4ooguxEMmudczldpUjXnCgir6SbYgAxUBOqFbXvZh0y1hh+BIcQijXsmA88ZBRiJXox7
         giuSCEosOh63miFUQPKvgK+rGk2h/IpszzrvobGjEQUYCL79F69R3jM/5vMJ8WkbdjQf
         VSwfL+UScwdeTFQ0pF+FDSLfrGYM9vs+mefoCRU2klWbgx4YG7i4CKdFBMbeExDCPppk
         nH36P4B6aZYO9s/+XACP+x540ijTthmc0DcQkmd7EoXpyZ010abmI8D0oQ/0R9Ctwh6K
         kG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756906650; x=1757511450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PbL/EGQbhxJhOitVzc5HwwJYAZFXLJWkRn1NxA9OrZc=;
        b=CW7tWvsKsr7QMzIjl5+zyqkmWHXaqaSHiktPaespUjr5Oht+kekDZGrkkCVr4f0C7o
         ly+HSnHS7dAteepAmP/Sjk93iJd5/z12jew6Sedrc4zXLUHJgk2+CWzDVLnIbX6IUOfP
         KqFJj+zZq5/JJ0vI4/mFTsn8HFdGz2h41NW560hB2jvqJZL5uS9AZ4Hm3+Qow5c4FLW9
         N3U/9Wtn5xG04FRFL2dtthbn9nkNI2zv0AcioPB0ygU50pTVINUwmptlDDVHd7a8rNv8
         MWYtJ4wU7zdfC3lJ0HIVvCEXhvvUEVIDPYtE/olIdRPwgrRFqlZS8AyiLnDkr00QrEYy
         tddQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvbw6DtnrkwLqaw2gCC+EO4ZPF1qgnRuc60Pa9s8vwURqreXbEBczxQjM74h+yk8Pney52y2hgALYqR0+D5j8=@lists.infradead.org, AJvYcCXLksKz847TTsF30P3OJrMwd3ODbiepoY5ErcuJ3bttm0fxA1UAq2Ixbskp585oodkPec8sL66njZmnODQ04EiB@lists.infradead.org
X-Gm-Message-State: AOJu0YxVvx6ptH3uyl+RMnr1gJxu5Q99lEuj8Djut3hhqJ9XmtNXIB8C
	G0dyN/PNQc7O1boFaYorznSDm+GdUDN1zFS58ybWq8WEG3NkxfBb86sdfe30nWLMrZA1GFr+pUS
	eXlOAJVX1mW3KWFpF9m1UMPGS6kDoU2w=
X-Gm-Gg: ASbGnct4VAg1kAnwQLpInMry4QH2FYqoDm4XYMmhZL9wflFG71coe1AbSm5ulyUtYsT
	gMsGs8Wz4etoqY4xMl7ijR/lePfq3MoR4gblaGjNHwk/v6Fb1GGceucCwmagPTygMnbmGoxPm9E
	Rwy9aZbjTAFlzyzDqs0Ds02WR9JfLseFp5rkiCRqKbwdytrPaJOvKglJ/2TM5sBhCB2b5hl7BWP
	g2S+QTtGp5yfPllVb+Q7u2qVejEVqnMVTbS
X-Google-Smtp-Source: AGHT+IHvQXQHTKEMoyFaTqaFVMbln/qgY7S7KV3L7ZG8Nf/m54vluMUEQq7iKiQYNXvspMMnhgUINllpQJ2XVCLCUPs=
X-Received: by 2002:a05:6402:3494:b0:61d:9a4c:d03 with SMTP id
 4fb4d7f45d1cf-61d9a4c0e7cmr11965634a12.13.1756906649669; Wed, 03 Sep 2025
 06:37:29 -0700 (PDT)
MIME-Version: 1.0
References: <20250831104855.45883-1-cn.liweihao@gmail.com> <20250831104855.45883-2-cn.liweihao@gmail.com>
 <42028191.XM6RcZxFsP@phil>
In-Reply-To: <42028191.XM6RcZxFsP@phil>
From: =?UTF-8?B?5p2O57u06LGq?= <cn.liweihao@gmail.com>
Date: Wed, 3 Sep 2025 21:37:25 +0800
X-Gm-Features: Ac12FXx8u4DAg0EdT2iuAXVd9emM64ORc15VdHEwcPQcLyGaOTv-5kYx7yMGYWo
Message-ID: <CAPEOAkTjVN4auBj_CLrt0XN6SqU2=ogLjZDecEwGx00pixJNAw@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] drm/rockchip: dsi: Add support for RK3368
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_063731_454650_66B2A4B4 
X-CRM114-Status: GOOD (  12.28  )
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

SGksCgpIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiDkuo4yMDI15bm0OeaciDPml6Xl
kajkuIkgMjA6MDflhpnpgZPvvJoKPgo+IGFzIGEgZ2VuZXJhbCByZW1hcmssIHRoaXMgcGF0Y2gg
d2lsbCBsaWtlbHkgbmVlZCB0byB3YWl0IGZvciA2LjE4LXJjMSwKPiBiZWNhdXNlIGEgYmlnIHVw
ZGF0ZSBvZiB0aGUgSElXT1JEX01BU0sgbWFjcm9zIHdhcyBtZXJnZWQgWzBdLgo+Cj4gU28gaW50
cm9kdWNpbmcgYSBuZXcgdXNlciBub3cgd291bGQgY2F1c2UgaGF2b2sgOi0pIC4KPgo+IEFsc28g
d2hlbiBzZW5kaW5nIGEgdjIsIHBsZWFzZSBiYXNlIGl0IG9uIHRvcCBvZiB0aGF0IGNoYW5nZXNl
dCwgb3IKPiBqdXN0IHRha2UgbGludXgtbmV4dCBbMV0gYXMgYSBiYXNlLgo+Cj4gQWxzbyBpbiBh
IHNlcGFyYXRlIHBhdGNoLCBwbGVhc2UgYWRkIHRoZSBuZWVkZWQgcmszMzY4IGVudHJ5IHRvIHRo
ZQo+IGRldmljZXRyZWUgYmluZGluZyBbMl0sIHRoaXMgd2lsbCBwYWNpZnkgdGhlIGJvdCB0aGF0
IGNoZWNrZWQgeW91cgo+IGRldmljZXRyZWUgY2hhbmdlcyA6LSkgLgo+Cj4gUGxlYXNlIGFsc28g
bWFrZSBzdXJlIHRoYXQgcmVsZXZhbnQgYWRkaXRpb25zIHRvIHRoZSBsaXN0cyBiZWxvdwo+IGFy
ZSBtYWRlICh0aGUgYmluZGluZyBjb250YWlucyBzcGVjaWZpYyBzZXR0aW5ncyBmb3Igc29tZSBj
b250cm9sbGVycwo+IGZ1cnRlciBiZWxvdykgLgo+CgpHb3QgaXQuIEknbGwgcmViYXNlIG15IHBh
dGNoIHNlcmlhbCB0byBsaW51eC1uZXh0IHRyZWUgYW5kIHRlc3QgaXQKYmVmb3JlIHNlbmRpbmcg
djIsIGFuZCBJIHdpbGwgYWxzbyBhZGQgdGhlIG5lY2Vzc2FyeSBjb21taXQKZGVzY3JpcHRpb24g
YW5kIGRldmljZSB0cmVlIGJpbmRpbmcgaW5mb3JtYXRpb24uCgpZb3VycywKV2VpaGFvCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

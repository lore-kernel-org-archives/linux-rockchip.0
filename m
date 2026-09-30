Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6E06CA5FC5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9/JjBm4y3Ysgt1w7l3779mP+MxyTOT4i4Q6zSCvk5c=; b=GagJbdx1vGBuk9
	8s/Ak5v6ytbONAcgESGNfASvPxeSvuuFe1xUZxBeaB2pfSETapUhhzF31V6Qe2+ig33rLjwB5DxGD
	FN2hD+M7oNYW+XYXm64F7zwSqqLqBTLVynU4Ue2qD6YCuMsXysVC9SEGyg0Xy53PGFzZrkqj8v98T
	ffp79iZ4quIIooubufxvlllei1Zo8RbbqmzEmcfMNx9oY5hxFjSjn4FP0M6Ujon4ROuRcViStUC5t
	HhTiMYD883QVVRASwTNpN8gPpd80Q94DI0YmEG0cQ0hCXJXql00cuPZODc2RE7CyLoEL8nudVXA26
	w3IBuCXI8yllB1bi8GLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBunL-00000006C3f-0dOQ;
	Wed, 30 Sep 2026 13:56:27 +0000
Received: from mail-ej2-x0d.google.com ([2a00:1450:4864:34::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBunD-00000006C29-3S4K
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Sep 2026 13:56:22 +0000
Received: by mail-ej2-x0d.google.com with SMTP id a640c23a62f3a-c2e083d0930so160231166b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2026 06:56:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790776578; cv=none;
        d=google.com; s=arc-20260327;
        b=DxLUWrjvBPiZoNaqR2UvFDLPqol3H6kTAOFLqUaGRROh1f/Qzn1L5pyf0NsEt6PksA
         QV0cWlJfEEfaPkBJUTHUSWZuNTgwkBRSPW98xg6cEBqcskdNUCxr49qVWpoojHuDpfKQ
         QbMEWlHbfpfoQmVX6zO7PakKP6PVmKsTSpkjwLcUdGRpoJntNb1oIeYPXqbA+/O80xrX
         7HnVHW5TV6ZZGiN9Ra+xc1p4FZKJghzRLYXkUfyRRAwSBAUnFKYoVKlNEnjdIcTEZVnM
         WgsKUK9rAL/VfUry70efLrAn3DJ2Qvd3YFqYGT0bN2TSPEASoxfY3B0eemjaZ6U8QXRd
         5TcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5SwTqNdqJfRK/IUxZeFy/sI9epuc4z6THWr/paPSz7A=;
        fh=DOOZTDSlKe9vqLr2HNH/y+Dz09PneXlJf4kOZ1bbqvA=;
        b=ICtylo0ktzQswT88M9ZPioQ0SDBB3vbqeAlKIY2qgwarjn+LLSFcNByTne0L8jkuXk
         u7NrEA7ZUHXKzhLK1WFIa98Y5BSYqMmsvfLWWNURBjGD1m3MGfDCtpSI3EUkjUfWXJZk
         Cue5NLRHgKTnLj5dVRkJCyO6Uz3QgWJSoFL8RPqCxk84qwDEOJszWaq/f30BCiDhYkQQ
         h3gRH5GIcO2+7K2c6ta3N2Xf7EZZIt+r47LNTe0uzoj6X4qeaMJQsvcfVI7UOM8T7CGU
         SbVk581+Na6GNDstWDCj52DinLqoCpEhe4EcPS3JO/o8rKVi24SsYUcG4VHmwaHyOJ7p
         OhsA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790776578; x=1791381378; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5SwTqNdqJfRK/IUxZeFy/sI9epuc4z6THWr/paPSz7A=;
        b=CjUYf3ufMTH0YFi4Mn/05TtaQ4oQq1grKJjDHpW1HPnvL6RkUwU8A1Y5aSsUYisd9/
         +lieUCSdUPmWxcCFdCbukXYDWvwePu9HovLaFuaERDQLug8t+ZBOF26PTo2htit8R68R
         znZnlR2ls6VKumgJeT0xCXB4jpx6t/XtYEEjWgQ7ZOUbU17c+/E8UdICxbH8akW4uNwF
         nb4uAvgMGH9TXw6FNTnWL9MEDu5FGS5Kh3oCi/Sm5GZxEZGbQJ/exPYe4krCeUJUixG7
         S53gubEcfO1j9r13cZnG1f2OQ4C+Br1HRR0oIm2OiYFZIRp37CBiWIAahhCNHQXOFDfR
         AFUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790776578; x=1791381378;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5SwTqNdqJfRK/IUxZeFy/sI9epuc4z6THWr/paPSz7A=;
        b=y7JKV+6Bv82jvAQ8G9haGdkNB7Yax5OiphR00YZuLyktOELQftGJKtttHc/0Yy2KbJ
         wwp8s30zA89PtmlQPP0iL0JzPW4DWmrB8J6/qKzC2xhzoCqe4IjfLDxfYRM4vd+bMGTy
         9NLhsxv71SVMrSX0n/XsVshEplROcHxkh8lthYcwrxZWLwTVntJje0O7mujBs5LaqfiV
         VlqGdzAlhm1cIs0Gi/RUFIJsUtjjVsF8Tr097DDXAXx0CB1OKoWD/wJ4LlfJVwhrwII6
         l0vW9wZ0+qzfPofT4hc6KJfZgy/xddT/xyIebsqhUHySHNW2Kr6lMu9ftIU2doE6U2W8
         d+ag==
X-Forwarded-Encrypted: i=1; AKwUvBz3bBM64uM42viCA0Efi+QvzMh9Tj59wEBwEnTpMzsdDgzvtaqp6sHQgKM+659JqKnS4lKW2m0dh5kosVVKGQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lde+2F5kmol2lL+bhIeI4HuEU66/Q5Ll7p2nW9SJpGM9dELgoi
	EBjHrmvFSQ1pqFjsLgUnbz2cmNziA55VQZwDTnvoP8V3Mbl9vysIjnu/GKJLiX2J9fqsUzicdqy
	lwbRIIQy3VY68XmiZ99oDZahmXCHuI9r1kbVW7NabuWQBH760SmEk
X-Gm-Gg: AYBFou0e4ZNVlmiZcNBBzvS9pA+53aLy8q8vTG54DP9Y0+Jb5JPgBiGhOnFCk0hnYYW
	MIj45zLXAdqOMgUsgSeIjhk8RAQumNagg4D72IYQ319RFcCOwX1gKe5dDdtUNMVb9ReQ+EgwNXe
	IzBXUqmo4GQJUPn+hjpm4HBPhjvsDHJtaTRBfuRlKGNAmEMbgPu3T/upIVIY0Fr3BHRdLU5b+sd
	x8so0csWVBruNjnoFe7W86ACvtjhkaDYCv6d0xWPv6h/z4btxJOX0+PtHQ2j4dOzNZQgawQZKhc
	9pWTsiIswOWvaK2SiktDQRXGstyOsrI77NEzV8NUYNj1kV+UGoAw7HQv77uBXJaDXFWh7ro27OL
	CQ38O6ng7FdCs9TVOp6thdTU=
X-Received: by 2002:a17:907:1c9e:b0:c25:c67d:53cc with SMTP id
 a640c23a62f3a-c2e23cad0fdmr124499966b.8.1790776577897; Wed, 30 Sep 2026
 06:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260929-b4-rk3576-reboot-mode-v2-0-5a34ca72065a@flipper.net>
 <20260929-b4-rk3576-reboot-mode-v2-1-5a34ca72065a@flipper.net> <20260930-hulking-swan-of-enterprise-94e2ae@quoll>
In-Reply-To: <20260930-hulking-swan-of-enterprise-94e2ae@quoll>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 30 Sep 2026 17:56:06 +0400
X-Gm-Features: AclHuK_LS1pgpfgwaTzGiwreXcQZqQphizrD9-WsvYxGfaJqBGmravJ6aAw_W_w
Message-ID: <CAKTNdwG0NBZUez1Yy=jk3rYrD9W97oRMwvpX1qMXwQsP=_LvNw@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: soc: rockchip: add boot ROM download
 boot mode
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Sebastian Reichel <sre@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Shawn Lin <shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_065619_907326_F2F177B6 
X-CRM114-Status: GOOD (  14.78  )
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

T24gV2VkLCBTZXAgMzAsIDIwMjYgYXQgMzo0NuKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIFNlcCAyOSwgMjAyNiBhdCAwMjoyODox
OFBNICswNDAwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IFJvY2tjaGlwIGJvb3QgUk9NcyBl
bnRlciBVU0IgZG93bmxvYWQgbW9kZSwgY29tbW9ubHkga25vd24gYXMgbWFza3JvbSwKPiA+IHdo
ZW4gdGhleSBmaW5kIDB4ZWYwOGE1M2MgaW4gdGhlIHJlZ2lzdGVyIHRoZXkgdGFrZSB0aGUgYm9v
dCBtb2RlIGZyb20uCj4gPiBBZGQgdGhlIG1hZ2ljIHVuZGVyIHRoZSBuYW1lIFUtQm9vdCBhbHJl
YWR5IHVzZXMgZm9yIGl0LCBzbyB0aGF0IGJvYXJkcwo+ID4gYWJsZSB0byByZXF1ZXN0IGl0IGNh
biBkbyBzbyBzeW1ib2xpY2FsbHkuCj4gPgo+ID4gVGVzdGVkLWJ5OiBTaGF3biBMaW4gPHNoYXdu
LmxpbkByb2NrLWNoaXBzLmNvbT4KPgo+IERyb3AsIHlvdSBjYW5ub3QgdGVzdCBpdC4KPgo+IFdo
YXQgaXMgdGhlIHBvaW50IG9mIHN1Y2ggYmxhbmtldCB0YWdzIHdoaWNoIGFyZSBub3QgZXZlbiBh
cHBsaWNhYmxlIHRvCj4gNTAlIG9mIHBhdGNoZXMgaGVyZT8KCkknZCBhcmd1ZSBmb3IgNDAlIDot
RAoKQW55d2F5LCBJIGdldCB5b3VyIHBvaW50LiBJJ2xsIGRyb3AgdGhlIHRhZyBmcm9tIHRoZSBi
aW5kaW5ncyBwYXRjaGVzLApiZWNhdXNlIFNoYXduIHRlc3RlZCBhIGRyaXZlciBpbXBsZW1lbnRp
bmcgdGhlIGJpbmRpbmcgYW5kIGEgRFRTCmltcGxlbWVudGluZyB0aGUgYmluZGluZywgYnV0IGl0
J3MgcGVyaGFwcyBmYXIgZmV0Y2hlZCB0byBpbXBseSB0aGF0CnRoZSB0ZXN0IGNvdmVyZWQgdGhl
IGJpbmRpbmcgY2hhbmdlIGl0c2VsZi4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

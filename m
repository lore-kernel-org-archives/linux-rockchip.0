Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87F81C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Apr 2024 22:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4UOBZHgw2gVIJ4P8c7j6X0cc4XuIziDu2S4A/1qZ67o=; b=FMDCaDzv2MhLa5
	l3dO8QrbAjR2QEywUtZi6r8PhAyWR4bkRMNYCIvrDeTyTgSxvCajUJTaQYJ/zskBqanV9b6IRam3e
	YcMk0e3u6pbSDTXoyPT7mpjcNjnDwFFOMuIDKRBc+3YOXkMbCxK0PIPacUTVPzG6a2PBZkvGcG2Uz
	7jNPQYSDuho4qX2W7/YFCmj5aMjt0pIgztTq3IRfmYe0tzzNf2HujzVg4QbeXPKBUVo4+hHTss7FW
	PGMIpvdF11+ZHnveaw4+3jnP20LuVXh70dH6M7nOrCaFiQC4CIIYL3Dsjihqta7JvzHz10bG8FksV
	aO8YXsgwfxGNKpfV1/Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0UNe-0000000EHHn-3faU;
	Fri, 26 Apr 2024 22:49:22 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0UNb-0000000EHFm-1F3J;
	Fri, 26 Apr 2024 22:49:21 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-41a0979b9aeso17705035e9.3;
        Fri, 26 Apr 2024 15:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714171757; x=1714776557; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3gELCYMwlw5lekkRAUXCfFLxwZONjn+xSsyo+IsnI+Q=;
        b=BliKof3D5EflvnAL9qXXQwutQfBxuPTwHyUOyEskYVa5N+ayTksEvOltNh0veDCI7B
         U+L8bR9zPbzwlH+9K6MC6O8suB7/uS9Gla+5rhNs9kpaIwJ+c19BjvuEbQonxa1XwGo1
         7rJobH/SebdTdi3UvSKdfBqlauookRZ8epGus01bOZtrFNhnlKJ7ajVglZE+MdtrIX6R
         mo9W79z4HdJ+IsDlhcdl0/h2n0ZKsoopkBRA7j4OnyIM1/nStGrfubZ4x7wYZ1uZHrIp
         cs+3Z+1RKquW4osDAwATsRRvwZCMpdq5ZXHJjgx9RcNOtVInnkIc7dnLIb1I3eO5pfrp
         A0Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714171757; x=1714776557;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3gELCYMwlw5lekkRAUXCfFLxwZONjn+xSsyo+IsnI+Q=;
        b=nQiEsBryRuCDIuCa0NtG/TxUEl6svWhvVbL1m/sO0MpqKemerbPejbjO41HUvzfnj0
         ZhlPOvzmA04iv7qaRKT9XRBJQ3qA/5pOmge61Y8q0mVSlZXJmAuUKthgpN2xUFZxNivs
         PAoUUdxtMt7Fn4+0fOTBpFFlukdy+aoKm3hSf7nAlROCq48xgW7aRNgk60HFi9EXABWP
         kNKyTZM59LNHdM5TtisiXEfIeK/twDMJ0XPskfbfE5Nl07xAenhzf2VTDqbl5pbNG0F0
         qdIGxt8/8OWkg/CiVs/nzEVZDZpTD5ndFd5AvkPOMuxSIk7EgrCFtbD7KR314Nyhgiqs
         CVPA==
X-Forwarded-Encrypted: i=1; AJvYcCXZZ7Jyke2JAfv4anwwSIQJikCnhCQwXQuFQhGPyAbxa5MexWQVlBflgcomN33ap5L5oF5qDtCuWqaPSyQOtBpaBoBdXu8DU1LL8XkFK/yGq6i5
X-Gm-Message-State: AOJu0YwUlyHK5Tyw0nxM1LuX6zGBIImJNysSSU3/UbnePTUtq4D5y11+
	iTHIXsf690jfuy/Ua09+XrmXHXwm8aVsK/minF18Cvgdmf/lh3ZCWFK/5Y3PDwsCWGgma4SoKFd
	XrrzbOQXu0klvdNmm7WYQBwNpgwlrC2/bbYM=
X-Google-Smtp-Source: AGHT+IG3hB5cYV4ojVW7vpTtn+otRlZAyGTs5GDugWwTf7Qw3ZF6Jmhhs9nA3W9rplOL/HangiMBlOxvlgCyO2wLLNM=
X-Received: by 2002:a05:600c:350f:b0:418:e5b5:a079 with SMTP id
 h15-20020a05600c350f00b00418e5b5a079mr2834721wmq.10.1714171757212; Fri, 26
 Apr 2024 15:49:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240418035232.35344-2-honyuenkwun@gmail.com> <171346492555.2679631.1826619691769514446.robh@kernel.org>
In-Reply-To: <171346492555.2679631.1826619691769514446.robh@kernel.org>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 26 Apr 2024 17:49:06 -0500
Message-ID: <CALWfF7+APGVjRsRQZ3VE_2dUj5=wzxSmmeFWBtZE-mgtj2KUhw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk3588s-orangepi-5: add USB-C support
To: Rob Herring <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_154919_363240_43692B9B 
X-CRM114-Status: UNSURE (   8.68  )
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

UmVzZW5kIGFzIHBsYWluLXRleHQKCk9uIFRodSwgQXByIDE4LCAyMDI0IGF0IDE6MjnigK9QTSBS
b2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZToKPgo+IE5ldyB3YXJuaW5ncyBydW5u
aW5nICdtYWtlIENIRUNLX0RUQlM9eSByb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTUuZHRiJyBm
b3IgMjAyNDA0MTgwMzUyMzIuMzUzNDQtMi1ob255dWVua3d1bkBnbWFpbC5jb206Cj4KPiBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3JhbmdlcGktNS5kdGI6IGdwaW8tZnVu
YzogbGVkcy1ncGlvOiB7J3JvY2tjaGlwLHBpbnMnOiBbWzAsIDIsIDAsIDIzMV1dLCAncGhhbmRs
ZSc6IFtbMjM5XV19IGlzIG5vdCBvZiB0eXBlICdhcnJheScKPiAgICAgICAgIGZyb20gc2NoZW1h
ICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bpby9ncGlvLWNvbnN1bWVyLnlh
bWwjCj4KClRoYXQgZG9lc24ndCBsb29rIGxpa2UgYSAibmV3IiB3YXJuaW5nLgoKV2hlbiBJIHJ1
biB0aGUgY2hlY2sgb24gdGFnIHY2LjEwLXJvY2tjaGlwLWR0czY0LTEsIHRoZXJlIGlzIGFuCmV4
aXN0aW5nIGVycm9yIGZvciBsZWRzLWdwaW8uCgogIERUQ19DSEsgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTUuZHRiCmFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LmR0YjogL2dwdUBmYjAwMDAwMDoKZmFpbGVkIHRvIG1h
dGNoIGFueSBzY2hlbWEgd2l0aCBjb21wYXRpYmxlOiBbJ3JvY2tjaGlwLHJrMzU4OC1tYWxpJywK
J2FybSxtYWxpLXZhbGhhbGwtY3NmJ10KYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODhzLW9yYW5nZXBpLTUuZHRiOiAvZ3B1QGZiMDAwMDAwOgpmYWlsZWQgdG8gbWF0Y2ggYW55IHNj
aGVtYSB3aXRoIGNvbXBhdGlibGU6IFsncm9ja2NoaXAscmszNTg4LW1hbGknLAonYXJtLG1hbGkt
dmFsaGFsbC1jc2YnXQphcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3Jhbmdl
cGktNS5kdGI6IC9waHlAZmVkODAwMDA6CmZhaWxlZCB0byBtYXRjaCBhbnkgc2NoZW1hIHdpdGgg
Y29tcGF0aWJsZToKWydyb2NrY2hpcCxyazM1ODgtdXNiZHAtcGh5J10KL2hvbWUvamltbXkvbGlu
dXgtcmszNTg4L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01
LmR0YjoKZ3Bpby1mdW5jOiBsZWRzLWdwaW86IHsncm9ja2NoaXAscGlucyc6IFtbMCwgMiwgMCwg
MjIyXV0sICdwaGFuZGxlJzoKW1syMzBdXX0gaXMgbm90IG9mIHR5cGUgJ2FycmF5Jwpmcm9tIHNj
aGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2dwaW8vZ3Bpby1jb25zdW1l
ci55YW1sIwovaG9tZS9qaW1teS9saW51eC1yazM1ODgvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODhzLW9yYW5nZXBpLTUuZHRiOgp2Y2MtM3YzLXNkLXMwLXJlZ3VsYXRvcjogVW5l
dmFsdWF0ZWQgcHJvcGVydGllcyBhcmUgbm90IGFsbG93ZWQKKCdlbmFibGUtYWN0aXZlLWxvdycg
d2FzIHVuZXhwZWN0ZWQpCmZyb20gc2NoZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvcmVndWxhdG9yL2ZpeGVkLXJlZ3VsYXRvci55YW1sIwoKSmltbXkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

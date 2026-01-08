Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B1D1D148AF
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 06:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZpSZy9ROudsgxJxrTSqu7XEOuffPB0EutkT/PKyX+Q=; b=SIoqvgfEYwylim
	VpUXxWczmj4QpaDF1t99encoo+wmz9DF6tL757mK4m6xp0HXNBsd1THTX6h9Q9D+iYuSTHVWogJ9L
	ldSvBhSoJ4PT/iz0tM0bELXpUcbdeNnsoeNF54xnwg8c1IKUXfmQ18qpIJtsmu6jwyzsvN5MyGY85
	cR+AgOrL3qlpKTsZ/9NdzpoATE9O12Sm7bHQ8I+hSnxdUytCiUS9oiHBGTsEKc8wOovEUeznN+gQ6
	shkJ4kbi+us29A25SeEcwxcqFlWMtc1CDIfUH4agN/BXQLJzjKfN1WLI79fPQCaUF3mnzdiZBH9od
	otE4UjNKZk7/kxJKZEzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjtm-0000000G1ss-17I9;
	Thu, 08 Jan 2026 06:53:34 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjtf-0000000G1rv-2dSS
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 06:53:32 +0000
Received: by mail-qt1-x829.google.com with SMTP id d75a77b69052e-4ffbc2b861eso12113831cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 22:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767855206; x=1768460006; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wHCQRjVPh84PufW5VGwtzkWEtebIWEjYRwJnRvd9028=;
        b=I3yDG7FT2GR5bFItryxxijj7nj8b92TZ3mR70jDuq+Lb3KRdtKA9ug0FEwDssQLNG5
         lTwtOsYmJMKqcNekFeFszcFn3Cbf2lmXzZIZ+VH3lyIcJkIeyiislz8AbLn4UfNOLbhH
         uWFCxPqEqGW+fn7Z+rnMPLj9CuUG2BOQJtOWu4jr7LMgA2wd9bTm72+lKM23IdGEMao8
         H0wwnWIwocXdwjbpLc7OCzCmkh8HMCiR19I8vYTu8zXP22RaAPBiw6lZ0RLI3eqmRDzy
         pU7/BTvXRwAKb5EcTENQ5Weawq2Gk4SRRSkAJbmMWnwBjcqabboi2kGUagjkZuI26sgs
         G4wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767855206; x=1768460006;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wHCQRjVPh84PufW5VGwtzkWEtebIWEjYRwJnRvd9028=;
        b=RWjBHXKWrR04OJ1dhkxggLfGZ5V0CLdAx0ZiwrUNZASu/59zXnc6j0cRB3MR1ZIsDx
         Zh1TIH7DNFA0jYxbBV0rqFwzrYLct+rt0iq7rWMa3GtCOLwk+KwzUJdmYvdwEhNn34o0
         XgIwpRA57hs8hTv+mmn4HGbQ6ib/L6Q4tRrlsdPzEtAqZtgp2FLXIpRVU6oaTBasf9Ol
         HDJZpXsMbLRbow+lgUlzMyKgUrhhjTCt3GhThHOo8ZjvItVBzrIPoW5fy1ejxDNI5sIb
         rqNgmahHd6PMrvDaNcItQckHmcrhnHXJ27xgSeZMVI11WzTZIekFueh7qv0ghQzwnOca
         RqfA==
X-Forwarded-Encrypted: i=1; AJvYcCUgo+nYxj1UOTd3RlozXzSycWFHta1CYmt6Pqo5DYjUu9nVGDBuisowIkwWDgAguO5cfzmoqvh88QTMime9Hw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyAdxNe239O1LmDZLvLZk660JHMXOrJpKtUflEEiG5C2QEsBZF4
	YcItpntWd68A2A97y6MKdripjRMgyRTLf56r9B7LePlcXBEbYvPIeK/e9lTRrghLSs+aaAQPGGu
	qLI2NLc2qZ5x2u49S+qn0IcnGEiOdT0s=
X-Gm-Gg: AY/fxX7R6RifDlrP43l75lOr+0CutOdJsgVwf0lda7bDwJ+EvnFpULxxJnQWsjOeacD
	WcK1ZlPevq6gI/rwaVpXPIp1QfCYM6yXJfEEoRywPojUX5VMHo2YXPewctm5/E4FfkamIqr7oAa
	Fs7RN4JZOWoefChU8gZnzIby2jb4EbFDv4mScO0LgIrdVcqdpInMeAUdGUynDqyk6onoIzqwE80
	7aEkBrr5KdYgw4k53WIc2jiI4PN2vZvQ5+v20CUHbvCwEeYr7CG9eGU1MG57tphIsnQHHneGUpp
	/dDqnSvTNkfAlGFpnk5VAYl/aKdJ
X-Google-Smtp-Source: AGHT+IH9Vd164+NcSWABSb3y/jceDxJ9EiANBARK7BIcO0sQPRDFs0KTPHhEmnLU/L5aReuZRIUNPeoHClh200T9PK0=
X-Received: by 2002:a05:622a:8cc:b0:4f1:b742:35c2 with SMTP id
 d75a77b69052e-4ffb490faa7mr73309911cf.22.1767855206267; Wed, 07 Jan 2026
 22:53:26 -0800 (PST)
MIME-Version: 1.0
References: <20260107070322.323-1-kernel@airkyi.com> <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
In-Reply-To: <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 8 Jan 2026 10:53:17 +0400
X-Gm-Features: AQt7F2oeNi9V8CLPU1jzf6Yw7puNDXDoA7a6GK6Ngj9I0de-SnfdObpeo7UYQ3o
Message-ID: <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Andrew Lunn <andrew@lunn.ch>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Jonas Karlman <jonas@kwiboo.se>, John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>, 
	Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	Michael Riesch <michael.riesch@collabora.com>, Peter Robinson <pbrobinson@gmail.com>, 
	Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andy Yan <andy.yan@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_225328_253184_88324D7D 
X-CRM114-Status: GOOD (  11.18  )
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

T24gV2VkLCBKYW4gNywgMjAyNiBhdCAxMDoxOOKAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiA+ICsmZ21hYzAgewo+ID4gKyAgICAgY2xvY2tfaW5fb3V0ID0gIm91
dHB1dCI7Cj4gPiArICAgICBwaHktbW9kZSA9ICJyZ21paS1yeGlkIjsKPgo+IHJnbWlpLXJ4aWQg
aXMgb2RkLiBEb2VzIHRoZSBQQ0IgcmVhbGx5IGhhdmUgYW4gZXh0cmEgbG9uZyBUWCBjbG9jawo+
IGxpbmUsIGJ1dCBhIHNob3J0IFJYIGNsb2NrIGxpbmU/Cj4KPiBUcnkgY2hhbmdpbmcgdGhpcyB0
byByZ21paS1pZCwgYW5kIGRyb3AgdGhlIHR4X2RlbGF5IHByb3BlcnR5LgoKQWN0dWFsbHkgaXQg
d291bGQgYmUgZ3JlYXQgaWYgUm9ja2NoaXAgY291bGQgY2xhcmlmeSB0aGUgZGVsYXkKZHVyYXRp
b24gaW50cm9kdWNlZCBieSBhIHNpbmdsZSBkZWxheSBlbGVtZW50IGluIEdNQUMtSU9NVVggZGVs
YXkKbGluZXMsIHdoaWNoIGFyZSBjb250cm9sbGVkIGluIHRoZSBHTUFDIGRyaXZlciBieSB0aGUg
e3R4LHJ4fV9kZWxheQpwcm9wZXJ0aWVzLiBNYXliZSB3ZSBjb3VsZCB0aGVuIHN3aXRjaCB0byB1
c2luZwp7dHgscnh9X2ludGVybmFsX2RlbGF5X3BzIGZvciBmaW5lLXR1bmluZyB0aGUgZGVsYXlz
IG9uIHRoZSBHTUFDIHNpZGUKYXMgZW52aXNhZ2VkIGluIERUIGJpbmRpbmdzIFsxXSwgYW5kIHVz
ZSBwaHktbW9kZSA9ICJyZ21paS1pZCIKdGhyb3VnaG91dC4gQ2hhb3lpLCBhbnkgY2hhbmNlIHlv
dSBjb3VsZCBhc2sgYXJvdW5kIGluIHlvdXIgaGFyZHdhcmUKdGVhbT8KCkN1cnJlbnRseSB0aG91
Z2ggcmVtb3ZpbmcgdGhlIGRlbGF5cyBhdCBHTUFDIHNpZGUgYWx0b2dldGhlciBjYXVzZXMKdW5z
dGFibGUgbGluayBvcGVyYXRpb24gLSBzZWUgWzJdIGZvciBleGFtcGxlLgoKWzFdIGh0dHBzOi8v
Z2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9ibG9iL21hc3Rlci9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbmV0L2V0aGVybmV0LWNvbnRyb2xsZXIueWFtbCNMMzQyLUwzNDcKWzJd
IGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20vaGFyZHdhcmUtZW5hYmxlbWVudC9yb2NrY2hp
cC0zNTg4L2xpbnV4Ly0vY29tbWl0LzM3MmYzZTlhZTYyY2M2MmNkZjI1NDMzOTFlYTU3YmU2YmI1
NDhhMGMKCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

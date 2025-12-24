Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1D8CE78497
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 21:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vcIOD+CXT2GCHJx0elWURVJrcFmyBjjlMSGoefD9MWU=; b=A9gtHRIlD3pToI
	Ca/fhvED5YWNZGxEUbPmKCIH7j+CseaOj4c3thN2eqDQzUvx2lKC29W5Aui2ud4ZmW86MV05ZoE56
	mWyGj2QkiG0TmlcrVd7kPRDa941Vl9mzS5Z9F6TiyeoISGbnWcIzrHDKbfGqxZGE1xCYC2A9OGyuN
	q0De5pNfuO9nHQvNRCM8Er/M0WSBR4cSHH0carHXF2tD6uEf+WgrZOoJzx8oPsS8XJ2Z9CwHkTaxj
	IeGO3kIxFOxlkF3EuTUfjaPTH4GV7/JJy2/m1pM1L2VPrHfT113zfJNsCtyYLBjGWli9o2ONCYEwG
	gNjbxAF/FwBE/bp3iWqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYWru-0000000HRDA-3A3o;
	Wed, 24 Dec 2025 21:58:06 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYWrp-0000000HRCG-1XSE
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 21:58:03 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-37a34702a20so41291511fa.3
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 13:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766613479; x=1767218279; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BpPhIVPLcl7AlcgaNncZR2f2MLRrtlVGy3ymmkGrT98=;
        b=bnNr/19xsCMqGpPS63PcwQ8AUJKo1whtB45nX3IqTQfX5GHY1AZCIXWtW0dHzAiYXW
         B75Fc/pfM+8IUby/Mx4X7yb6zWvGL6YI12Ooc1RPseekGCujWLatGTGFu5e0qDEKrVVy
         5O0shFrvujq4G2+mitU4wMIPtQ3fF7PSAbSBJthvq88mmCzu1qwzGlWbzuCd8CBb4dMJ
         Wyot2BjmYp7ywCFq3Xm5RSwdLFodn37pfvD+L8zW1+ga1EbnnIjAK9AJb5DmENTKkGLJ
         7rVxf9i6XPgcr/f1FvXBDGcQ4ZC7lLyFuCQ3FfqED18Vq25rXZgd7vhmTJdeGdWoGk24
         dd+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766613479; x=1767218279;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BpPhIVPLcl7AlcgaNncZR2f2MLRrtlVGy3ymmkGrT98=;
        b=LHIFb8Gud8ddMs4+M0t465p+VghnWIs1kOVNQ83lgTrzXOVrmieGURn9sF7HDVrZwS
         N70x+2vFyTJy2m2cUg/4ygTkb3wfnoPyKi69P5kWfhnOzVFhIP4PbhAfi0BT7bUXpIG2
         tDHCLxVDB5X//cEW5q/nkMkSKVA4qUTuPUyR7BN/etsvoAfLjZFoJ18HEhXxCWP3eHf/
         fRKFQPyPsw+OLI1jD+dXCs6nG79OhR/YUR4HxBa3CWLFSUk+HESxCz8032Gq+c5zXQow
         01zuvk5qDGC55mnPXVzmC6U1UGPRG87Kvjug0boYR70kohLMsHcRu6qkm1Vam/J5KfLE
         sFFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhs6ItkrdJc+hD2TxA3FYeSKhCYhvxZXivOhkAr559ChAP+YPf87HvwOQ97je5TedrKTXwBtGYEP0a8QFivw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxEhphJt2YEVCSWFpdS/NUrYYEtdiraIEZDPDpCX8AUjxcZ6lkm
	a6pU8oU9e0BlwbPJ9l5SMmcvLJcniUFzFcY/L41++Z6OyRIN8JFu1ckWEkdwuNxCRRci4Ty62ZZ
	iM3Rnxv+tiK4vjArIwryyEp4J37ga0Aw=
X-Gm-Gg: AY/fxX6JCoAFj9JasZs1+5nkgdxTJ5l0Zz4oIa3Y2Is2M1m6Ul7ICV4IT9rWX+ZRTG0
	ZJc7pGuKdWznXUhUB4wjTnJVGZR/wwc+vX39MB0qxfVRSrnKqi1VEm3H/zOV2YG8F2AQP2KBwmS
	XDn5jYrE02WtbT9Z5JJJexbeJ9GjZgAi9oqTAPIlaQcUdkr/8qL/kFk1kLhXHdYP/mAUxMA1nCw
	vfWZ+y2WrCREFrDFGBBpTrtuXmK2PTPByspdBSbbnsdzpT/88lnO9ZSBm4tzThTsKL3s2dogV0K
	G6TVDEo=
X-Google-Smtp-Source: AGHT+IEkZq/SghbcemDD4gpQJkxuW1kec85kuxDcNZRjtvTDrMQzCzdvYYwzT+2kprBLyKYZnyXIlIOYdRbjndvcfbo=
X-Received: by 2002:a05:651c:549:b0:37b:8f05:13bb with SMTP id
 38308e7fff4ca-38121635cbbmr65292381fa.27.1766613478895; Wed, 24 Dec 2025
 13:57:58 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
 <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com>
 <CAEsQvctSY7-RQEQF2TmJU2qKPZOe9TC5g-7Jat0LQKRHYz_6dQ@mail.gmail.com>
 <CANAwSgQPQUBi6VVb+hZNraMt71vnRpki+YK_at=Luo4aPVtOPg@mail.gmail.com>
 <0afea20b-be22-2404-5a8e-c798ed45f2fd@manjaro.org> <CANAwSgS6UeR4PJnWDxxcQbdH8u_4uNiQxCTugQS35LcPvpiwMQ@mail.gmail.com>
 <648aa5c0-9e58-2404-4250-e83b8a748601@manjaro.org>
In-Reply-To: <648aa5c0-9e58-2404-4250-e83b8a748601@manjaro.org>
From: Geraldo Nascimento <geraldogabriel@gmail.com>
Date: Wed, 24 Dec 2025 18:57:46 -0300
X-Gm-Features: AQt7F2qLlj1sHGE5kS7xlOSGgQLXJ9ioNCl22i1s4n8IwdgKKh2cem-68BhAFek
Message-ID: <CAEsQvct-AyhdOU9xhP0HnN8be+ut=tDBgUt0n3D4TT9ZMXnTbA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent damage
To: Dragan Simic <dsimic@manjaro.org>
Cc: Anand Moon <linux.amoon@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_135801_460136_2B312E86 
X-CRM114-Status: GOOD (  26.95  )
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

T24gV2VkLCBEZWMgMjQsIDIwMjUgYXQgMTo1MuKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IE9uIFdlZG5lc2RheSwgRGVjZW1iZXIgMjQsIDIwMjUgMTc6
MTEgQ0VULCBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gT24g
V2VkLCAyNCBEZWMgMjAyNSBhdCAxODoyNSwgRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5v
cmc+IHdyb3RlOgo+ID4gPiBPbiBXZWRuZXNkYXksIERlY2VtYmVyIDI0LCAyMDI1IDA5OjA0IENF
VCwgQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPiBPbiBX
ZWQsIDI0IERlYyAyMDI1IGF0IDExOjA4LCBHZXJhbGRvIE5hc2NpbWVudG8KPiA+ID4gPiA8Z2Vy
YWxkb2dhYnJpZWxAZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPiA+IE9uIFdlZCwgRGVjIDI0LCAy
MDI1IGF0IDI6MTjigK9BTSBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBnbWFpbC5jb20+IHdyb3Rl
Ogo+ID4gPiA+ID4gPiBPbiBUdWUsIDE4IE5vdiAyMDI1IGF0IDAzOjE3LCBHZXJhbGRvIE5hc2Np
bWVudG8KPiA+ID4gPiA+ID4gPGdlcmFsZG9nYWJyaWVsQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+
ID4gPiA+ID4gU2hhd24gTGluIGZyb20gUm9ja2NoaXAgaGFzIHJlaXRlcmF0ZWQgdGhhdCB0aGVy
ZSBtYXkgYmUgZGFuZ2VyIGluIHVzaW5nCj4gPiA+ID4gPiA+ID4gdGhlaXIgUENJZSB3aXRoIDUu
MCBHVC9zIHNwZWVkcy4gV2FybiB0aGUgdXNlciBpZiB0aGV5IG1ha2UgYSBEVCBjaGFuZ2UKPiA+
ID4gPiA+ID4gPiBmcm9tIHRoZSBkZWZhdWx0IGFuZCBkcml2ZSBhdCAyLjUgR1QvcyBvbmx5LCBl
dmVuIGlmIHRoZSBEVAo+ID4gPiA+ID4gPiA+IG1heC1saW5rLXNwZWVkIHByb3BlcnR5IGlzIGlu
dmFsaWQgb3IgaW5leGlzdGVudC4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IFRoaXMgY2hh
bmdlIGlzIGNvcnJvYm9yYXRlZCBieSBSSzMzOTkgb2ZmaWNpYWwgZGF0YXNoZWV0IFsxXSwgd2hp
Y2gKPiA+ID4gPiA+ID4gPiBzYXlzIG1heGltdW0gbGluayBzcGVlZCBmb3IgdGhpcyBwbGF0Zm9y
bSBpcyAyLjUgR1Qvcy4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IFsxXSBodHRwczovL29w
ZW5zb3VyY2Uucm9jay1jaGlwcy5jb20vaW1hZ2VzL2QvZDcvUm9ja2NoaXBfUkszMzk5X0RhdGFz
aGVldF9WMi4xLTIwMjAwMzIzLnBkZgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFRvIGFjY3Vy
YXRlbHkgZGV0ZXJtaW5lIHRoZSBvcGVyYXRpbmcgc3BlZWQsIHdlIGNhbiBsZXZlcmFnZSB0aGUK
PiA+ID4gPiA+ID4gUENJRV9DTElFTlRfQkFTSUNfU1RBVFVTMC8xIGZpZWxkcy4KPiA+ID4gPiA+
ID4gVGhpcyBwcm92aWRlcyBhIGR5bmFtaWMgbWVjaGFuaXNtIHRvIHJlc29sdmUgdGhlIGlzc3Vl
Lgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRz
L2xpbnV4L2Jsb2IvbWFzdGVyL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1l
cC5jI0w1MzMtTDU5NQo+ID4gPiA+ID4KPiA+ID4gPiA+IG5vdCB0byBwdXQgeW91IGRvd24gYnV0
IEkgdGhpbmsgeW91ciBhcHByb2FjaCBhZGRzIHVubmVjZXNzYXJ5IGNvbXBsZXhpdHkuCj4gPiA+
ID4gPgo+ID4gPiA+ID4gQWxsIEkgY2FyZSByZWFsbHkgaXMgdGhhdCB0aGUgS2VybmVsIFByb2pl
Y3QgaXNuJ3QgYmxhbWVkIGluIHRoZQo+ID4gPiA+ID4gZnV0dXJlIGlmIHNvbWVvbmUgaGFwcGVu
cyB0byBsb3NlIHRoZWlyIGRhdGEuCj4gPiA+ID4gPgo+ID4gPiA+IEFsbG93IHRoZSBoYXJkd2Fy
ZSB0byBuZWdvdGlhdGUgdGhlIGxpbmsgc3BlZWQgYmFzZWQgb24gdGhlCj4gPiA+ID4gYXZhaWxh
YmxlIG51bWJlciBvZiBsYW5lcy4KPiA+ID4gPiBJIGRvbuKAmXQgYW50aWNpcGF0ZSBhbnkgZGF0
YSBsb3NzLCBzaW5jZSBQQ0llIHdpbGwgYXV0b21hdGljYWxseQo+ID4gPiA+IGNvbmZpZ3VyZSB0
aGUgZGV2aWNlIHNwZWVkIHdpdGggbGluayB0cmFpbmluZy4uCj4gPiA+Cj4gPiA+IFBsZWFzZSwg
bm90ZSB0aGF0IHRoaXMgaXNuJ3QgYWJvdXQgcGVyZm9ybWluZyBhdXRvIG5lZ290aWF0aW9uCj4g
PiA+IGFuZCBmb2xsb3dpbmcgaXRzIHJlc3VsdHMsIGJ1dCBhYm91dCAiYXJ0aWZpY2lhbGx5IiBs
aW1pdGluZyB0aGUKPiA+ID4gUENJZSBsaW5rIHNwZWVkIHRvIDIuNSBHVC9zIG9uIFJLMzM5OSwg
YmVjYXVzZSBpdCdzIHdlbGwga25vd24KPiA+ID4gYnkgUm9ja2NoaXAgdGhhdCA1IEdUL3Mgb24g
UkszMzk5J3MgUENJZSBpbnRlcmZhY2UgbWF5IGNhdXNlCj4gPiA+IGlzc3VlcyBhbmQgZGF0YSBj
b3JydXB0aW9uIGluIGNlcnRhaW4gY29ybmVyIGNhc2VzLgo+ID4gPgo+ID4gSXTigJlzIHBvc3Np
YmxlIHRoZSBsaW5rIHNwZWVkIHdhc27igJl0IHByb3Blcmx5IHR1bmVkLiBPbiBteSBvbGRlcgo+
ID4gZGV2ZWxvcG1lbnQgYm9hcmQsCj4gPiB3aGljaCBzdXBwb3J0cyB0aGlzIGNvbmZpZ3VyYXRp
b24sIEkgaGF2ZW7igJl0IG9ic2VydmVkIGFueSBkYXRhIGxvc3MuCj4gPgo+ID4gc3VkbyBsc3Bj
aSAtdnZ2IHwgZ3JlcCBTcGVlZAo+ID4gICAgICAgICAgICAgICAgIExua0NhcDogUG9ydCAjMCwg
U3BlZWQgNUdUL3MsIFdpZHRoIHgxLCBBU1BNIEwxLCBFeGl0Cj4gPiBMYXRlbmN5IEwxIDw4dXMK
PiA+ICAgICAgICAgICAgICAgICBMbmtTdGE6IFNwZWVkIDVHVC9zLCBXaWR0aCB4MQo+ID4gICAg
ICAgICAgICAgICAgIExua0N0bDI6IFRhcmdldCBMaW5rIFNwZWVkOiA1R1QvcywgRW50ZXJDb21w
bGlhbmNlLSBTcGVlZERpcy0KPiA+ICAgICAgICAgICAgICAgICBMbmtDYXA6IFBvcnQgIzEsIFNw
ZWVkIDVHVC9zLCBXaWR0aCB4MSwgQVNQTSBMMHMgTDEsCj4gPiBFeGl0IExhdGVuY3kgTDBzIHVu
bGltaXRlZCwgTDEgPDJ1cwo+ID4gICAgICAgICAgICAgICAgIExua1N0YTogU3BlZWQgNUdUL3Ms
IFdpZHRoIHgxCj4gPiAgICAgICAgICAgICAgICAgTG5rQ3RsMjogVGFyZ2V0IExpbmsgU3BlZWQ6
IDVHVC9zLCBFbnRlckNvbXBsaWFuY2UtIFNwZWVkRGlzLQo+Cj4gTGV0IG1lIGNsYXJpZnksIHBs
ZWFzZS4uLiAgVGhpcyBsaW1pdGF0aW9uIHRvIDIuNSBHVC9zIGNhbWUgc3RyYWlnaHQgZnJvbQo+
IFJvY2tjaGlwIGEgZmV3IHllYXJzIGFnbywgZGVzY3JpYmVkIGJhY2sgdGhlbiBhcyBhbiB1bmRp
c2Nsb3NlZCBlcnJhdGEuCj4gUmVjZW50bHksIHdlIGdvdCBzb21lIG1vcmUgZGV0YWlscyBmcm9t
IFJvY2tjaGlwIHRoYXQgY29uZmlybWVkIDUgR1Qvcwo+IGFzIGhhdmluZyBpc3N1ZXMgaW4gY2Vy
dGFpbiBjb3JuZXIgY2FzZXMgdGhhdCBjYW5ub3QgYmUgdmFsaWRhdGVkIGJ5Cj4gcGVyZm9ybWlu
ZyBzb21lIGZpZWxkIHRlc3RzIG9yIGJ5IG9ic2VydmluZyB0aGUgUENJZSBiZWhhdmlvciB1bmRl
ciBsb2FkLgo+IFRob3NlIGNvcm5lciBjYXNlcyB3aXRoIDUgR1QvcywgYXMgZGVzY3JpYmVkIGJ5
IFJvY2tjaGlwLCBhcmUgcXVpdGUgaGFyZAo+IHRvIHJlYWNoLCBidXQgdGhlIHBvc3NpYmlsaXR5
IGlzIHN0aWxsIHJlYWwuCj4KPiBUbyBzdW0gaXQgdXAsIHllcywgbXVsdGlwbGUgcGVvcGxlIGhh
dmUgcmVwb3J0ZWQgNSBHVC9zIGFzICJ3b3JraW5nIGZvciBtZSIKPiBvbiB0aGVpciBSSzMzOTkt
YmFzZWQgYm9hcmRzIGFuZCBkZXZpY2VzLCBidXQgdGhhdCB1bmZvcnR1bmF0ZWx5IG1lYW5zCj4g
bm90aGluZyBpbiB0aGlzIGNhc2UsIGR1ZSB0byB0aGUgc3BlY2lmaWMgbmF0dXJlIG9mIHRoZSB1
bmRlcmx5aW5nIGlzc3VlLgo+CgpOb3Qgb25seSB0aGF0IGJ1dCB0aGUgYmFuZHdpZHRoIGFjdHVh
bGx5IGVhcm5lZCBpcyB2ZXJ5IHNtYWxsIGR1ZSB0byB0aGUKaW5oZXJlbnQgbGltaXRlZCBpbnRl
cnJ1cHQgcHJvY2Vzc2luZyBjYXBhYmlsaXR5IG9mIGEgc2luZ2xlIGNvcmUsIG1lYW5pbmcKdGhl
IDUgR1QvcyBiYW5kd2lkdGggLyB0cmFuc2ZlciBzcGVlZCBpcyBuZXZlciBmdWxseSB1dGlsaXpl
ZC4KCkl0J3MgYmV0dGVyIHRoYW4gdG8gZm9yY2UgYSBzbGlnaHRseSBsb3dlciBhY3R1YWwgdHJh
bnNmZXIgc3BlZWQgdGhhbiB0byByaXNrCnRoZSBsaWFiaWxpdHkgb2Ygc29tZW9uZSBsb3Npbmcg
dGhlaXIgZGF0YSwgcGVyaW9kLgoKUmVnYXJkcywKR2VyYWxkbyBOYXNjaW1lbnRvCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

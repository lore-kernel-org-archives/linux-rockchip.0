Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3006CCF9EA
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 06:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdYv+hFZONyPQ8tCVETE3ezlAR6FDnjbx2Dm6i4j71Y=; b=dlwlBFG6FjaneP
	FZJ9we2eIorgzQfhVaivsQCzUFrXYfp5Iax8b8LlxbNFPPDwSaUDT6avPBNRg3ZL5OQG5un+kO/s9
	/2aHENQUwMOCWfkoFFB7v+10zimbXuq1yAGfBw4Z7sJhCBUj6yHjxR0Gji3EkXhhHQoQ7MLAhztVR
	1d+VfeX23lxEK/BUgYcyh81z2LBnr6qEUNmfg3DshIuDMt/LziRLcSt1ovL8Un7umO1VfsTtjtSny
	lSlLmG48bVXKKX0sX+VNfhG077QM29jzP0JhOaA2PjGnWrZLiW3qQVE+E5ZJEsBPaGp8X8ouDDrnf
	ztQupPtNYSNCgrXBhO+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vELuj-00000003YG6-0Hjd;
	Thu, 30 Oct 2025 06:13:37 +0000
Received: from mail-yx1-xb12a.google.com ([2607:f8b0:4864:20::b12a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vELuf-00000003YEj-3omT
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Oct 2025 06:13:35 +0000
Received: by mail-yx1-xb12a.google.com with SMTP id 956f58d0204a3-63d97bcb898so1282169d50.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Oct 2025 23:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761804813; x=1762409613; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3rF4eMVmZqF08Uiy4ZG4pr/6crlsmzGRDhN+59lsH5Y=;
        b=TX3xJby++aGCECtaHz4SV/8lfACyE/d27kQBaQg19otCag1NXPP+5/poB6v6w5s25J
         Vk7lz731lcn2tN4eXHsxzJ588yolFrUXmPE+TAt/U+kPXhrNM5g5ytLYvUeIVButn33D
         mbLa+7ZCTecml+U1omK/gXHqCG4qOAT0REM+q3GBQcUbBSLYAtT0lFdekeIMG2rb8lb3
         1fMu3d65hRtTJrK3R5TOVylyb9UkgQghfUl8AMLr+izkZJeOV/bPlGJRnMNwhyTEoAh9
         +Kum1KsTHY6kqOeNx1G0wQMrcqzLNhSbNbY5pZ6ImnOmHqCvQnDKgGUoDDNG04hkbH0r
         6Sww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761804813; x=1762409613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3rF4eMVmZqF08Uiy4ZG4pr/6crlsmzGRDhN+59lsH5Y=;
        b=pkc9c8BEMePHPcS77s1Awgrtp84Mb95GUO1GrLyOP/EIlFxU60rRAmZU8l0mUX0icD
         fohVXnENoc8xGRapmeQnJjDDa1tchpCulL+mRfokNTlxWZ7bVJxwjVMZctutJ0DzxhX/
         SfF1cq5tgOf1QlBauLDok0Fm5T6F0Srgc6c5iuIPJP9uriSwlxWQO3bEx2Ltei1DQQGn
         jOYp3cSzUTpBcOkX9Dgtg64Gsps0HvbisgjQVS5BuTnxag2KjxicIonTqGyXplMUfgRV
         Z35kM9JyAQZFt7FcnjhLdR1h5bqWkDZaZ1Lkx3knsS/aAg3Bo6Tlulxkv1ZOyGIrclHd
         2TpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjpRAyxRd4wB+rjbSCqIoKJmalACnZ+YR7XIffCQsjXRexHveox5yRy5HIFK+e9V0l5Wkoa20R1E41o242fQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxngOAY+QytT5nQOuCEp0Z9Gs82bjYah1zUkqJHC6HfIWa26nyW
	zv6WjcymhJ57EOmRAYbjl0AUKWF6ahLtLIdtHaOyG7fkoW25gJaorgMvR2IzHIruWCC9a6uPSqo
	PBgElet/xdfTsLndNTNNYeOiLYaNm+q4=
X-Gm-Gg: ASbGncvp9dsmic9XoBL6mOMSxPpU59UFUvJEv79weYu9BqDIpyZRsLmB9odS1iRAU6c
	N3VHVnuhg/opBcuS1yMOX0yyE4MBuAVpoFPFmV2PR5gOGgZcqPw9Ut2i24dqWZqpb1aGXVl56sW
	oIDd/3WoXsRRH+l8vNkIdaKD0NWhd1Minn7bnuf1fmis7xLvqHt5WBdDxFDmVgTGc0jwijDtMsd
	x0PzwZOIuoHwtms+UCGyeRAq37ahCgHMIxAxCWZAw8J93zqGOsTKde5Jb8pC3Vx3cQwNg==
X-Google-Smtp-Source: AGHT+IGNukfCrjaksH3Umzb+6A3Q6R4gH1hMz3jAmphM+O0AwBZJ/TjCDOWOuiqRoFX9uHUrvtIVlMk1omsejKcgRqU=
X-Received: by 2002:a05:690e:14c6:b0:63e:2b9e:1462 with SMTP id
 956f58d0204a3-63f829a66admr1708439d50.22.1761804812638; Wed, 29 Oct 2025
 23:13:32 -0700 (PDT)
MIME-Version: 1.0
References: <20251029071435.88-1-kernel@airkyi.com> <20251029071435.88-11-kernel@airkyi.com>
 <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
 <cc8b583a-77ec-4a7f-97cc-2d148f7fee9f@rock-chips.com> <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
 <CAL411-oXfvp-iqN+uRmFHijdmW=1omKwozKOoZ2shxukMHmwPg@mail.gmail.com>
 <C6253E8254C80B0F+839b71d0-1bd8-40b7-9515-7ce4a1eb8673@airkyi.com>
 <CAL411-pULVu4AYybW9oW7kmr4M_kJhdytgBjLPb4y6w_2dj+0w@mail.gmail.com> <7853bbf0-34e5-4880-a2f4-2d73f25cd5e6@rock-chips.com>
In-Reply-To: <7853bbf0-34e5-4880-a2f4-2d73f25cd5e6@rock-chips.com>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Thu, 30 Oct 2025 14:13:21 +0800
X-Gm-Features: AWmQ_bnKM651Al7hBqe9TPet6QHNgDQAymVR1zTv3jbaP-L2YDnRDbwZ2qTLHzg
Message-ID: <CAL411-rFK0o_cxBO_yJFHWurGFKxZGxw6=kpqxRipMetJskTaQ@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Frank Wang <frank.wang@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_231333_964970_E61FD429 
X-CRM114-Status: GOOD (  27.85  )
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

T24gVGh1LCBPY3QgMzAsIDIwMjUgYXQgMTE6MTTigK9BTSBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNo
ZW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gT24gMTAvMzAvMjAyNSAxMDo1MCBBTSwgUGV0
ZXIgQ2hlbiB3cm90ZToKPgo+ID4+PiBPa2F5LiAgTXkgcXVlc3Rpb24gaXMgYmFzaWM6IFVTQjIg
UEhZIHN1cHBsaWVzIERQL0RNLCBhbmQgdGhlIERQL0RNIGlzCj4gPj4+IHNob3J0IGZvciBUeXBl
LUMgY29ubmVjdG9yLAo+ID4+PiBhbmQgbm8gY29udHJvbCBpcyBuZWVkZWQgZm9yIFR5cGUtQyBh
cHBsaWNhdGlvbi4KPiA+Pj4gV2h5IGlzIHRoZXJlIGEgcmVtb3RlLWVuZHBvaW50IGNvbm5lY3Rp
b24gYmV0d2VlbiBVU0IyIFBIWSBhbmQgVHlwZS1DIGNvbm5lY3Rvcj8KPiA+PiAgIEZyb20gdGhl
IHBlcnNwZWN0aXZlIG9mIFR5cGUtQywgdGhpcyBzaG91bGQgbm90IGJlIGFkZGVkLiAgSXMgdGhl
IGFwcHJvYWNoIGluIHYyIGNvcnJlY3QgWzBdID8KPiA+Pgo+ID4gSGF2ZSB5b3UgdHJpZWQgZGVi
dWdnaW5nIGJhc2VkIG9uIHVwc3RyZWFtIGNvZGU/Cj4KPiBZZXMsIEkgaGF2ZSB0cmllZCBib3Ro
IHRoZSB2MiBhbmQgdjggYXBwcm9hY2hlcywgYW5kIGJvdGggY2FuIHdvcmsuCj4KPgo+ID4gdjIg
aXMgY29ycmVjdCwgYnV0IHRoZSBkdHMgbmVlZHMgdG8gaW1wcm92ZS4KPiA+IC0gVGhlcmUgaXMg
YSByZW1vdGUtZW5kcG9pbnQgY29ubmVjdGlvbiBmb3IgVVNCIHJvbGUgc3dpdGNoIGJldHdlZW4K
PiA+IFR5cGUtQyBjb25uZWN0b3IKPiA+IGRldmljZSBhbmQgVVNCIGNvbnRyb2xsZXIgZGV2aWNl
Cj4gPiAtIFRoZXJlIGlzIGEgcmVtb3RlLWVuZHBvaW50IGNvbm5lY3Rpb24gZm9yIG9yaWVudGF0
aW9uIGFuZCBsYW5lIGNvbmZpZ3VyYXRpb24KPiA+IGJldHdlZW4gVHlwZS1DIGNvbm5lY3RvciBk
ZXZpY2UgYW5kIFVTQi9EUCBQSFkgZGV2aWNlLgo+Cj4gSW4gdjggcGF0Y2g1LCB3ZSBpbXBsZW1l
bnRlZCB0eXBlY19tdXggYW5kIHR5cGVjX3N3aXRjaCBpbiB0aGUgVVNCL0RQIFBIWS4KPgo+IEkg
dGhpbmsgdGhlIGN1cnJlbnQgcmVtb3RlLWVuZHBvaW50IGNvbm5lY3Rpb25zIGFyZSBhbGwgY2hp
bGQgbm9kZSBvZiB0aGUgVVNCL0RQIFBIWS4gVGhhdCBpczoKPgo+Cj4gJnRjcGh5MF9kcCB7Cj4g
ICAgICBtb2RlLXN3aXRjaDsKPiAgICAgIC4uLgo+IH07Cj4KPgo+ICZ0Y3BoeTBfdXNiMyB7Cj4g
ICAgICBvcmllbnRhdGlvbi1zd2l0Y2g7Cj4gICAgICAuLi4KPiB9Owo+Cj4KPiBEb2VzIHRoaXMg
c3RpbGwgbmVlZCB0byBiZSBpbXByb3ZlZD8gVGhhbmsgeW91Lgo+CgpIaSBDaGFveWksCgpUaGVy
ZSBhcmUgdHdvIHF1ZXN0aW9ucyBJIGhhdmUgc3RpbGwgbm90IHNlZW4gdGhlIGFuc3dlciB0bzoK
LSBXaHkgVVNCMiBQSFkgaXMgcmVsYXRlZCB0byB5b3VyIFR5cGUtQyBwYXRjaD8KLSBIb3cgZG9l
cyB0aGUgVVNCIHJvbGUgc3dpdGNoIGV2ZW50IG5vdGlmeSB0aGUgVVNCIGNvbnRyb2xsZXIgZHJp
dmVyLCBlZyBkd2MzPwoKUGV0ZXIKPgo+ID4KPiA+IFBldGVyCj4gPgo+ID4+IFswXTogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNzE1MTEyNDU2LjEwMS02LWtlcm5lbEBhaXJreWku
Y29tLwo+ID4+Cj4gPj4gT3IgaXMgdGhlIGZvbGxvd2luZyBhcHByb2FjaCBjb3JyZWN0Pwo+ID4+
Cj4gPj4KPiA+PiBwb3J0QDAgewo+ID4+ICAgICAgIHJlZyA9IDwwPjsKPiA+Pgo+ID4+ICAgICAg
IHVzYmNfaHM6IGVuZHBvaW50IHsKPiA+PiAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZ0
Y3BoeTA+Owo+ID4+ICAgICAgIH07Cj4gPj4gfTsKPiA+Pgo+ID4+IHBvcnRAMSB7Cj4gPj4gICAg
ICAgcmVnID0gPDE+Owo+ID4+Cj4gPj4gICAgICAgdXNiY19zczogZW5kcG9pbnQgewo+ID4+ICAg
ICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnRjcGh5MD47Cj4gPj4gICAgICAgfTsKPiA+PiB9
Owo+ID4+Cj4gPj4gcG9ydEAyIHsKPiA+PiAgICAgICByZWcgPSA8Mj47Cj4gPj4KPiA+PiAgICAg
ICB1c2JjX2RwOiBlbmRwb2ludCB7Cj4gPj4gICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwm
dGNwaHkwX3R5cGVjX2RwPjsKPiA+PiAgICAgICB9Owo+ID4+IH07Cj4gPj4KPiA+Pgo+ID4+Pj4+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwb3J0QDEgewo+ID4+Pj4+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwxPjsKPiA+Pj4+Pj4+
ICsKPiA+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1c2Jj
X3NzOiBlbmRwb2ludCB7Cj4gPj4+Pj4+PiArIHJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwX3R5
cGVjX3NzPjsKPiA+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB9Owo+ID4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4+Pj4+
Pj4gKwo+ID4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwb3J0QDIgewo+
ID4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwy
PjsKPiA+Pj4+Pj4+ICsKPiA+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB1c2JjX2RwOiBlbmRwb2ludCB7Cj4gPj4+Pj4+PiArIHJlbW90ZS1lbmRwb2ludCA9
IDwmdGNwaHkwX3R5cGVjX2RwPjsKPiA+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB9Owo+ID4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB9Owo+ID4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+Pj4+Pj4+ICsgICAg
ICAgICAgICAgICB9Owo+ID4+Pj4+Pj4gKyAgICAgICB9Owo+ID4+Pj4+Pj4gK307Cj4gPj4+Pj4+
PiArCj4gPj4+Pj4+IC4uLi4uCj4gPj4+Pj4+PiAgICAgJnUycGh5MCB7Cj4gPj4+Pj4+PiAgICAg
ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+Pj4+Pj4+ICsKPiA+Pj4+Pj4+ICsgICAgICAgcG9y
dCB7Cj4gPj4+Pj4+PiArICAgICAgICAgICAgICAgdTJwaHkwX3R5cGVjX2hzOiBlbmRwb2ludCB7
Cj4gPj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnVz
YmNfaHM+Owo+ID4+Pj4+Pj4gKyAgICAgICAgICAgICAgIH07Cj4gPj4+Pj4+PiArICAgICAgIH07
Cj4gPj4+Pj4+PiAgICAgfTsKPiA+Pj4+Pj4+Cj4gPj4+Pj4+IFRoZXJlIGlzIG5vIHN3aXRjaCBh
bmQgbXV4LCBob3cgdG8gY28td29yayB3aXRoIFR5cGUtQz8KPiA+Pj4+PiBJIGNoZWNrZWQgdGhl
IHBoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYyBidXQgZGlkIG5vdCBmaW5kIGFueSBzd2l0Y2ggb3Ig
bXV4LiBEb2VzIHRoaXMgbWVhbiB0aGF0IHdlIG5lZWQgdG8gaW1wbGVtZW50IHRoZW0/IFRoYW5r
IHlvdS4KPiA+Pj4+IFdhaXQgYSBtaW51dGUsIGFjdHVhbGx5IHdlIGhhdmUgbXVsdGlwbGUgaGFy
ZHdhcmUgaW50ZXJmYWNlcywgb25lIG9mIHdoaWNoIGlzIFR5cGUtQywgZXZlbnR1YWxseSBjb25u
ZWN0ZWQgdG8gVVNCRFBQSFksIGFuZCB0aGUgb3RoZXIgaXMgbWljcm8tdXNiIGNvbm5lY3RlZCB0
byBVMlBIWS4KPiA+Pj4gSSBhc3N1bWUgdGhlIE1pY3JvLVVTQiBjb25uZWN0b3IgZG9lcyBub3Qg
dXNlIFR5cGUtQy9QRCBJQywgaXMgaXQKPiA+Pj4gcmlnaHQ/IERvZXMgaXQgcmVsYXRlIHRvIHRo
aXMgcGF0Y2g/Cj4gPj4+Cj4gPj4+IEJlc3QgcmVnYXJkcywKPiA+Pj4gUGV0ZXIKPiA+Pj4KPiA+
Cj4gLS0KPiBCZXN0LAo+IENoYW95aQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

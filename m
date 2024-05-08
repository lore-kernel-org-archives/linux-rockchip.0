Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45CAFC04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 12:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDiLVMJBa3hXDp9o/h7LvdBESjqHbKZPaXTlHNhu2zc=; b=a5MHxCnk8PGc3l
	YNMaq30P1uWiuDxR4wkBXPFikxPldA5BtqxbNEzZkkWDGmXNe6NbJePB0PK7aYqpnB3tkQ8K3H4V6
	xXcKfSthfnuD+aLZOuDzZj938fwn6px5Qt77ZLhe98Yen3g5ZOVa7an6DDPNSy2DTdmY7NZpaBpcY
	6Jqun5JKtEgkXREy2KrHPJceHEbwHch7kWqgRJ6GrMZuwMn+3fah6MDyGBukFr/fNJ8SbX9t0o+LW
	LrtCCaOGebGGB0nUq9y377hjdaR9Ck9JDuLavrPY6gWnYV+CXNUlxdSck4BCRK3kjIhuoVrhSnVPV
	PdZw2D07fEIWXC8qiKEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4gRn-0000000FRRK-2o64;
	Wed, 08 May 2024 12:30:59 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4gRi-0000000FRPh-0wjJ;
	Wed, 08 May 2024 12:30:58 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a59ece5e18bso516650066b.2;
        Wed, 08 May 2024 05:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715171452; x=1715776252; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pcm2/YfLi6B6QSCpP7qXLx5hvzXORG9bOF9gqBdKX9Q=;
        b=hwNGDwmjv2ZgKNkY3JLzhnDuVwGdnQXoJRoXEbf5+PhoIFHZbdV3Jz7qjOA22Pr/Nr
         IIQEwUxmGAwrnmQ73tGeNvCWhqLdHh9zca/wHKJvPERCr4OLYMLivLwRZ3hwE+EgHxDV
         DCIQokSeTKMnE/707ILAZPJEz+xmCRUcdhyQnu2D8w2hBWLesozwlOpymwxJxxzn0tD3
         Sp2mKEpJlB4A+I4Wyt5JsyCE67RkcD2gxSAGCMq+jQVDW/GV7uzDYMrSblsyNdq0bHtt
         V2KGZS6+cWY+GasOxVbxxh9s/zK3arYwtQA+Dg2UYOLJj7xZVFuzSJZ0nYgRqysZrh3x
         DW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715171452; x=1715776252;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pcm2/YfLi6B6QSCpP7qXLx5hvzXORG9bOF9gqBdKX9Q=;
        b=kuSTMQEzpNNfWofUeeOXWSFYgSUxa/Khuw1/1qvcW/AJKwFeZkfC5z6oQXLTYTW+iB
         Is+km86bnADI89iaOum/jl5mJIfuJC1GpLwwuYHO1+Jv6Rb1WdV9TECaeNN5Gy5AjmuH
         HPhjm4v3tgkOPv52H1qcnZjyZAdyA9utMjArwF0/C/EGBU/R2Eoyv7HQRP2r68qngQIc
         daSSUCx00GLFdGM6UXkcT7xLKs22mG1q28ZSxlS0fj8Z5JiZH+kgkWmxF6Z31tdyAKlt
         o0EI3LradHhREexp00XFTjwCeNbvH23wa/w6u2So+Q5VBCX0Pg1lOVGt1sdEu9EuFtX4
         XibQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjMgO8pbtBq1hKbrLVpy4kuaS/H/dfFHOMSyRd8lNDtSzbd/oI2H/JGkltNwguDNMtrJ+6b9C2hoN0vwNeqRoyuFfvspY6YXs3HJ5bpcMRDaUJadU8ZVBNdZn12PG4zSsok0ASg/wo3jsVIQv+XoUYeaweifUmGq8=
X-Gm-Message-State: AOJu0YxPtpUUnJuEOgw4eRLy2lgFqWmhDKV6E7OlLpZgOmIYXL6JKYaU
	bALghP3QeuebYgZNTXVhazwaN0j+Wpk1j75HiRS/Ipq3D+HiwEV7/qSoSj/nzuxIrXtBwDssyDj
	MSoCgfwkuvAKm/cHs4qLczfMw6Kg=
X-Google-Smtp-Source: AGHT+IGl8X9MaGsulmww8nCeO5gSLtUDnL5MWBFljZFyxkO8eM+qiXDpQYJ8Z0NXgOWoOT66jo3S89FPe5HQd5NxLRM=
X-Received: by 2002:a17:906:a41a:b0:a59:ced4:25b0 with SMTP id
 a640c23a62f3a-a59fb95595fmr200267766b.34.1715171451873; Wed, 08 May 2024
 05:30:51 -0700 (PDT)
MIME-Version: 1.0
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com> <2543817.5xW6y1K4kI@bagend>
 <CABjd4Yw-JA5=SfcgtVNYZN37hFbqf14Ut1yHTSz1YZiZ3NQ-pw@mail.gmail.com>
 <CANAwSgTU7UF_RaNnVSZR7SehQqC7Eo6D=JqT11gN7jK2diN_Ug@mail.gmail.com> <a1fb157c88f420cd85d56edff2a4d85b@manjaro.org>
In-Reply-To: <a1fb157c88f420cd85d56edff2a4d85b@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 8 May 2024 16:30:40 +0400
Message-ID: <CABjd4YwHGYRrpMFn1uoQMRh3Tp4-py111tZiCGgf7afWxNGXnQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] arm64: dts: rockchip: enable thermal management on
 all RK3588 boards
To: Dragan Simic <dsimic@manjaro.org>
Cc: Anand Moon <linux.amoon@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_053054_325700_BD9C3CE0 
X-CRM114-Status: GOOD (  41.85  )
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

SGVsbG8gRHJhZ2FuIGFuZCBBbmFuZCwKCk9uIFdlZCwgTWF5IDgsIDIwMjQgYXQgMzo0NuKAr1BN
IERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIEFuYW5k
LAo+Cj4gT24gMjAyNC0wNS0wOCAxMzo0MCwgQW5hbmQgTW9vbiB3cm90ZToKPiA+IE9uIE1vbiwg
NiBNYXkgMjAyNCBhdCAxODoyNCwgQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPiB3
cm90ZToKPiA+PiBPbiBNb24sIE1heSA2LCAyMDI0IGF0IDQ6MjnigK9QTSBEaWVkZXJpayBkZSBI
YWFzCj4gPj4gPGRpZGkuZGViaWFuQGNrbm93Lm9yZz4gd3JvdGU6Cj4gPj4gPiBPbiBNb25kYXks
IDYgTWF5IDIwMjQgMTE6MzY6MzMgQ0VTVCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+PiA+ID4g
VGhpcyBlbmFibGVzIHRoZSBvbi1jaGlwIHRoZXJtYWwgbW9uaXRvcmluZyBzZW5zb3IgKFRTQURD
KSBvbiBhbGwKPiA+PiA+ID4gUkszNTg4KHMpIGJvYXJkcyB0aGF0IGRvbid0IGhhdmUgaXQgZW5h
YmxlZCB5ZXQuIEl0IHByb3ZpZGVzIHRlbXBlcmF0dXJlCj4gPj4gPiA+IG1vbml0b3JpbmcgZm9y
IHRoZSBTb0MgYW5kIGVtZXJnZW5jeSB0aGVybWFsIHNodXRkb3ducywgYW5kIGlzIHRodXMKPiA+
PiA+ID4gaW1wb3J0YW50IHRvIGhhdmUgaW4gcGxhY2UgYmVmb3JlIENQVSBEVkZTIGlzIGVuYWJs
ZWQsIGFzIGhpZ2ggQ1BVCj4gPj4gPiA+IG9wZXJhdGluZyBwZXJmb3JtYW5jZSBwb2ludHMgY2Fu
IG92ZXJoZWF0IHRoZSBjaGlwIHF1aWNrbHkgaW4gdGhlCj4gPj4gPiA+IGFic2VuY2Ugb2YgdGhl
cm1hbCBtYW5hZ2VtZW50Lgo+ID4+ID4gPgo+ID4+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkg
Q2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+Cj4gPj4gPiA+IC0tLQo+ID4+ID4gPiAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgICAgICAgICAgICAgICB8
IDQgKysrKwo+ID4+ID4gPiAgOCBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspCj4gPj4g
PiA+Cj4gPj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1yb2NrLTViLmR0cwo+ID4+ID4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LXJvY2stNWIuZHRzIGluZGV4Cj4gPj4gPiA+IGI4ZTE1Yjc2YThhNi4uMjFlOTZjMjEy
ZGQ4IDEwMDY0NAo+ID4+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1yb2NrLTViLmR0cwo+ID4+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ID4+ID4gPiBAQCAtNzQyLDYgKzc0MiwxMCBAQCByZWd1
bGF0b3Itc3RhdGUtbWVtIHsKPiA+PiA+ID4gICAgICAgfTsKPiA+PiA+ID4gIH07Cj4gPj4gPiA+
Cj4gPj4gPiA+ICsmdHNhZGMgewo+ID4+ID4gPiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPj4g
PiA+ICt9Owo+ID4+ID4gPiArCj4gPj4gPiA+ICAmdWFydDIgewo+ID4+ID4gPiAgICAgICBwaW5j
dHJsLTAgPSA8JnVhcnQybTBfeGZlcj47Cj4gPj4gPiA+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsK
PiA+PiA+Cj4gPj4gPiBJIGJ1aWx0IGEga2VybmVsIHdpdGggdjMgb2YgeW91ciBwYXRjaCBzZXQg
YW5kIHNvbWVvbmUgdGVzdGVkIGl0IG9uIGEgUk9DSyA1Qgo+ID4+ID4gJ2ZvciBtZScgYW5kIGl0
IGhhZCB0aGUgZm9sbG93aW5nIGxpbmUgaW4gZG1lc2c6Cj4gPj4gPgo+ID4+ID4gcm9ja2NoaXAt
dGhlcm1hbCBmZWMwMDAwMC50c2FkYzogTWlzc2luZyByb2NrY2hpcCxncmYgcHJvcGVydHkKPiA+
PiA+Cj4gPj4gPiBJJ20gZ3Vlc3NpbmcgdGhhdCB0dXJuZWQgdXAgZHVlIHRvIGVuYWJsaW5nIHRz
YWRjLCBidXQgKGFsc28pIGluIHY0IEkgZGlkbid0Cj4gPj4gPiBzZWUgYSBjaGFuZ2Ugd3J0ICJy
b2NrY2hpcCxncmYiLgo+ID4+ID4gU2hvdWxkIHRoYXQgYmUgZG9uZT8gKGFza2luZzsgSSBkb24n
dCBrbm93KQo+ID4+Cj4gPj4gSSdtIGdldHRpbmcgdGhlIHNhbWUuIE5laXRoZXIgdGhlIG1haW5s
aW5lIFRTQURDIGRyaXZlciBbMV0sIG5vciB0aGUKPiA+PiBkb3duc3RyZWFtIG9uZSBbMl0gc2Vl
bXMgdG8gdXNlIHRoZSBncmYgcG9pbnRlciBvbiBSSzM1ODggYXQgYWxsLiBJdAo+ID4+IHN0aWxs
IHdvcmtzIGluIHNwaXRlIG9mIHRoYXQgd2FybmluZywgYWx0aG91Z2ggSSBjYW4ndCBzZWUgaG93
IChvciBpZikKPiA+PiBpdCBjb25maWd1cmVzIHRoZSByZXNldCBtZWNoYW5pc20gd2l0aG91dCB0
aG9zZSBHUkYgcmVnaXN0ZXJzLgo+ID4+Cj4gPj4gQmVzdCByZWdhcmRzLAo+ID4+IEFsZXhleQo+
ID4+Cj4gPj4gWzFdCj4gPj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy90aGVybWFsL3JvY2tjaGlw
X3RoZXJtYWwuYyNuODE4Cj4gPj4gWzJdCj4gPj4gaHR0cHM6Ly9naXRodWIuY29tL3JhZHhhL2tl
cm5lbC9ibG9iL3N0YWJsZS01LjEwLXJvY2s1L2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVy
bWFsLmMjTDk2MQo+ID4+Cj4gPgo+ID4gSWYgdGhlIGZvbGxvd2luZyBjaGFuZ2VzIGZpeCB0aGUg
d2FybmluZy4KPiA+Cj4gPiBDaGVja2luZyB0aGUgUm9ja2NoaXAgUkszNTg4IFRSTSBWMS4wLVBh
cnQxLTIwMjIwMzA5LnBkZgo+ID4gUE1VMUdSRl9TT0NfQ09OMyB3aGljaCBoYXMgdHNhZGNfc2h1
dF9yZXNldF90cmlnZ2VyX2VuIGJpdAo+ID4gdG8gY29udHJvbCB0aGUgRW5hYmxlIFRTQURDIHNo
dXQgcmVzZXQgdHJpZ2dlciBmb3IgRERSIGZhaWwgc2FmZS4KPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiA+IGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiA+IGluZGV4IDg1YzI1ZDVlZmRhZC4u
NTQ5MGE0NGUwOTNlIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODhzLmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4cy5kdHNpCj4gPiBAQCAtMjY2Miw2ICsyNjYyLDcgQEAgdHNhZGM6IHRzYWRjQGZlYzAwMDAw
IHsKPiA+ICAgICAgICAgICAgICAgICByb2NrY2hpcCxody10c2h1dC10ZW1wID0gPDEyMDAwMD47
Cj4gPiAgICAgICAgICAgICAgICAgcm9ja2NoaXAsaHctdHNodXQtbW9kZSA9IDwwPjsgLyogdHNo
dXQgbW9kZSAwOkNSVQo+ID4gMTpHUElPICovCj4gPiAgICAgICAgICAgICAgICAgcm9ja2NoaXAs
aHctdHNodXQtcG9sYXJpdHkgPSA8MD47IC8qIHRzaHV0IHBvbGFyaXR5Cj4gPiAwOkxPVyAxOkhJ
R0ggKi8KPiA+ICsgICAgICAgICAgICAgICByb2NrY2hpcCxwbXUgPSA8JnBtdTFncmY+Owo+ID4g
ICAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdHNhZGNfZ3Bpb19mdW5jPjsKPiA+ICAgICAg
ICAgICAgICAgICBwaW5jdHJsLTEgPSA8JnRzYWRjX3NodXQ+Owo+ID4gICAgICAgICAgICAgICAg
IHBpbmN0cmwtbmFtZXMgPSAiZ3BpbyIsICJvdHBvdXQiOwo+Cj4gQmFzaWNhbGx5LCB0aGUgcm9j
a2NoaXBfdGhlcm1hbCBkcml2ZXIgZG9lc24ndCB1c2UgR1JGIGF0IGFsbCBvbgo+IHRoZSBSSzM1
ODgocyksIHNvIHZpcnR1YWxseSBhbnkgdmFsdWUgc3BlY2lmaWVkIGFzICJyb2NrY2hpcCxwbXUi
Cj4gY2FuIGVsaW1pbmF0ZSB0aGUgd2FybmluZy4KClRvIG1lLCBzcGVjaWZ5aW5nIGFuIGFyYml0
cmFyeSBHUkYgaW4gdGhlIGRldmljZSB0cmVlIGp1c3QgdG8gc2lsZW5jZQphIHdhcm5pbmcgdGhh
dCB0aGUgY3VycmVudCBkcml2ZXIgZW1pdHMgc291bmRzIGJhZC4gSWYgdGhlIEdSRiBpcyBub3QK
bmVlZGVkIGZvciBUU0FEQyBpbml0aWFsaXphdGlvbiBvbiBSSzM1ODgsIHRoZW4gaXQgc2hvdWxk
IG5vdCBiZSBpbgp0aGUgZGV2aWNlIHRyZWUgKGFuZCBpdCBsb29rcyBsaWtlIHRoZSBjYXNlIGhl
cmUpIC0gb3RoZXJ3aXNlIHRoZQpkZXZpY2UgdHJlZSBjZWFzZXMgdG8gYmUgYSB0cnV0aGZ1bCBk
ZXNjcmlwdGlvbiBvZiB0aGUgaGFyZHdhcmUuCgpJJ20gbm90IHN1cmUgaWYgd2UgbmVlZCB0aGF0
ICJERFIgZmFpbCBzYWZlIiBsb2dpYyBtZW50aW9uZWQgaW4gdGhlClRSTSB0aGF0IEFuYW5kIHF1
b3RlZCwgZ2l2ZW4gdGhhdCBuZWl0aGVyIFJvY2tjaGlwIGRvd25zdHJlYW0gbm9yCmN1cnJlbnQg
bWFpbmxpbmUgZHJpdmVyIGltcGxlbWVudCBpdCwgYW5kIGZ1cnRoZXJtb3JlIG5vbmUgb2YgdGhl
Cm90aGVyIFNvQyByZXZpc2lvbnMgc3VwcG9ydGVkIGJ5IHRoZSBkcml2ZXIgbWVudGlvbiBpdC4g
SWYgd2UgZG8gaW4KZmFjdCBuZWVkIGl0LCB3ZSBzaG91bGQgcHJvYmFibHkgZmlyc3QgdGVzdCBp
dCBhbG9uZyB3aXRoIHJlc3BlY3RpdmUKZHJpdmVyIGNvZGUgYmVmb3JlIGNvbW1pdHRpbmcgdG8g
YW4gdXBzdHJlYW0gRFQgYW5kIHRodXMgbWFraW5nIGl0CnBhcnQgb2YgdGhlIEFCSS4KCklNTyB0
aGlzIGlzIG1vcmUgb2YgYSBkcml2ZXIgaXNzdWUgdGhhbiBhIGRldmljZSB0cmVlIGlzc3VlOiBt
YXliZSBhCnNtYWxsIHBhdGNoIHRvIGRlbW90ZSB0aGlzIHdhcm5pbmcgdG8gYW4gaW5mbyBtZXNz
YWdlIHdvdWxkIGJlIGJldHRlcj8KSXQncyBoYXJtbGVzcyBhbnl3YXkuCgpCZXN0IHJlZ2FyZHMs
CkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

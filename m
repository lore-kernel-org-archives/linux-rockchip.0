Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A00C0C04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 11:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQURyghJarTEnKEozLjZe35F1kAE8KeCjoMX3/K50gs=; b=i1wTeAYUR2dwXP
	WBKg15T4PiWolertfUIUU7fypITwzKw2iziijjUEMxROdjWi9DHvPZs10WSxaVq/vTMnGwexgy949
	9PMDlCPst0qBwYoWRm6Jl7+aROhqYbiMyea1/84YhvGqBmXSaNFWEEK4fxCX81iOR+W+bX0zJo3xH
	xmpMsm3w8fstspCx6sbrbaGyrvLN1meuuwFyJdWO69VAG3X5ktTEaTb6M4bMCyDGuBIB2ucAuZKhc
	ZuxI36Xflxpjprn9XxFzu7xRajx5KmLrGfi3bRjyEmpRYvKRkgb9GzNyN91IPefRDsNvq+Lt9hqac
	ZKKiOgfMGpeum5K22g2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4fev-0000000FI4S-3c58;
	Wed, 08 May 2024 11:40:29 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4fer-0000000FI2o-1tip;
	Wed, 08 May 2024 11:40:27 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5b203c9933dso2267151eaf.3;
        Wed, 08 May 2024 04:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715168422; x=1715773222; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IOIzh5hay1VG+baSkhj40F76B94Bx+2N06xZr/PBSXw=;
        b=HFVVk3QaQ3wKev6IOkVVwgaGoGSAgCY3yC59+EkAjWnO6GVB/3GxzVs58FY5dYaGBW
         7LVncRmkx3sPA0191WOjrQeZMTqiJA7eJwTAig1pJqgrguGzIsdbTPvd0K3Q1NcbVhu1
         MLjG9ayLU1tAUWVi1NjGOap1J1BvoX4WL5bvH/knhdXeOw3Zer5TivL8ZkUBtYUMJgaZ
         0Qfe7MXjlky+OqZCx4FV7LBAU0tzwTk2gMIZruAc9DtYD6QWZ2i9xGGpvtgAhalGTLZm
         MgYAQfdVms1Fo3LyYv3ThvxzDPHAiwx3FFz5RGa4lOaM13tvcfZZIcuYQcndNUzQwBsG
         jeUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715168422; x=1715773222;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IOIzh5hay1VG+baSkhj40F76B94Bx+2N06xZr/PBSXw=;
        b=wdSa9IzLEG25U/q8AwlzBGaDG4UPgu9LtX/gDtReUqgOY45PjyfDC7RO2ffRPiGFbo
         cM6uus14050+uXmN4su38XcB/8lT1VsmiZKzJIJvYJoF7NOnvOcJrd+tkx66R71W2NCH
         o28+09ctI8hcyDmTX/gaL3QrYLtE3Zs4vKNHIygWwGV+5H6nhWPUJT3daLiegX1mSaCR
         WFGvknri/I2+PWvuZiHZDB+qtb8dO6JMq/RCu54dmHi/EwJmzzWEzimoCUZs9TTNQ7Uo
         CoruanCMTfHv9e9SFKlbn2EiJm7rZn7nOcKsgCdbDTTMHa7/N6MIV/Mvgr6WtmSfEcfx
         /BKg==
X-Forwarded-Encrypted: i=1; AJvYcCVTNFYl/bAk0/YfPSN7zaLw+AOgocHzkLRxSJh7o3mMCg3YZjA9y7UQYwc9c3uVrhQJDSWFlaEjwe2NA2kPDGo2O/8okXE4XWmWnUXoXtZqZyVNv+kmoFNnJYiZXgiiV581y7j483jaAfyufwPOBnwf6buTNim9nG4=
X-Gm-Message-State: AOJu0YyPzAlPrIyvnQs7pRtOQvGwiOHoSAg1iU/rP4z132LdwfVFITip
	I7s+s/hgkAE7iZ9rt4COFDuGbu+t2FYsKZAN1JnInOnzRxhzkb3KmQ6K/55Fw3b5hikGAmQ2LHw
	+s8Luaerxk0Ky6jae7mqUf7+uRdg=
X-Google-Smtp-Source: AGHT+IHmLv/TAPoHKLua1wTR21SZpjGzAQp6CSeJ56q1NNnw1JuHDSs+rZx7mIDbkUq4KHNnaSNxsszq9ha12ZE1pgk=
X-Received: by 2002:a4a:58c8:0:b0:5b1:ff93:de40 with SMTP id
 006d021491bc7-5b24d60d1c7mr2278127eaf.5.1715168422279; Wed, 08 May 2024
 04:40:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com> <2543817.5xW6y1K4kI@bagend>
 <CABjd4Yw-JA5=SfcgtVNYZN37hFbqf14Ut1yHTSz1YZiZ3NQ-pw@mail.gmail.com>
In-Reply-To: <CABjd4Yw-JA5=SfcgtVNYZN37hFbqf14Ut1yHTSz1YZiZ3NQ-pw@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 8 May 2024 17:10:05 +0530
Message-ID: <CANAwSgTU7UF_RaNnVSZR7SehQqC7Eo6D=JqT11gN7jK2diN_Ug@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] arm64: dts: rockchip: enable thermal management on
 all RK3588 boards
To: Alexey Charkov <alchark@gmail.com>
Cc: Diederik de Haas <didi.debian@cknow.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_044025_517890_1D165901 
X-CRM114-Status: GOOD (  33.46  )
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

SGkgQWxleGV5LAoKT24gTW9uLCA2IE1heSAyMDI0IGF0IDE4OjI0LCBBbGV4ZXkgQ2hhcmtvdiA8
YWxjaGFya0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGVsbG8gRGllZGVyaWssCj4KPiBPbiBNb24s
IE1heSA2LCAyMDI0IGF0IDQ6MjnigK9QTSBEaWVkZXJpayBkZSBIYWFzIDxkaWRpLmRlYmlhbkBj
a25vdy5vcmc+IHdyb3RlOgo+ID4KPiA+IEhpLAo+ID4KPiA+IE9uIE1vbmRheSwgNiBNYXkgMjAy
NCAxMTozNjozMyBDRVNUIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gPiBUaGlzIGVuYWJsZXMg
dGhlIG9uLWNoaXAgdGhlcm1hbCBtb25pdG9yaW5nIHNlbnNvciAoVFNBREMpIG9uIGFsbAo+ID4g
PiBSSzM1ODgocykgYm9hcmRzIHRoYXQgZG9uJ3QgaGF2ZSBpdCBlbmFibGVkIHlldC4gSXQgcHJv
dmlkZXMgdGVtcGVyYXR1cmUKPiA+ID4gbW9uaXRvcmluZyBmb3IgdGhlIFNvQyBhbmQgZW1lcmdl
bmN5IHRoZXJtYWwgc2h1dGRvd25zLCBhbmQgaXMgdGh1cwo+ID4gPiBpbXBvcnRhbnQgdG8gaGF2
ZSBpbiBwbGFjZSBiZWZvcmUgQ1BVIERWRlMgaXMgZW5hYmxlZCwgYXMgaGlnaCBDUFUKPiA+ID4g
b3BlcmF0aW5nIHBlcmZvcm1hbmNlIHBvaW50cyBjYW4gb3ZlcmhlYXQgdGhlIGNoaXAgcXVpY2ts
eSBpbiB0aGUKPiA+ID4gYWJzZW5jZSBvZiB0aGVybWFsIG1hbmFnZW1lbnQuCj4gPiA+Cj4gPiA+
IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiA+ID4g
LS0tCj4gPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0
cyAgICAgICAgICAgICAgIHwgNCArKysrCj4gPiA+ICA4IGZpbGVzIGNoYW5nZWQsIDMyIGluc2Vy
dGlvbnMoKykKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODgtcm9jay01Yi5kdHMgaW5kZXgKPiA+ID4gYjhlMTViNzZhOGE2Li4yMWU5NmMy
MTJkZDggMTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LXJvY2stNWIuZHRzCj4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LXJvY2stNWIuZHRzCj4gPiA+IEBAIC03NDIsNiArNzQyLDEwIEBAIHJlZ3VsYXRvci1z
dGF0ZS1tZW0gewo+ID4gPiAgICAgICB9Owo+ID4gPiAgfTsKPiA+ID4KPiA+ID4gKyZ0c2FkYyB7
Cj4gPiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ID4gK307Cj4gPiA+ICsKPiA+ID4gICZ1
YXJ0MiB7Cj4gPiA+ICAgICAgIHBpbmN0cmwtMCA9IDwmdWFydDJtMF94ZmVyPjsKPiA+ID4gICAg
ICAgc3RhdHVzID0gIm9rYXkiOwo+ID4KPiA+IEkgYnVpbHQgYSBrZXJuZWwgd2l0aCB2MyBvZiB5
b3VyIHBhdGNoIHNldCBhbmQgc29tZW9uZSB0ZXN0ZWQgaXQgb24gYSBST0NLIDVCCj4gPiAnZm9y
IG1lJyBhbmQgaXQgaGFkIHRoZSBmb2xsb3dpbmcgbGluZSBpbiBkbWVzZzoKPiA+Cj4gPiByb2Nr
Y2hpcC10aGVybWFsIGZlYzAwMDAwLnRzYWRjOiBNaXNzaW5nIHJvY2tjaGlwLGdyZiBwcm9wZXJ0
eQo+ID4KPiA+IEknbSBndWVzc2luZyB0aGF0IHR1cm5lZCB1cCBkdWUgdG8gZW5hYmxpbmcgdHNh
ZGMsIGJ1dCAoYWxzbykgaW4gdjQgSSBkaWRuJ3QKPiA+IHNlZSBhIGNoYW5nZSB3cnQgInJvY2tj
aGlwLGdyZiIuCj4gPiBTaG91bGQgdGhhdCBiZSBkb25lPyAoYXNraW5nOyBJIGRvbid0IGtub3cp
Cj4KPiBJJ20gZ2V0dGluZyB0aGUgc2FtZS4gTmVpdGhlciB0aGUgbWFpbmxpbmUgVFNBREMgZHJp
dmVyIFsxXSwgbm9yIHRoZQo+IGRvd25zdHJlYW0gb25lIFsyXSBzZWVtcyB0byB1c2UgdGhlIGdy
ZiBwb2ludGVyIG9uIFJLMzU4OCBhdCBhbGwuIEl0Cj4gc3RpbGwgd29ya3MgaW4gc3BpdGUgb2Yg
dGhhdCB3YXJuaW5nLCBhbHRob3VnaCBJIGNhbid0IHNlZSBob3cgKG9yIGlmKQo+IGl0IGNvbmZp
Z3VyZXMgdGhlIHJlc2V0IG1lY2hhbmlzbSB3aXRob3V0IHRob3NlIEdSRiByZWdpc3RlcnMuCj4K
PiBCZXN0IHJlZ2FyZHMsCj4gQWxleGV5Cj4KPiBbMV0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy90
aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyNuODE4Cj4gWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9y
YWR4YS9rZXJuZWwvYmxvYi9zdGFibGUtNS4xMC1yb2NrNS9kcml2ZXJzL3RoZXJtYWwvcm9ja2No
aXBfdGhlcm1hbC5jI0w5NjEKPgoKSWYgdGhlIGZvbGxvd2luZyBjaGFuZ2VzIGZpeCB0aGUgd2Fy
bmluZy4KCkNoZWNraW5nIHRoZSBSb2NrY2hpcCBSSzM1ODggVFJNIFYxLjAtUGFydDEtMjAyMjAz
MDkucGRmClBNVTFHUkZfU09DX0NPTjMgd2hpY2ggaGFzIHRzYWRjX3NodXRfcmVzZXRfdHJpZ2dl
cl9lbiBiaXQKdG8gY29udHJvbCB0aGUgRW5hYmxlIFRTQURDIHNodXQgcmVzZXQgdHJpZ2dlciBm
b3IgRERSIGZhaWwgc2FmZS4KCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OHMuZHRzaQpiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5k
dHNpCmluZGV4IDg1YzI1ZDVlZmRhZC4uNTQ5MGE0NGUwOTNlIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQpAQCAtMjY2Miw2ICsyNjYyLDcgQEAgdHNhZGM6IHRz
YWRjQGZlYzAwMDAwIHsKICAgICAgICAgICAgICAgIHJvY2tjaGlwLGh3LXRzaHV0LXRlbXAgPSA8
MTIwMDAwPjsKICAgICAgICAgICAgICAgIHJvY2tjaGlwLGh3LXRzaHV0LW1vZGUgPSA8MD47IC8q
IHRzaHV0IG1vZGUgMDpDUlUgMTpHUElPICovCiAgICAgICAgICAgICAgICByb2NrY2hpcCxody10
c2h1dC1wb2xhcml0eSA9IDwwPjsgLyogdHNodXQgcG9sYXJpdHkKMDpMT1cgMTpISUdIICovCisg
ICAgICAgICAgICAgICByb2NrY2hpcCxwbXUgPSA8JnBtdTFncmY+OwogICAgICAgICAgICAgICAg
cGluY3RybC0wID0gPCZ0c2FkY19ncGlvX2Z1bmM+OwogICAgICAgICAgICAgICAgcGluY3RybC0x
ID0gPCZ0c2FkY19zaHV0PjsKICAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZ3BpbyIs
ICJvdHBvdXQiOwoKVGhhbmtzCi1BbmFuZAoKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E127C04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 09:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDuw2hO1NI+lzbPyFYvNwisBdmve7k13le4djznCQbg=; b=U3yD6k84SLiVrj
	nPBsE0F4xVkmKTa6uyxKOJTrOyMG5Za6LB9VNSVv8JhjK+uDRuKbq414Pb38Eq7use7d2gelBwGZ3
	qFDLfSZxqU9GsG2B+Vii3dEBMlvHsAbspDGrlZbzZoTbDJgMzm6dL34ckRFasOaybkAaYMjgOAAzL
	hjVoQF/zxyNsyuJtRP9Zgt5w5/CFMu6+zzS6mKgEu0pXWnF8yrXB2zCI13QHzJPAGZ3Bb967eiU/o
	FghKpc+lHg9Y9oc7NtSOA3UFQ9g/hdt1z0mahSc8zR1nadfrhZv3ngZqLAcf/cZtwKd7sgC1A7MOj
	4DOlLPx4en2xZWYs8z3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4dpv-0000000EoFR-28dr;
	Wed, 08 May 2024 09:43:43 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4dpm-0000000EoAU-2UIl;
	Wed, 08 May 2024 09:43:40 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a59c04839caso929149266b.2;
        Wed, 08 May 2024 02:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715161410; x=1715766210; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bhBk+CL6O4PHEbgabhGALs+AmmheycGZz7VgHbFJWhI=;
        b=Aq0ioljJ6H3T0DWm1cyi4XiBhK2poA1AKnaXbNBelz70PHr4InYuApHvO895iG9Itu
         /0bvy+FmPNtFPTJ41n0ljYyadisGMjuLvHO6cwClKF6m+poOoYFvh+760TPYFA6UMECp
         aDOat55per9O5pnRCUBZja7ZtBrGbsHekrq1ugoVneX+m0fhQowBBupb8GhkzXQFO6TL
         bNOKX4XrmQ/SA6avcQsWc1eSH09Y77Effe0mZWbyR8oOw2eDhCR+oCb9Xo/R6SD7y770
         0gI3CddcJOohy0vQmQ4Wnef9Ixpb5qrg+Ox8StAD/82TbFlSTG2murB6glqdAxRyCUax
         DmAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715161410; x=1715766210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bhBk+CL6O4PHEbgabhGALs+AmmheycGZz7VgHbFJWhI=;
        b=QOP9NlcDyb2G3MlkDgsKhU7c9cGq4OCncEMOmhrwgdE9ge7WApsRC5PZrUBhhbgagL
         1sSInKH3EyLBk688NPybm3Oqma7kqA87StjznAKMEBQniZ85luBB1JPSCXhZRIBUOGOu
         f4pW3BX3vIEjlsQ+QNmM2xUCUuaVVtu0nFUQZ4L9MkXJ6csrwRP9FU/rHL+hKChGzoHx
         Pwo/4VevFgFFqX4b4U4QJ4Qhyg7zjXM1q9z7ZG7V+EuG9zOzFYxyzu0mRMVM0mIbn0Iz
         Foxqur5fHwPgSdV8+nU0edVIGT+/eDQ8O9TPyq7OftlTdwbKOk0srKJIoZ6hkdwu1Msf
         /WzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPcQRlFuTKGBDlc3zRSKikq7eNozDgB3L7K1I+vrFKziRjdCvISP+kJkGC2XRV29rwLQbN/TMCTDTxF9p/YIvABJ5v11Gd4srQJApuUG9rK1gHeTd5lgqf+T3j5+OP4bVy3UUYeXc5h6mCDOlN7OefYw/VaGvPMn0=
X-Gm-Message-State: AOJu0YyBD53XokVmi71w9lEk5UD7WE3XzAzLzPvfCMmeVzVJ5tAmdFX+
	ePwI7Gx/F9Qu/y355W6ONqMfiPqZq9u5mAXTDnhhYDadLfUskfF4OLxB4XrRlGuIeIJm1PJ0Ikl
	VXN5VbJzJ+mHUHdNbHdA5kfn3+Fp+mnQUeKzA8g==
X-Google-Smtp-Source: AGHT+IG9Ur8aKpxy/1GBhO/DShgr59Isue9VUNFe5pUz/i1FIXiq3GWJ2HIj1INZvrps44bCi4GeLI+P+cHjU62+xLQ=
X-Received: by 2002:a17:906:f856:b0:a59:afdd:590d with SMTP id
 a640c23a62f3a-a59fb9b8abbmr106370366b.51.1715161409546; Wed, 08 May 2024
 02:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-6-271023ddfd40@gmail.com> <e220061e-0bb5-4fa4-9a91-aefd81e6636c@cherry.de>
In-Reply-To: <e220061e-0bb5-4fa4-9a91-aefd81e6636c@cherry.de>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 8 May 2024 13:43:17 +0400
Message-ID: <CABjd4YweBc_0d=ej-=0o6FPdHxh-i3FSbSp5bDs9cZcmosEMeA@mail.gmail.com>
Subject: Re: [PATCH v4 6/6] arm64: dts: rockchip: Add OPP data for CPU cores
 on RK3588
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_024336_184307_0E0517EB 
X-CRM114-Status: GOOD (  31.27  )
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

SGkgUXVlbnRpbiwKCk9uIFdlZCwgTWF5IDgsIDIwMjQgYXQgMToxMuKAr1BNIFF1ZW50aW4gU2No
dWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+IHdyb3RlOgo+Cj4gSGkgQWxleGV5LAo+Cj4g
T24gNS82LzI0IDExOjM2IEFNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IEJ5IGRlZmF1bHQg
dGhlIENQVXMgb24gUkszNTg4IHN0YXJ0IHVwIGluIGEgY29uc2VydmF0aXZlIHBlcmZvcm1hbmNl
Cj4gPiBtb2RlLiBBZGQgZnJlcXVlbmN5IGFuZCB2b2x0YWdlIG1hcHBpbmdzIHRvIHRoZSBkZXZp
Y2UgdHJlZSB0byBlbmFibGUKPiA+IGR5bmFtaWMgc2NhbGluZyB2aWEgY3B1ZnJlcS4KPiA+Cj4g
PiBPUFAgdmFsdWVzIGFyZSBhZGFwdGVkIGZyb20gUmFkeGEncyBkb3duc3RyZWFtIGtlcm5lbCBm
b3IgUm9jayA1QiBbMV0sCj4gPiBzdHJpcHBpbmcgdGhlbSBkb3duIHRvIHRoZSBtaW5pbXVtIGZy
ZXF1ZW5jeSBhbmQgdm9sdGFnZSBjb21iaW5hdGlvbnMKPiA+IGFzIGV4cGVjdGVkIGJ5IHRoZSBn
ZW5lcmljIHVwc3RyZWFtIGNwdWZyZXEtZHQgZHJpdmVyLCBhbmQgYWxzbyBkcm9wcGluZwo+ID4g
dGhvc2UgT1BQcyB0aGF0IGRvbid0IGRpZmZlciBpbiB2b2x0YWdlIGJ1dCBvbmx5IGluIGZyZXF1
ZW5jeSAoa2VlcGluZwo+ID4gdGhlIHRvcCBmcmVxdWVuY3kgT1BQIGluIGVhY2ggY2FzZSkuCj4g
Pgo+ID4gTm90ZSB0aGF0IHRoaXMgcGF0Y2ggaWdub3JlcyB2b2x0YWdlIHNjYWxpbmcgZm9yIHRo
ZSBDUFUgbWVtb3J5Cj4gPiBpbnRlcmZhY2Ugd2hpY2ggdGhlIGRvd25zdHJlYW0ga2VybmVsIGRv
ZXMgdGhyb3VnaCBhIGN1c3RvbSBjcHVmcmVxCj4gPiBkcml2ZXIsIGFuZCB3aGljaCBpcyB3aHkg
dGhlIGRvd25zdHJlYW0gdmVyc2lvbiBoYXMgdHdvIHNldHMgb2Ygdm9sdGFnZQo+ID4gdmFsdWVz
IGZvciBlYWNoIE9QUCAodGhlIHNlY29uZCBvbmUgYmVpbmcgbWVhbnQgZm9yIHRoZSBtZW1vcnkK
PiA+IGludGVyZmFjZSBzdXBwbHkgcmVndWxhdG9yKS4gVGhpcyBpcyBkb25lIGluc3RlYWQgdmlh
IHJlZ3VsYXRvcgo+ID4gY291cGxpbmcgYmV0d2VlbiBDUFUgYW5kIG1lbW9yeSBpbnRlcmZhY2Ug
c3VwcGxpZXMgb24gYWZmZWN0ZWQgYm9hcmRzLgo+ID4KPgo+IEknbSBub3Qgc3VyZSB0aGlzIGlz
IGV2ZXJ5dGhpbmcgd2UgbmVlZCB0aG91Z2guCj4KPiBGb3IgdGhlIExJVFRMRSBjb3JlcyBjbHVz
dGVyLCBhbGwgT1BQcyB1cCB0byAxLjQxNkdIeiBhcmUgdXNpbmcgdGhlIHNhbWUKPiBvcHAtc3Vw
cG9ydGVkLWh3LCBob3dldmVyIHRoZSBvbmVzIGFib3ZlLCBhcmVuJ3QuCgpUaGFua3MgYSBsb3Qg
Zm9yIHBvaW50aW5nIHRoaXMgb3V0IC0gY291bGQgeW91IHBsZWFzZSBlbGFib3JhdGUgd2hpY2gK
ZG93bnN0cmVhbSBrZXJuZWwgeW91IHJlZmVycmVkIHRvPwoKPiAxLjYwOEdIeiwgMS43MDRHSHog
YW5kIDEuOEdIeiBhcmUgYWxsIHVzaW5nIGRpZmZlcmVudCBvcHAtc3VwcG9ydGVkLWh3LgoKSW4g
UmFkeGEncyBkb3duc3RyZWFtIGtlcm5lbCBzb3VyY2UgdGhhdCBJIGxvb2tlZCBhdCBbMV0gdGhl
IExJVFRMRQpjb3JlIGNsdXN0ZXIgaGFzIGFsbCBPUFBzIGxpc3RlZCB3aXRoIG9wcC1zdXBwb3J0
ZWQtaHcgPSA8MHhmZgoweGZmZmY+OwoKPiBTaW1pbGFybHksIGZvciB0aGUgYmlnIGNvcmVzIGNs
dXN0ZXJzLCBhbGwgT1BQcyB1cCB0byAxLjYwOEdIeiBhcmUgdXNpbmcKPiB0aGUgc2FtZSBvcHAt
c3VwcG9ydGVkLWh3LCBidXQgbm90IHRoZSBvbmVzIGFib3ZlLgo+Cj4gMS44R0h6IGFuZCAyLjAx
NkdIeiwgMi4yMDhHSHosIDIuMjU2R0h6LCAyLjMwNEdIeiwgMi4zNTJHSHogYW5kIDIuNEdIego+
IGFsbCBoYXZlIGEgZGlmZmVyZW50IG9wcC1zdXBwb3J0ZWQtaHcuCgpIbW0sIG9ubHkgMi4yNTZH
SHosIDIuMzA0R0h6IGFuZCAyLjM1MkdIeiBpbiB0aGUgc291cmNlcyBJJ20gbG9va2luZwphdCBo
YXZlIGEgZGlmZmVyZW50IG9wcC1zdXBwb3J0ZWQtaHcgPSA8MHhmZiAweDA+OyAoYnV0IG5vdGUg
dGhhdCBJCmRyb3BwZWQgdGhlbSBhbGwgZnJvbSBteSBwYXRjaCBoZXJlKQoKPiBUaGUgdmFsdWVz
IGluIHRoYXQgYXJyYXkgYXJlIGNvbWluZyBmcm9tIGNwdSBsZWFrYWdlIChkaWZmZXJlbnQgZm9y
Cj4gTElUVExFLCBiaWcwIGFuZCBiaWcxIGNsdXN0ZXJzKSBhbmQgInNwZWNpZmljYXRpb24gc2Vy
aWFsIG51bWJlciIKPiAod2hhdGV2ZXIgdGhhdCBtZWFucyksIHRob3NlIGFyZSBjb21pbmcgZnJv
bSB0aGUgU29DIE9UUC4gSW4gdGhlCj4gZG93bnN0cmVhbSBrZXJuZWwgZnJvbSBSb2NrY2hpcCwg
dGhlIGZvcm1lciB2YWx1ZSBpcyBjYWxsZWQgIlNvQwo+IFZlcnNpb24iIGFuZCB0aGUgbGF0dGVy
ICJTcGVlZCBHcmFkZSIuCgpGcm9tIHdoYXQgSSB1bmRlcnN0b29kIGJ5IHN0dWR5aW5nIFJhZHhh
J3MgZG93bnN0cmVhbSBrZXJuZWwgc291cmNlcwphbmQgVEYtQSBzb3VyY2VzIFsyXSwgdGhlICJs
ZWFrYWdlIiBpbiBOVk1FTSBjZWxscyBkcml2ZXMgdGhlCnNlbGVjdGlvbiBvZiBwb3dlci1vcHRp
bWl6ZWQgdm9sdGFnZSBsZXZlbHMgKG9wcC1taWNyb3ZvbHQtTDEgdGhyb3VnaApvcHAtbWljcm92
b2x0LUw3KSBmb3IgZWFjaCBPUFAgZGVwZW5kaW5nIG9uIGEgT1RQLXByb2dyYW1tZWQgc2lsaWNv
bgpxdWFsaXR5IG1ldHJpYywgd2hlcmVhcyBpbiBteSBwYXRjaCBJIG9ubHkga2VwdCB0aGUgbW9z
dCBjb25zZXJ2YXRpdmUKdm9sdGFnZSB2YWx1ZXMgZm9yIGVhY2ggT1BQIChpLmUuIGhpZ2hlc3Qt
dm9sdGFnZSBkZWZhdWx0IG9uZXMpIGFuZApub3QgdGhlIHBvd2VyLW9wdGltaXplZCBvbmVzLgoK
U28gdGhlIHByb3Bvc2VkIHBhdGNoIHNob3VsZCAoc3VwcG9zZWRseT8pIHdvcmsgb24gYW55IHNp
bGljb24sIG9ubHkKdGhlIGhlYXQgZGVhdGggb2YgdGhlIHVuaXZlcnNlIGJlY29tZXMgbWFyZ2lu
YWxseSBjbG9zZXIgOikKCj4gSSB0aGluayB0aGlzIG1heSBoYXZlIHNvbWV0aGluZyB0byBkbyB3
aXRoICJiaW5uaW5nIiBhbmQgSSB3b3VsZCBzZWUgdGhlCj4gb25lcyBhYm92ZSB0aGUgImNvbW1v
biIgT1BQcyBhcyAib3ZlcmNsb2NraW5nIi4gTm90IGFsbCBDUFVzIHdvdWxkCj4gc3VwcG9ydCB0
aGVtIGFuZCBzb21lIG1heSBub3QgcnVuIHN0YWJsZSBhdCBzb21lIGxvd2VyIGZyZXF1ZW5jeSB0
aGFuCj4gdGhlaXIgc3RhYmxlIG1heC4gQWRkaW5nIEtldmVyIGZyb20gUm9ja2NoaXAgaW4gQ2Mg
dG8gaGF2ZSBzb21lIGlucHV0IG9uCj4gdGhlIG5lZWQgdG8gc3VwcG9ydCB0aG9zZS4KCldvdWxk
IGJlIGdyZWF0IHRvIHVuZGVyc3RhbmQgdGhvc2UgaW4gbW9yZSBkZXRhaWwsIGluZGVlZCEKClRo
YW5rcyBhIGxvdCwKQWxleGV5CgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3JhZHhhL2tlcm5lbC9i
bG9iL2M0Mjg1MzYyODFkNjlhZWIyYjM0ODBmNjViMmIyMjcyMTBiNjE1MzUvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kjTDU4OApbMl0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtcm9ja2NoaXAvQ0FCamQ0WXpUTD01UzdjUzhBQ05BWVZhNzMwV0EzaUdkNUxf
d1AxVm45PWY4M1JDT1JBQG1haWwuZ21haWwuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

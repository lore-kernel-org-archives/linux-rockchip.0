Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F717C25B7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 16:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6/k0tAbcO8oS9X8HZpuCHyVkTRtb4QjJi4T4LaTZrI=; b=FdYpyoQ3KFfvlj
	PO0KyeFUGcJpQDoGc3WATzSczYVkiE3500tJc/Q4rcl+C2nSIlLZ/vgkJ1tx0HzdN3h0u6CCNenku
	exQoFw/54VvbXNY5Q6va9ZKBXroxqUCPuAzB+LZM9LIQPL8SY/m8NPaPSbwyGAVMpR7BjtOhwhWUo
	eXjUhTP4wF1xdMgJAsnWvPUQ2TnVtDcFxzzoePNMU66/CR+J8Jm7uKdEQAE5ecc+YdqMZ3RTsuuH7
	psb1QziDGDVNx/SBVrS2hAPy/32EwEzScchvhLy5zp7/40uYyknI1IUvMmEUArM3ScpMcek+kWI78
	uBr/2V6V5x3GTySUGH3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBzGx-00000001LLS-2PRE;
	Tue, 28 May 2024 16:01:59 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBzGt-00000001LIG-1MUg;
	Tue, 28 May 2024 16:01:56 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5751bcb3139so1131941a12.1;
        Tue, 28 May 2024 09:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716912112; x=1717516912; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AsjOHizdrvfqmJxqxDMpN3lCIsfUt5pRyM4spPwkenU=;
        b=BEXjEErnA/udP3kYUIfKPaCUhOqzaub7udFQ3q2/PkTr2IW9uKccafUx36vcPRuFyJ
         M2eeXAbYXqJA+hVnt2na5e5gYm+VFlpGAiBiSRaCTgx/KGs/9yq5XqxqQs+uH7J5nHRn
         sQpp8CPtlGcR1nlloQJYQiWrNg3REYGF05hVEum/ftsz+CeS+u02IwUnRrc6koKmSK8L
         w4QTmzAFDX+SoiPAZfNZDMcD7G+RbLBWezp/Cg4U9gFzxfdUIWzcpCiYDO9sY6eFKyS1
         UhvRkOZ3o0w3kOLiZb4dpv/6BF2O1PYjKFgJyR3iKUk7GaZFUM+ieNf+aD/wunzJEJ7n
         NiLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716912112; x=1717516912;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AsjOHizdrvfqmJxqxDMpN3lCIsfUt5pRyM4spPwkenU=;
        b=dV1DJhPUay6vCt+QNIKDpMDodXVQHJEbp0Mu4/3nvJbQ+0StRPdvy9T8/MwlePVoAB
         nrNxCZORIxtq8aY3OaF/bDXSA0AEPBxT8ZWvWJ4ekjprbRroOlYlFu/cadDb0sbDygp5
         AqS0Nc2mQIB9fKKH8zcreAgGMx072iVDyag7omzhsHp2q2oRTu72Ok/fdWgoUwcssSvs
         BcXgMtQKVLSbVFMOWwUrvHycuHs1qdzO6CNT7eR1aQaQaxu+AepAuRCCOsKfQcBtwJIw
         UmIFAtnDuY1Xa0asf/FJJKK+RYmY1gkY2IXg6iSIPr+KghktKVwv1Y8yWDVUnbKQA493
         L81w==
X-Forwarded-Encrypted: i=1; AJvYcCXGDerJHaDlw+HOQ9CCqxwnhJVm95GZW/sWs8h3yQ/XQ0WX70fRRhvx6YWPZY/HZMO7TkDvntKBdyoXZvOJ84GSehPt6rhlS9WZHyCkuFUyWzs5O+3dRY17OBqd8CoHwevSiZqMHf1rhMtJcT3h3nwmEsGICEDVM/w=
X-Gm-Message-State: AOJu0YzOQXdbdguMLvaaS6vbACCSSxrPT2rMs1uVwJ9aL8sFSZ9ApCiN
	PCuOom8nxr7cgS8EiIeAka0NYGeWwhq9zfSFwQKeFcFV0x4sCWW8knZkgT4H6VjLNeKZL0cfs7C
	3hrdKDpRmyR34mvxbEet2e7cUjO4=
X-Google-Smtp-Source: AGHT+IHNuE7nLtgH5tbabZBoP5F4JkJPXbp/M6maPBMqXy141pqHfqme/UZVDsjVlC/xrsMnW/wR2sqSs0md2gDnT0U=
X-Received: by 2002:a17:906:cc4d:b0:a59:ba2b:590b with SMTP id
 a640c23a62f3a-a62650118f2mr833227266b.71.1716912112089; Tue, 28 May 2024
 09:01:52 -0700 (PDT)
MIME-Version: 1.0
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <5122636.irdbgypaU6@phil> <8727e1c29bd6f562a7fc3de0ddac62cf@manjaro.org> <6230150.aeNJFYEL58@phil>
In-Reply-To: <6230150.aeNJFYEL58@phil>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 28 May 2024 20:01:39 +0400
Message-ID: <CABjd4YysYZ5o17-nhRjyKqAw2sWi=GR1Q_OSHzAFOHLF5vh9GQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/6] RK3588 and Rock 5B dts additions: thermal, OPP and fan
To: Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_090155_396565_5B6BF1D7 
X-CRM114-Status: GOOD (  55.13  )
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

W3NvcnJ5IGlmIHlvdSBnZXQgdGhpcyB0d2ljZTogSSBtZXNzZWQgdXAgYW5kIHNlbnQgdGhlIHBy
ZXZpb3VzIG9uZSBpbgpIVE1MIGluc3RlYWQgb2YgcGxhaW4gdGV4dCAtIHJlc2VuZGluZyBub3dd
CgpPbiBUdWUsIE1heSAyOCwgMjAyNCBhdCA3OjE24oCvUE0gSGVpa28gU3R1ZWJuZXIgPGhlaWtv
QHNudGVjaC5kZT4gd3JvdGU6Cj4KPiBBbSBEaWVuc3RhZywgMjguIE1haSAyMDI0LCAxNzowMTo0
OCBDRVNUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+ID4gT24gMjAyNC0wNS0yOCAxNjozNCwgSGVp
a28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiA+IEFtIERpZW5zdGFnLCAyOC4gTWFpIDIwMjQsIDE2OjA1
OjA0IENFU1Qgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4gPiA+PiBPbiAyMDI0LTA1LTI4IDExOjQ5
LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+ID4+ID4gT24gTW9uLCBNYXkgNiwgMjAyNCBhdCAx
OjM34oCvUE0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+ID4gPj4gPiB3cm90
ZToKPiA+ID4+ID4+Cj4gPiA+PiA+PiBUaGlzIGVuYWJsZXMgdGhlcm1hbCBtb25pdG9yaW5nIGFu
ZCBDUFUgRFZGUyBvbiBSSzM1ODgocyksIGFzIHdlbGwgYXMKPiA+ID4+ID4+IGFjdGl2ZSBjb29s
aW5nIG9uIFJhZHhhIFJvY2sgNUIgdmlhIHRoZSBwcm92aWRlZCBQV00gZmFuLgo+ID4gPj4gPj4K
PiA+ID4+ID4+IFNvbWUgUkszNTg4IGJvYXJkcyB1c2Ugc2VwYXJhdGUgcmVndWxhdG9ycyB0byBz
dXBwbHkgQ1BVcyBhbmQgdGhlaXIKPiA+ID4+ID4+IHJlc3BlY3RpdmUgbWVtb3J5IGludGVyZmFj
ZXMsIHNvIHRoaXMgaXMgaGFuZGxlZCBieSBjb3VwbGluZyB0aG9zZQo+ID4gPj4gPj4gcmVndWxh
dG9ycyBpbiBhZmZlY3RlZCBib2FyZHMnIGRldmljZSB0cmVlcyB0byBlbnN1cmUgdGhhdCB0aGVp
cgo+ID4gPj4gPj4gdm9sdGFnZSBpcyBhZGp1c3RlZCBpbiBzdGVwLgo+ID4gPj4gPj4KPiA+ID4+
ID4+IFRoaXMgYWxzbyBlbmFibGVzIHRoZSBidWlsdC1pbiB0aGVybWFsIHNlbnNvciAoVFNBREMp
IGZvciBhbGwgYm9hcmRzCj4gPiA+PiA+PiB0aGF0IGRvbid0IGN1cnJlbnRseSBoYXZlIGl0IGVu
YWJsZWQsIHVzaW5nIHRoZSBkZWZhdWx0IENSVSBiYXNlZAo+ID4gPj4gPj4gZW1lcmdlbmN5IHRo
ZXJtYWwgcmVzZXQuIFRoaXMgZGVmYXVsdCBjb25maWd1cmF0aW9uIG9ubHkgdXNlcyBvbi1Tb0MK
PiA+ID4+ID4+IGRldmljZXMgYW5kIGRvZXNuJ3QgcmVseSBvbiBhbnkgZXh0ZXJuYWwgd2lyaW5n
LCB0aHVzIGl0IHNob3VsZCB3b3JrCj4gPiA+PiA+PiBmb3IgYWxsIGRldmljZXMgKHRlc3RlZCBv
bmx5IG9uIFJvY2sgNUIgdGhvdWdoKS4KPiA+ID4+ID4+Cj4gPiA+PiA+PiBUaGUgYm9hcmRzIHRo
YXQgaGF2ZSBUU0FEQ19TSFVUIHNpZ25hbCB3aXJlZCB0byB0aGUgUE1JQyByZXNldCBsaW5lCj4g
PiA+PiA+PiBjYW4gY2hvb3NlIHRvIG92ZXJyaWRlIHRoZSBkZWZhdWx0IHJlc2V0IGxvZ2ljIGlu
IGZhdm91ciBvZiBHUElPCj4gPiA+PiA+PiBkcml2ZW4gKFBNSUMgYXNzaXN0ZWQpIHJlc2V0LCBi
dXQgaW4gbXkgdGVzdGluZyBpdCBkaWRuJ3Qgd29yayBvbgo+ID4gPj4gPj4gUmFkeGEgUm9jayA1
QiAtIG1heWJlIEknbSByZWFkaW5nIHRoZSBzY2hlbWF0aWMgd3JvbmcgYW5kIGl0IGRvZXNuJ3QK
PiA+ID4+ID4+IHN1cHBvcnQgUE1JQyBhc3Npc3RlZCByZXNldCBhZnRlciBhbGwuCj4gPiA+PiA+
Pgo+ID4gPj4gPj4gRmFuIGNvbnRyb2wgb24gUm9jayA1QiBoYXMgYmVlbiBzcGxpdCBpbnRvIHR3
byBpbnRlcnZhbHM6IGxldCBpdCBzcGluCj4gPiA+PiA+PiBhdCB0aGUgbWluaW11bSBjb29saW5n
IHN0YXRlIGJldHdlZW4gNTVDIGFuZCA2NUMsIGFuZCB0aGVuIGFjY2VsZXJhdGUKPiA+ID4+ID4+
IGlmIHRoZSBzeXN0ZW0gY3Jvc3NlcyB0aGUgNjVDIG1hcmsgLSB0aGFua3MgdG8gRHJhZ2FuIGZv
ciBzdWdnZXN0aW5nLgo+ID4gPj4gPj4gVGhpcyBsZXRzIHNvbWUgY29vbGluZyBzZXR1cHMgd2l0
aCBiZWVmaWVyIGhlYXRzaW5rcyBhbmQvb3IgbGFyZ2VyCj4gPiA+PiA+PiBmYW4gZmlucyB0byBz
dGF5IGluIHRoZSBxdWlldGVzdCBub24temVybyBmYW4gc3RhdGUgd2hpbGUgc3RpbGwKPiA+ID4+
ID4+IGdhaW5pbmcgcG90ZW50aWFsIGJlbmVmaXRzIGZyb20gdGhlIGFpcmZsb3cgaXQgZ2VuZXJh
dGVzLCBhbmQKPiA+ID4+ID4+IHBvc3NpYmx5IGF2b2lkaW5nIG5vaXN5IHNwZWVkcyBhbHRvZ2V0
aGVyIGZvciBzb21lIHdvcmtsb2Fkcy4KPiA+ID4+ID4+Cj4gPiA+PiA+PiBPUFBzIGhlbHAgYWN0
dWFsbHkgc2NhbGUgQ1BVIGZyZXF1ZW5jaWVzIHVwIGFuZCBkb3duIGZvciBib3RoIGNvb2xpbmcK
PiA+ID4+ID4+IGFuZCBwZXJmb3JtYW5jZSAtIHRlc3RlZCBvbiBSb2NrIDVCIHVuZGVyIHZhcmll
ZCBsb2Fkcy4gSSd2ZSBkcm9wcGVkCj4gPiA+PiA+PiB0aG9zZSBPUFBzIHRoYXQgY2F1c2UgZnJl
cXVlbmN5IHJlZHVjdGlvbnMgd2l0aG91dCBhY2NvbXBhbnlpbmcKPiA+ID4+ID4+IGRlY3JlYXNl
Cj4gPiA+PiA+PiBpbiBDUFUgdm9sdGFnZSwgYXMgdGhleSBkb24ndCBzZWVtIHRvIGJlIGFkZGlu
ZyBtdWNoIGJlbmVmaXQgaW4gZGF5IHRvCj4gPiA+PiA+PiBkYXkgdXNlLCB3aGlsZSB0aGUga2Vy
bmVsIGxvZyBnZXRzIGEgbnVtYmVyIG9mICJPUFAgaXMgaW5lZmZpY2llbnQiCj4gPiA+PiA+PiBs
aW5lcy4KPiA+ID4+ID4+Cj4gPiA+PiA+PiBOb3RlIHRoYXQgdGhpcyBzdWJtaXNzaW9uIGRvZXNu
J3QgdG91Y2ggdGhlIFNSQU0gcmVhZCBtYXJnaW4gdXBkYXRlcwo+ID4gPj4gPj4gb3IKPiA+ID4+
ID4+IHRoZSBPUFAgY2FsaWJyYXRpb24gYmFzZWQgb24gc2lsaWNvbiBxdWFsaXR5IHdoaWNoIHRo
ZSBkb3duc3RyZWFtCj4gPiA+PiA+PiBkcml2ZXIKPiA+ID4+ID4+IGRvZXMgYW5kIHdoaWNoIHdl
cmUgbWVudGlvbmVkIGluIFsxXS4gSXQgd29ya3MgYXMgaXQgaXMgKGFsc28KPiA+ID4+ID4+IGNv
bmZpcm1lZCBieQo+ID4gPj4gPj4gU2ViYXN0aWFuIGluIGhpcyBmb2xsb3ctdXAgbWVzc2FnZSBb
Ml0pLCBhbmQgaXQgaXMgc3RhYmxlIGluIG15Cj4gPiA+PiA+PiB0ZXN0aW5nIG9uCj4gPiA+PiA+
PiBSb2NrIDVCLCBzbyBpdCBzb3VuZHMgYmV0dGVyIHRvIG1lcmdlIGEgc2ltcGxlIHZlcnNpb24g
Zmlyc3QgYW5kIHRoZW4KPiA+ID4+ID4+IGV4dGVuZCB3aGVuL2lmIHJlcXVpcmVkLgo+ID4gPj4g
Pj4KPiA+ID4+ID4+IFsxXQo+ID4gPj4gPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
cm9ja2NoaXAvQ0FCamQ0WXpUTD01UzdjUzhBQ05BWVZhNzMwV0EzaUdkNUxfd1AxVm45PWY4M1JD
T1JBQG1haWwuZ21haWwuY29tLwo+ID4gPj4gPj4gWzJdCj4gPiA+PiA+PiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC9wa3luZTRnMmNsbjI3ZGNkdTNqbTdicWRxcG1kMmt3
a2JndWlvbG1vem50anVpYWpyYkBndnE0bnVwem5hNG8vCj4gPiA+PiA+Pgo+ID4gPj4gPj4gU2ln
bmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+ID4gPj4gPj4g
LS0tCj4gPiA+PiA+Cj4gPiA+PiA+IEhpIEhlaWtvLAo+ID4gPj4gPgo+ID4gPj4gPiBEbyB5b3Ug
dGhpbmsgdGhpcyBjYW4gYmUgbWVyZ2VkIGZvciA2LjExPyBMb29rcyBsaWtlIHRoZXJlIGhhc24n
dCBiZWVuCj4gPiA+PiA+IGFueSBuZXcgZmVlZGJhY2sgaW4gYSB3aGlsZSwgYW5kIGl0IHdvdWxk
IGJlIGdvb2QgdG8gaGF2ZSBmcmVxdWVuY3kKPiA+ID4+ID4gc2NhbGluZyBpbiBwbGFjZSBmb3Ig
UkszNTg4Lgo+ID4gPj4gPgo+ID4gPj4gPiBQbGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IGhhdmUg
YW55IHJlc2VydmF0aW9ucyBvciBpZiB3ZSBuZWVkIGFueQo+ID4gPj4gPiBicm9hZGVyIGRpc2N1
c3Npb24uCj4gPiA+Cj4gPiA+IG5vdCByZWFsbHkgcmVzZXJ2YXRpb25zLCBtb3JlIGxpa2UgdGhl
cmUgd2FzIHN0aWxsIGRpc2N1c3Npb24gZ29pbmcgb24KPiA+ID4gYXJvdW5kIHRoZSBPUFBzLiBN
ZWFud2hpbGUgd2UgaGFkIG1vcmUgZGlzY3Vzc2lvbnMgcmVnYXJkaW5nIHRoZSB3aG9sZQo+ID4g
PiBzcGVlZCBiaW5uaW5nIFJvY2tjaGlwIHNlZW1zIHRvIGRvIGZvciByazM1ODggdmFyaWFudHMu
Cj4gPiA+Cj4gPiA+IEFuZCB3YWl0aW5nIGZvciB0aGUgdGVzdGluZyBEcmFnYW4gd2FudGVkIHRv
IGRvIDstKSAuCj4gPgo+ID4gSSdtIHNvcnJ5IGZvciB0aGUgZGVsYXlzLgo+Cj4gV2FzIGRlZmlu
aXRseSBfbm90XyBtZWFudCBhcyBibGFtZSA7LSkgLgo+Cj4gVGhlIHNlcmllcyBoYXMganVzdCB0
b28gbWFueSBkaXNjdXNzaW9ucyB0aHJlYWRzIHRvIHVucmF2ZWwgb24gaGFsZgo+IGFuIGFmdGVy
bm9vbi4KCkZXSVcsIEkgdGhpbmsgdGhlIGxhdGVzdCBleGNoYW5nZSB3ZSBoYWQgd2l0aCBRdWVu
dGluIHJlZ2FyZGluZyB0aGUKT1BQcyBjb25jbHVkZWQgaW4g4oCcZmFsc2UgYWxhcm3igJ0sIGdp
dmVuIHRoYXQgdGhpcyB2ZXJzaW9uIG9mIHRoZSBzZXJpZXMKb25seSBpbnRyb2R1Y2VzIGEgc3Vi
c2V0IG9mIHRoZW0gd2hpY2ggc2hvdWxkIGFwcGx5IHRvIGFsbCBSSzM1ODgocykKClBlcmZvcm1h
bmNlIGJpbm5pbmcgaGVyZSBpcyBtb3JlIGdlYXJlZCB0b3dhcmRzIGhvdyBsb3cgdGhlIHZvbHRh
Z2VzCmNhbiBnbyBmb3IgYSBnaXZlbiBmcmVxdWVuY3ksIGFuZCByaWdodCBub3cgd2XigJlyZSBv
bmx5IGludHJvZHVjaW5nIHRoZQpoaWdoZXN0LXZvbHRhZ2Ugc2V0dGluZyBmb3IgZWFjaCBPUFAu
IFRodXMgdGhlIGJpbm5pbmcgYW5kL29yCmludGVybWVkaWF0ZSBmcmVxdWVuY2llcyBzaG91bGQg
YmUgcG9zc2libGUgdG8gaW50cm9kdWNlIGF0IGEgbGF0ZXIKc3RhZ2UgaW4gYSBiYWNrd2FyZHMg
Y29tcGF0aWJsZSB3YXkgKGlmIGRlZW1lZCByZWxldmFudCkuCgo+ID4gPiBTbyB0aGlzIHNob3Vs
ZCBkZWZpbml0bHkgbWFrZSBpdCBpbnRvIDYuMTEgdGhvdWdoLCBhcyB0aGVyZSBpcyBzdGlsbAo+
ID4gPiBhIGxvdCBvZiB0aW1lLgo+ID4gPgo+ID4gPj4gQXMgSSBwcm9taXNlZCBlYXJsaWVyLCBJ
IHdhcyBnb2luZyB0byB0ZXN0IHRoaXMgcGF0Y2ggc2VyaWVzIGluCj4gPiA+PiBkZXRhaWwuCj4g
PiA+PiBBbGFzLCBJIGhhdmVuJ3QgbWFuYWdlZCB0byBkbyB0aGF0IHlldCwgOi8gZHVlIHRvIG1h
bnkgcmVhc29ucywgYnV0Cj4gPiA+PiBJIHN0aWxsIHJlbWFpbiBmaXJtbHkgY29tbWl0dGVkIHRv
IGRvaW5nIHRoYXQuCj4gPiA+Pgo+ID4gPj4gSXMgLXJjNCB0aGUgY3V0b2ZmIGZvciA2LjExPyAg
SWYgc28sIHRoZXJlJ3Mgc3RpbGwgdGltZSBhbmQgSSdsbCBkbyBteQo+ID4gPj4gYmVzdCB0byB0
ZXN0IGFuZCByZXZpZXcgdGhlc2UgcGF0Y2hlcyBhcyBzb29uIGFzIHBvc3NpYmxlLgo+ID4gPgo+
ID4gPiBBcyBlYXJseSBhcyBwb3NzaWJsZSwgdGhlIGhhcmQgY3V0b2ZmIHdvdWxkIGJlIC1yYzYg
dGhvdWdoLgo+ID4gPiBJIGd1ZXNzIEknbGwganVzdCBzdGFydCBwaWNraW5nIHRoZSBlYXN5IHBh
dGNoZXMgZnJvbSB0aGUgc2VyaWVzLgo+ID4KPiA+IEknbGwgZG8gbXkgYmVzdCB0byBoYXZlIHRo
ZSBwYXRjaGVzIHRlc3RlZCBhbmQgcmV2aWV3ZWQgaW4gZGV0YWlsIEFTQVAuCj4gPiBBcyBhIHN1
Z2dlc3Rpb24sIHBlcmhhcHMgaXQgd291bGQgYmUgYmV0dGVyIHRvIHRha2UgdGhlIHNlcmllcyBh
cyBhCj4gPiB3aG9sZSwKPiA+IHNvIHdlIGRvbid0IGJyaW5nIHBhcnRpYWwgbWVyZ2luZyBpbnRv
IHRoZSBtaXguCj4KPiBQYXRjaGVzIG5lZWQgdG8gd29yayBpbmRpdmlkdWFsbHkgYW55d2F5IChp
biBjb3JyZWN0IG9yZGVyIG9mIGNvdXJzZSksCj4gc28gbGlrZSBzdGFydGluZyBhdCB0aGUgdG9w
IHdpdGggdGhlIGdlbmVyYWwgdGhlcm1hbCBzdHVmZiBzaG91bGQgbm90Cj4gY3JlYXRlIGlzc3Vl
cyA7LSkKCkluZGVlZCwgdGhvc2UgYXJlIHNlbGYtY29udGFpbmVkIGFuZCBjYW4gYmUgbWVyZ2Vk
IGluZGVwZW5kZW50bHkgb2YKdGhlIE9QUHMuIEhhdmluZyBPUFBzIHdpdGhvdXQgdGhlcm1hbCBp
cyBtb3JlIHJpc2t5IHRob3VnaCwgYnV0IHRoYXQKZG9lc27igJl0IHNvdW5kIGxpa2Ugd2hhdCB3
ZeKAmXJlIGFmdGVyIGhlcmUgOikKCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

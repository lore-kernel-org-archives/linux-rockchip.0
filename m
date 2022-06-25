Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C50FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jun 2022 13:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fETHblwcQ9xcb0s98w0sCUDr628C4/4jOy/1qT70/xM=; b=NMdhHkzKlMLSWm
	m6wtfyNGdsW/3nLl+VZrVxMjyb9yuQirsUIf0n8J2QOFf0GAGALi9xGqCT0xyyWbwy+FRRhepeXXd
	LXhyTzRiUhoLGMZBbC7KicSJVMcQibFJJj7gq09NwP29Ddn2T9TxSa2Or82ZpFFCFQm3xqv2/rp+R
	bp2usd1EZK9F6uSE537A4MeoDKBhH14y0j1hvjg1etx12/JJ6lIJyfrgcHPzNdENJO+JaLdvO3v5r
	FPXrYysdAM+tllruWP+eyuTLX9UW7mfpLR2pifJtssHDiclff+oZjpeOU3UBAE/W2+13D8ETVC9Ky
	RP2xh5+xZiqu/YA+sGDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o55gQ-0069xo-Q3; Sat, 25 Jun 2022 13:18:42 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o55gF-0069u6-7l; Sat, 25 Jun 2022 13:18:33 +0000
Received: by mail-lj1-x235.google.com with SMTP id j22so5868862ljg.0;
        Sat, 25 Jun 2022 06:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=y48eFrfU58Es0df/uWJznzVTFLiqIJAQIHOdyuzq+vI=;
        b=pgEyMA7AJAQGqGu2mhSC4g/5e0GaZouYfvgHQmDmSJSmgALyvnYC49Zq+n////7GpB
         ycjXl8UvRfCzsAnBmQl1gjyOAX/rX3weivYHAahxyq1MfEAfufNf1UJMT9zocpEyGIqa
         6rkBF0zRLwKJds5nlbUt6FeYd6Sl6ivfKtjSr/DHRL3VY0UoF9HrGiEd+cgzz2QajSeU
         MztYJpQHhM7GAq2xiKHDM6sExtN+QXYgzaAO8MxwmWvm+2ectQwmz3FW7ovuRaynnfVW
         xO6Epo735TOizkrwaXLWUfdcaf8aeSdwhMrvPpzkIdy0/YUvDe5+0kZucygQ3Xy6BCnU
         t1YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=y48eFrfU58Es0df/uWJznzVTFLiqIJAQIHOdyuzq+vI=;
        b=TCMvIM/Khp25he/QjALA0tTkRQ6jd4yXPhmkZZDILrGXs2Pzd42ULSB2RC/ESgMZ4L
         ayWOlIbaObule2WLTOpSTLglLZNgSEvhpawW7+dn6Ahf1qBHCOk0/KAus/IwgBsGsIoY
         r8ttgSFVS3bPdN6/WncTaVjCJvK+erNj2ztZ4kLVVene9frmMu+9M6l1YbFIy86usbm5
         S4dJnJNTpBkYnRNVSV2deREnxtC4/Wj2pZrv2sjphfUX6X2xjM1KbBIp8Ufcek1tc+1F
         b98douPam0+DRLPO9Sbsuph2naqOHo0uarAfj7Vw/IWh64jPvI9V2MZ3LQwerwc+coNv
         MFUA==
X-Gm-Message-State: AJIora8qA97pkFYBgBbM7jLLNsaVPvvfYN8VC19vYLt4Erk8VNkYxgC+
	BdVOHUdbOlH3iK2J2o3oPm8=
X-Google-Smtp-Source: AGRyM1svl9LdEm2v6OWC4kfHiaxFv9+8mH+hAx8best6leANNJhcHEHOlmTrA3/pYHySOcQcco+lnw==
X-Received: by 2002:a05:651c:1501:b0:255:9588:98a6 with SMTP id e1-20020a05651c150100b00255958898a6mr1959615ljf.306.1656163107244;
        Sat, 25 Jun 2022 06:18:27 -0700 (PDT)
Received: from smtpclient.apple (31-178-127-80.dynamic.chello.pl. [31.178.127.80])
        by smtp.gmail.com with ESMTPSA id g6-20020a056512118600b0047fac765f39sm861398lfr.219.2022.06.25.06.18.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Jun 2022 06:18:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
Date: Sat, 25 Jun 2022 15:18:23 +0200
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 kernel test robot <lkp@intel.com>
Message-Id: <0D8B18A1-82FD-4902-A443-AD774DE43DAD@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
 <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
 <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
 <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
 <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220625_061831_343711_B9101A2A 
X-CRM114-Status: GOOD (  31.28  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAyNS4wNi4yMDIyLCBvIGdvZHouIDAxOjUwOgo+IAo+IE9uIEZyaSwgSnVu
IDI0LCAyMDIyIGF0IDI6NTcgUE0gUGlvdHIgT25pc3pjenVrCj4gPHBpb3RyLm9uaXN6Y3p1a0Bn
bWFpbC5jb20+IHdyb3RlOgo+PiAKPj4gCj4+IAo+Pj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6
ZXogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4gdyBkbml1IDI0LjA2LjIwMjIsIG8g
Z29kei4gMTQ6NDA6Cj4+PiAKPj4+PiAKPj4+PiBTYXNjaGEsIFBldGVyCj4+Pj4gCj4+Pj4gSSBy
ZXR1cm5lZCB0byB0cnlpbmcgdG8gZmluZCB3aHkgaGRtaS1jZWMgaXMgbm90IHdvcmtpbmcgb24g
cm9jazMtYSB2MS4zMSBody4KPj4+PiAKPj4+PiBJJ20gb24gdm9wMiB2MTEgb24gNS4xOCBtYWlu
bGluZS4KPj4+PiAKPj4+PiBDdXJyZW50IGZpbmRpbmdzOgo+Pj4+IAo+Pj4+ICgxKSB0aGUgc2Ft
ZSBzdy4gc3RhY2svYmluYXJpZXMgd29ya3Mgb24gcm9jay0zYiAod2hlcmUgY2VjIHVzZXMgaGRt
aXR4X20wIGluc3RlYWQgb2YgaGRtaXR4X20xIEkvTyBsaW5lKTsKPj4+PiAKPj4+PiAoMikgZ3Bp
by1jZWMgaG93ZXZlciB3b3JrcyBubyBwcm9ibGVtIG9uIHJvY2szLWE7Cj4+Pj4gCj4+Pj4gKDMp
IG1vbml0b3JpbmcgY2VjIG1lc3NhZ2VzIHdpdGggdjQtdXRpbHMgJ2NlYy1mb2xsb3dlciAtcycg
c2hvd3MgZXhhY3QgdGhlIHNhbWUgZXZlbnRzIGluIG5vbi13b3JraW5nIHJvY2szLWEgYW5kIHdv
cmtpbmcgcm9jazMtYgo+Pj4+ICh0ZXN0ZWQgYnkgaXNzdWUgY29uZmlndXJlIGNlYyBieSAnY2Vj
LWN0bCAtZCAvZGV2L2NlYzAgLS1waHlzLWFkZHI9MS4wLjAuMCAtLXBsYXliYWNrJyBjb21tYW5k
KQo+Pj4gCj4+PiAtLXBoeXMtYWRkciBpc24ndCBhIHZhbGlkIGNvbW1hbmQgZm9yIHRoaXMgY29u
dHJvbGxlci4gVGhlIGRldmljZQo+Pj4gZGVzaWduYXRpb24gaXMgb25seSByZXF1aXJlZCBpZiB5
b3UgaGF2ZSBtb3JlIHRoYW4gb25lIGNlYyBkZXZpY2UuCj4+PiAKPj4+PiAKPj4+PiAtLT4gaSdt
IGludGVycHJldGluZyB0aGlzIGFzIGNvbmZpcm1hdGlvbiB0aGF0IGxvdyBsZXZlbCBwaHkgbGF5
ZXIgcmVjZWl2ZXMgb2sgY2VjIGRhdGEgZnJvbSBjb25uZWN0ZWQgZGV2aWNlIG9uIG5vbi13b3Jr
aW5nIHJvY2szLWE7Cj4+Pj4gCj4+Pj4gKDQpIGRlYnVnIHN5c2ZzIGZvciBjZWMgc2hvd3MgImhh
cyBDRUMgZm9sbG93ZXIgKGluIHBhc3N0aHJvdWdoIG1vZGUpIiBmb3Igd29ya2luZyByb2NrLTNi
IGFuZCB0aGVyZSBpcyBOTyAiaGFzIENFQyBmb2xsb3dlciIgZGVidWcgbWVzc2FnZSBpbiBmYWls
aW5nIHJvY2szLWEuCj4+PiAKPj4+IFRoaXMgbWFrZXMgbWUgc3VzcGVjdCB5b3UgYXJlIGluIGZh
Y3Qgbm90IHVzaW5nIHRoZSBzYW1lIHNvZnR3YXJlCj4+PiBzdGFjaywgb3IgYXJlIG5vdCBydW5u
aW5nIHRoZSBzYW1lIGNvbW1hbmRzLgo+PiAKPj4gSXQgd2FzIHRoZSBzYW1lIFNEIGNhcmQgLSB3
aXRoIG9ubHkgRFQgZGVjbGFyYXRpb24gY2hhbmdlZCBpbiBib290LnNjcgo+PiBTdWNoIFNEIGNh
cmQgaGFzIGNlYyBwZXJmZWN0bHkgd29ya2luZyBpbiByb2NrM2IKPj4gCj4+PiBSdW5uaW5nIGBj
ZWMtZm9sbG93ZXIgLXYgLW0gLVRgIG9uIGEgcmszNTY2IGRldmljZSB3aXRoIHdvcmtpbmcgY2Vj
Cj4+PiB1c2luZyA1LjE5LXJjMSwgSSBzZWUgbm8gbWVudGlvbiBvZiBjZWMtZm9sbG93ZXIgaW4g
dGhlIGRlYnVnZnMgY2VjMAo+Pj4gc3RhdHVzIGVudHJ5Lgo+Pj4gCj4+Pj4gCj4+Pj4gRm9yIG1l
IEl0IGxvb2tzIGxpa2UgbG93LWxldmVsIGhkbWktY2VjIHdvcmtzIG9rIG9uIGZhaWxpbmcgcm9j
azMtYSAtIGJ1dCB1cHBlciBsYXllcnMgKGluIGhkbWkgdm9wMj8pIGFyZSBub3QgcmVnaXN0ZXJp
bmcgKG9yIGZhaWxpbmcgdG8gcmVnaXN0ZXIpIGNlYy1mb2xsb3dlciBmaWxlaGFuZGxlLiBUaGlz
IGhhcHBlbnMganVzdCB3aGVuIGhkbWl0eCBJL08gaW4gRFQgaXMgY2hhbmdlZCBmcm9tIGhkbWl0
eF9tMCB0byBoZG11dHhfbTEuIEEgYml0IHN0cmFuZ2UgLSBidXQgYWxsIG15IHRlc3RzIGNvbnNp
c3RlbnRseSBjb25maXJtaW5nIHRoaXMgb2JzZXJ2YXRpb24uLi4uCj4+PiAKPj4+IFRoZXJlIGlz
IG5vdGhpbmcgd3Jvbmcgd2l0aCB2b3AyIGFzIGl0IGlzIG5vdCBpbnZvbHZlZCBhdCBhbGwgaW4g
dGhpcy4KPj4+IFRoZSByb2NrY2hpcCBoZG1pIGRyaXZlciAod2hpY2ggaXMgbm90IHNwZWNpZmlj
IHRvIHZvcDIpIGRvZXMgbm90aGluZwo+Pj4gbW9yZSB0aGFuIGNhbGwgdGhlIGNlYyByZWdpc3Ry
YXRpb24gbWV0aG9kIGluIHRoZSBkdyBoZG1pIGJyaWRnZQo+Pj4gZHJpdmVyLCB3aGljaCB0aGVu
IGNhbGxzIHRoZSBrZXJuZWwgY2VjIHJlZ2lzdHJhdGlvbiBmdW5jdGlvbnMuCj4+PiBDaGFuZ2lu
ZyBwaW5tdXggY2hhbmdlcyBub3RoaW5nIGluIGhvdyB0aGlzIGZ1bmN0aW9ucy4KPj4+IAo+Pj4+
IAo+Pj4+IEknbSB0b28gd2VhayBpbiBrZXJuZWwgY2VjIGludGVybmFscyAtIHNvIG1heWJlIHlv
dSBoYXZlIGFueSBwb2ludGVycyBob3cgdG8gZnVydGhlciBkZWJ1Zy9pbnZlc3RpZ2F0ZSB0aGlz
IGlzc3VlPwo+Pj4gCj4+PiBBcyB3ZSBkaXNjdXNzZWQgaW4gdGhlIHBpbmU2NCByb29tLCB0aGlz
IGlzIHN0aWxsIHZlcnkgbGlrZWx5IGEKPj4+IGhhcmR3YXJlIGlzc3VlIHdpdGggdGhpcyBib2Fy
ZC4gQSBjb25maWd1cmF0aW9uIGlzc3VlIHdpdGggeW91ciB1LWJvb3QKPj4+IG9yIHRmLWEgaXMg
YWxzbyBhIHBvc3NpYmlsaXR5LCBidXQgaXMgbGVzcyBsaWtlbHkuCj4+PiAKPj4+IFlvdSBzaG93
ZWQgd2l0aCB5b3VyIGxvZ2ljIGFuYWx5emVyIHdpdGggbm90aGluZyBwbHVnZ2VkIGluIGFuZCBj
ZWMKPj4+IG5vdCBtdXhlZCB0byBtMSwgZGF0YSB3YXMgcHJlc2VudCBvbiBtMS4KPj4gCj4+IElz
c3VlIG9mIHByZXNlbmNlIG9mIGRhdGEgb24gbTEgd2l0aCBub3RoaW5nIHBsdWdnZWQgd2FzIG1p
c3Rha2UgZnJvbSBteSBzaWRlOiB3cm9uZyBib2FyZCBwaW4gdXNlZCB0byBjb25uZWN0IGxvZ2lj
IGFuYWx5c2VyIEdORC4KPj4gQWZ0ZXIgY29ycmVjdGx5IGNvbm5lY3RpbmcgR05EIC0gYWxsIGlz
IG9rIChubyBhbnkgdW5leHBlY3RlZCBkYXRhOyBwdWxzZXMgYXBwZWFycyBvbmx5IGFmdGVyIGNl
YyBjb21tYW5kczsgcHVsc2VzIHRpbWluZ3MgYXJlIG9rIHNvIGNlYyBwcm90b2NvbCBhbmFseXNl
ciBzaG93cyByZWFzb25hYmxlIGRhdGE7IG5vIGNlYyB0aW1pbmcgZXJyb3JzIHJlcG9ydGVkIGJ5
IHByb3RvY29sIGFuYWx5c2VyKS4KPj4gCj4+IAo+Pj4gSSByZXF1ZXN0ZWQgeW91IGludmVzdGln
YXRlCj4+PiB0aGUgZm9sbG93aW5nLCB0byB3aGljaCB5b3UgaGF2ZW4ndCByZXBsaWVkOgo+Pj4g
SGF2ZSB5b3UgdHJpZWQgZm9yY2luZyBtMCB0byBiZSBhc3NpZ25lZCB0byBhIGRldmljZSBvdGhl
ciB0aGFuIGhkbWktY2VjPwo+PiAKPj4gSSdtIGEgYml0IGxvc3QgaGVyZTogdjEuMzEgaHcgdXNl
cyBtMSBhbmQgbTAgaXMgdW51c2VkLgo+PiBJcyB5b3UgaWRlYSB0byB2ZXJpZnkgdGhhdCBtMCBp
cyBub3QgdXNlZCBieSBoZG1pLWNlYyAtIGV2ZW4gd2hlbiBtMSBpcyBkZWNsYXJlZCBmb3IgaGRt
aS1jZWMgaW4gRFQ/Cj4+IE1heSB5b3UgcGxzIGhpbnQgbWUgd2l0aCBhbnkgZXhhbXBsZSBvZiBE
VCBzbmlwcGV0IGZvciBZb3VyIG0wIGFzc2lnbm1lbnQgaWRlYT8KPiAKPiBBcyBwaW5jdHJsIGlz
IG9ubHkgYXNzaWduZWQgd2hlbiBhIGRldmljZSBleHBsaWNpdGx5IHJlcXVlc3RzIGl0IGluCj4g
dGhlIGtlcm5lbCBkcml2ZXIsIGl0IGlzIHBvc3NpYmxlIHRvIGhhdmUgbXVsdGlwbGUgcGluY3Ry
bCBwaW5zCj4gYXNzaWduZWQgdG8gYSBzaW5nbGUgZGV2aWNlIGlmIGl0IHdhcyBsZWZ0IHRoYXQg
d2F5IGJ5IHByZXZpb3VzCj4gc29mdHdhcmUgb3IgdXNlcnNwYWNlIGhhcyBmdW4gd2l0aCBpdC4g
U3VjaCBhcyBib3RoIHRoZSBtMCBhbmQgbTEgcGlucwo+IGFyZSBhc3NpZ25lZCB0byB0aGUgY2Vj
LWNvbnRyb2xsZXIuIFN1Y2ggYSBjYXNlIGlzIGJyb2tlbi4KPiAKPiBZb3UgY2FuIGFzc2lnbiB0
aGUgbTAgcGluIHRvIGFub3RoZXIgZGV2aWNlIGV4cGxpY2l0bHksIGJ1dCBiZWZvcmUKPiBkb2lu
ZyBzbyBJJ2QgcmVhZCB0aGUgcmVnaXN0ZXIgbWFudWFsbHkganVzdCB0byBzZWUgaWYgaXQuIEZv
ciBleGFtcGxlCj4gdGhhdCBwaW4gYWxzbyBpcyB0aGUgc3BpM20xX2NzMSBwaW4uCgpTbyBkb25l
IHRlc3Qgd2hlcmUgSSBhc3NpZ25lZCBtMCBmb3IgZ3Bpby1jZWMuCjJuZCBjZWMgZGV2aWNlIGFw
cGVhcmVkLgpCdXQgdGhpcyBjaGFuZ2VkIG5vdGhpbmcgcmVnYXJkaW5nIGhkbWktY2VjLiAgU2ls
bCBkZWFkIDotKAoKPiAKPj4gCj4+PiBIYXZlIHlvdSBjaGVja2VkIGlmIG0xIGlzIHNob3J0ZWQg
dG8gYW5vdGhlciBwaW4/Cj4+IAo+PiBZZXMuIExvb2tzIG9rIGZvciBtZS4KPj4gKGFzIHJhZHhh
IGRlYmlhbiBoYXMgd29ya2luZyBvayBoZG1pLWNlYyBpIHRoaW5rIGh3IGlzIG9rKQo+PiAKPj4+
IAo+Pj4gSW4gcmVnYXJkcyB0byB5b3VyIGRhdGEgZnJhbWVzIGZvciA0LjE5IHZzIDUuMTgsIGlt
YWdlLXZpZXctb24gaXMgbm90Cj4+PiBhIHZhbGlkIGNvbW1hbmQgaWYgdGhlIHRvcG9sb2d5IGRv
ZXNuJ3QgZGV0ZWN0IGEgZGV2aWNlIG9uIHRoZSBidXMuCj4+PiBJIHJlY29tbWVuZCBydW5uaW5n
IHRoZSBzYW1lIHRlc3QsIGV4Y2VwdCBydW4gYGNlYy1jdGwgLVMgLS1wbGF5YmFja2AKPj4+IGFu
ZCBwb3N0IHRoZSByZXN1bHRzIGZvciBib3RoLgo+PiAKPj4gUGxzIGZpbmQgcmVzdWx0cyBmb3Ig
Y29tbWFuZCBgY2VjLWN0bCAtUyAtLXBsYXliYWNrYDoKPj4gCj4+IDEuICByYWR4YSB1YnVudHUg
NC4xOSBic3A6Cj4+IGxvZ2ljIGFuYWx5c2VyIGNlYyBwcm90byBkZWNvZGVkICsgdGltaW5nczog
aHR0cHM6Ly9wYXN0ZWJpbi5jb20vaEhQbUt2NGkKPj4gRllJIGxvZ2ljIGFuYWx5c2VyIG91dHB1
dCAoZmlyc3QgMzUwbXNlYyk6IGh0dHBzOi8vcGFzdGUucGljcy82M2NiNGRjN2Y5YjUxZDg4MjVk
Mzc3YjQ1YmY3MWFlNAo+PiAKPj4gMi4gbWFpbmxpbmUgNS4xOC42Ogo+PiBsb2dpYyBhbmFseXNl
ciBjZWMgcHJvdG8gZGVjb2RlZCArIHRpbWluZ3M6IGh0dHBzOi8vcGFzdGViaW4uY29tL1lZRFVZ
NHgxCj4+IEZZSSBsb2dpYyBhbmFseXNlciBvdXRwdXQgKGZpcnN0IDM1MG1zZWMpOiBodHRwczov
L3Bhc3RlLnBpY3MvMGQ4OTRiOGNlYmExNjRkYzZkNzQzZjgwNDRjN2UwMWUKPj4gCj4+IAo+IAo+
IE5vdyB0aGlzIGlzIGludGVyZXN0aW5nLCB0aGUgVFYgaXMgcmVzcG9uZGluZyBpbiBib3RoIGNh
c2VzLiBUaGUgVFYKPiBkb2VzIG5vdCBzaG93IHVwIGF0IGFsbCBpbiB0aGUgcmV0dXJuIHNlcXVl
bmNlIGluIGNhc2UgMj8KCgpTbyBJIHN0YXJ0ZWQgdG8gY29tcGFyZSBgY2VjLWN0bCAtUyAtLXBs
YXliYWNrYG9uIHJvY2szYSBhbmQgcm9jazNiIC0gYnV0IHRoaXMgdGltZSBhZnRlciBjb2xkIHJl
Ym9vdHMgb2Y6IFRWIGFuZCBib2FyZC4gCgpvdmVydmlldyBvZiB3aG9sZSBjb21tOiAKd29ya2lu
ZyBPSyByb2NrMy1iICggaHR0cHM6Ly9wYXN0ZWJpbi5jb20vZmZ0aFQ1VVEgKQpub24td29ya2lu
ZyByb2NrMy1hICggaHR0cHM6Ly9wYXN0ZWJpbi5jb20vUWRuNzFxd1MgKQoKRmlyc3QgZGlmZmVy
ZW5jZSBpIHNlZSBpcyBpZGxlL25vIGlkbGUgYmV0d2VlbiBjZWMgY29tbWFuZHM6Cm5vbi13b3Jr
aW5nOiBodHRwczovL3Bhc3RlLnBpY3MvYmIxNjE2MzEyZDFmNzViODgwOGFmZjMwZjE4NmVkNzYK
d29ya2luZzogaHR0cHM6Ly9wYXN0ZS5waWNzLzk2ZDk2ZjQ5NTBmNGQ4N2RlZmJmZDgxNzI4MTlk
ZTJkCgppLmUuCndvcmtpbmc6IGhhcyAyMG1zIGlkbGUgYmVmb3JlIG9wY29kZSAweEE2IGh0dHBz
Oi8vcGFzdGUucGljcy8zNDZmNDgyMzEwYmFhMGQ2ZWQwYTNkNWIyZTgyMGUwOQp3aGlsZSBub24t
d29ya2luZyBoYXMgbm8gYW55IGlkbGUgaHR0cHM6Ly9wYXN0ZS5waWNzLzY0MGVlMTkwZTBkNTAx
ZDRmYzliMDVjNzQ2YTY4NTAyCmRhdGEgaW4gZnJhbWVzIGlzIHRoZSBzYW1lCgpvcgp3b3JraW5n
OiBoYXMgMjBtcyBpZGxlIGJlZm9yZSBvcGNvZGUgMHg4NCBodHRwczovL3Bhc3RlLnBpY3MvOTNj
YjdjM2NkNzJhYjBmOTFjOWE1YjZmZjI0Y2FkZjMKd2hpbGUgbm9uLXdvcmtpbmcgaGFzIG5vIGFu
eSBpZGxlIGh0dHBzOi8vcGFzdGUucGljcy9lOWFmZWQ5M2Y1YjNhY2Y2ZTExYWEwMGQzOTBkNTJi
YwpkYXRhIGluIGZyYW1lcyBpcyB0aGUgc2FtZQoKZm9yIG9wY29kZSAweDg3IGRhdGEgaW4gZnJh
bWVzIGlzIGFsc28gdGhlIHNhbWUKCgpnZW5lcmFsbHk6CndvcmtpbmcgaGFzIGFsd2F5cyBhcm91
bmQgMTYuLjIwbXMgb2YgaWRsZSBiZXR3ZWVuIGNvbW1hbmRzIHdoaWxlIG5vbi13b3JraW5nIGhh
cyBubyBhbnkgaWRsZXMuICAKCkhvdyB0aGlzIGlzIHBvc3NpYmxlIHRoYXQgY2hhbmdpbmcgbTAt
Pm0xIGNoYW5nZXMgdGltaW5ncyBpbiBzdWNoIHdheT8gICAKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

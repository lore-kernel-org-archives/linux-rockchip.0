Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE64BCCD184
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Oct 2025 00:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrRLRsrgEyzKH+cQSRgkwhlHtYgFhPLuSzFIE56yz7s=; b=qH87Sw441Ie9TU
	u8P4W8kHR89x1akm/cpRAN+Ih/Ap0OEoX88HmjaRR26UnKPUBr2sCvb24dVIMnqNAvt9mEEAnrNuw
	x4z/iWs8r2h0//PdTj0X/bFxmvN1Z0CaFZ48BNspN4KRpYjELjGA1wSkx/4oE62rE0rQqiow1UsGM
	0OqbBiD5SMJofb54bfi87SCRGeJH+xZMxFuPjnoD7dVckBjVSiRsacQmft41UiwF7c040dtp+HXRr
	HpG1l2c2/A8aM0R/4lwHtg5/7LyAF4ZGAVI4M9Pkai0Y3/72YCo/njZXKoN+yHPkng4sWFucSuoi0
	3XFhDMABRUcUH2CXDLNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9v1c-00000009Hl7-2LzL;
	Sat, 18 Oct 2025 00:42:24 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9v1a-00000009Hk6-0qgc
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Oct 2025 00:42:23 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-4270a3464caso395792f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Oct 2025 17:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760748140; x=1761352940; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qCVClA/PZ0uZGRS4AfUm3xUrlpb2SVIYbrS2oxr+V7g=;
        b=kTb9lrdWcSpqAKvsNzj5P/Qqjoclc5+J+Zhl/bvndEJiK1sdQSHA8Ykw5R1Wgyu2n9
         5OjIM1ZjwH5/oQjMWxZ3N9QtJMm+9nhp1mdtBia7PwRRBRZkQ5pIn57hWo3Rx0z7/TbR
         Q59caLbpnD7bE94Wh2Gvb2qElg1sb5hNya61g0nIhEvDFyc+LHVUDD+FrzuTvNbXcZ4x
         YM4M01Rw5FlhrpAttN9UFwb3c4alxmgJ5gTARxvPZ8iPdt5XXSpQjqW3p717y3B2iacZ
         x7xCQ2TzqB8slImZbjhGHVCaJvXNjeOcMDQfpc0ltrDF+07zdYHl8ZXhuPT/ggqlpBYn
         4TIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760748140; x=1761352940;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qCVClA/PZ0uZGRS4AfUm3xUrlpb2SVIYbrS2oxr+V7g=;
        b=nGu/HOPNvld/x19n1NdBKlU7bDLOQIT8om/TS+J/Nc1iu13FsAzEsnkciXp+0WCLOC
         mKPmZEfvCYwUMyW6o0KE1rqJ1v706GzxLWfdf2H+R8vWRWgbfAFNNZIeLJ1Dr4a/7+T7
         bS1PSrhX2ZMQiWpSqQ8bbo+OJMkvw2K66ZhVJApoUhPHjxgPdmYr4phz09rbXqarfVtC
         R9jrP+rYroISSoxPuad2xv8rGQ88W7Aq8oN6ALT3yYLC521lhd8ecKziizY/IPUo+BLc
         5YZ09Yj5ghJFYnvEfpO3EXPN2sUi030w/bgVbthIwLREzhtaC1JCWZoigUkPWRPb1QZA
         POow==
X-Forwarded-Encrypted: i=1; AJvYcCVTNxu5ysh40ytG2b+/2HvIrZzlH69V2bodSTsw3rrPdxzBdb1Z2SgnTDAIi6XNDbrUU6ncrLwbAMmn556bQA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjuY4ceivAV3BOLRRnGEK3ep4RS4OmpuQHSJj7wSI/o4KQUIJV
	TNwTm3JusyCAweuss1xl8Qm/0x162YvUMcaklCmNQLF/B7gNqi17ITW9e62GLxNgo1KZNTpgdKi
	zGJ4EmIBEx3bSxjEHQ+1Lt5KPmNz702s=
X-Gm-Gg: ASbGnctnkpPZPAgWl/aCQUrhEAFi1ZjWdV9mpv+9SE2PMkZZv4J3ZdZgtt2Y0IM7cH1
	EfzOJuEwfOOorP9lWcsDWeIjZ+qRtbiIjfzx2niXKLaM77zV1t6EF0PlAc5PyNZ2J870gJ1XEI2
	owLgpLyB7MQY4/X7sa/yspC0OHdtpAg7bqMPRmgPdguG2Rve/eESYGm2XIYnmH4IuQbuc4nbzaa
	qIhJ+SHLBxIVHO4+wYbQ5HWTgSVCHEnoFIw3cbXM4GqQAL7MkNjxR96EQy5SiUgUs+x6BtySc4t
	NG0mJEQa2JzdNAS76SMq2nPV604=
X-Google-Smtp-Source: AGHT+IEnZJdKEv8HpBuO5avxk7qhlo5bK8j/kw4uDQDaUY5tFqvMdnLtIwWLG43QGsF9cLs4FirJoib+MaszcUlXcUU=
X-Received: by 2002:a05:6000:3113:b0:427:7ec:ea41 with SMTP id
 ffacd0b85a97d-42707ecea7bmr2787799f8f.57.1760748139778; Fri, 17 Oct 2025
 17:42:19 -0700 (PDT)
MIME-Version: 1.0
References: <20251017073954.130710-1-cnsztl@gmail.com> <7f0b1747-87eb-0b0b-6fb0-304811a4be21@manjaro.org>
 <d9d14ce2-2e65-422e-95fb-eb30b128ad90@gmail.com> <41154cde-a447-0707-4387-cd3dca90b97d@manjaro.org>
In-Reply-To: <41154cde-a447-0707-4387-cd3dca90b97d@manjaro.org>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 17 Oct 2025 19:42:08 -0500
X-Gm-Features: AS18NWD1YMiDaJdbECom22kokRcA-tOWvJZCxltW1Yp4Akxq7VR2jmB100bExfM
Message-ID: <CALWfF7K0=J3E-zr41wV-28+SCFkT_so55Aee8BvQsB4KJZy6YQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Dragan Simic <dsimic@manjaro.org>
Cc: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Grzegorz Sterniczuk <grzegorz@sternicz.uk>, Jonas Karlman <jonas@kwiboo.se>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_174222_254323_28E6183C 
X-CRM114-Status: GOOD (  29.95  )
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

T24gRnJpLCBPY3QgMTcsIDIwMjUgYXQgMTA6MTXigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmlkYXksIE9jdG9iZXIgMTcsIDIwMjUgMTQ6MDgg
Q0VTVCwgVGlhbmxpbmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiBPbiAyMDI1
LzEwLzE3IDE4OjI1LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gPiA+IE9uIEZyaWRheSwgT2N0b2Jl
ciAxNywgMjAyNSAwOTozOSBDRVNULCBUaWFubGluZyBTaGVuIDxjbnN6dGxAZ21haWwuY29tPiB3
cm90ZToKPiA+ID4+IEZyb206IEdyemVnb3J6IFN0ZXJuaWN6dWsgPGdyemVnb3J6QHN0ZXJuaWN6
LnVrPgo+ID4gPj4KPiA+ID4+IFNvbWUgTmFub1BDLVQ2IGJvYXJkcyB3aXRoIEEzQTQ0NCBlTU1D
IGNoaXBzIGV4cGVyaWVuY2UgSS9PIGVycm9ycyBhbmQKPiA+ID4+IGNvcnJ1cHRpb24gd2hlbiB1
c2luZyBIUzQwMCBtb2RlLiBEb3duZ3JhZGUgdG8gSFMyMDAgbW9kZSB0byBlbnN1cmUKPiA+ID4+
IHN0YWJsZSBvcGVyYXRpb24uCj4gPiA+Cj4gPiA+IENvdWxkIHlvdSwgcGxlYXNlLCBwcm92aWRl
IG1vcmUgZGV0YWlscyBhYm91dCB0aGUgdHJvdWJsZXNvbWUgZU1NQwo+ID4gPiBjaGlwIHRoYXQg
Z2V0cyBpZGVudGlmaWVkIGFzIEEzQTQ0NCwgaS5lLiB3aGF0J3MgdGhlIGFjdHVhbCBicmFuZAo+
ID4gPiBhbmQgbW9kZWw/ICBNYXliZSB5b3UgY291bGQgc2VuZCBhIHBpY3R1cmUgb2YgaXQ/ICBJ
dCBtaWdodCBhbHNvCj4gPiA+IGhlbHAgaWYgeW91J2Qgc2VuZCB0aGUgY29udGVudHMgb2YgIi9z
eXMvY2xhc3MvYmxvY2svbW1jYmxrWC9kZXZpY2UKPiA+ID4gL21hbmZpZCIgZnJvbSB5b3VyIGJv
YXJkICh3aGVyZSAiWCIgc2hvdWxkIGVxdWFsIHR3bykuCj4gPgo+ID4gVW5mb3J0dW5hdGVseSBJ
IGRvbid0IGhhdmUgdGhpcyBib2FyZCBub3IgdGhpcyBlTU1DIGNoaXAuCj4gPiBJIGdvdCB0aGUg
Y2hpcCBtb2RlbCBmcm9tIG15IGZyaWVuZCwgaXQncyBGT1JFU0VFIEZFTUROTjI1NkctQTNBNDQs
Cj4gPiBtYW5maWQgaXMgMHgwMDAwZDYuCj4KPiBUaGFua3MgZm9yIHJlc3BvbmRpbmcgYW5kIHBy
b3ZpZGluZyB0aGUgZGV0YWlscyBzbyBxdWlja2x5IQo+Cj4gPiA+IEknbSBhc2tpbmcgZm9yIHRo
YXQgYmVjYXVzZSBJJ2QgbGlrZSB0byByZXNlYXJjaCBpdCBhIGJpdCBmdXJ0aGVyLAo+ID4gPiBp
ZiBwb3NzaWJsZSwgYmVjYXVzZSBzb21lIG90aGVyIGVNTUMgY2hpcHMgdGhhdCBhcmUgYWxzbyBm
b3VuZCBvbgo+ID4gPiB0aGUgTmFub1BjLVQ2IHNlZW0gdG8gd29yayBmaW5lIGluIEhTNDAwIG1v
ZGUuIFsxXSAgSXQgbWF5IGJlIHRoYXQKPiA+ID4gdGhlIEEzQTQ0NCBjaGlwIGhhcyBzb21lIGlz
c3VlcyB3aXRoIHRoZSBIUzQwMCBtb2RlIG9uIGl0cyBvd24sCj4gPiA+IGkuZS4gdGhlIG9ic2Vy
dmVkIGlzc3VlcyBtYXkgbm90IGJlIGNhdXNlZCBieSB0aGUgYm9hcmQuCj4gPgo+ID4gWWVzLCBp
dCBzaG91bGQgYmUgY2F1c2VkIGJ5IHRoaXMgZU1NQyBjaGlwLgo+Cj4gSSdkIHN1Z2dlc3QgdGhh
dCB3ZSBtb3ZlIGZvcndhcmQgYnkgInF1aXJraW5nIG9mZiIgdGhlIEhTNDAwIG1vZGUKPiBmb3Ig
dGhlIEZFTUROTjI1NkctQTNBNDQgZU1NQyBjaGlwIGluIHRoZSBNTUMgZHJpdmVycywgaW5zdGVh
ZCBvZgo+IGRvd25ncmFkaW5nIHRoZSBzcGVlZCBvZiB0aGUgc2RoY2kgaW50ZXJmYWNlIG9uIHRo
ZSBOYW5vUEMtVDYuCj4KPiBUaGF0IHdheSwgdGhlIG90aGVyIHNpbWlsYXIgRm9yZXNlZSBlTU1D
IGNoaXAgdGhhdCdzIGFsc28gZm91bmQKPiBvbiBOYW5vUEMtVDYgYm9hcmRzLCBGRU1ETk4yNTZH
LUEzQTU2NCwgd2lsbCBjb250aW51ZSB0byB3b3JrIGluCj4gdGhlIGZhc3RlciBIUzQwMCBtb2Rl
LCB3aGlsZSB0aGUgdHJvdWJsZXNvbWUgQTNBNDQgdmFyaWFudCB3aWxsCj4gYmUgZG93bmdyYWRl
ZCB0byB0aGUgSFMyMDAgZ2xvYmFsbHkgZm9yIGV2ZXJ5b25lJ3MgYmVuZWZpdC4gIEl0J3MKPiBx
dWl0ZSB1bmxpa2VseSB0aGF0IHRoZSBBM0E0NCB2YXJpYW50IGZhaWxzIHRvIHdvcmsgcmVsaWFi
bGUgaW4KPiBIUzQwMCBtb2RlIG9uIHRoZSBOYW5vUEMtVDYgb25seSwgc28gcXVpcmtpbmcgaXQg
b2ZmIGluIHRoZSBNTUMKPiBkcml2ZXJzIHNob3VsZCBiZSBhIHNhbmUgYW5kIHNhZmUgY2hvaWNl
Lgo+Cj4gSWYgeW91IGFncmVlIHdpdGggZHJvcHBpbmcgdGhpcyBwYXRjaCwgSSdsbCBiZSBtb3Jl
IHRoYW4gaGFwcHkKPiB0byBpbXBsZW1lbnQgdGhpcyBIUzIwMCBxdWlyayBpbiB0aGUgTU1DIGRy
aXZlcnMuCj4KPiBBcyBhIG5vdGUsIEZFTUROTjI1NkctQTNBNDQgaXMgZm91bmQgaW4gdGhlIFJv
Y2tjaGlwIFF1YWxpZmllZAo+IGVNTUMgU3VwcG9ydCBMaXN0IHYxLjg0LCBbMl0gYnV0IHRoZSBl
dmlkZW5jZSBzYXlzIHRoZSBvcHBvc2l0ZSwKPiBzbyB3ZSBzaG91bGQgcmVhY3QgYXBwcm9wcmlh
dGVseSBieSBhZGRpbmcgdGhpcyBxdWlyay4KCldoZW4gYWRkaW5nIHRoZSBxdWlyayBmb3IgdGhl
IEEzQTQ0LCBjYW4gd2UgbG93ZXIgdGhlIG1heCBmcmVxdWVuY3kKYW5kIGtlZXAgdGhlIEhTNDAw
IG1vZGUgaW5zdGVhZD8KVGhhdCdzIHdoYXQgdGhlIEZlZG9yYSBmb2xrcyBmb3VuZCB3b3JrcyBb
MV0uIFRoZXJlJ3MgbW9yZSB0ZXN0CnJlc3VsdHMgaW4gQXJtYmlhbiBbMl0KClsxXSBodHRwczov
L2xpc3RzLmZlZG9yYXByb2plY3Qub3JnL2FyY2hpdmVzL2xpc3Qva2VybmVsQGxpc3RzLmZlZG9y
YXByb2plY3Qub3JnL3RocmVhZC9NQ1NEWURRVk9YUzVBWk1LQTdMTFk0UVg3SlhCV1BDQS8KWzJd
IGh0dHBzOi8vZ2l0aHViLmNvbS9hcm1iaWFuL2J1aWxkL3B1bGwvODczNiNpc3N1ZWNvbW1lbnQt
MzM4Nzc2MDUzNgoKPgo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L2lz
c3Vlcy8xODg0NAo+IFsyXSBodHRwczovL2RsLnJhZHhhLmNvbS9yb2NrNS9ody9SS2VNTUNTdXBw
b3J0TGlzdCUyMFZlcjEuODRfMjAyNDA4MTUucGRmCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

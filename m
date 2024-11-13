Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E117ED41C30
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 10:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kjl5Nd75RI5UzCdagN8+09EheeRkPsh/CS6NKhQhPt0=; b=diEpgEZjiW1I2w
	+viwFlImOeuZ4gvxKbfEdi/bFQunuOTxHbm/QbqZvb4AGbZ04Ym+nAOOsIRSDrvicuGDEnc0ijuYj
	3GQqkjmkDK2iax+v1wluCrQMEElcynyVYoN0Y07Z/zww0YQ6ZkhDMtZ8eqgVuUPULweEvPPJTODLF
	k/t+O7fe06736QQQoSQJJXBoAuIkOdKwkD3Ftx9g8idmHzXwc8g61UMLUe7G3Aaom7wbUh6mAVXou
	3JTyrEjgD4GLunrHtjgH1cpJenLrlo5u5L82ZUwiBnb0Tw3DnvVlZMTE9gQALujoxuydLhbVPG3kl
	Ams/Y4VV0aQGv+jq6cAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBAio-00000006T1z-2K0L;
	Wed, 13 Nov 2024 10:35:38 +0000
Received: from mail-pl1-f174.google.com ([209.85.214.174])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBAYD-00000006QvI-1Cnw;
	Wed, 13 Nov 2024 10:24:42 +0000
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-211a4682fcaso21867145ad.2;
        Wed, 13 Nov 2024 02:24:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731493480; x=1732098280;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5VFf/Xc2nlS+yNT+I41QxsowbM1i+EaeG4ziE6m3Pdg=;
        b=WmPWaXs5YJGIq+m6A2AHspFoY3Qoci80nXeBdJ96HOmkXVDo9a9tagQdqWNL1BCj6Q
         AAR+gaGWSU+Ir77A87lXl0U73kVSsuEvn1NS9Kb2EaVTLimGFj4e9ACtchqcD93Q4h4/
         wrETgNpPu7Ss/Ulk/z1Z9+DGcCx6IRWf7k/8VP8alg+aNxZ+zNvWu41poI9UH88w8J5F
         HAAdtRvaY1Z4TPtjur6K5Xm3JpGouEGnF7nUNMGixm5eP1C+bGwdfb6XgJywH+tTJ5Xt
         mNHnyqqxxQvr45TVeL7Skl0KXvGXUN/F6bM/ObOyZhpTZeoiQKuOyhd0wublQpXGzZgf
         dCkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZ9Cof4kmNhe/FihBO8xq/iP8VV1gjrdY3d/Vu+xUXs8s8sV4UnLcLvVaJcic6VPRJs/9td+awZQ9FvD+h9TNf@lists.infradead.org, AJvYcCVor9Uz5bAhH+NSSSexn+Frxy1LlgvJYdRxAiMoxGj5XhNtM/OD5ZJ3TWutsSFPZ9jCApo6n0HIJYjiVgR8hqU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYioRLycAIl/0QcTznBOHcsHT6oY4KQJvKJOpzBOjjw+55UvZ9
	EDkaxhAFubJRXeujJpsnHBlL2O3f4K3LitHd99ok6nW2XQ5tdCATcXIGYPNl
X-Google-Smtp-Source: AGHT+IGSECJ2rMpEiePoumLaiy6PEO05W+J2+Ji5a24UEPvreyuQK40KdAa2LZiLyRcgNv8DDtTNng==
X-Received: by 2002:a17:903:6cd:b0:211:898:7cf0 with SMTP id d9443c01a7336-211834e6c07mr180355875ad.12.1731493480199;
        Wed, 13 Nov 2024 02:24:40 -0800 (PST)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com. [209.85.210.182])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177e49bcbsm107587125ad.161.2024.11.13.02.24.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2024 02:24:39 -0800 (PST)
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-720c286bcd6so6044842b3a.3;
        Wed, 13 Nov 2024 02:24:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVqYc/qNJIgt3HQ7B7utOKyGShg2kKM8oT8XxPRmkm85zOLAkW5pxEbZ+GgjZoYXSA683r6V7+2mxrupxTw6wZ3@lists.infradead.org, AJvYcCXhn0V1v6ZDf7AQ2xI2qasE2AWtYN1uE34fuZ/6rIxYsEn4Ix3qSSRNnALRwXEd2XtAsSLrtyOMJ1lWYis51ME=@lists.infradead.org
X-Received: by 2002:a05:6a00:14d3:b0:71e:659:f2e7 with SMTP id
 d2e1a72fcca58-724132a1a87mr26548820b3a.8.1731493479293; Wed, 13 Nov 2024
 02:24:39 -0800 (PST)
MIME-Version: 1.0
References: <20241111181807.13211-1-tszucs@linux.com> <20241111181807.13211-4-tszucs@linux.com>
 <4ba81dfa-f276-4e05-b46b-92f50dbcfcc4@kwiboo.se> <CA+GksrJLpeU8x-kjR1Ng3ySf+giiufCsJuBssng9qoX1PjAunA@mail.gmail.com>
 <9330ebb370780c001fd2aaee49aec9e8@manjaro.org> <CA+GksrJjDPve29Vh7ZFhM+JFp058xmXZAPeuLuFth7v=JeiH2w@mail.gmail.com>
 <0eb19e4daf2cdf3d4a04935876c3d3b0@manjaro.org>
In-Reply-To: <0eb19e4daf2cdf3d4a04935876c3d3b0@manjaro.org>
From: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
Date: Wed, 13 Nov 2024 11:24:28 +0100
X-Gmail-Original-Message-ID: <CA+Gksr+E-tZe4sKVNa8zpATwdTW_DiOQxOf_Jujf5SURzhSPSg@mail.gmail.com>
Message-ID: <CA+Gksr+E-tZe4sKVNa8zpATwdTW_DiOQxOf_Jujf5SURzhSPSg@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Enable UART8 on rock-3b
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Chukun Pan <amadeus@jmu.edu.cn>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_022441_348760_7683B199 
X-CRM114-Status: GOOD (  30.18  )
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

SGkgRHJhZ2FuLAoKT24gV2VkLCBOb3YgMTMsIDIwMjQgYXQgMTI6MjXigK9BTSBEcmFnYW4gU2lt
aWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBIZWxsbyBUYW1hcywKPgo+IE9uIDIw
MjQtMTEtMTIgMjI6MDQsIFRhbcOhcyBTesWxY3Mgd3JvdGU6Cj4gPiBPbiBUdWUsIE5vdiAxMiwg
MjAyNCBhdCA0OjA34oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gPiB3
cm90ZToKPiA+PiBQbGVhc2UgY29ycmVjdCBtZSBpZiBJJ20gd3JvbmcsIGJ1dCBpc24ndCB0aGlz
IFVBUlQgc3VwcG9zZWQgdG8gYmUKPiA+PiB1c2VkIGZvciB0aGUgQmx1ZXRvb3RoIHBhcnQgb2Yg
YW4gU0RJTyBXaUZpICsgQmx1ZXRvb3RoIG1vZHVsZSwgaW4KPiA+PiBmb3JtIG9mIGEgbm9uLXN0
YW5kYXJkIE0uMiBtb2R1bGUgdGhhdCBSYWR4YSBzZWxscz8KPiA+Cj4gPiBVQVJUOCBpcyBzdXBw
b3NlZCB0byBiZSB1c2VkIGZvciBhbnkgcmFkaW8gbW9kdWxlIGNvbm5lY3RlZCB0byB0aGUgTTJF
Cj4gPiBjb25uZWN0b3IuCj4gPiBJdCB3aWxsIHR5cGljYWxseSBiZSByZXNwb25zaWJsZSBmb3Ig
Qmx1ZXRvb3RoIG9yIEJMRSBidXQgaXQgY291bGQgYmUKPiA+IDgwMi4xNS40IG9yIHdoYXRldmVy
LiBJbiBhbnkgY2FzZSwgYWxsIHdhbnRpbmcgdG8gdXNlIGl0IHdpbGwgbmVlZCB0aGUKPiA+IHVh
cnQ4IG5vZGUgZW5hYmxlZC4KPgo+IEkgc2VlLCBidXQgSSdtIHN0aWxsIGd1ZXNzaW5nIHdoYXQn
cyB0aGUgYWN0dWFsIHVzZSBvZiBlbmFibGluZyB0aGUKPiBVQVJUOCB3aGVuIGl0IHdpbGwgcmVt
YWluIHByZXR0eSBtdWNoIHVzZWxlc3Mgd2l0aG91dCB0aGUgYWRkaXRpb25hbAo+IERUIGNvbmZp
Z3VyYXRpb24sIHN1Y2ggYXMgaW4gdGhlIFdpRmkrQmx1ZXRvb3RoIERUIG92ZXJsYXkgdGhhdCBK
b25hcwo+IHNlbnQgYSBiaXQgZWFybGllcj8KClRoZSBhY3R1YWwgdXNlIGlzIGRldmljZSBlbmFi
bGVtZW50LgoKPgo+IEkgdGhpbmsgdGhhdCB0aGUgVUFSVDggc2hvdWxkIGJlIGVuYWJsZWQgdG9n
ZXRoZXIgd2l0aCBzb21ldGhpbmcgdGhhdAo+IGFjdHVhbGx5IG1ha2VzIHVzZSBvZiBpdCwgd2hp
Y2ggaW4gdGhpcyBjYXNlIHVuZm9ydHVuYXRlbHkgY2Fubm90IGJlCj4gYXV0b21hdGljYWxseSBk
ZXRlY3RlZCBhbmQgY29uZmlndXJlZCwgc28gaXQgYmVsb25ncyB0byBhIERUIG92ZXJsYXkuCj4g
SSdsbCBnZXQgYmFjayB0byB0aGlzIGluIG15IG5leHQgcmVzcG9uc2UuCgpJIGFncmVlLCBibHVl
dG9vdGggYmxvY2tzIGRlZGljYXRlZCB0byBzcGVjaWZpYyBtb2R1bGVzIHNob3VsZCBiZWxvbmcK
dG8gRFQgb3ZlcmxheXMuCgo+Cj4gPj4gV2l0aCB0aGF0IGluIG1pbmQsIEkgc2VlIHZlcnkgbGl0
dGxlIHNlbnNlIGluIGp1c3QgZW5hYmxpbmcgdGhlIFVBUlQsCj4gPj4gd2l0aG91dCBkZWZpbmlu
ZyB0aGUgZW50aXJlIEJsdWV0b290aCBpbnRlcmZhY2UsIHdoaWNoIEFGQUlLIHByb2R1Y2VzCj4g
Pgo+ID4gRGVmaW5pbmcgYSBibHVldG9vdGggbm9kZSB3b3VsZCBoYXJkd2lyZSBpZGlvc3luY3Jh
c2llcyBvZiBhIGdpdmVuCj4gPiByYWRpbyBtb2R1bGUncyBCbHVldG9vdGggY29yZS4gU3VyZSB5
b3UgY291bGQgYWRkIGEgc2xlZXAgY2xvY2ssIGFsbAo+ID4ga2luZCBvZiBzaWRlYmFuZCBzaWdu
YWxzIGZvciB3YWtldXBzLCByZXNldCwgcG93ZXIgZG93biwgZXRjLiBCdXQgaGV5LAo+ID4gc29t
ZSB3aWxsIHVzZSB0aGVtLCBzb21lIHdvbid0LiBJIHRoaW5rIGl0J3MgdW5kZXNpcmFibGUgYW5k
Cj4gPiB1bm5lY2Vzc2FyeS4gWW91IGNhbiBoY2lhdHRhY2ggZnJvbSBoZXJlIGFuZCBtb3N0IHdp
bGwgd29yayBqdXN0IGxpa2UKPiA+IHRoYXQuIFRpZ2h0ZXIgaW50ZWdyYXRpb24gb3IgYW55dGhp
bmcgc3BlY2lhbCwgbW9kdWxlIHNwZWNpZmljIG9uIHRvcAo+ID4gc2hvdWxkIGJlIGhhbmRsZWQg
aW5kaXZpZGlhbGx5LCBvbiBhIGNhc2UtYnktY2FzZSBiYXNpcy4gVGhpcyBpcyBhIGRldgo+ID4g
Ym9hcmQgYWZ0ZXIgYWxsLiBJIHNheSB0cmljayBvZiBhbGwgdHJhZGVzLgo+ID4KPiA+PiBuYXN0
eSBsb29raW5nIGVycm9yIG1lc3NhZ2VzIGluIHRoZSBrZXJuZWwgbG9nIHdoZW4gdGhlcmUncyBh
Y3R1YWxseQo+ID4+IG5vdGhpbmcgY29ubmVjdGVkIHRvIHRoZSBVQVJULgo+ID4KPiA+IE15IGRt
ZXNnIGlzIGNsZWFuIGFzIGEgd2hpc3RsZQo+ID4gcm9vdEByb2NrLTNiOn4jIGRtZXNnIHwgZ3Jl
cCAtRSAnZmU2YzAwMDB8dHR5UzAnCj4gPiBbICAgIDAuMzQ0ODE4XSBmZTZjMDAwMC5zZXJpYWw6
IHR0eVMwIGF0IE1NSU8gMHhmZTZjMDAwMCAoaXJxID0gMjYsCj4gPiBiYXNlX2JhdWQgPSAxNTAw
MDAwKSBpcyBhIDE2NTUwQQo+ID4gV2hhdCBraW5kIG9mIG5hc3R5IGVycm9ycyBkbyB5b3UgcmVj
YWxsPwo+Cj4gVGhvc2Ugd291bGQgYmUgdGhlIGtlcm5lbCBlcnJvciBtZXNzYWdlcyBwcm9kdWNl
ZCB3aXRoIHRoZSBCbHVldG9vdGgKPiBEVCBjb25maWd1cmF0aW9uIGluIHBsYWNlLCBidXQgd2l0
aCBubyBTRElPIG1vZHVsZSBpbnN0YWxsZWQuCgpUaGVzZSBhcmUgdGhlIGtlcm5lbCBtZXNzYWdl
cyByZWxhdGVkIHRvIFVBUlQ4IHdpdGggdGhlIHVhcnQ4IERUIG5vZGUKZW5hYmxlZCBhbmQgYW4g
U0RJTyBtb2R1bGUgaW5zdGFsbGVkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

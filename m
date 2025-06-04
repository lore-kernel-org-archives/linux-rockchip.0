Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF553C5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 17:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRuCubDaYo4RtTTMGBKOD+KLwGZyqmgd01Jf+VGa7RU=; b=Am6bRx5S44FTkl
	+0ortVAALnLYEJxLQXGCPrFHq0lNKHNUuftiUA5N4g/DB/GO3oP0sTPEhuVWEPZZuIGzotfymwVz2
	vGZy/XJs/kREjAr14GwwCXE2biDIzSkaEQE74kw4qrL0TYwWDDSghUhSchTLrtjM+Zy5SluC21bu0
	BO00e0qXlXWcfBYCKYfLjQ/gjeqEPPTTcTMGcxHWYw6+GBndMNMQmNL75/gdM/D5o5trPLBRWO9p7
	rZSv7KIyclot5EPj1j0JTz1v9lX+MFv3l7YyOZYVtQF4BHXajDbXeEizvXSD54N5FYK1msFqhAq0i
	DVVCT4ukPeTPokGUtgUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMrfA-0000000DrqD-0FHm;
	Wed, 04 Jun 2025 17:12:28 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMrd3-0000000Drb3-20Ch
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 17:10:19 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-74267c68c11so158822b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jun 2025 10:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749057016; x=1749661816; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=l/psGtim6qYd78+PihMTMNmgRMTiPXj9RR2qxzIsxV0=;
        b=rQHEptYvw4g77nXrvuLDgaKCV72COV6rw/2pcQOhqK1XgCjpRb3M0stSHuelaQsxwK
         o+TddEPuBINPrDH2W/qvGR7Sit8MpraedA12q3wgcwv3kU4ilBxDIp0Bg4WgzpRkYuTE
         zrBDJRRaf6v+YYLGvNgHOWsRvamrrnyQxjSG9lFvfqXBoWTQJsb/P8axS3Oy1J0OEM/2
         8G8Hqkdbi8yREf1p1g+heRGuIQNvGrxToyRjglj0zn4ZCHbUKtBl3ziudREdKRlR2zZs
         23aGnu26033ViEn7+4sSf4q7j62xZPwZhfflGjbEf0kr55XENQCqhQCvzB4wag+ze792
         YLAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749057016; x=1749661816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l/psGtim6qYd78+PihMTMNmgRMTiPXj9RR2qxzIsxV0=;
        b=e2aG1RvhBX0myUD1JeC2lcRZFG6EuUeTjqu+ysO23MoJGfAdJmEfSzyibne72zxT7+
         3dYq3nfy/Nhdmn2ODU4sgIoxlKo5XyDxK5LaF6EDU/gWRLxLLn4zhRQDxGyvHI5j0JFr
         hmZFWBikiUxwhAPiKwx+7c+51grZ0OtjAkhc7GXhCrS3Es2W8NE30jlognij46bR7+fq
         x42iWxZuCoqL3tnuqdTZrgW8DLqV55QZE4HL8ues0KMxp0HpAtu8OtALEkCRjH9L3j74
         I36WMGKIF5Mt/4U4JKA+Zo61W3/1xMxNi0YdAi7KB3IgAuAdQuoiw/PYoZJgdagPFjJc
         gZMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUq59hCIzpQSWDXo8uYaSmzIXlPHqiX0oBH3Ux4tRFmRGR/4YRJ77/gIBGkL/yNQKYmBJflEz5zeFGxrEPig==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4D1c9Fw9cUqY3iKX7EORLvhI1bEO8cXraTdmKg9wYJAoxJQQ0
	bYEykImBE7jSUvArXJGZEh1CIPwJE9EO8Ua5wjfxcG+JLGjH8rsibYy/JMQUOS4OEw==
X-Gm-Gg: ASbGnctdxTR3dhBBt3bcODq7kDvoTufmCELTPYuDIqSOMJAmPs0TRT0IWSmJyPl9Hbg
	d7dqhC4vrPOdcW0/m4ItscTW47G4IS1I86WMZT/9q2GHW/LjrZePEpHKzdHn+XEKqSTYGUnS5Oz
	LZGMKKjHuBr4OdDm5iUHU8NjnH3JYstmiydj0FnQP/vCvuLtglbYYPZFcBkEplLqNTktXOQtBBg
	FYGYFyILHEGRZTUzJfocddcxs3bxUON/OdZ7E7gjLBOSF9q+xxGDfspUgbjZ+1gU/993FCSG1nd
	pL1g7j1IkNwp7EM5kL8IhTiWIfvyoLf3VYO+cJ/R/rMtKIzm/pavNabRZLORuA==
X-Google-Smtp-Source: AGHT+IEOw6il7mDOYzfg80Vp5UmC2qNm3ax6rT9gftYx3483bHLkDut/HlymS/lHemQQjcW6U7fWaA==
X-Received: by 2002:a05:6a00:1823:b0:746:2591:e531 with SMTP id d2e1a72fcca58-7480b4974dfmr5191876b3a.12.1749057015947;
        Wed, 04 Jun 2025 10:10:15 -0700 (PDT)
Received: from thinkpad ([120.60.60.253])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747affcfa0csm11731132b3a.131.2025.06.04.10.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 10:10:15 -0700 (PDT)
Date: Wed, 4 Jun 2025 22:40:09 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Hans Zhang <18255117159@163.com>, 
	Laszlo Fiat <laszlo.fiat@proton.me>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] PCI: dw-rockchip: Do not enumerate bus before
 endpoint devices are ready
Message-ID: <rrtrcwajj4vjvbqzosskdnroqnijzaafncgckoh2dlk3c4njvs@twop3vyidmh7>
References: <aD8Bz4CkdnAd8Col@ryzen>
 <20250603181250.GA473171@bhelgaas>
 <aEAwxFysCgdJCD54@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aEAwxFysCgdJCD54@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_101017_512431_E443F48C 
X-CRM114-Status: GOOD (  38.05  )
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

T24gV2VkLCBKdW4gMDQsIDIwMjUgYXQgMDE6NDA6NTJQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBUdWUsIEp1biAwMywgMjAyNSBhdCAwMToxMjo1MFBNIC0wNTAwLCBCam9ybiBI
ZWxnYWFzIHdyb3RlOgo+ID4gCj4gPiBIbW1tLCBzb3JyeSwgSSBtaXNpbnRlcnByZXRlZCBib3Ro
IDEvNCBhbmQgMi80LiAgSSByZWFkIHRoZW0gYXMgImFkZAo+ID4gdGhpcyBkZWxheSBzbyB0aGUg
UExFWFRPUiBkZXZpY2Ugd29ya3MiLCBidXQgaW4gZmFjdCwgSSB0aGluayBpbiBib3RoCj4gPiBj
YXNlcywgdGhlIGRlbGF5IGlzIGFjdHVhbGx5IHRvIGVuZm9yY2UgdGhlIFBDSWUgcjYuMCwgc2Vj
IDYuNi4xLAo+ID4gcmVxdWlyZW1lbnQgZm9yIHNvZnR3YXJlIHRvIHdhaXQgMTAwbXMgYmVmb3Jl
IGlzc3VpbmcgYSBjb25maWcKPiA+IHJlcXVlc3QsIGFuZCB0aGUgZmFjdCB0aGF0IGl0IG1ha2Vz
IFBMRVhUT1Igd29yayBpcyBhIHNpZGUgZWZmZWN0IG9mCj4gPiB0aGF0Lgo+IAo+IFdlbGwsIHRo
ZSBQbGV4dG9yIE5WTWUgZHJpdmUgdXNlZCB0byB3b3JrIHdpdGggcHJldmlvdXMga2VybmVscywK
PiBidXQgcmVncmVzc2VkLgo+IAo+IEJ1dCB5ZXMsIHRoZSBkZWxheSB3YXMgYWRkZWQgdG8gZW5m
b3JjZSAiUENJZSByNi4wLCBzZWMgNi42LjEiCj4gcmVxdWlyZW1lbnQgZm9yIHNvZnR3YXJlIHRv
IHdhaXQgMTAwbXMsIHdoaWNoIG9uY2UgYWdhaW4gbWFrZXMKPiB0aGUgUGxleHRvciBOVk1lIGRy
aXZlIHdvcmsuCj4gCj4gCj4gPiAKPiA+IFRoZSBiZWdpbm5pbmcgb2YgdGhhdCAxMDBtcyBkZWxh
eSBpcyAiZXhpdCBmcm9tIENvbnZlbnRpb25hbCBSZXNldCIKPiA+IChwb3J0cyB0aGF0IHN1cHBv
cnQgPD0gNS4wIEdUL3MpIG9yICJsaW5rIHRyYWluaW5nIGNvbXBsZXRlcyIgKHBvcnRzCj4gPiB0
aGF0IHN1cHBvcnQgPiA1LjAgR1QvcykuCj4gPiAKPiA+IEkgdGhpbmsgd2UgbGFjayB0aGF0IDEw
MG1zIGRlbGF5IGluIGR3YyBkcml2ZXJzIGluIGdlbmVyYWwuICBUaGUgb25seQo+ID4gZ2VuZXJp
YyBkd2MgZGVsYXkgaXMgaW4gZHdfcGNpZV9ob3N0X2luaXQoKSB2aWEgdGhlIExJTktfV0FJVF9T
TEVFUF9NUwo+ID4gaW4gZHdfcGNpZV93YWl0X2Zvcl9saW5rKCksIGJ1dCB0aGF0IGRvZXNuJ3Qg
Y291bnQgYmVjYXVzZSBpdCdzCj4gPiAqYmVmb3JlKiB0aGUgbGluayBjb21lcyB1cC4gIFdlIGhh
dmUgdG8gd2FpdCAxMDBtcyAqYWZ0ZXIqIGV4aXRpbmcKPiA+IENvbnZlbnRpb25hbCBSZXNldCBv
ciBjb21wbGV0aW5nIGxpbmsgdHJhaW5pbmcuCj4gCj4gSW4gZHdfcGNpZV93YWl0X2Zvcl9saW5r
KCksIGluIHRoZSBmaXJzdCBpdGVyYXRpb24gb2YgdGhlIGxvb3AsIHRoZSBsaW5rCj4gd2lsbCBu
ZXZlciBiZSB1cCAoYmVjYXVzZSB0aGUgbGluayB3YXMganVzdCBzdGFydGVkKSwKPiBkd19wY2ll
X3dhaXRfZm9yX2xpbmsoKSB3aWxsIHRoZW4gc2xlZXAgZm9yIExJTktfV0FJVF9TTEVFUF9NUyAo
OTAgbXMpLAo+IGJlZm9yZSB0cnlpbmcgYWdhaW4uCj4gCj4gTW9zdCBsaWtlbHkgdGhlIGxpbmsg
dHJhaW5pbmcgdG9vayB3YXkgbGVzcyB0aGFuIDEwMCBtcywgc28gbW9zdCBvZiB0aG9zZQo+IDkw
IG1zIHdpbGwgcHJvYmFibHkgYmUgYWZ0ZXIgbGluayB0cmFpbmluZyBoYXMgY29tcGxldGVkLgo+
IAo+IFRoYXQgaXMgbW9zdCBsaWtlbHkgd2h5IFBsZXh0b3Igd29ya2VkIG9uIG9sZGVyIGtlcm5l
bHMgKHdoaWNoIGRvZXMgbm90Cj4gdXNlIHRoZSBsaW5rIHVwIElSUSkuCj4gCj4gSWYgd2UgYWRk
IGEgMTAwIG1zIHNsZWVwIGFmdGVyIHdhaXRfZm9yX2xpbmsoKSwgdGhlbiBJIHN1Z2dlc3QgdGhh
dCB3ZQo+IGFsc28gcmVkdWNlIExJTktfV0FJVF9TTEVFUF9NUyB0byBzb21ldGhpbmcgc2hvcnRl
ci4KPiAKCk5vLiBUaGUgOTAwbXMgc2xlZXAgaXMgdG8gbWFrZSBzdXJlIHRoYXQgd2Ugd2FpdCAx
cyBiZWZvcmUgZXJyb3Jpbmcgb3V0CmFzc3VtaW5nIHRoYXQgdGhlIGRldmljZSBpcyBub3QgcHJl
c2VudC4gVGhpcyBpcyBtYW5kYXRlZCBieSB0aGUgc3BlYy4gU28KaXJyZXNwZWN0aXZlIG9mIHRo
ZSBkZWxheSB3ZSBhZGQgKmFmdGVyKiBsaW5rIHVwLCB3ZSBzaG91bGQgdHJ5IHRvIGRldGVjdCB0
aGUKbGluayB1cCBmb3IgfjFzLgoKQW5kIGZvciBhZGRpbmcgdGhlIGRlbGF5LCBpdCBzaG91bGQg
YmUgZG9uZSBhZnRlciB0aGUgY2hlY2sgZm9yIHJldHJ5IGNvdW50OgoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5jIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLmMKaW5kZXggYjM2MTVkMTI1OTQyLi45MmVi
NjYxYmFiZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVz
aWdud2FyZS5jCisrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2Fy
ZS5jCkBAIC03MDAsNiArNzAwLDggQEAgaW50IGR3X3BjaWVfd2FpdF9mb3JfbGluayhzdHJ1Y3Qg
ZHdfcGNpZSAqcGNpKQogICAgICAgICAgICAgICAgcmV0dXJuIC1FVElNRURPVVQ7CiAgICAgICAg
fQogCisgICAgICAgbXNsZWVwKFBDSUVfVF9SUlNfUkVBRFlfTVMpOworCiAgICAgICAgb2Zmc2V0
ID0gZHdfcGNpZV9maW5kX2NhcGFiaWxpdHkocGNpLCBQQ0lfQ0FQX0lEX0VYUCk7CiAgICAgICAg
dmFsID0gZHdfcGNpZV9yZWFkd19kYmkocGNpLCBvZmZzZXQgKyBQQ0lfRVhQX0xOS1NUQSk7Cgo+
IAo+ID4gCj4gPiBXZSBkb24ndCBrbm93IHdoZW4gdGhlIGV4aXQgZnJvbSBDb252ZW50aW9uYWwg
UmVzZXQgd2FzLCBidXQgaXQgd2FzCj4gPiBjZXJ0YWlubHkgYmVmb3JlIHRoZSBsaW5rIGNhbWUg
dXAuICBJbiB0aGUgYWJzZW5jZSBvZiBhIHRpbWVzdGFtcCBmb3IKPiA+IGV4aXQgZnJvbSByZXNl
dCwgc3RhcnRpbmcgdGhlIHdhaXQgYWZ0ZXIgbGluay11cCBpcyBwcm9iYWJseSB0aGUgYmVzdAo+
ID4gd2UgY2FuIGRvLiAgVGhpcyBjb3VsZCBiZSBlaXRoZXIgYWZ0ZXIgZHdfcGNpZV93YWl0X2Zv
cl9saW5rKCkgZmluZHMKPiA+IHRoZSBsaW5rIHVwIG9yIHdoZW4gd2UgaGFuZGxlIHRoZSBsaW5r
LXVwIGludGVycnVwdC4KPiA+IAo+ID4gUGF0Y2hlcyAxIGFuZCAyIHdvdWxkIGZpeCB0aGUgbGlu
ay11cCBpbnRlcnJ1cHQgY2FzZS4gIEkgdGhpbmsgd2UgbmVlZAo+ID4gYW5vdGhlciBwYXRjaCBm
b3IgdGhlIGR3YyBjb3JlIGZvciBkd19wY2llX3dhaXRfZm9yX2xpbmsoKS4KPiAKPiBJIGFncmVl
LCBzb3VuZHMgbGlrZSBhIHBsYW4uCj4gCj4gCj4gPiAKPiA+IEkgd2lzaCBJJ2QgaGFkIHRpbWUg
dG8gc3BlbmQgb24gdGhpcyBhbmQgaW5jbHVkZSBwYXRjaGVzIDEgYW5kIDIsIGJ1dAo+ID4gd2Un
cmUgdXAgYWdhaW5zdCB0aGUgbWVyZ2Ugd2luZG93IHdpcmUgYW5kIEknbGwgYmUgb3V0IHRoZSBl
bmQgb2YgdGhpcwo+ID4gd2Vlaywgc28gSSB0aGluayB0aGV5J2xsIGhhdmUgdG8gd2FpdC4gIEl0
IHNlZW1zIGxpa2Ugc29tZXRoaW5nIHdlIGNhbgo+ID4gc3RpbGwganVzdGlmeSBmb3IgdjYuMTYg
dGhvdWdoLgo+IAo+IEkgdGhpbmsgaXQgc291bmRzIGdvb2QgdG8gdGFyZ2V0IHRoaXMgYXMgZml4
ZXMgZm9yIHY2LjE2Lgo+IAoKWWVhaC4gQXRsZWFzdCBwYXRjaCAxIGlzIGZpeGluZyBhIHJlZ3Jl
c3Npb24sIHNvIGl0IHNob3VsZCBiZSBpbmNsdWRlZCBmb3IKdjYuMTYuCgotIE1hbmkKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

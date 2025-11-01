Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64A32CCFA00
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Nov 2025 13:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPqI+2+XHGZqd74h8RDp0bp9/An1bK1yVEf0VZoa8Kw=; b=jM7YXE3dYPE0kr
	DUGdLRrtnozIxg9eZLd9vVA0zD1AGVoLfIJtN1u5jSpGv56qiOLlZUN27kZd+VBMINPUaxE5TsOc6
	O+zgxHhJMvdMZ7zfu8P1pxCqDtowny13aCwHwyyDxiy5Sj+ehDzn7cnEw10Ycf3aTdHCMlen+BTlf
	bY/CJI6iQNCu3AecBGcSN85a4z4BC1Q9O9ltPwsQpJBPl9tM8p/stEquPTYV0tzSvgROGTW0vcAzU
	+X4s1QEZ4ARjEBxcpMGw1pzUXSIi5uBZdoc4c3YZ30m1HSVLUG6TUQS1MY9k5KMEwrBLaLNVnG2lU
	HQhqEHYW1H187qk4rYvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFBRg-00000007lGN-10je;
	Sat, 01 Nov 2025 13:15:04 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFBRc-00000007lEz-3K2U
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Nov 2025 13:15:02 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-429babfccd9so2643098f8f.0
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Nov 2025 06:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762002897; x=1762607697; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Upr6LEZod7UihSvIyoqPLtgSmSPBWGzOTDYSELD2Pls=;
        b=G6+7LZRwAzerrNP3iN/UU2r2xhvpsSO2j7kaoykkqMHC5r4DbZc1H7AboyAECl303V
         8mOqtOXTdS2qhIAsbfdZvx++4dZtQe/zNYwBGcjgS1mg3lszFREF5W+3LCSbgCTOlnTs
         aW60U9+v8u9nt12wWVMOkb7CXRIn60Y4/kHnQvWtVMxVj/8lAfIEOr0acgu5X1zNrBFG
         CthDV3X7k95PuOg5BbXO92TTkhmu1z9w63icNWERJ4hkaEXaPxDXS/wW4BZ0vilaGIPA
         PDAAA0fuxWjoXxFISd6ezth3uDXVdSnfDVnk6HthO3Wh1ct/t0dPLQ5qEURO4N9uI0it
         cn7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762002897; x=1762607697;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Upr6LEZod7UihSvIyoqPLtgSmSPBWGzOTDYSELD2Pls=;
        b=CumYhau4JT5OMBNVN3WoT2oL2RsHgaWob3LOpyIDHrJpREwZMDoeSBPNR8gWLpIoHD
         z4DmbS7/Q24gsSr0P22x1MDCK3JI1DeW/robNwC2Fiqj78Nj2i/5DoPxKvd6zGr/Gn6d
         pcbA1xqqEltd/d1ALEXBm3DCYrB2pqvf+Q0+OQ7ASw9ykUGEJ/g1+hAPVW+JXg5c83Lf
         uxwF/hkubM9pTL3n6qmK6wo7bIEDUDJuEF308ULPMxqKhZV1gLxUxfMBkCzAlMxOEdKI
         bUnTnYQUupmTomm2d0Q9j6QFUn6O4wJfeONPkZKuCg5mt9uKYf65ZSDm6748GobDdC0e
         JOAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXttnqfisBO4Ss386eniT9C3BjXahjpxnj1qiOSg4e8RaTrpdbiA+Yi3c3pzEHy3B8L20NQj+I9yW6bXtyJKA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzVbOXudO4VbpujYnimQ9RXEykhdckXeh5nHPFXA419MbROnMQi
	d+HR1o9RNzNf6aftjgwbsB2sfAwxAg9Lv2On83HIrAT8e0kylp8MRLFF
X-Gm-Gg: ASbGncsjlOivQNQ35+OsojvTjhKCjo4f3OXeqDWBUGnLgRNM9my9vYwCYB6K2LuPiaw
	kcGVmu5Ws60qL8Le9m5I52ajokKp0QcawQ+G4Rn3LgaOaL+8mn0bRmRbc9O4jkFaUvYm4X8c7v0
	fvCYVBYHhd+vbPedKusRQKFWeklR5Fv/EKINFibuQU7lwK8wnAVNu+pYZj/3wntBNZKJ9Sx5zbE
	6zArP0nW/7OwyoKyyzlf/Zpj3Iqe0CHmeBYVk/Sb7kA2+GJPnLCC/pSoOcSJUaWXHTwGYiO3buH
	6iwRW7Liz+uM6FLn86b/9GNh+OYS7/YoWZLvUiBqDdP4M4tE1Etu46HCd/5fO+bps2GNWuUxCQ9
	cKGAP2ZVVnZVtCJXSyh7Vu0MNlnw1TXqEHrNrWr4jp53dGhMxIskWr0Xf/Vw3q5B+uYqrtD3WUO
	V9k0xkwEydp7t7Jn2YTawMroeoUEUSFHeVvHRfD5vNp8+GicOnTzlDgZZgVlOTBsUjIxszc/A=
X-Google-Smtp-Source: AGHT+IG9TQlb1uL0biiWsjyFRLeVv/rKy56YQ2LqQbB7TDvmJ+cIF0BHCesuavP4Wddkzt7LbjMbtQ==
X-Received: by 2002:a5d:584b:0:b0:3ec:2529:b4e5 with SMTP id ffacd0b85a97d-429bd6aa4e9mr7024993f8f.38.1762002896422;
        Sat, 01 Nov 2025 06:14:56 -0700 (PDT)
Received: from ?IPV6:2a02:8010:6606:0:4eb:d8a2:c0a2:24db? ([2a02:8010:6606:0:4eb:d8a2:c0a2:24db])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c13e03d0sm9259512f8f.26.2025.11.01.06.14.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Nov 2025 06:14:55 -0700 (PDT)
Message-ID: <1a66cbba-41c3-425f-b830-efe4b83280f3@gmail.com>
Date: Sat, 1 Nov 2025 13:14:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: pwm-fan overlay for NanoPC-T6
To: Heiko Stuebner <heiko@sntech.de>, Alexey Charkov <alchark@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org
References: <d583ee43-38c4-40fb-b33b-ce3153c9723b@gmail.com>
 <CABjd4Yzfx-4xBHVB=W_r6nEdbwNJKdpHYB6bN3Xsk8dZOegJWw@mail.gmail.com>
 <2cfeeb0c-f7e0-b101-62c4-3b6eae40a30b@manjaro.org> <2246326.irdbgypaU6@phil>
Content-Language: en-GB
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <2246326.irdbgypaU6@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_061501_501377_021D400E 
X-CRM114-Status: GOOD (  37.13  )
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

T24gMDEvMTEvMjAyNSAxMTo0NCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCAy
Ny4gT2t0b2JlciAyMDI1LCAyMjoxNTowNSBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBz
Y2hyaWViIERyYWdhbiBTaW1pYzoKPj4gSGVsbG8gQWxleGV5LAo+Pgo+PiBPbiBNb25kYXksIE9j
dG9iZXIgMjcsIDIwMjUgMjE6NTYgQ0VULCBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5j
b20+IHdyb3RlOgo+Pj4gT24gVHVlLCBPY3QgMjgsIDIwMjUgYXQgMTI6MDLigK9BTSBEcmFnYW4g
U2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4+Pj4gT24gTW9uLCBPY3QgMjcsIDIw
MjUgYXQgNzowOOKAr1BNIEh1Z2ggQ29sZS1CYWtlciA8c2lnbWFyaXNAZ21haWwuY29tPiB3cm90
ZToKPj4+Pj4gT24gMjcvMTAvMjAyNSAwOToxNCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+Pj4+
Cj4+Pj4+PiBJcyB0aGVyZSBhbnkgZG93bnNpZGUgdG8gZW5hYmxpbmcgdGhpcyB1bmNvbmRpdGlv
bmFsbHkgaW4gdGhlIGJvYXJkCj4+Pj4+PiAuZHRzPwo+Pj4+Pgo+Pj4+PiBPbmx5IHRoYXQgaXQg
Z29lcyBhZ2FpbnN0IHRoZSBwcmluY2lwbGUgdGhhdCB0aGUgRFQgc2hvdWxkIGRlc2NyaWJlIHRo
ZQo+Pj4+PiBoYXJkd2FyZTsgdGhlIGJvYXJkIC5kdHMgd291bGQgZGVzY3JpYmUgYSBjb29saW5n
IGRldmljZSB0aGF0IGRvZXNuJ3QKPj4+Pj4gYWN0dWFsbHkgZXhpc3Qgb24gdGhlIGJhc2UgYm9h
cmQuCj4+Pj4KPj4+PiBIYXZpbmcgYSBzZXBhcmF0ZSBEVCBvdmVybGF5IGlzIHBlcmZlY3RseSBm
aW5lIGlmIHdlIHdhbnQgdG8KPj4+PiBkZXNjcmliZSBhIGJvYXJkIGFic29sdXRlbHkgY29ycmVj
dGx5OiBpZiB0aGUgZmFuIGFjdHVhbGx5IGlzbid0Cj4+Pj4gcHJlc2VudCwgdGhlIG9wZXJhdGlu
ZyBzeXN0ZW0gc2hvdWxkbid0IGJlIG1hZGUgdG8gdGhpbmsgaXQgaXMKPj4+PiB0aGVyZSwgZXNw
ZWNpYWxseSBpZiB0aGVyZSdzIG5vIGZhbiBSUE0gZmVlZGJhY2ssIHdoaWNoIGlzIHRoZQo+Pj4+
IGNhc2Ugb24gYWxtb3N0IGFsbCBSb2NrY2hpcCBib2FyZHMgdGhhdCBzdXBwb3J0IGEgZmFuLgo+
Pj4+Cj4+Pj4gUHJldmVudGluZyB0aGUga2VybmVsIGZyb20gbWFuYWdpbmcgYSBub24tZXhpc3Rl
bnQgZmFuIG1pZ2h0IGV2ZW4KPj4+PiBzYXZlIHNvbWUgQ1BVIGN5Y2xlcywgZW5kaW5nIHVwIHBy
b2R1Y2luZyBhIGJpdCBsZXNzIGhlYXQsIHdoaWNoCj4+Pj4gY2FuIG9ubHkgaGVscCBpbiBwYXNz
aXZlbHkgY29vbGVkIHNldHVwcy4KPj4+Cj4+PiBTb3VuZHMgbGlrZSBhbiBvdmVyY29tcGxpY2F0
aW9uIHdpdGhvdXQgcmVhbCBiZW5lZml0LiBJdCdzIG9uZSB0aGluZwo+Pj4gd2l0aCBvdmVybGF5
cyBmb3IgZnVuY3Rpb25hbGl0eSB0aGF0IGNhbiBiZSBzb2Z0d2FyZS1pbmNvbXBhdGlibGUKPj4+
IGRlcGVuZGluZyBvbiB3aGV0aGVyIGFuIGV4dGVybmFsIGF0dGFjaG1lbnQgaXMgY29ubmVjdGVk
IG9yIGRlcGVuZGluZwo+Pj4gb24gdGhlIHR5cGUgb2YgYXR0YWNobWVudCBjb25uZWN0ZWQuIEhl
cmUgd2UgYXJlIGxvb2tpbmcgYXQgYSBwbGFpbgo+Pj4gMi1waW4gZmFuIHdoaWNoIGNhbm5vdCBi
ZSBzb2Z0d2FyZSBpbmNvbXBhdGlibGUgdG8gYW55dGhpbmcgcmVhbGx5Cj4+PiAoaXQncyBub3Qg
bGlrZSBvbmUgY291bGQgcmVwdXJwb3NlIHRoZSBmYW4gY29ubmVjdG9yIGZvciBhbnl0aGluZwo+
Pj4gbWVhbmluZ2Z1bCBpZiBhIGZhbiBpcyBub3QgaW4gdXNlLCBhbmQgbm9vbmUgZ2V0cyBodXJ0
IGlmIGEgUFdNIG91dHB1dAo+Pj4gaXMgbGVmdCBydW5uaW5nIHdpdGhvdXQgbG9hZCkuCj4+Pgo+
Pj4gVGhlIENQVSBjeWNsZXMgc3BlbnQgcGFyc2luZyBhIHNsaWdodGx5IGxhcmdlciBEVEIgYXQg
Ym9vdCBhcmUgbGlrZWx5Cj4+PiBjb21wYXJhYmxlIHRvIHRob3NlIHNwZW50IGFjdGl2YXRpbmcg
YSBQV00gb3V0cHV0IG5lZWRsZXNzbHkgdXBvbgo+Pj4gaGl0dGluZyB0aGUgYWN0aXZlIGNvb2xp
bmcgdHJpcCBwb2ludCwgYW5kIGJvdGggYXJlIG5lZ2xpZ2libGUgZm9yIGFueQo+Pj4gcHJhY3Rp
Y2FsIHB1cnBvc2UuCj4+Cj4+IEhtbSwgcmlnaHQsIEkgZm9yZ290IGZvciBhIG1vbWVudCB0aGF0
IHRoZSBQV00gb3V0cHV0IGlzIGdlbmVyYXRlZAo+PiBieSBkZWRpY2F0ZWQgaGFyZHdhcmUsIHNv
IG5vdCBtYW55IENQVSBjeWNsZXMgd291bGQgYmUgd2FzdGVkLgo+Pgo+PiBCVFcsIHdpdGggYSBm
YW4gUFdNIHNpZ25hbCBnZW5lcmF0ZWQgYnkgYSBzb2Z0LUdQSU8gb3V0cHV0LCBtdWNoCj4+IG1v
cmUgQ1BVIGN5Y2xlcyB3b3VsZCd2ZSBiZWVuIHNhdmVkIGJ5IG9taXR0aW5nIHRoZSBmYW4gZGVm
aW5pdGlvbgo+PiBpZiBpdCBpc24ndCBwcmVzZW50LCBidXQgdGhhdCBpc24ndCB0aGUgY2FzZSBo
ZXJlLgo+Pgo+Pj4+IEhvd2V2ZXIsIHRoZSBwcmFjdGljZSBzbyBmYXIgaGFzIGJlZW4gdG8gZGVz
Y3JpYmUgdGhlIGZhbnMgaW4gdGhlCj4+Pj4gbWFpbiBib2FyZCBkdHMgZmlsZXMsIGlmIHRoZSBi
b2FyZCBwcm92aWRlcyBmYW4gc3VwcG9ydCwgcmVnYXJkbGVzcwo+Pj4+IG9mIHRoZSBmYW4gYmVp
bmcgcHJlc2VudCBpbiBhIHBhcnRpY3VsYXIgYm9hcmQgc2V0dXAgb3Igbm90Lgo+Pj4+Cj4+Pj4+
IEkgZ3Vlc3MgdGhlbiBpbiB0aGVvcnksIGFuIE9TIG1pZ2h0IGFsbG93IHRoZSBTb0MgdG8gcmVh
Y2ggdW5kZXNpcmFibHkgaGlnaAo+Pj4+PiB0ZW1wZXJhdHVyZXMgaWYgaXQncyByZWx5aW5nIG9u
IHRoZSBub25leGlzdGVudCBmYW4gdG8gY29vbCBpdCBkb3duLiBCdXQgSQo+Pj4+PiBkb24ndCB0
aGluayB0aGlzIHdvdWxkIGJlIGFuIGlzc3VlIG9uIExpbnV4LCBhdCBsZWFzdCwgaW4gcHJhY3Rp
Y2UuCj4+Pj4KPj4+PiBXZSdyZSBzYWZlLCBhIHRoZXJtYWwgcnVuYXdheSBpc24ndCBnb2luZyB0
byBoYXBwZW4gd2hlbiB0aGUgZmFuIGlzCj4+Pj4gZGVmaW5lZCBpbiBhIGJvYXJkIERUIGJ1dCBh
Y3R1YWxseSBpc24ndCBwcmVzZW50LiAgVGhlcm1hbCBDUFUgYW5kCj4+Pj4gR1BVIHRocm90dGxp
bmcgd2lsbCBwcmV2ZW50IHRoZSBvdmVyaGVhdGluZyBmcm9tIGhhcHBlbmluZy4KPj4+Pgo+Pj4+
Pj4gT3ZlcmxheXMgcmVxdWlyZSBtb3JlIHVzZXIgY29uZmlndXJhdGlvbiwgYW5kIG5vdCBhbGwK
Pj4+Pj4+IGJvb3Rsb2FkZXJzIHN1cHBvcnQgdGhlbSBkaXJlY3RseSAoZS5nLiBzeXN0ZW1kLWJv
b3QgdXNlcnMgd291bGQKPj4+Pj4+IHN0cnVnZ2xlKS4gQ29tcGlsaW5nIHdpdGggb3ZlcmxheXMg
ZW5hYmxlZCBhbHNvIG1ha2VzIC5kdGIncyBhIGxvdAo+Pj4+Pj4gbGFyZ2VyIGR1ZSB0byBhZGRl
ZCBzeW1ib2xzIGluZm9ybWF0aW9uLgo+Pj4+Pgo+Pj4+PiBOb3dhZGF5cyAob24gRGViaWFuIGF0
IGxlYXN0KSB1c2luZyBvdmVybGF5cyBpcyBwcmV0dHkgZWFzeSwgSSdtIHVzaW5nIHRoZQo+Pj4+
PiB1LWJvb3QtbWVudSBwYWNrYWdlIGluIERlYmlhbiwgSSBqdXN0IGNvcHkgdGhlIG92ZXJsYXko
cykgdG8gL2Jvb3QvZHRiby8gYW5kCj4+Pj4+IGl0IGRldGVjdHMgdGhlbSBhdXRvbWF0aWNhbGx5
IGFuZCBhZGRzIHRoZW0gdG8gZXh0bGludXguY29uZiBmb3IgdS1ib290IHRvCj4+Pj4+IGFwcGx5
Lgo+Pj4+Pgo+Pj4+PiBDb3VsZG4ndCBzeXN0ZW1kLWJvb3QgdXNlcnMganVzdCB1c2UgcmszNTg4
LW5hbm9wYy10Ni0obHRzLSl3aXRoLWZhbi5kdGIgYXMKPj4+Pj4gdGhlaXIgc2luZ2xlIERUIHRv
IGxvYWQsIGlmIGl0IGRvZXNuJ3Qgc3VwcG9ydCBhcHBseWluZyBvdmVybGF5cyBhbmQgdGhleQo+
Pj4+PiB3YW50IHRvIHVzZSB0aGUgZmFuIGFkZG9uPwo+Pj4KPj4+IFN1cmUsIGJ1dCBpdCdzIGEg
bWFudWFsIGNvbmZpZ3VyYXRpb24gc3RlcCwgd2hlcmUgb3RoZXJ3aXNlIHRoZSBrZXJuZWwKPj4+
IHdvdWxkIGp1c3QgZGVmYXVsdCB0byB0aGUgY29ycmVjdCBkdGIgZm9yIHRoZSBib2FyZCB0aGF0
IHRoZSBmaXJtd2FyZQo+Pj4gdG9sZCBpdCBhYm91dC4gVGhlIGZhbiBpcyBub3QgZGlzY292ZXJh
YmxlLCBzbyB0aGUgZmlybXdhcmUgd29uJ3QgZXZlcgo+Pj4gb2ZmZXIgdGhlICItd2l0aC1mYW4i
IHZhcmlhbnQsIG1lYW5pbmcgdXNlcnMgd291bGQgbmVlZCB0byBzdXBwbHkgaXQKPj4+IG1hbnVh
bGx5IGluIGV2ZXJ5IGluc3RhbmNlLgo+Pgo+PiBGV0lXLCB0aGUgbW9zdCB1c2VyLWZyaWVuZGx5
IFNCQyBmYW1pbHkgaW4gdGhlIHdvcmxkLCBSYXNwYmVycnkKPj4gUGksIDopIHJlcXVpcmVzIG1h
bnVhbCBlbmFibGluZyBvZiB0aGUgZmFuIG9uIFJhc3BiZXJyeSBQaSA0Lgo+PiBJIGhhdmVuJ3Qg
cmVzZWFyY2hlZCB3aGF0J3MgdGhlIGJhY2tncm91bmQgZm9yIHRoYXQsIHBlcmhhcHMgdGhlCj4+
IG5lZWQgdG8ga2VlcCB0aGUgR1BJTyBleHBhbnNpb24gaGVhZGVyIGNvbXBsZXRlbHkgdW5vY2N1
cGllZCBieQo+PiBkZWZhdWx0LCBiZWNhdXNlIHRoZSBmYW4gYXR0YWNoZXMgdG8gdGhlIEdQSU8g
aGVhZGVyLCBpbnN0ZWFkIG9mCj4+IHRvIHNvbWUgZGVkaWNhdGVkIGZhbiBjb25uZWN0b3IuCj4+
Cj4+Pj4gWWVzLCB0aGF0J3MgYW4gb3B0aW9uLiAgSG93ZXZlciwgdGhhdCBpbiBnZW5lcmFsIGRv
ZXNuJ3QgcmVzb2x2ZQo+Pj4+IHRoZSBpc3N1ZXMgYXJpc2luZyBmcm9tIHN5c3RlbWQtYm9vdCB1
c2VycyB3YW50aW5nIHRvIGFwcGx5IG1vcmUKPj4+PiB0aGFuIGEgc2luZ2xlIERUIG92ZXJsYXku
Cj4+Pj4KPj4+Pj4gRldJVywgSSBoYXZlbid0IG5vdGljZWQgYW55IHByb2JsZW1zIHdpdGggaGF2
aW5nIGEgbGFyZ2VyIC5kdGIgKHVzaW5nIG1haW5saW5lCj4+Pj4+IFUtQm9vdCB0byBsb2FkIGl0
KSBhbmQgc2V2ZXJhbCBvdGhlciBSSzM1ODggYm9hcmRzIGFyZSBhbHNvIGNvbXBpbGVkIHdpdGgK
Pj4+Pj4gc3ltYm9scyBlbmFibGVkIGFscmVhZHksIGFuZCBJIGhhdmVuJ3Qgc2VlbiBhbnkgaXNz
dWVzIHJlcG9ydGVkIHdpdGggdGhlbS4KPj4+Pgo+Pj4+IEFmdGVyIHRoaW5raW5nIGEgYml0IGFi
b3V0IGl0LCBJJ2Qgc3VwcG9ydCB0aGUgZXh0cmFjdGlvbiBvZiBmYW4KPj4+PiBkZWZpbml0aW9u
cyBpbnRvIHNlcGFyYXRlIERUIG92ZXJsYXlzLiAgQXMgSSB3cm90ZSBhYm92ZSBhbHJlYWR5LAo+
Pj4+IG5vdCBtYW5hZ2luZyB0aGUgbm9uLWV4aXN0ZW50IGZhbiBtaWdodCBhY3R1YWxseSBoZWxw
IGEgYml0IHdpdGgKPj4+PiBwYXNzaXZlbHkgY29vbGVkIGJvYXJkIHNldHVwcywgd2hpY2ggaXMg
YSBnb29kIGVub3VnaCByZWFzb24gZm9yCj4+Pj4gbWUgdG8gc3VwcG9ydCBzZXBhcmF0ZSBEVCBv
dmVybGF5cy4KPj4+Cj4+PiBQcmFjdGljYWwgYmVuZWZpdHMgc291bmQgZmFyIGZldGNoZWQgaGVy
ZSwgd2hpbGUgZm9yY2luZyB1c2VycyB0bwo+Pj4gbWFudWFsbHkgY29uZmlndXJlIHNvbWV0aGlu
ZyB0aGF0IHdvdWxkIGhhdmUgb3RoZXJ3aXNlIGp1c3Qgd29ya2VkLgo+Pj4gTGV0J3Mgc2VlIHdo
YXQgSGVpa28gdGhpbmtzLgo+IAo+IFBlcnNvbmFsbHksIEknbSBtb3JlIG9uIHRoZSBsZXNzIGNv
bXBsaWNhdGlvbiBzaWRlLgo+IAo+IEkuZS4gaWYgdGhlcmUgaXMgYW4gYWN0dWFsIGZhbi1jb25u
ZWN0b3Igb24gdGhlIGJvYXJkIHdlIHNob3VsZCBkZXNjcmliZQo+IGl0IGFzIHN1Y2guCj4gCj4g
T3ZlcmxheXMgSSBzZWUgZm9yIHRoaW5ncyB3aGVyZSB5b3UgYXR0YWNoIGhhdHMgdG8gZ2VuZXJp
YyBwaW4gaGVhZGVycwo+IHRvIGNyZWF0ZSBzcGVjaWZpYyBmdW5jdGlvbmFsaXR5IG9uIHRvcCBv
ZiBhIGdlbmVyaWMgaW50ZXJmYWNlLgo+IAo+IEJ1dCBpZiB0aGUgYm9hcmQgaXRzZWxmIGhhcyBh
biBhY3R1YWwgZmFuIGhlYWRlciwgaXQgc2hvdWxkIGJlIGRlc2NyaWJlZAo+IGFzIHN1Y2guIEJl
Y2F1c2UgdGhhdCB0aGVuIF9pc18gdGhlIHN0YW5kYXJkIHVzZSBvZiB0aGF0LgoKVGhlIGJvYXJk
IGRvZXMgaGF2ZSBhIGZhbiBjb25uZWN0b3IsIGp1c3Qgbm8gZmFuIGJ5IGRlZmF1bHQuIEJ1dCBh
bnl3YXksCnNpbmNlIGl0IHNvdW5kcyBsaWtlIHRoZSBwcmVmZXJyZWQgYXBwcm9hY2ggSSdsbCBz
ZW5kIGEgdjIgd2hpY2ggcHV0cyB0aGUKZmFuIGludG8gdGhlIGJhc2UgYm9hcmQgLmR0cy4KCkRy
YWdhbiwgeW91IG1lbnRpb25lZCB0aGVyZSdzIG5vIG5lZWQgZm9yIG1vcmUgdGhhbiAyIHRyaXAg
cG9pbnRzIC0gaWYKSSByZW1vdmUgdGhlIHRyaXAgcG9pbnRzIGJldHdlZW4gIlNvQyBpcyB3YXJt
LCBzdGFydCBmYW4gYXQgc2xvdyBzcGVlZCIKYW5kICJTb0MgaXMgdi4gaG90LCBydW4gZmFuIGF0
IGZ1bGwgc3BlZWQiIGlzIHRoZSBPUy9rZXJuZWwgZXhwZWN0ZWQgdG8KaW50ZXJwb2xhdGUgYmV0
d2VlbiB0aG9zZSAyIHRyaXAgcG9pbnRzIChpZiB5b3UgaGF2ZSBhIGxpbmsgdG8gZG9jcyBvcgpj
b2RlIGFib3V0IHRoaXMgaXQnZCBiZSBpbnRlcmVzdGluZywgSSBjb3VsZG4ndCBmaW5kIGFueXRo
aW5nIGluIHRoZQpkdC1iaW5kaW5ncyk/CgpCZXN0IHJlZ2FyZHMsIEh1Z2gKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

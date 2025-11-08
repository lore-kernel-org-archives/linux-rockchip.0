Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7AA7CCFA18
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Nov 2025 22:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsE7Isu5G5g2d5tXWmXe0VRaM+gyo2xLxBBgOf6EIps=; b=E8yOv8u7qFJfRh
	ZYOlpiYFfuehyxJFWf8VwQR/OYGk9aryVI1vbOGMs0eRIBz9T5b6+TXlw4Y6c8cWQ7P8KRvB8msle
	Me/OETINJ3dlLTF8B7lXc4Fb4BwJL2WHfQT/H6LMQf40Mo/S/yH3T6vSlhhpMnxLq61EuYUCP1MjL
	2s2Qo7cbg7KvbXtrv6WSnTZIJy3r0paBne18v0MLAmfy0UgbsTOEHDC0QAtqTFdi9lZX/l79trug1
	fBdb3H4bPQLyAtdtRyPRAatFTAk0Vz2/d6sdHBVLasrRh7vJjHWKMaNoWzOnh5Fmx1Wp4TmdpciVW
	yk3KLrYwUe67ZtQMsZGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHreh-00000003XOX-3teW;
	Sat, 08 Nov 2025 22:43:35 +0000
Received: from mail-vs1-xe2d.google.com ([2607:f8b0:4864:20::e2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHree-00000003XNo-3X1H
	for linux-rockchip@lists.infradead.org;
	Sat, 08 Nov 2025 22:43:34 +0000
Received: by mail-vs1-xe2d.google.com with SMTP id ada2fe7eead31-5d758dba570so866953137.2
        for <linux-rockchip@lists.infradead.org>; Sat, 08 Nov 2025 14:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762641811; x=1763246611; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AVoITpMtYi5Kgaxbk7LevCo8Kqli+/vM/Zg8iA9IuYM=;
        b=JXEqxfkvoAVAjrMP5nNMrCWmpzvOcYVUMijUaoWPuAirifz+Ui/KlH+gZzaX7C6Okn
         T1bpkf4fptI4gmwKcCJij2crHuV2MBTDSOZkcIbbAGrbrfivJItw5XRJjosvR/uN4/mj
         2O1SWabrHDeVlyz0EErmrJDBxm1wk6k+R93Dn3JTJxwCsN0WyVxxkUAnOf5bg69OR6uf
         1Hy4k96yRapHE2WNQwEpb1d6UzQY0ef1BOKOgDyfUgt+x5ebLieiyJ+OpMM97ZruMy4a
         LS40Kr4F3XJS3lVyqHJwVfxp3g+F1kVFEqnJxwG5SuVEuOLhx8UPa7cwURVMoo1AeGec
         1Syw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762641811; x=1763246611;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AVoITpMtYi5Kgaxbk7LevCo8Kqli+/vM/Zg8iA9IuYM=;
        b=IqBcraKeb3ZCOhaJf+GCmOkCRjIo75e3+fovqnsHR/sftxOm+HRKmcFnxUkF5k32IQ
         KNaqvzHquD8RafRUuhPUIbvcwYf9Jk+PaB4/awIZf3DfLtStRRe+E+gCW1uH1QX8OAYj
         ibcsP07KPx3MjsQ+rNCy1t2urfy3/1oKTB4HofEiXYKQlAXB23Cii1gANMmOGLCiNlym
         8CPUaq8Kqx+yAVlL61YuVvmH0x+AdO6xONQoHPY+87mgHj5CAjW2Ra/3mVIzlgky75xv
         FmfSXjI2tXctfVxB/U8/h2A4mvfVNQ03TGo4g1LPxkjZWURFDRKKQQkHA+uTBVEs+moT
         xaPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHaPcJ9OtUSIcUEBp5HNxRW3fNbMyf7FUyhjgVtrB/1fTxZvzgx0EurMRN6kL7XKOqRvpNmabhGCAo/+k1Tg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxuxTJ4k6A5SlR4OMtYv07bW2Sv6ZvUtmPd2ajDe7b+P5uErj5Z
	z5BEZ3BlLGCzK1MZDr4Vo62W1wtLnlKr1UfOV1N3AsMhCfVvDj9x3HDs
X-Gm-Gg: ASbGncthk885vfSXoLpabEUbC3pfq+tFayOKjbdqmT7Mlw+a2xrhpXhbYncUm2DUQB0
	A5YylNMHV130GxJFs/cjjj37Gmg6bNwhGlcFmKKA8fgjRdPLkwRYT0N74mFSTk2T9IM9IIJmidr
	WCnwM1n7wNfeuObLWqCj2rwmCH+FbjQNDoRYAvzdg5Sm8LGzu9j6Mw+Ag5NaxBvoU1+tH/lPMli
	UFf0vEDxHs7Y7oVjRROT2QPYPaGRkeIIM762dmEvoQ5bgaTxrXIWreNgImUvZR2kYJPuknd3kK2
	xFb5vXrH1Apxv/9Ynp9UasfVNe9M01xxn7D9bT7K40abnk9z4j5hiVolyFl002G4+uqfc0Y+7nw
	aGz3Zz2EoqC6Qiq+cfvcyxgJyBNQFxuBDcRpTMUHIWaCgrhjlCThrw/NPKqisN3Phs/+9zteLtw
	==
X-Google-Smtp-Source: AGHT+IFsj6aNYCy4VSY/pT65HzYuwBfF3Efce20HU3WXVuf6OpeZkuBOsC9gHRfJcS97JADvXgP2xg==
X-Received: by 2002:a05:6102:6cb:b0:5db:ebb4:fde3 with SMTP id ada2fe7eead31-5ddc46eef21mr1212345137.16.1762641811172;
        Sat, 08 Nov 2025 14:43:31 -0800 (PST)
Received: from geday ([2804:7f2:800b:4eac::dead:c001])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93725285d26sm1269736241.7.2025.11.08.14.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 14:43:29 -0800 (PST)
Date: Sat, 8 Nov 2025 19:43:17 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Ye Zhang <ye.zhang@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <aQ_HhfK0pbOE1m1R@geday>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
 <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
 <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
 <sbulnlwz3vxyk3yw2c2tcsdvyu57cdvyixkpeq2okh4vn6yyod@4o4kltfb5u6n>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <sbulnlwz3vxyk3yw2c2tcsdvyu57cdvyixkpeq2okh4vn6yyod@4o4kltfb5u6n>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251108_144332_889858_0A0E1A0F 
X-CRM114-Status: GOOD (  26.25  )
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

T24gU2F0LCBOb3YgMDgsIDIwMjUgYXQgMTE6MTI6NTRQTSArMDEwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gSGksCgpIaSBTZWJhc3RpYW4sCgo+IAo+IE9uIEZyaSwgTm92IDA3LCAyMDI1
IGF0IDExOjAxOjA0QU0gKzA4MDAsIFNoYXduIExpbiB3cm90ZToKPiA+ICsgWWUgWmhhbmcKPiA+
IAo+ID4g5ZyoIDIwMjUvMTEvMDcg5pif5pyf5LqUIDEwOjQzLCBHZXJhbGRvIE5hc2NpbWVudG8g
5YaZ6YGTOgo+ID4gPiBPbiBXZWQsIE5vdiAwNSwgMjAyNSBhdCAwNDo1NjozNlBNICswODAwLCBT
aGF3biBMaW4gd3JvdGU6Cj4gPiA+ID4g5ZyoIDIwMjUvMTEvMDUg5pif5pyf5LiJIDE2OjE4LCBH
ZXJhbGRvIE5hc2NpbWVudG8g5YaZ6YGTOgo+ID4gPiA+ID4gSGkgU2hhd24sIGdsYWQgdG8gaGVh
ciBmcm9tIHlvdS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gUGVyaGFwcyB0aGUgZm9sbG93aW5nIGNo
YW5nZSBpcyBiZXR0ZXI/IEl0IHJlc29sdmVzIHRoZSBpc3N1ZQo+ID4gPiA+ID4gd2l0aG91dCB0
aGUgYWRkZWQgY29tcGxpY2F0aW9uIG9mIG9wZW4gZHJhaW4uIEFmdGVyIHlvdSBxdWVzdGlvbmVk
Cj4gPiA+ID4gPiBpZiBvcGVuIGRyYWluIGlzIGFjdHVhbGx5IHBhcnQgb2YgdGhlIHNwZWMsIEkg
cmVtZW1iZXJlZCB0aGF0Cj4gPiA+ID4gPiBHUElPX09QRU5fRFJBSU4gaXMgYWN0dWFsbHkgKEdQ
SU9fU0lOR0xFX0VOREVEIHwgR1BJT19MSU5FX09QRU5fRFJBSU4pCj4gPiA+ID4gPiBzbyBJIGRl
Y2lkZWQgdG8gdGVzdCB3aXRoIGp1c3QgR1BJT19TSU5HTEVfRU5ERUQgYW5kIGl0IHdvcmtzLgo+
ID4gPiAKPiA+ID4gU2hhd24sCj4gPiA+IAo+ID4gPiBJIHF1b3RlIGZyb20gdGhlIFBDSWUgTWlu
aSBDYXJkIEVsZWN0cm9tZWNoYW5pY2FsIFNwZWNpZmljYXRpb24gUmV2IDEuMgo+ID4gPiAKPiA+
ID4gIjMuNC4xLiBMb2dpYyBTaWduYWwgUmVxdWlyZW1lbnRzCj4gPiA+IAo+ID4gPiBUaGUgMy4z
ViBjYXJkIGxvZ2ljIGxldmVscyBmb3Igc2luZ2xlLWVuZGVkIGRpZ2l0YWwgc2lnbmFscyAoV0FL
RSMsCj4gPiA+IENMS1JFUSMsIFBFUlNUIywgYW5kIFdfRElTQUJMRSMpIGFyZSBnaXZlbiBpbiBU
YWJsZSAzLTcuIFsuLi5dIgo+ID4gPiAKPiA+ID4gU28gd2hpbGUgeW91IGFyZSBjb3JyZWN0IHRo
YXQgUEVSU1QjIGlzIG1vc3QgZGVmaW5pdGVseSBub3QgT3BlbiBEcmFpbiwKPiA+ID4gdGhlcmUn
cyBldmlkZW5jZSBvbiB0aGUgc3BlYyB0aGF0IGRlZmluZXMgdGhpcyBzaWduYWwgYXMgU2luZ2xl
LUVuZGVkLgo+ID4gPiAKPiA+IAo+ID4gVGhpcydzIHRydWUuIEJ1dCBJIGNvdWxkbid0IGZpbmQg
YW55IHVzZXIgaW4gZHRzIHVzaW5nIGVpdGhlcgo+ID4gR1BJT19TSU5HTEVfRU5ERUQgb3IgR1BJ
T19PUEVOX0RSQUlOIGZvciBQQ0llIFBFUlNUIy4gSSdtIGN1cmlvdXMKPiA+IGhvdyB0aGVzZSB0
d28gZmxhZ3MgYWZmZWN0IGFjdHVhbCBiZWhhdmlvciBvZiBjaGlwcy4gWWUsIGNvdWxkIHlvdQo+
ID4gcGxlYXNlIGhlbHAgY2hlY2sgaXQ/Cj4gCj4gRldJVyBJIGFzc3VtZSBzaW5nbGUtZW5kZWQg
aW4gdGhlIHNwZWMgbWVhbnMgaXQncyBub3QgZGlmZmVyZW50aWFsCj4gbGlrZSBhbGwgdGhlIGhp
Z2hzcGVlZCBzaWduYWxzIG9uIHRoZSBQQ0llIGNvbm5lY3Rpb24uIFRoaXMgc2F5cwo+IG5vdGhp
bmcgYWJvdXQgb3Blbi1kcmFpbiwgb3Blbi1zb3VyY2Ugb3IgcHVzaC1wdWxsIGJlaW5nIHVzZWQu
IFRoZQoKeWVzLCBJIGFncmVlLiBJdCB3YXMgYW4gb3ZlcnNpZ2h0IG9uIG15IHBhcnQgdG8gYXNz
dW1lIG9wZW4tZHJhaW4gb24KUEVSU1QjIHdhcyBwYXJ0IG9mIHRoZSBzcGVjIGp1c3QgYmVjYXVz
ZSBtYW55IGNvcmVzIGltcGxlbWVudCBpdCB0aGF0CndheS4gS3Vkb3MgdG8gU2hhd24gZm9yIGNv
cnJlY3RpbmcgbWUuCgo+IGtlcm5lbCBvbiB0aGUgb3RoZXIgaGFuZCBoYXMgYSB2ZXJ5IHNwZWNp
ZmljIHVuZGVyc3RhbmRpbmcgb2YKPiBHUElPX1NJTkdMRV9FTkRFRDoKPiAKPiAJaWYgKGZsYWdz
ICYgT0ZfR1BJT19TSU5HTEVfRU5ERUQpIHsKPiAJCWlmIChmbGFncyAmIE9GX0dQSU9fT1BFTl9E
UkFJTikKPiAJCQlsZmxhZ3MgfD0gR1BJT19PUEVOX0RSQUlOOwo+IAkJZWxzZQo+IAkJCWxmbGFn
cyB8PSBHUElPX09QRU5fU09VUkNFOwo+IAl9Cj4gCj4gSS5lLiBpdCBpcyB0aGUgc2FtZSBhcyBj
b25maWd1cmluZyBvcGVuLXNvdXJjZSA7KQoKWXVwLCBJIGhhZCBub3RpY2VkIHRoYXQuIFRoaXMg
d29ya3MgYmVjYXVzZSB0aGUgcmVzZXQgdmFsdWUgb2YgUE1VIEdSRgpyZWdpc3RlciBQTVVHUkZf
R1BJTzBCX1Agc2V0cyB0aGUgcmVsZXZhbnQgUEVSU1QjIEdQSU8gKEdQSU8wLTEyKSBvbiBteQpi
b2FyZCB0byBwdWxsLWRvd24sIHdoaWNoIGNhbiB3b3JrIHdpdGggT3BlbiBTb3VyY2UvRW1pdHRl
ci4gSWYgd2Ugc2V0CnRoZSBHUElPIHRvIE9wZW4gRHJhaW4vQ29sbGVjdG9yIHdlIG11c3Qgb24g
dGhlIG90aGVyIGhhbmQgc2V0IHRoYXQgcGluCnRvIHB1bGwtdXAuIEVpdGhlciB3YXkgaXQgd29y
a3MuCgpJJ3ZlIGJlZW4gaW52ZXN0aWdhdGluZyB3aHkgdGhhdCBHUElPIGlzbid0IHByb3Blcmx5
IHdvcmtpbmcgYXMKUHVzaC1QdWxsIGZvciBteSBib2FyZCAoUm9jayBQSSBOMTApIGJ1dCBzbyBm
YXIgSSdtIGNsdWVsZXNzLgoKVGhhbmsgeW91LApHZXJhbGRvIE5hc2NpbWVudG8KCj4gCj4gR3Jl
ZXRpbmdzLAo+IAo+IC0tIFNlYmFzdGlhbgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

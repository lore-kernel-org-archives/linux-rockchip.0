Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7AA5CEACFC
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 07:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXVIwTAauKIoAq3AK+dPUE2yNGJPlUlFsxmfDr9OhWc=; b=DhTSfiTCIntT68
	RowCBAQijZzE0hb3jAzlITTyWLivcBTcFC1FqK/VX2DN+p9wvG+aG06Kj/RF5oeNKx9jN3jrepfd5
	pd2DrybLni3MrBa0nzr1rZT6VhhN2byNAHwNFhza8wkjMJBN+cEcU0xV0NAOAv23fI/uIHbJ0stj2
	aXDWVX41YDlbZW7WFjKOEUd6BIAx6ygUg5P5OGdlwiKqlA1//wktjZabhNNiNFonYCcATboVfZBcB
	fNyPoM+UuBJLXuTMEeOndTTZkVGAQKYaaTC+0nLx1EIRVDgpJUxuTElqcoOjHofiRAfiqM66Mu6Ks
	IdGwxVie4uf0x3GWz7iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKAIv-0000000DYa1-0aJv;
	Sat, 15 Nov 2025 07:02:37 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKAIr-0000000DYZH-3TYx
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 07:02:36 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-794e300e20dso2628043b3a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Nov 2025 23:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763190152; x=1763794952; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IOYSOoZ7kZHsHMrtVsrNZvrMCn7UoqoHGgR3M03FgNs=;
        b=AhDUQZsx8qeQRpwLxK0VjU4k1r6P9ZL+2AqXgCjxzbTcCdlTP9ZdCV79MgLGMscSdx
         5+Ki5/eFFQ46i3O/vpCl+vRphUDC/l7HCZdKB/fhgZ4P2Oea1vU6v8fXasFyKE3yQwet
         XYVD1q49OLGNNLRwj/6EoRM+KY+EA+12zgLYr7jr9JVytXT+i5am952IHRB9AGZfJ6Ii
         tgjGcmGGb5kke4lHsY34JZDQHJjU+aW5p60GREeizhFYsoaR6iheECuJD7yiHp2HNFQe
         xUDOJKvfmc8UfryjxUk4rNygAE+wtSlGxCZYbMQq6Uos3xXfyx+H+kZe4yg9CFxnDdaF
         LgRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763190152; x=1763794952;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IOYSOoZ7kZHsHMrtVsrNZvrMCn7UoqoHGgR3M03FgNs=;
        b=jUfXhOb8wgf9HYZJsVGAEVOxtJGQM0sMqytgdbuNbny8/gwLN3btPv/ASlxY1DZGP7
         dVpV666/GIV68hnEFx7BFCUAs6rtF2WPJpBGXNUcDdHoiznlxrDsA7ezlx55f4eBI8uV
         fZS6tuk2ADu8e3H/Qp7gBbxNCuJC/gw0XpMBwVS7J2DXuTavaA7vVbQS+JdjB5rn24ws
         xcGFaSwBBIsa931BEeWo7FrGp6o/nuOjfCT2KM1rIfO23l0SMBVYujeviTqqASX3YkqZ
         kA4aOgkYDHTHk5cIv9Usg6Fv87i7gQ4JxRCdksTD0c+2WG4JkiCagRzEervA8MCOmCN1
         lMvg==
X-Forwarded-Encrypted: i=1; AJvYcCXUPWYQ2mC9/DA4SGArz78X4y5bLyysYzjevF2uzkDmSzZy7UJnQ023MMqrcxw36zoXl32f+FWtDYgCf2sVYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyA4t/60FdQy6yRQqK9QhRprbbG8BiefK8Nqf+QgE6mmw7oGIdK
	SeDo9kUI14G3DLnubF6RjbHbzFWwoCt2km3xM+mVWH6nT7SEC0eM42lH
X-Gm-Gg: ASbGncvN4mwnkaZjXqhi6/9t0jTM3nf+w5saCFmuSXs40rPvzVzvDJoiOWyHBrLtn29
	m+ZLqa1mu0S+ziVSPNd0vJUR1TEcjQPYJeizCfIGGEsYoN8PdRHyrx7bQR03bSEhSKLLzIftBOL
	CImQxQCis7Kt/pGSDxP4hopG95IiRAwneE2jKEaWTMVMgJfWCsJgIJF1+k29ZrooGbHB1zyLw6y
	r9eTKLssT+zsHX8z791c8Ck9z+jvITkW9ufmwedgzKsZrNcmqyNDeaCuKEUcBtL2KotH6n7/GpL
	0Q5+rWF4utdZgriIef21mg0h+6aqaQcuA9mY5YPX+Qt2u0JQ5jwwPm5nlR0j/HIaEhWgd+iRqcC
	qu8+5BmAJ3GKMC8zV2T1vTbIeBmXA2ZVG89SLsr46U1HNDHUpd4xqx/C8EoZP93dlcaqfgYmnq3
	1NgbiB6s1f
X-Google-Smtp-Source: AGHT+IF6Rm2Drf+1xlFmZRzPIXc1lSKc1tNyqq8bFT5+2d7X7z6WfhOem4D1nutU3J7fGxCS13ODNw==
X-Received: by 2002:a05:7022:b90c:b0:11a:4ffb:984f with SMTP id a92af1059eb24-11b411f05dcmr1444305c88.11.1763190151853;
        Fri, 14 Nov 2025 23:02:31 -0800 (PST)
Received: from geday ([2804:7f2:800b:a008::dead:c001])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b80fd6790sm4677580c88.10.2025.11.14.23.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 23:02:31 -0800 (PST)
Date: Sat, 15 Nov 2025 04:02:24 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci <linux-pci@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	krzk+dt <krzk+dt@kernel.org>, conor+dt <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip <linux-rockchip@lists.infradead.org>,
	Simon Glass <sjg@chromium.org>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	Kever Yang <kever.yang@rock-chips.com>,
	Tom Rini <trini@konsulko.com>, u-boot@lists.denx.de,
	=?utf-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <aRglgNL5eumu4XbS@geday>
References: <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
 <aRLEbfsmXnGwyigS@geday>
 <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>
 <aRQ_R90S8T82th45@geday>
 <aRUvr0UggTYkkCZ_@geday>
 <aRazCssWVdAOmy7D@geday>
 <e8524bf8-a90c-423f-8a58-9ef05a3db1dd@rock-chips.com>
 <aReSPbRxCgdNRI9y@geday>
 <ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_230233_870498_65F84960 
X-CRM114-Status: GOOD (  20.93  )
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

T24gU2F0LCBOb3YgMTUsIDIwMjUgYXQgMTA6MjE6MjhBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IAo+IOWcqCAyMDI1LzExLzE1IOaYn+acn+WFrSA0OjM0LCBHZXJhbGRvIE5hc2NpbWVudG8g
5YaZ6YGTOgo+ID4+IEFub3RoZXIgdGhpbmcgSSBub3RpY2VkIGlzIGFib3V0IG9uZSBjb21taXQ6
Cj4gPj4gMTE0YjA2ZWUxMDhjICgiUENJOiByb2NrY2hpcDogU2V0IFRhcmdldCBMaW5rIFNwZWVk
IHRvIDUuMCBHVC9zIGJlZm9yZQo+ID4+IHJldHJhaW5pbmciKQo+ID4+Cj4gPj4gSXQgc2FpZDog
IlJvY2tjaGlwIGNvbnRyb2xsZXJzIGNhbiBzdXBwb3J0IHVwIHRvIDUuMCBHVC9zIGxpbmsgc3Bl
ZWQuIgo+ID4+IEJ1dCB3ZSBpc3N1ZWQgYW4gZXJyYXRhIGxvbmcgdGltZSBhZ28gdG8gYW5ub3Vu
Y2VkIGl0IGRvZXNuJ3QsIHlvdSBjb3VsZAo+ID4+IGFsc28gY2hlY2sgdGhlIFBDSWUgcGFydCBv
ZiBSSzMzOTkgZGF0YXNoZWV0Ogo+ID4+IGh0dHBzOi8vb3BlbnNvdXJjZS5yb2NrLWNoaXBzLmNv
bS9pbWFnZXMvZC9kNy9Sb2NrY2hpcF9SSzMzOTlfRGF0YXNoZWV0X1YyLjEtMjAyMDAzMjMucGRm
Cj4gPiAKPiA+IE9LLCBJJ20gcGFydGx5IHJlc3BvbnNpYmxlIGZvciB0aGF0IGFzIGF1dGhvciBv
ZiB0aGUgY29tbWl0IGluIHF1ZXN0aW9uLgo+ID4gCj4gPiBGaXJzdCBvZmYgbGV0IG1lIHNheSBJ
IGRvIG5vdCBpbnRlbmQgdG8gc2VuZCBhbnkgcGF0Y2hlcyBzZXR0aW5nCj4gPiBtYXgtbGluay1z
cGVlZCB0byBUV08gZm9yIHRoaXMgcGxhdGZvcm0uCj4gPiAKPiA+IEkgdW5kZXJzdGFuZCB5b3Ug
aXNzdWVkIGFuIGVycmF0dW0sIGJ1dCBhcmUgeW91IGFic29sdXRlbHkgc3VyZSBhYm91dAo+ID4g
dGhhdCBlcnJhdHVtPyBCZWNhdXNlIG15IHRlc3Rpbmcgc2hvd3Mgb3RoZXJ3aXNlOgo+IAo+IFN1
cmUuCj4gCj4gVGhlIHJlYXNvbiBpcyB0aGF0IEdlbjIgaXMgbWVyZWx5IGZ1bmN0aW9uYWwsIGJ1
dCB0aGlzIGRvZXMgbm90IG1lYW4gaXQgCj4gaXMgMTAwJSBwcm9kdWN0aW9uLXJlYWR5LiBJdCBo
YXMgc29tZSBpbmhlcmVudCBpc3N1ZXMgdGhhdCBjYW5ub3QgYmUgCj4gcmVzb2x2ZWQsIHdoaWNo
IG1heSBsZWFkIHRvIGZhaWx1cmVzIGJleW9uZCBpbWFnaW5hdGlvbi4gRXZlbiBpZiB0aGUgCj4g
cHJvYmFiaWxpdHkgb2Ygb2NjdXJyZW5jZSBpcyBhcyBsb3cgYXMgMSBpbiAxMDAsMDAwLiBJIGNh
bm5vdCBzaGFyZSAKPiBmdXJ0aGVyIGRldGFpbHMuIFRoZXJlZm9yZSwgdGhlIG9mZmljaWFsIGRv
Y3VtZW50YXRpb24gc2hvdWxkIGJlIHlvdXIgCj4gcHJpbWFyeSByZWZlcmVuY2UsIHJhdGhlciB0
aGFuIHJlbHlpbmcgc29sZWx5IG9uIHNpbXBsZSBldmFsdWF0aW9ucy4KCkhpIFNoYXduLAoKaW5k
ZWVkLCB0aGUgc2l0dWF0aW9uIGlzIG5vdCBmYXZvcmFibGUgYW5kIHdlIHNob3VsZCBzdHJpdmUg
dG8gbWFrZQphbWVuZHMuIEknbSBzb3JyeSBJIGJhc2VkIHRoZSBjb21taXQgb24gb3V0ZGF0ZWQg
aW5mb3JtYXRpb24sIEkgd2FzCm5vbmUgdGhlIHdpc2VyLgoKV2hhdCBJIHByb3Bvc2UgaXMgdG8g
YWRkIGEgY29tbWVudCB0byBkcml2ZXIgY29yZSBzYXlpbmcgdGhhdCBwYXRoCnRvIDUuMCBHVC9z
IHNob3VsZG4ndCBiZSB0YWtlbiBhbmQgdXNlcnMgYXJlIHN0cm9uZ2x5IGRpc2NvdXJhZ2VkIHRv
Cm1lc3Mgd2l0aCB0aGUgbWF4aW11bSBsaW5rIHNwZWVkIGluIERULgoKV2UgZGVhbCB3aXRoIGNv
cm5lciBjYXNlIG9mIGhlbGlvczY0IGluIGFub3RoZXIgcGF0Y2ggYW5kIG1ha2Ugc3VyZQp0aGVy
ZSBhcmUgbm8gRFRzIGVuZ2FnaW5nIDUuMCBHVC9zLgoKVGhpcyBzaG91bGQgY2xvc2UgdGhlIGxv
b3AtaG9sZS4KClJlZ2FyZHMsCkdlcmFsZG8gTmFzY2ltZW50bwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

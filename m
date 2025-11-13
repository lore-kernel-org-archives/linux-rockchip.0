Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE153CD3445
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 01:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6gIUy+ykk6l6CL4RmSnQKDGQNgemKbVEW+URqXnuh0=; b=u2mIvqotaiMfe3
	KaOWJhnFqzn9Gm7uGNfY9LnTlqtLcWRpVtRpQZ5x/Il9Use3l/P8sdF51JCgAUK9t6MsVXF9MPfRc
	l1rK7q4bML4IZ3Vw4aBTGngrqqXuUKwrOIJ2pc8+3VITtiBb+dHgTKdvxXYqo6YrDap5MupqLoY/z
	TscGOJljMfzcorPc3XyNnX93shtsWph32AVzwPYCZz1tCB7XyRnc+wDFVuYqEQFqDuS+A9cs5l/Bn
	QU6HmtU3d0uQza008YQ3FLHgNJS6gc9O7cv70fogd+qMFTfmTiUE5UmZn+pID5QfNdoDr7LUVRIGn
	UAEPzvid74TF+nfroYYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJLpv-00000009he1-0Kjg;
	Thu, 13 Nov 2025 01:09:19 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJLps-00000009hdd-0Hxu
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 01:09:17 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-7ad1cd0db3bso200456b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Nov 2025 17:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762996155; x=1763600955; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HUp9XSelBvHam5yKb7kd4Uyi0l9skDUn0FSAP36J340=;
        b=HEcq0w56cJ+Gb8xvOC6XmDw4MK+81x+7WDcPaTJZvEu8Xgyf2EQVHEzQwNhBoZhrOC
         ZjZzCRdWH8Vd77rD4wR9FLGAA4hybw8+LcfApkinBqkABOu+lZGQWsZSR5zBlcbbV1Go
         mzuBJuEyyMyF/KSAJ8lx6IGc988Zlr+8q4QtZ7KlegNdC2QZnEFCTY7EZtgeUP58TsNT
         4Tf5OnIQ+W600ltUmdi9Vg6A0utfdxBdX/npD1LL1DO/btByn5mjgs02oMTxvUEKDjDW
         vdJdDFzYJtWzjus5n2pGwac8BacSWntYOJVwPYV0cMPGblU6A6msMVhbPjYse422ExO6
         Nt7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762996155; x=1763600955;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HUp9XSelBvHam5yKb7kd4Uyi0l9skDUn0FSAP36J340=;
        b=SLTbaSSSKKElyUF07iV6efBN9IRztTuf1oAhAgOO9zVe/hOTslyRb2FGpiV5imjZrL
         qId2wS8OeeFd+RtBGj8kVPAkWgJ4vFRdnaAZwaSyGMXYLc0dV5BBJifj8kNJ+Iv6kY1s
         nVZJbQ54rOvmqMqoQ8NCdkjL+QRJLjH5nmopMD6/lEQuIdcbIQS4ZXpD4n5pXughqxU+
         fye4qahUY3DVwczYdK9YneUooVytc1tzl32YzJreZHsI+pGxwfp2BbvB29uv2UXO94Ic
         3uiLoZqucKbOHWxuhp5/AtPd/KaE15XNjIigDn9kz39T2/VlujBqbN/JBXrd9mgEeYIs
         jCdw==
X-Forwarded-Encrypted: i=1; AJvYcCW9lwj1TKGbrUDmxba1VzVEjkl5lH01dbXH9C5U0hHvDgSpDVsK3lXkw9epT6vHiB1SqUXTEzbvTYmeTTHTvQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2yaLlAt2raqQFi9v+n0D7CcpORQVRomXW1SPT7wJZa2XnVo7I
	TmydcJOiCYBv9A+4jJM8wtecUda40qHUbsIKye/vMNbL676/t093JC3i5h0Rb6vd
X-Gm-Gg: ASbGncssBfx90m3BeV89O+l5v3DiIRQAP3Z3nIZ9hKuXNR90nzf0DBlp/FM7GwxP5WE
	q6VNnqq9oT+opYwPhV+extyfWs2Sjfwh4rb6ldVpfZdEn/EPMOxmGmC04KfYvK4cguhZwrkmjap
	8d5bOrV1HPeRC5vZl+qNFIuthSWm9E4j07JqAKIKoMfWbZhGNenQI2vmS4hV9yVc1cepCpK/4d5
	SwHI/nblE4sl1cMvArvF/ixi9L6NS0/4ugQgdIK9nLRc+8Q9fFUH4cVGcBOc2atoHaODhkRRbkf
	MjkXyZSP5P5PYZPoEzypjjb4Ifx1TrgG1tVvgIGwKPadVCeXYz1Y0ywwSFeTQ9U507NNy0ISEUE
	5OuGvND6iI5ZJt6k4b4peqQYCSBaQ32CVK/8SS9Wspfs0xDyl/Yaf
X-Google-Smtp-Source: AGHT+IG6mp0E78VSvu/3qqFMgI1T8YiQOF856a+2bF57H7GUKPTtbD8FuO+l8D99yBgWDvvJxeroug==
X-Received: by 2002:a05:6a20:7f92:b0:344:97a7:8c68 with SMTP id adf61e73a8af0-3590bb147d7mr5734286637.54.1762996154814;
        Wed, 12 Nov 2025 17:09:14 -0800 (PST)
Received: from geday ([2804:7f2:8082:3106::1])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b927826dc9sm303318b3a.53.2025.11.12.17.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:09:14 -0800 (PST)
Date: Wed, 12 Nov 2025 22:09:03 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: =?utf-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
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
	linux-rockchip <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <aRUvr0UggTYkkCZ_@geday>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
 <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
 <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
 <aRLEbfsmXnGwyigS@geday>
 <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>
 <aRQ_R90S8T82th45@geday>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aRQ_R90S8T82th45@geday>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_170916_137973_4B88F03F 
X-CRM114-Status: GOOD (  23.34  )
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

T24gV2VkLCBOb3YgMTIsIDIwMjUgYXQgMDU6MDM6MzJBTSAtMDMwMCwgR2VyYWxkbyBOYXNjaW1l
bnRvIHdyb3RlOgo+IE9uIFR1ZSwgTm92IDExLCAyMDI1IGF0IDAzOjQ3OjA0UE0gKzA4MDAsIOW8
oOeDqCB3cm90ZToKPiA+IEhpIEdlcmFsZG8sCj4gPiAKPiA+IEluIHN0YW5kYXJkIEdQSU8gb3Bl
cmF0aW9ucywgdGhlIHR5cGljYWwgcHJhY3RpY2UgaXMgdG8gc2V0IHRoZSBvdXRwdXQgbGV2ZWwg
Zmlyc3QgYmVmb3JlIGNvbmZpZ3VyaW5nIHRoZSBkaXJlY3Rpb24gYXMgb3V0cHV0LiBUaGlzIGFw
cHJvYWNoIGhlbHBzIGF2b2lkIG91dHB1dHRpbmcgYW4gdW5jZXJ0YWluIHZvbHRhZ2UgbGV2ZWwg
YXQgdGhlIGluc3RhbnQgd2hlbiB0aGUgZGlyZWN0aW9uIHN3aXRjaGVzIGZyb20gaW5wdXQgdG8g
b3V0cHV0Lgo+IAo+IFRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uIFllIFpoYW5nLCBpdCBtYWtl
cyBzZW5zZSB0byBtZS4gSXQgYXZvaWRzIHRoZQo+IHBpbiB0byBub3QgYmUgZmxvYXRpbmcgc28g
dG8gc3BlYWsuIEkga2VwdCBoYW1tZXJpbmcgYXQgdGhpcyBwcm9ibGVtLCBieQo+IHRoZSB3YXkg
aXMgUENJZSBQRVJTVCMgc2lkZS1iYW5kIHNpZ25hbCByZWZ1c2luZyB0byBjby1vcGVyYXRlIGFu
ZAo+IGZhaWxpbmcgUENJZSBpbml0aWFsIGxpbmstdHJhaW5pbmcuCj4gCj4gWW91J3JlIG5vdCBn
b2luZyB0byBsaWtlIHRoaXM6Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlvLXJv
Y2tjaGlwLmMgYi9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4gaW5kZXggNDcxNzRlYjNi
YTc2Li5mZWEyYzU1OTkyZTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2No
aXAuYwo+ICsrKyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPiBAQCAtMTgzLDExICsx
ODMsMTMgQEAgc3RhdGljIGludCByb2NrY2hpcF9ncGlvX3NldChzdHJ1Y3QgZ3Bpb19jaGlwICpn
YywgdW5zaWduZWQgaW50IG9mZnNldCwKPiAgCXN0cnVjdCByb2NrY2hpcF9waW5fYmFuayAqYmFu
ayA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKPiAgCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gIAo+
ICsJcm9ja2NoaXBfZ3Bpb19zZXRfZGlyZWN0aW9uKGdjLCBvZmZzZXQsIHRydWUpOwo+ICsKPiAg
CXJhd19zcGluX2xvY2tfaXJxc2F2ZSgmYmFuay0+c2xvY2ssIGZsYWdzKTsKPiAgCXJvY2tjaGlw
X2dwaW9fd3JpdGVsX2JpdChiYW5rLCBvZmZzZXQsIHZhbHVlLCBiYW5rLT5ncGlvX3JlZ3MtPnBv
cnRfZHIpOwo+ICAJcmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmJhbmstPnNsb2NrLCBmbGFn
cyk7Cj4gIAo+IC0JcmV0dXJuIDA7Cj4gKwlyZXR1cm4gcm9ja2NoaXBfZ3Bpb19zZXRfZGlyZWN0
aW9uKGdjLCBvZmZzZXQsIGZhbHNlKTsKPiAgfQo+ICAKPiAgc3RhdGljIGludCByb2NrY2hpcF9n
cGlvX2dldChzdHJ1Y3QgZ3Bpb19jaGlwICpnYywgdW5zaWduZWQgaW50IG9mZnNldCkKPiAKPiBC
eSBzZXR0aW5nIGRpcmVjdGlvbiBJTlBVVCwgdGhlbiB3cml0aW5nIG91dCwgdGhlbiBzZXR0aW5n
IE9VVFBVVCBhZ2Fpbgo+IG1pcmFjdWxvdXNseSBpdCBkb2Vzbid0IGZhaWwgaW5pdGlhbCBsaW5r
IHRyYWluaW5nLCB3aXRoIG5vIG90aGVyCj4gY2hhbmdlcyB0aGF0IGFscmVhZHkgaGF2ZSBiZWVu
IHJlamVjdGVkIGJ5IFBDSSBmb2xrcyBhbmQgU2hhd24gTGluLgoKSGkgWWUsIFNoYXduLAoKSGVy
ZSdzIG1vcmUgY29udGFpbmVkIHdvcmthcm91bmQgd2l0aG91dCByZXNvcnRpbmcgdG8gY2xlYXJp
bmcgRERSIHRvCklOUFVUIGZvciBldmVyeSBHUElPOgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaWUtcm9ja2NoaXAtaG9zdC5jCmluZGV4IGVlMTgyMmNhMDFkYi4uMWQ4OTEzMWVjNmFjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCisr
KyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMKQEAgLTMxNSw3
ICszMTUsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0X3BvcnQoc3RydWN0
IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQogCQkJICAgIFBDSUVfQ0xJRU5UX0NPTkZJRyk7CiAK
IAltc2xlZXAoUENJRV9UX1BWUEVSTF9NUyk7Ci0JZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHJv
Y2tjaGlwLT5wZXJzdF9ncGlvLCAxKTsKKwlncGlvZF9kaXJlY3Rpb25faW5wdXQocm9ja2NoaXAt
PnBlcnN0X2dwaW8pOworCWdwaW9kX2RpcmVjdGlvbl9vdXRwdXQocm9ja2NoaXAtPnBlcnN0X2dw
aW8sIDEpOwogCiAJbXNsZWVwKFBDSUVfUkVTRVRfQ09ORklHX1dBSVRfTVMpOwogClRoaXMgcmVz
dWx0cyBpbiB3b3JraW5nIFBDSWUgZm9yIG1lLCBwYXNzIGluaXRpYWwgbGluayB0cmFpbmluZy4K
CkkgdGhpbmsgSSBuZWVkIHRvIHByb3ZpZGUgbW9yZSBkZXRhaWxzOgoKR1BJTyBpbiBxdWVzdGlv
biBpcyBHUElPMC0xMiAvIEdQSU8wLVBCNC4gT24gUkszMzk5UFJPIFZNQVJDIHNjaGVtYXRpYwpp
dCdzIGNhbGxlZCBQQ0lFX1BFUlNUI18zLjNWIGFuZCBpdCdzIGluIHRoZSBQTVVJTzEgZG9tYWlu
LgoKV2l0aG91dCB3b3JrYXJvdW5kIEkgaGF2ZSBhYm91dCA2IG1pbGxpc2Vjb25kcywgZnJvbSBk
cml2ZXIgcHJvYmUgYW5kCnBhcnNpbmcgb2YgRFQgdGhhdCBzZXRzIGluaXRpYWwgdmFsdWUgMCBm
b3IgR1BJTywgdG8gZGVhc3NlcnQgUEVSU1QjCmJ5IHNldHRpbmcgaXQgaGlnaC4gV2hpY2ggaXMg
d2h5IGp1c3QgcmVtb3ZpbmcgbXNsZWVwKFBDSUVfVF9QVlBFUkxfTVMpCnByb2R1Y2VkIHdvcmtp
bmcgUENJZSBmb3IgbWUuCgpBZnRlciB0aGUgfjYgbXMgaXQgYmVjb21lcyBuZWNlc3NhcnkgdG8g
aGFjayBkaXJlY3Rpb24gdG8gaW5wdXQgdGhlbgpzZXR0aW5nIGRpcmVjdGlvbiB0byBvdXRwdXQg
dG8gcHJvcGVybHkgZGVhc3NlcnQgUEVSU1QjIGFuZCBwcm9jZWVkCndpdGggaW5pdGlhbCBsaW5r
IHRyYWluaW5nIC0gd2hpY2ggaXMgd2h5LCBhZ2FpbiwgaGFja2luZyBQRVJTVCMgYXMKZWl0aGVy
IG9wZW4tZHJhaW4gd2l0aCBwdWxsLXVwIG9yIG9wZW4tc291cmNlIHdpdGggcHVsbC1kb3duIHdv
cmtlZDoKZ3Bpb2xpYiBoYWNrcyB0aGF0IGJ5IHNldHRpbmcgZGlyZWN0aW9uIElOUFVULgoKVGhh
bmtzLApHZXJhbGRvIE5hc2NpbWVudG8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

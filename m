Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E570ECCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 20:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJqqTEYQLhyJlytjJlyZIK9t9Mzv+jYxDlXl4govWmA=; b=hiAx4fNc50Si8/
	zP/akEFsgWMSWB6Px5D47DPJ2vzRrtabUdOokcKgUz5TH0BaNKetTeiCFZfEidS4v2ud0+3Ty44X5
	TySsSH6AShm3flUedFwUgGgEvpzkIRSvgVUahtEkfEHNOKqpcJm+D0jHPELFJ0XO3qniK/+vxC+DG
	jBC8OWd5mkA/Mfmre3zEC1CsEOnSVew0Ro0NoBMCQyKnGikKN8Dq+GdmU6+ZML00SoTbLIphcvc+H
	1bH0wSYsbZb+GArdkAADHMiVGyy8Ygih8nurYLe3gvhRx1mgDVumcg1yRrKyyCp8TbMi3Ede5lkAr
	GWcYNVI/4HFgFaWESwtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGjiC-0000000ELm6-33y8;
	Wed, 05 Nov 2025 20:02:32 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGjiA-0000000ELlC-2xFc
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 20:02:31 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-656b4881f55so92660eaf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 12:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762372949; x=1762977749; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2WgVh/W2QDlWrUEp2DhJYyH+fmgYqOSSyNzgizd879Q=;
        b=dYjHKasdA3i0K2V/k5Au2FYiA4QFHeucsyRYRm2k1kVDJl7ctRGXMvbehDYzwkkwvf
         tg7YnKBHtiKMGlq4ZgATh+t8CLOeSVBDlFeSajYGegfDYYOVt8YwdK4oG+wjMwakGX28
         8om40A+if2uv5B/FKAaou+MP35/Jref6X/Yyrd+6UHKCZDy5wsff8VihLIMyGIl3VHRY
         u+Z7inh9WnXIhLh/5T0yLg2tmSWvXm/iX71KU4NxsXSvbrS25I9eLRwK4MY+Lu4Jbcc/
         8zBmEX6YaLiZqgj3uixY+37UhD12FIvgK4PC1AkQoWh4URhbgsK0Zw6Srwpn16NDoN6H
         2Wvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762372949; x=1762977749;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2WgVh/W2QDlWrUEp2DhJYyH+fmgYqOSSyNzgizd879Q=;
        b=QJWugsR1K59Vyr23e1GYrUA9sgqdv9gii40CJ59uTTyGFD6vWLqJ6l6JjgVjqG2nje
         W7N2ykkV17j9luqNE2jVrFilpoRvWc1mjKf4bZD1eH6fLxaISFuwUlVkzTm5OhKHt14b
         KVywViHJQgX+OnJFCDCdSmPi68seirGzF0nkOsl6KW3ptBCk2IgjmlcP8LP1SshCL3Fw
         s4nMnfVoBgq2WckgCF/+lOFZS3HDW/hyO5k0BS7fX6CHqODwe069GD+yN4tXW3WNXLtH
         rrhr0gbFIyjWHJaA55YjO41Kt3ABxMo2taNOts5AODmXS+/9YbX+iee/VK6UUiXvNlao
         xEDw==
X-Forwarded-Encrypted: i=1; AJvYcCXlD8Ex72c5IWMiszmeThQgn6kJQVT5ehWCw7a+yLyfgD/KtJndFHj9qG37oGrcjAN3h5dLzEs1fhi9htZJwQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyBvWzC5IhG/EUmPv6UUGO8OYOTutN3RgdoYQ6wy4GvyikjjyOr
	q4C9sQNl/jlUUg/M9Jyu8iwkhG7QHDDO6zE79z7pA6UkLJFKsPo5/Ubc
X-Gm-Gg: ASbGncsMNefqMuGVodzKMJnOzQeTMDPtM4ZruD4gNm7w/gFoI/b5swYnFAfNXy5TLvO
	LVsOXM4/uZ3COIiAAE6OdmZCeTiZB3qcHveRIB/D4dtB90i1TdF1b91qZ6wob9E0DelwsaZHYxE
	oBDJTwBYUER4vFtmANU3ydxuf8s4hzBrd7Z4dkRnRTWr7Yue/0MahJxHeQBRpCTHI1SXZS7uWH7
	A7jLGlHgEArA1BglCxG+emsURgB4gtx818Uxefzrq5TzQ8dUZYvv+HcAs4A7FIy0bdDZFpOL3pf
	J13rWnZ7ydc/ii/BDQ9/3OUkfhaphCUtaxIE09Hs5EE4bXOwEnxqIIYfsIv/eE++mVohMfyPHW4
	OiRW5faCMl9aY9Cvl7llv5zBaDAyXNxO5SxkgspkfZwtjLUC7DJZD1x1WzhgRg+k=
X-Google-Smtp-Source: AGHT+IGSwk5bgvA4Oe45ToOFpKJoB2+FDTxvWYOBhAfgVYBhwy6jRCcKmE2cTHy1t1Zs4TzsM6oc1g==
X-Received: by 2002:a05:6870:80d2:b0:319:be1e:9dce with SMTP id 586e51a60fabf-3e198e539f7mr2033360fac.5.1762372949003;
        Wed, 05 Nov 2025 12:02:29 -0800 (PST)
Received: from geday ([2804:7f2:800b:2ebb::dead:c001])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e30ab3f772sm53209fac.20.2025.11.05.12.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:02:28 -0800 (PST)
Date: Wed, 5 Nov 2025 17:02:21 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
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
Message-ID: <aQutTbzS8rfW-Esm@geday>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
 <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_120230_751429_3579283B 
X-CRM114-Status: GOOD (  15.37  )
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

T24gV2VkLCBOb3YgMDUsIDIwMjUgYXQgMDQ6NTY6MzZQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI1LzExLzA1IOaYn+acn+S4iSAxNjoxOCwgR2VyYWxkbyBOYXNjaW1lbnRvIOWG
memBkzoKPiA+IAo+ID4gSGkgU2hhd24sIGdsYWQgdG8gaGVhciBmcm9tIHlvdS4KPiA+IAo+ID4g
UGVyaGFwcyB0aGUgZm9sbG93aW5nIGNoYW5nZSBpcyBiZXR0ZXI/IEl0IHJlc29sdmVzIHRoZSBp
c3N1ZQo+ID4gd2l0aG91dCB0aGUgYWRkZWQgY29tcGxpY2F0aW9uIG9mIG9wZW4gZHJhaW4uIEFm
dGVyIHlvdSBxdWVzdGlvbmVkCj4gPiBpZiBvcGVuIGRyYWluIGlzIGFjdHVhbGx5IHBhcnQgb2Yg
dGhlIHNwZWMsIEkgcmVtZW1iZXJlZCB0aGF0Cj4gPiBHUElPX09QRU5fRFJBSU4gaXMgYWN0dWFs
bHkgKEdQSU9fU0lOR0xFX0VOREVEIHwgR1BJT19MSU5FX09QRU5fRFJBSU4pCj4gPiBzbyBJIGRl
Y2lkZWQgdG8gdGVzdCB3aXRoIGp1c3QgR1BJT19TSU5HTEVfRU5ERUQgYW5kIGl0IHdvcmtzLgo+
IAo+IAo+IERvZXMgdGhhdCB3b3JrIGZvciB5b3UgdG9vPwo+IAo+ICZwY2llMCB7Cj4gCWVwLWdw
aW9zID0gPCZncGlvMCBSS19QQjQgR1BJT19BQ1RJVkVfSElHSD47Cj4gICAJbnVtLWxhbmVzID0g
PDQ+Owo+IC0JcGluY3RybC0wID0gPCZwY2llX2Nsa3JlcW5iX2NwbT47Cj4gKwlwaW5jdHJsLTAg
PSA8JnBjaWVfY2xrcmVxbmJfY3BtPiwgPCZwY2llX3BlcnN0PjsKPiAgIAlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+ICAgCXZwY2llMHY5LXN1cHBseSA9IDwmdmNjYV8wdjk+OwkvKiBWQ0Nf
MFY5X1MwICovCj4gICAJdnBjaWUxdjgtc3VwcGx5ID0gPCZ2Y2NhXzF2OD47CS8qIFZDQ18xVjhf
UzAgKi8KPiBAQCAtNDA4LDYgKzQwOCwxMCBAQCBwY2llIHsKPiAgIAkJcGNpZV9wd3I6IHBjaWUt
cHdyIHsKPiAgIAkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QRDQgUktfRlVOQ19HUElPICZwY2Zn
X3B1bGxfdXA+Owo+ICAgCQl9Owo+ICsJCXBjaWVfcGVyc3Q6IHBjaWUtcGVyc3Qgewo+ICsJCQly
b2NrY2hpcCxwaW5zID0gPDAgUktfUEI0IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKPiAr
CQl9Owo+ICsKPiAgIAl9OwoKSGkgU2hhd24sCgpObywgdGhhdCBkb2VzIG5vdCB3b3JrLgoKSSBi
ZWxpZXZlIHRoZSBwdWxsLXVwIG11eCBiZWNhbWUgbmVlZGVkIGJlY2F1c2UgSSB3YXMgZm9yY2lu
ZyBvcGVuIGRyYWluCm9uIFBFUlNUIy4KClRoYW5rcywKR2VyYWxkbyBOYXNjaW1lbnRvCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

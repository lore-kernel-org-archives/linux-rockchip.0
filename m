Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D66ECCFA13
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Nov 2025 02:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t25KVYgXjGgD7XkZRKgDMphSsUmZb6E9ELZA7KRbuQQ=; b=bH2buikRDLCTMt
	/Ny2nTe4sQ950ObhsJbYBSxFdzQJkuX0vWsNv9EgfeIarhYkccBXp2fpHMOQFbel4RDxfRQpqHeAj
	QE627X1BXVh8WujbjKULNuwXAV1i8sZoLqlQKPIK+q03QAipbNYfhOlCdPORnjkN6+1eq+yj3rsIj
	CAPZjotbg0eF5S4AiWaVHEhKrveO/w7IQKwT8vXH8+ECCWycs4+QzCImmJHgi//u19LlplQ4Ovo0o
	FXWE/I26MBNpJAR6SmQrdRb8Z49IlFq5EqTMYe8OLVx1bKwSh6WISMXdKr7FxjOwX99gMcGUbi9Wo
	YqexYW3hdVK9CdjIdsPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHCSP-0000000GaT7-0KtH;
	Fri, 07 Nov 2025 02:44:09 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHCSL-0000000GaRz-3izX
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 02:44:06 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-3e29f583e8bso196618fac.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 18:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762483444; x=1763088244; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tQJFO3d01XRWHlItzAgkgKpAHFmrqaV2k8tk3VC7Qsk=;
        b=bXYcHsVWtWvXeiqTgmGfvnKdQP/YqTbpklaPofsxvdbeCyIFLZJ+/EZ6UtroqFGo+D
         ocyBgQxo/hgkVdYt3E0CMzpZnUUcyTDs3HNb0m8O3f1g9iTAf4lsO2X5zChqu+Jg31o1
         EfaykhyNHsiulIwtg5HgB9jjEE2FS5/BO+eCY7OEDgotwWkQNQbgkcKW+FdaeqOejSKK
         Gt4XkFSWXH5Ad4QvgpcoDEwFt5gT3X2pQr+L3D6Tc7/xkITeswy/N3XeOUhIDPB5oZ+8
         yFTO/60cR9KilbBd1i8IB/9BD5NqUHNZkV9Ou2UDle6YHmiaXiZvj1Oido8yEZcPWWyk
         iQVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762483444; x=1763088244;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tQJFO3d01XRWHlItzAgkgKpAHFmrqaV2k8tk3VC7Qsk=;
        b=m65bRpLOJ/WeO233TElxK1qu+UUt1Aoxu1n95FeJAV+NJVKYsSnU0tbzDcGfeJiWff
         o35k9ATC5biuql9o2vRX8IOmqaWOqA1Q5S1gccEzPy3W6si9Neaz4ck4bNNBopCEn8MN
         a+B7luV0cbGjXLglFikL6NE+j5hKJS0z/26MLLtRmB0mRV+ZPFhO5eceG+zMco7upVhg
         zFYpVpXE2R/3NvlD6WDHj/+4g5XXpk+ViCaQb55yzhNxnK77vJ4HwwUX41kr1hKZAe06
         SZuXsiOIMG/1Di5welhCO+PZsOA/HlAkcPMCS6dShU7H+bdC3D+ROWnYPxIZnAengSVQ
         zmfQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6gqFc1WRYt8FEskbXci4MZahHbiVTFiEoBypc2aPYZ+i0hhQI65kMmYASbd/+p1euyIriZyLnPGnkO4ULUg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwYjXiZAZXnLAvUSlgczucgawaCln3XpqlO6RymsShYwLbL39dH
	xpUIHRL/rnl7DiKDgvStjWZLmSh9ntdDpkGnY52gZ+DjFFjM/MfXgFma
X-Gm-Gg: ASbGncsiO43aq4AHeaBUIvY4sppjt0z4oJMOthy5KzzicACoqqQs/hNOAluCzOhFYdO
	jHWuwYYEtq1rgkty89OH+WM9FEzTWF9qdVYmzdmXHslzcq6bYm8a4esQ7hhMKgqNfKchXSqXVcF
	2DUxpNcT74NsaSL29OZN44IiUVFS9EQOVfsIkY0wHcp8UfW3EfjgIaOeZBeDV0UX1eMMYSSrh2R
	d8N4NkHOjrH3wuwFdyIXtSJ01kYWKYb46J8no46KmvJfBJ0pE8EJbtfXM94JKPsn9+yhQomT5oO
	msvic/HVco4fJxowkL+GIg+GK9c82akp8snwmvfQFq3IgbQF0hhr3u6C13Gbg88waxdkyb7aH/O
	x9P0GE5igqgHulBJMrWgzPvcHwxZA7koR2PAaPd1+Q+blGuTgH6xcKvlpIUIjPQ==
X-Google-Smtp-Source: AGHT+IFD2D//hG6hBMCeFSWKnWdmScBR8+/9DZwOHc0uXkeVWeA8HfOnZLz9J/lfwgpLyio/zbkAWg==
X-Received: by 2002:a05:6871:51e7:b0:3e0:aec2:8b50 with SMTP id 586e51a60fabf-3e42aba92a0mr60346fac.22.1762483444119;
        Thu, 06 Nov 2025 18:44:04 -0800 (PST)
Received: from geday ([2804:7f2:8082:6c9::1])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e41f1ec269sm760868fac.20.2025.11.06.18.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 18:44:03 -0800 (PST)
Date: Thu, 6 Nov 2025 23:43:57 -0300
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
Message-ID: <aQ1c7ZDycxiOIy8Y@geday>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
 <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_184405_923332_04903E2C 
X-CRM114-Status: GOOD (  11.36  )
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
memBkzoKPiA+IEhpIFNoYXduLCBnbGFkIHRvIGhlYXIgZnJvbSB5b3UuCj4gPiAKPiA+IFBlcmhh
cHMgdGhlIGZvbGxvd2luZyBjaGFuZ2UgaXMgYmV0dGVyPyBJdCByZXNvbHZlcyB0aGUgaXNzdWUK
PiA+IHdpdGhvdXQgdGhlIGFkZGVkIGNvbXBsaWNhdGlvbiBvZiBvcGVuIGRyYWluLiBBZnRlciB5
b3UgcXVlc3Rpb25lZAo+ID4gaWYgb3BlbiBkcmFpbiBpcyBhY3R1YWxseSBwYXJ0IG9mIHRoZSBz
cGVjLCBJIHJlbWVtYmVyZWQgdGhhdAo+ID4gR1BJT19PUEVOX0RSQUlOIGlzIGFjdHVhbGx5IChH
UElPX1NJTkdMRV9FTkRFRCB8IEdQSU9fTElORV9PUEVOX0RSQUlOKQo+ID4gc28gSSBkZWNpZGVk
IHRvIHRlc3Qgd2l0aCBqdXN0IEdQSU9fU0lOR0xFX0VOREVEIGFuZCBpdCB3b3Jrcy4KClNoYXdu
LAoKSSBxdW90ZSBmcm9tIHRoZSBQQ0llIE1pbmkgQ2FyZCBFbGVjdHJvbWVjaGFuaWNhbCBTcGVj
aWZpY2F0aW9uIFJldiAxLjIKCiIzLjQuMS4gTG9naWMgU2lnbmFsIFJlcXVpcmVtZW50cwoKVGhl
IDMuM1YgY2FyZCBsb2dpYyBsZXZlbHMgZm9yIHNpbmdsZS1lbmRlZCBkaWdpdGFsIHNpZ25hbHMg
KFdBS0UjLApDTEtSRVEjLCBQRVJTVCMsIGFuZCBXX0RJU0FCTEUjKSBhcmUgZ2l2ZW4gaW4gVGFi
bGUgMy03LiBbLi4uXSIKClNvIHdoaWxlIHlvdSBhcmUgY29ycmVjdCB0aGF0IFBFUlNUIyBpcyBt
b3N0IGRlZmluaXRlbHkgbm90IE9wZW4gRHJhaW4sCnRoZXJlJ3MgZXZpZGVuY2Ugb24gdGhlIHNw
ZWMgdGhhdCBkZWZpbmVzIHRoaXMgc2lnbmFsIGFzIFNpbmdsZS1FbmRlZC4KClRoYW5rcywKR2Vy
YWxkbyBOYXNjaW1lbnRvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==

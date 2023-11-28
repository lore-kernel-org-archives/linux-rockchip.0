Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29048C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 23:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MjHZUaxprVVngwYMOAw4sWooNytp3gU/kOn4Vc3EVA=; b=Y/+AsDuubbuBGx
	JooymzVKZvNGVQwNmiRupPSB1XShh2b2ZapDBZnH03Rg7RNkGmrSeK3aeNxCKNBk7Fa9ntfZ9c1hn
	ap/Wsa5cTQE7JpuJmGc+DUArm90pEVb7y7Ea1SFdigiHe/nW1DPc5rq/vVkp9VUoxuYAP6AW+saui
	TyIG3Rop2T2OpVG1edzi2O4PU/7/eM4yrk4/yAuZajDLcNbvGNUDJsy9CBuMckeUEU8cRQ91nRSw8
	C0GZHl2apg7QGqAybDeTzJ0PAPsRwRBczljRHA1fA6ZFx+ks/WEr4BsqSwlwNHM1cefz/pgmIIs1b
	yNEyALJBnF8JJxMKX/ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r87Ah-006YVC-1B;
	Tue, 28 Nov 2023 23:07:15 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r87Ae-006YTl-0M
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 23:07:13 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-41b7fd8f458so34079241cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 15:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701212831; x=1701817631; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JKGceIQmjzcsQC3Q07PKAqpPD6bs9odge0wDr5u7PKU=;
        b=JmwVnE1PRhooP45IyMiSa1jf+mG5sXZTqhcf1TJ9duytRs8sAsP81w5P3NxiE4WovU
         4M0ZUzn5v/mQ5M8QwseBx/AGNcJfGQg49HqiHGAX6fQVczUpemX/pvLVIejA1S4M2p3C
         1Vg3QB5d82J42SSRLmGP3K5CmH8IQB9xr203P51JQ1lIwL0r/Gxxnee+U55HKoUW6Ej7
         as47Rq8hHeLRCPLtjrRLSMk6sLHehzWX6/94dr60qTk0GhFfkl2nssHnjPWXSEVL5cIS
         yKTm5n2iBpNDt67IQal7FCUrYr8x1PaKqzCK+0wUcirtDQVKUnlzzfUrh3eJ6597W1mx
         Glvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701212831; x=1701817631;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JKGceIQmjzcsQC3Q07PKAqpPD6bs9odge0wDr5u7PKU=;
        b=H0KVuT28HxrOQfXfo811cIPjBqYmQbOjvLReOF+Q1fTBa05DfiQLei5avGhtftvqkZ
         Gur5iDEPBC9uBVhZgK6b0uynrbOm75Fz73C+w0UvkHXLJFZYTNFj7PP9fpcH6H8wTiAF
         z7PkFtpqr9Fos2PqUXVR07c8hwPdQHhG2DCrVbCYoXkohpEJWZ1NApFJJbqQNv3cQEsU
         sRFcRH4i5TTAHL+lP4cpF884hPcUP7bG5egR+ub8QwLngfm2lVlTr0DWrsA9BE2B7bXu
         nK7XJBMpMWLjHWgIslB2P3OF2UXGMatyv/+mHSqRjpe2zY4E0uwzCyd69lYI/RR3fI5m
         gxWw==
X-Gm-Message-State: AOJu0YzOyzjQOZp4uS89hETrLoR+/ZPeHi+O/zJ7TzJQupz+KHScND9m
	E3Hb0tag05yeP0l6hHHKoY0pePz+zCbg1ORYPHclFA==
X-Google-Smtp-Source: AGHT+IHAHLSOITMZygZZbwHqs8Pcv2cxmXIEpgUbJ5bxgMm59HnXI3xdTgQIpiDfVoUOALVinCHvTAH42dtkODtq5L8=
X-Received: by 2002:a05:622a:241:b0:423:8287:dc68 with SMTP id
 c1-20020a05622a024100b004238287dc68mr17998278qtx.52.1701212830897; Tue, 28
 Nov 2023 15:07:10 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-7-pasha.tatashin@soleen.com> <d99e0d4a-94a9-482b-b5b5-833cba518b86@arm.com>
 <CA+CK2bDswtrqiOMt3+0LBb0+7nJY9aBpzZdsmrWRzy9WxBqKEg@mail.gmail.com> <79c397ee-b71b-470e-9184-401b4b96a0d2@arm.com>
In-Reply-To: <79c397ee-b71b-470e-9184-401b4b96a0d2@arm.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 28 Nov 2023 18:06:34 -0500
Message-ID: <CA+CK2bDyKP6RT1ZWLKXBcRrfSuONo9LPicskc9+ek=FX_KhwYg@mail.gmail.com>
Subject: Re: [PATCH 06/16] iommu/dma: use page allocation function provided by iommu-pages.h
To: Robin Murphy <robin.murphy@arm.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com, 
	alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev, 
	baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org, 
	corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, 
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com, 
	jernej.skrabec@gmail.com, jgg@ziepe.ca, jonathanh@nvidia.com, joro@8bytes.org, 
	kevin.tian@intel.com, krzysztof.kozlowski@linaro.org, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, mst@redhat.com, m.szyprowski@samsung.com, 
	netdev@vger.kernel.org, paulmck@kernel.org, rdunlap@infradead.org, 
	samuel@sholland.org, suravee.suthikulpanit@amd.com, sven@svenpeter.dev, 
	thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com, 
	vdumpa@nvidia.com, virtualization@lists.linux.dev, wens@csie.org, 
	will@kernel.org, yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_150712_153648_B2C1BF7A 
X-CRM114-Status: GOOD (  19.68  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgNTo1OeKAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMjAyMy0xMS0yOCAxMDo1MCBwbSwgUGFzaGEgVGF0
YXNoaW4gd3JvdGU6Cj4gPiBPbiBUdWUsIE5vdiAyOCwgMjAyMyBhdCA1OjM04oCvUE0gUm9iaW4g
TXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAyMDIzLTEx
LTI4IDg6NDkgcG0sIFBhc2hhIFRhdGFzaGluIHdyb3RlOgo+ID4+PiBDb252ZXJ0IGlvbW11L2Rt
YS1pb21tdS5jIHRvIHVzZSB0aGUgbmV3IHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbnMKPiA+Pj4g
cHJvdmlkZWQgaW4gaW9tbXUtcGFnZXMuaC4KPiA+Pgo+ID4+IFRoZXNlIGhhdmUgbm90aGluZyB0
byBkbyB3aXRoIElPTU1VIHBhZ2V0YWJsZXMsIHRoZXkgYXJlIERNQSBidWZmZXJzIGFuZAo+ID4+
IHRoZXkgYmVsb25nIHRvIHdob2V2ZXIgY2FsbGVkIHRoZSBjb3JyZXNwb25kaW5nIGRtYV9hbGxv
Y18qIGZ1bmN0aW9uLgo+ID4KPiA+IEhpIFJvYmluLAo+ID4KPiA+IFRoaXMgaXMgdHJ1ZSwgaG93
ZXZlciwgd2Ugd2FudCB0byBhY2NvdW50IGFuZCBvYnNlcnZlIHRoZSBwYWdlcwo+ID4gYWxsb2Nh
dGVkIGJ5IElPTU1VIHN1YnN5c3RlbSBmb3IgRE1BIGJ1ZmZlcnMsIGFzIHRoZXkgYXJlIGVzc2Vu
dGlhbGx5Cj4gPiB1bm1vdmFibGUgbG9ja2VkIHBhZ2VzLiBTaG91bGQgd2Ugc2VwYXJhdGUgSU9N
TVUgbWVtb3J5IGZyb20gS1ZNCj4gPiBtZW1vcnkgYWxsIHRvZ2V0aGVyIGFuZCBhZGQgYW5vdGhl
ciBmaWVsZCB0byAvcHJvYy9tZW1pbmZvLCBzb21ldGhpbmcKPiA+IGxpa2UgImlvbW11IC0+IGlv
bW11IHBhZ2V0YWJsZSBhbmQgZG1hIG1lbW9yeSIsIG9yIGRvIHdlIHdhbnQgdG8KPiA+IGV4cG9y
dCBETUEgbWVtb3J5IHNlcGFyYXRlbHkgZnJvbSBJT01NVSBwYWdlIHRhYmxlcz8KPgo+IFRoZXNl
IGFyZSBub3QgYWxsb2NhdGVkIGJ5ICJ0aGUgSU9NTVUgc3Vic3lzdGVtIiwgdGhleSBhcmUgYWxs
b2NhdGVkIGJ5Cj4gdGhlIERNQSBBUEkuIEV2ZW4gaWYgeW91IHdhbnQgdG8gY2xhaW0gdGhhdCBh
IGRyaXZlciBwaW5uaW5nIG1lbW9yeSB2aWEKPiBpb21tdV9kbWFfb3BzIGlzIHNvbWVob3cgZGlm
ZmVyZW50IGZyb20gdGhlIHNhbWUgZHJpdmVyIHBpbm5pbmcgdGhlIHNhbWUKPiBhbW91bnQgb2Yg
bWVtb3J5IHZpYSBkbWEtZGlyZWN0IHdoZW4gaW9tbXUucGFzc3Rocm91Z2g9MSwgaXQncyBzdGls
bAo+IG5vbnNlbnNlIGJlY2F1c2UgeW91J3JlIGZhaWxpbmcgdG8gYWNjb3VudCB0aGUgcGFnZXMg
d2hpY2ggaW9tbXVfZG1hX29wcwo+IGdldHMgZnJvbSBDTUEsIGRtYV9jb21tb25fYWxsb2NfcGFn
ZXMoKSwgZHluYW1pYyBTV0lPVExCLCB0aGUgdmFyaW91cwo+IHBvb2xzLCBhbmQgc28gb24uCj4K
PiBUaGFua3MsCj4gUm9iaW4uCj4KPiA+IFNpbmNlLCBJIGluY2x1ZGVkIERNQSBtZW1vcnksIEkg
c3BlY2lmaWNhbGx5IHJlbW92ZWQgbWVudGlvbmluZyBvZgo+ID4gSU9NTVUgcGFnZSB0YWJsZXMg
aW4gdGhlIG1vc3Qgb2YgcGxhY2VzLCBhbmQgb25seSByZXBvcnQgaXQgYXMgSU9NTVUKPiA+IG1l
bW9yeS4gSG93ZXZlciwgc2luY2UgaXQgaXMgc3RpbGwgYnVuZGxlZCB0b2dldGhlciB3aXRoIFNl
Y1BhZ2VUYWJsZXMKPiA+IGl0IGNhbiBiZSBjb25mdXNpbmcuCj4gPgo+ID4gUGFzaGEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

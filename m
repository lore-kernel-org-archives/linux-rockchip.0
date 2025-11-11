Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CB3BCCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3epCFwdO1kUwwTgZ8Snkvc5eYzJ/h3gNteOLIVDAiVA=; b=S3/moD7GuI9KCm
	BPYFJxlActPkhlCTJcmQuqheZh6zzJbgp/AQAAF3xB9gGfchIvbX7NqJbP+UEtRcFj37cnSykFYsV
	AXuqgZ+UCzAMpQJ5veLe8yR09XWcheetyCgVrGZqcjrq2cH7aSCvgqsliw2xc+HYElIrZ1s4A1/Si
	EGxmIuCL9oecNqps2p6rMJpsRkLmcnuRsAjrM4FKCxE4z5pwlN3pCo1v4hlOXMZSF24OtGvgkcNl7
	eNeOczcVVHXx4uJV7PvylxpVX1YqV4SH/czQjMPstmKfZPqTzycrZKiy9MWjGndkx+JbdGi/+raFp
	DQd3xiq/wtWdpRQCy67A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgb8-00000006XHl-3zDj;
	Tue, 11 Nov 2025 05:07:18 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgb5-00000006XGo-3Icq
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 05:07:16 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-b98983bae80so2257413a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Nov 2025 21:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762837634; x=1763442434; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lJxYvXKODjOtMv/aaVdKBa6NeBdC7u8qy7OeqKDdoDM=;
        b=FdLgNVTiW0inZKgrN5UJKz3b+hQuBhzZJM8atkQVEbv/Upkd4d14XLjVV3tnpl2fHG
         3DTbIU+qnM1mP3HoQRMl/YrZ7lGOSJQknTHdClmsNt9yDEIBG66ANhrPVnDY8kVzEH/z
         AR944mQys5jx7T6Rv32tDCRGPK8Up6WjrzVJxiuK+wcTpUrY3Z33sPsNqFzgWqB3vXbA
         SzUDy77631b3IHnXCKKw2a/m9sCkBI/qdsusEULLF4wgHbaocv/fVNCbIGXnW0WNrXOf
         YI/CytO6yi98v5DT6zYoP27vDMzICG2aFD4sK7OnPmiyoiZpvE1VJvTRJOsevHhzPl4d
         TMlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762837634; x=1763442434;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lJxYvXKODjOtMv/aaVdKBa6NeBdC7u8qy7OeqKDdoDM=;
        b=MlT+iJMsKYWGcKTiUvFyltZ4Q55NeI+jpheTflRyORZ93F+FRV1XW3uM9cALR/ZTQ7
         wtOnFMEjElWUprDj2FUrLbO4TS0Jzs0REhokqRmyLbRUfT1v2xuojAHH17Uzs+osEKQ8
         nCFPMtseTkCi2yeK9YcgDVNbnnwFcQlUJak1kjEu9aeXrN8e19PwC7l7xU4Qr6nRqAjU
         jim8LWhTkiXL001dtlI9MJmxmydwRVSROXpqXnAn0hSvQmfP5hR0yJFResFgC+pDJgr8
         4DRqphWIfkIucmGANYujJ6GrIZ5GGLqafP+jxXjPg7Bk7i4avWKkWAHM1UwBLnWQE0eF
         PEjg==
X-Forwarded-Encrypted: i=1; AJvYcCWAl7VBj3heegdCHT/sA48o5ITo04W9hYf0D2Ud0bloT8h+ouR9iNX+7EO0wWplYp0Hq6okLu+tb5gsyiJRpw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUoQu8OfWZk78JJQ5k18csSAgm5TXWEEmo38UiKNtmab6xYxbV
	x3nXZZBJzMnuRmdcB2E9h2Je7EbVL16j0Rb/gmmEZ0nBdaKpnXimnyZL
X-Gm-Gg: ASbGnctcOIfh4Sk8I4AcfU1oDLTtA0z5We0cZHSelEbHRc9MLMoiR+lTmleHP11PFfH
	cnWO39Hu8l21JfQlUjyZY9nbWPs47OvqzIZtvvli5vIVhV64e2u2GGqel/HY9EjI0WEBE9IdbNg
	KBTd6RRQHpL3Zmurhn4F5l2wmJAitjiJJcKvsKvtdz3brP6hL2Wc3G7NXneVST/Iuse0dl4pTuj
	Njg/1cPn0hnfQxAZIyuxSrZJIvpLfFWeFoMLCTfMrB1LuxDkTveEQ12+DILK0t+J3nCWoJ8dG0L
	E4F8n1BXKUeFfco3dJc1rFuAd9kcuMayXpNNa0RVaBErYsuiLrJKeBefsK2+vZvzeKWiqRaPAF/
	Naa6u6EqAJMmPDCcHNQYIwgMjqb14IrswilTALXyDUV4M63xJ13JTO44O6EkP+Z4=
X-Google-Smtp-Source: AGHT+IHzRdTCrue2ZgiQ50oZybWSGURPQR9pesddb3UZWH63AO4FM9OjcqyLQkulc+41mGYvnLonyQ==
X-Received: by 2002:a17:902:ecc6:b0:295:54cb:16ac with SMTP id d9443c01a7336-297e562ea82mr121851615ad.18.1762837634116;
        Mon, 10 Nov 2025 21:07:14 -0800 (PST)
Received: from geday ([2804:7f2:800b:6d3a::dead:c001])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-296509680e5sm169778595ad.1.2025.11.10.21.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 21:07:13 -0800 (PST)
Date: Tue, 11 Nov 2025 02:06:53 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ye Zhang <ye.zhang@rock-chips.com>,
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
Message-ID: <aRLEbfsmXnGwyigS@geday>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
 <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
 <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_210715_822400_9F78F70C 
X-CRM114-Status: GOOD (  23.86  )
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

T24gRnJpLCBOb3YgMDcsIDIwMjUgYXQgMTE6MDE6MDRBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+ICsgWWUgWmhhbmcKPiAKPiDlnKggMjAyNS8xMS8wNyDmmJ/mnJ/kupQgMTA6NDMsIEdlcmFs
ZG8gTmFzY2ltZW50byDlhpnpgZM6Cj4gPiBPbiBXZWQsIE5vdiAwNSwgMjAyNSBhdCAwNDo1Njoz
NlBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4gPj4g5ZyoIDIwMjUvMTEvMDUg5pif5pyf5LiJ
IDE2OjE4LCBHZXJhbGRvIE5hc2NpbWVudG8g5YaZ6YGTOgo+ID4+PiBIaSBTaGF3biwgZ2xhZCB0
byBoZWFyIGZyb20geW91Lgo+ID4+Pgo+ID4+PiBQZXJoYXBzIHRoZSBmb2xsb3dpbmcgY2hhbmdl
IGlzIGJldHRlcj8gSXQgcmVzb2x2ZXMgdGhlIGlzc3VlCj4gPj4+IHdpdGhvdXQgdGhlIGFkZGVk
IGNvbXBsaWNhdGlvbiBvZiBvcGVuIGRyYWluLiBBZnRlciB5b3UgcXVlc3Rpb25lZAo+ID4+PiBp
ZiBvcGVuIGRyYWluIGlzIGFjdHVhbGx5IHBhcnQgb2YgdGhlIHNwZWMsIEkgcmVtZW1iZXJlZCB0
aGF0Cj4gPj4+IEdQSU9fT1BFTl9EUkFJTiBpcyBhY3R1YWxseSAoR1BJT19TSU5HTEVfRU5ERUQg
fCBHUElPX0xJTkVfT1BFTl9EUkFJTikKPiA+Pj4gc28gSSBkZWNpZGVkIHRvIHRlc3Qgd2l0aCBq
dXN0IEdQSU9fU0lOR0xFX0VOREVEIGFuZCBpdCB3b3Jrcy4KPiA+IAo+ID4gU2hhd24sCj4gPiAK
PiA+IEkgcXVvdGUgZnJvbSB0aGUgUENJZSBNaW5pIENhcmQgRWxlY3Ryb21lY2hhbmljYWwgU3Bl
Y2lmaWNhdGlvbiBSZXYgMS4yCj4gPiAKPiA+ICIzLjQuMS4gTG9naWMgU2lnbmFsIFJlcXVpcmVt
ZW50cwo+ID4gCj4gPiBUaGUgMy4zViBjYXJkIGxvZ2ljIGxldmVscyBmb3Igc2luZ2xlLWVuZGVk
IGRpZ2l0YWwgc2lnbmFscyAoV0FLRSMsCj4gPiBDTEtSRVEjLCBQRVJTVCMsIGFuZCBXX0RJU0FC
TEUjKSBhcmUgZ2l2ZW4gaW4gVGFibGUgMy03LiBbLi4uXSIKPiA+IAo+ID4gU28gd2hpbGUgeW91
IGFyZSBjb3JyZWN0IHRoYXQgUEVSU1QjIGlzIG1vc3QgZGVmaW5pdGVseSBub3QgT3BlbiBEcmFp
biwKPiA+IHRoZXJlJ3MgZXZpZGVuY2Ugb24gdGhlIHNwZWMgdGhhdCBkZWZpbmVzIHRoaXMgc2ln
bmFsIGFzIFNpbmdsZS1FbmRlZC4KPiA+IAo+IAo+IFRoaXMncyB0cnVlLiBCdXQgSSBjb3VsZG4n
dCBmaW5kIGFueSB1c2VyIGluIGR0cyB1c2luZyBlaXRoZXIKPiBHUElPX1NJTkdMRV9FTkRFRCBv
ciBHUElPX09QRU5fRFJBSU4gZm9yIFBDSWUgUEVSU1QjLiBJJ20gY3VyaW91cwo+IGhvdyB0aGVz
ZSB0d28gZmxhZ3MgYWZmZWN0IGFjdHVhbCBiZWhhdmlvciBvZiBjaGlwcy4gWWUsIGNvdWxkIHlv
dQo+IHBsZWFzZSBoZWxwIGNoZWNrIGl0Pwo+CgpXaGlsZSBJIGhhdmVuJ3QgaGVhcmQgZnJvbSBZ
ZSBaaGFuZyBzdGlsbCB5b3VyIGNvbW1lbnQgaW5zdGlnYXRlZAptZSB0byBkaWcgZGVlcGVyLCB0
aGFuayB5b3UgU2hhd24gTGluLiBXaGF0IEkgZGlzY292ZXJlZCBJIGJlbGlldmUKaXMgYSBidWcg
aW4gdGhlIFJvY2tjaGlwIGRyaXZlciBmb3IgdGhlIEdQSU8gc3Vic3lzdGVtLiBMb29rOgoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwaW8vZ3Bp
by1yb2NrY2hpcC5jCmluZGV4IDQ3MTc0ZWIzYmE3Ni4uNTM4N2M3OGVhMTFjIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCisrKyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJv
Y2tjaGlwLmMKQEAgLTI3Miw5ICsyNzIsMTAgQEAgc3RhdGljIGludCByb2NrY2hpcF9ncGlvX2Rp
cmVjdGlvbl9pbnB1dChzdHJ1Y3QgZ3Bpb19jaGlwICpnYywKIHN0YXRpYyBpbnQgcm9ja2NoaXBf
Z3Bpb19kaXJlY3Rpb25fb3V0cHV0KHN0cnVjdCBncGlvX2NoaXAgKmdjLAogCQkJCQkgIHVuc2ln
bmVkIGludCBvZmZzZXQsIGludCB2YWx1ZSkKIHsKLQlyb2NrY2hpcF9ncGlvX3NldChnYywgb2Zm
c2V0LCB2YWx1ZSk7CiAKLQlyZXR1cm4gcm9ja2NoaXBfZ3Bpb19zZXRfZGlyZWN0aW9uKGdjLCBv
ZmZzZXQsIGZhbHNlKTsKKwlyb2NrY2hpcF9ncGlvX3NldF9kaXJlY3Rpb24oZ2MsIG9mZnNldCwg
ZmFsc2UpOworCisJcmV0dXJuIHJvY2tjaGlwX2dwaW9fc2V0KGdjLCBvZmZzZXQsIHZhbHVlKTsK
IH0KIAogLyoKCkl0IHNlZW1zIHRvIG1lIHRoZSBjdXJyZW50IGxvZ2ljIGlzIGludmVydGVkLCBp
LmUuIEdQSU8gUG9ydCBBIERhdGEKUmVnaXN0ZXIgY2FuJ3QgYmUgc3VjY2Vzc2Z1bGx5IHdyaXR0
ZW4gaWYgZGlyZWN0aW9uIG91dHB1dCBpcyBub3Qgc2V0CnlldC4KCkkgaGF2ZSB0byBkb3VibGUt
Y2hlY2sgd2l0aCBwcmludGsoKSBidXQgZnJvbSB3aGF0IEkgc2VlIGhlcmUgaXQgbWF5CmJlIHZl
cnkgcG9zc2libGUgdGhhdCBmaXJzdCBjYWxsIHRvIGdwaW9kX2dldF9pbmRleCgpIHdpbGwgbm90
IHNldApwcm9wZXIgdmFsdWUgYW5kIG9ubHkgc3Vic2VxdWVudCBjYWxscyBtYWRlIHRvIGdwaW9k
IHNldF92YWx1ZSgpCndpbGwgYmVnaW4gdG8gc2V0IHZhbHVlLgoKRm9yIHdoYXQgaXQgaXMgd29y
dGgsIHdpdGggdGhlIGRpZmYgdGhlIHdvcmthcm91bmQgdG8gc2V0IGFzIG9wZW4Kc291cmNlL2Vt
aXR0ZXIgd2l0aCBwdWxsZG93biBvciBzZXQgb3BlbiBkcmFpbiB3aXRoIHB1bGx1cCBubyBsb25n
ZXIKd29ya3MsIGkuZS4gUENJZSBpbml0aWFsIGxpbmsgdHJhaW5pbmcgZmFpbHMuCgpUaGUgd29y
a2Fyb3VuZCB0byBkcm9wIFRQVlBFUkwgc3RpbGwgd29ya3MsIGkuZS4gUENJZSBpbml0aWFsIGxp
bmsKdHJhaW5pbmcgcHJvY2VlZHMsIHN5c3RlbSBvcGVyYXRpb25hbC4KClRoYW5rcywKR2VyYWxk
byBOYXNjaW1lbnRvCgo+ID4gVGhhbmtzLAo+ID4gR2VyYWxkbyBOYXNjaW1lbnRvCj4gPiAKPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96F7DC7618D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 07:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQRLnkYXE0vjgeKSdrKDKMfHnSfg80Xp0t78yTbVtt4=; b=2khrPSXzTn1OQd
	TEOohiFV65SzLjA81TjVppQejTwr6Ga2PbPqAk1GOmq/uWJBxb5x+pJoJHHH9lbvA0ZmUZmWFTedW
	tRn6tstBcFshsq8q7kMADH3Ru1ob880m93JZmVktR4kOjtvTd+JOMZNxZcPHE0D6E+ClBbryQ4w6e
	YPOeQS2ckOnxpbdMNyJOp9rW6tXVxxBDICNHP0YcgqYgJ5NFW/osYtuSTcME5zWoQVd76XGM1yXNt
	x67wYOvSGlaMegRADok2Nu25+il2z97fAE9GAKv9w12DOwWXSSmVt793lRAjOwkniG08z+JEvl3Xv
	ImSDj5gaOEPmQ2OHIZeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbSi-000Mtq-2n;
	Tue, 04 Apr 2023 07:52:16 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbSC-000Mie-2G
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Apr 2023 07:51:55 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-544f7c176easo598362237b3.9
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Apr 2023 00:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680594672;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cVraZ9OiQ2LG500yR9oFq3EcoKtDUlYAiG0JiN0f9o4=;
        b=SOU/Xh8ng2VuJeMrr4Ksoco6qKlH4HKZ2DqScfxkz8i04SduPXQUdqhUtaVehcKRNH
         TOLUqQYjITBN+JzrwHTrYcS5YTt4HyLSQ6jrXq9rxDEyCpGeRaSdxdROiVOqqflUJ2/S
         XrTuKCGIVZa1BedFmr5j8RNEXv7vZvMye1VsA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680594672;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cVraZ9OiQ2LG500yR9oFq3EcoKtDUlYAiG0JiN0f9o4=;
        b=e0MPJ3ysd8ZaIsluiJExnc4MrDsgy6DU6ZdOdy/B2Gm38KZWIGUyGZ+XTrGkDBcYJ0
         PGZNjKnfiSE4jN1YjT1cvpSCSJooEWu2SppBBynU3VTk4rR0N8K4/VP5LFuzQP5fPEAl
         vD3eIU3AcAUx+Ab3rBIZTPHWIhUrWxMaVDL3Z+kY7n9tr0MTy4n5lNf7blCRxsb72i7a
         xhSBBfY0r+tIDXt/v5Jq7h3oMWPEdO3aciQGhyHtI7iZYct9h9gbwYAlUNephYmBYhki
         4+cT5WuJfKpHTYJdMZiWHEsZxLxcH88vTm1Yg1IuJXBgiEUKH3z5zCTBISc/B/70x54k
         ymtA==
X-Gm-Message-State: AAQBX9eiS+OOJZfQGkWMwKoii1RbMG2dT7VLbVev0hXfKAmlwuJY5vMx
	2dVyRaFQiGdyye3PBn9bM+JzGVQTY89bkdh8Dv3SCA==
X-Google-Smtp-Source: AKy350YZcUbpacC1MbMakGRPTFlCxf28GFXRT3ao56yRtydrha4wgp3YCMO5vP77rYF8l1UQOjO8XLbejlZFZMAROFM=
X-Received: by 2002:a81:c509:0:b0:52e:e095:d840 with SMTP id
 k9-20020a81c509000000b0052ee095d840mr1078880ywi.0.1680594672257; Tue, 04 Apr
 2023 00:51:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230330131746.1475514-1-jagan@amarulasolutions.com>
 <20230330131746.1475514-2-jagan@amarulasolutions.com> <beae35a5-b094-087a-8443-5f669a2a37c6@arm.com>
In-Reply-To: <beae35a5-b094-087a-8443-5f669a2a37c6@arm.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 4 Apr 2023 13:21:00 +0530
Message-ID: <CAMty3ZBD8Eca4ECd03c1WD_tKTrd_=Tx1FF3KeihLAXySTVL8A@mail.gmail.com>
Subject: Re: [PATCH 2/3] iommu/rockchip: Disable the device link during resume
To: Robin Murphy <robin.murphy@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, iommu@lists.linux.dev, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, 
	linux-amarula <linux-amarula@amarulasolutions.com>, Simon Xue <xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_005151_176225_4BA3CE80 
X-CRM114-Status: GOOD (  26.76  )
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

T24gVGh1LCBNYXIgMzAsIDIwMjMgYXQgNzoxM+KAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMjAyMy0wMy0zMCAxNDoxNywgSmFnYW4gVGVraSB3
cm90ZToKPiA+IFJvY2tjaGlwIGlvbW11IGlzIHRyeWluZyB0byBlbmFibGUgdGhlIGFzc29jaWF0
ZWQgZGV2aWNlIGF0IHJ1bnRpbWUKPiA+IHJlc3VtZSBob3dldmVyIHNvbWUgZGV2aWNlcyBtaWdo
dCBlbmFibGUgdGhlIGlvbW11IGR1cmluZyB0aGVpciBwbQo+ID4gcnVudGltZSByZXN1bWUgb3Bl
cmF0aW9uIHdoaWNoIGluZGVlZCBsZWFkcyBpb21tdSB0byB1c2UgdGhlIHdyb25nCj4gPiBkb21h
aW4gYW5kIHRoaXMgbGVhZHMgdG8gZGV2aWNlIGlvbW11IHBhZ2UgZmF1bHQuCj4gPgo+ID4gQW4g
ZXhhbXBsZSBvZiB0aGlzIGJlaGF2aW9yIGhhcyBiZWVuIG9ic2VydmVkIGluIFJvY2tjaGlwIFJL
MzMyOCwgd2hlcmUKPiA+IGlvbW11IHN0YWxscyByZXF1ZXN0IHRpbWVvdXQgZHJpbmcgVk9QIGRl
dmljZSBlbmFibGVtZW50Lgo+ID4KPiA+IEhlcmUgaXMgdGhlIGRtZXNnIGxvZyBmb3IgdGhlIHNh
bWU6Cj4gPgo+ID4gcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBib3VuZCBmZjM3MDAw
MC52b3AgKG9wcyB2b3BfY29tcG9uZW50X29wcykKPiA+IGR3aGRtaS1yb2NrY2hpcCBmZjNjMDAw
MC5oZG1pOiBzdXBwbHkgYXZkZC0wdjkgbm90IGZvdW5kLCB1c2luZyBkdW1teSByZWd1bGF0b3IK
PiA+IHJrX2lvbW11IGZmMzczZjAwLmlvbW11OiBFbmFibGUgc3RhbGwgcmVxdWVzdCB0aW1lZCBv
dXQsIHN0YXR1czogMHgwMDAwNGIKPiA+IGR3aGRtaS1yb2NrY2hpcCBmZjNjMDAwMC5oZG1pOiBz
dXBwbHkgYXZkZC0xdjggbm90IGZvdW5kLCB1c2luZyBkdW1teSByZWd1bGF0b3IKPiA+IHJrX2lv
bW11IGZmMzczZjAwLmlvbW11OiBEaXNhYmxlIHBhZ2luZyByZXF1ZXN0IHRpbWVkIG91dCwgc3Rh
dHVzOiAweDAwMDA0Ygo+ID4gZHdoZG1pLXJvY2tjaGlwIGZmM2MwMDAwLmhkbWk6IERldGVjdGVk
IEhETUkgVFggY29udHJvbGxlciB2Mi4xMWEgd2l0aCBIRENQIChpbm5vX2R3X2hkbWlfcGh5MikK
PiA+IGR3aGRtaS1yb2NrY2hpcCBmZjNjMDAwMC5oZG1pOiByZWdpc3RlcmVkIERlc2lnbldhcmUg
SERNSSBJMkMgYnVzIGRyaXZlcgo+ID4gcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBi
b3VuZCBmZjNjMDAwMC5oZG1pIChvcHMgZHdfaGRtaV9yb2NrY2hpcF9vcHMpCj4gPiBbZHJtXSBJ
bml0aWFsaXplZCByb2NrY2hpcCAxLjAuMCAyMDE0MDgxOCBmb3IgZGlzcGxheS1zdWJzeXN0ZW0g
b24gbWlub3IgMAo+ID4KPiA+IFRoaXMgaXNzdWUgaXMgcmVwcm9kdWNlZCBpZiB3ZSBlbmFibGUg
dGhlIGRpc3BsYXkgaW4gVS1Cb290IGhvd2V2ZXIKPiA+IFUtQm9vdCBpcyBub3QgZXZlbiB0b3Vj
aGVkIGFueSBpb21tdSByZWdpc3RlciBhcyB0aGUgVS1Cb290IGRpc3BsYXkKPiA+IHVzZXMgdGhl
IHNpbXBsZSBmcmFtZSBidWZmZXIgbGlrZSBvdGhlciBSb2NrY2hpcCBwbGF0Zm9ybXMgUkszMzk5
LAo+ID4gYW5kIFJLMzMyOCBkby4KPiA+Cj4gPiBXaGVuIFZPUCBpcyB0cnlpbmcgdG8gZW5hYmxl
IHRoZSBpb21tdSB1c2luZyBydW50aW1lIHJlc3VtZSBjYWxsCj4gPiBwbV9ydW50aW1lX3Jlc3Vt
ZV9hbmRfZ2V0IGZyb20gQHZvcF9lbmFibGUgdGhlbiB0aGUgaW9tbXUgcnVudGltZQo+ID4gcmVz
dW1lIGNhbGwgQHJrX2lvbW11X3Jlc3VtZSB3aWxsIHRyeSB0byBhdHRhY2ggdGhlIFZPUCBpbiB0
aGUgd3JvbmcKPiA+IGRvbWFpbiB2aWEgQHJrX2lvbW11X2VuYWJsZSB3aWxsIGxlYWQgdG8gdGhl
IHZvcCBpb21tdSBwYWdlIGZhdWx0Lgo+Cj4gVGhhdCBzb3VuZHMgbGlrZSBhIGRyaXZlciBidWcu
IFRoZSB3aG9sZSBwb2ludCBvZiB0aGUgZGV2aWNlIGxpbmsgaXMKCkRvIHlvdSBtZWFuIHRoZSBi
dWcgaW4gcm9ja2NoaXAtaW9tbXUuYyBvciB2b3A/Cgo+IHN1cHBvc2VkIHRvIGJlIHRoYXQgdGhl
IElPTU1VIGdldHMgc3VzcGVuZGVkIGFmdGVyIHRoZSBWT1AsIGFuZCByZXN1bWVkCj4gYmVmb3Jl
IGl0LCBzbyBpdCBjYW4gbWFrZSBzdXJlIHRoYXQgd2hhdGV2ZXIgdHJhbnNsYXRpb25zIHRoZSBW
T1Agd2FzCj4gdXNpbmcgYXJlIHJlc3RvcmVkICpiZWZvcmUqIHRoZSBWT1Agc3RhcnRzIHRyeWlu
ZyB0byBhY2Nlc3MgdGhlbSBhZ2Fpbi4KPiBJZiB0aGUgSU9NTVUgZHJpdmVyIGlzIGZhaWxpbmcg
dG8gcmVzdG9yZSB0aGUgY29ycmVjdCBzdGF0ZSBvbiByZXN1bWUsCj4gbm8gYW1vdW50IG9mIERU
IGFidXNlIGlzIHRoZSByaWdodCBhbnN3ZXIuCgpUaGVuIGhvdyBjYW4gd2UgaGFuZGxlIHRoZSBj
by1yZWxhdGlvbiBiL3cgdGhlbSBhcyBWT1AgYWxyZWFkeQphdHRhY2hpbmcgdGhlIGlvbW11IGFu
ZCBhdCB0aGUgc2FtZSB0aW1lIElPTU1VIHRyeWluZyB0byBlbmFibGUgVk9QCmRldmljZSBidXQg
cmVmZXJyaW5nIHRvIHRoZSB3cm9uZyBkb21haW4/IEFueSBzdWdnZXN0aW9ucz8KCj4KPiBJIGNh
biB1bmRlcnN0YW5kIGlmIHRoZSBJT01NVSBpdHNlbGYgZXhwZWN0cyB0byBiZSBpZGxlIGZvciB0
aGUgaW5pdGlhbAo+IGNvbmZpZ3VyYXRpb24gYXQgcHJvYmUgdGltZSwgYW5kIGdldHMgdW5oYXBw
eSBpZiB3ZSB0cnkgdG8gcmVzZXQgaXQKPiB3aGlsZSAoYnlwYXNzKSBWT1AgdHJhZmZpYyBmb3Ig
dGhlIGJvb3Rsb2FkZXIgZnJhbWVidWZmZXIgaXMgc3RpbGwgZ29pbmcKPiB0aHJvdWdoLCBidXQg
dGhhdCdzIGFuIGVudGlyZWx5IGRpZmZlcmVudCBpc3N1ZSwgYW5kIGFnYWluIGhhY2tpbmcKCkRv
ZXMgaXQgbWVhbiBhY2Nlc3NpbmcgVk9QIHRyYWZmaWMgYXQgdGhlIGJvb3Rsb2FkZXIgc3RhZ2Ug
ZWZmZWN0aW5nCmlvbW11IGV2ZW4gdGhvdWdoIHRoZSBWT1AgZHJpdmVycyBpbiB0aGUgYm9vdGxv
YWRlciBhcmUgbm90IHVzaW5nCmlvbW11IGF0IGFsbD8KClRoYW5rcywKSmFnYW4uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

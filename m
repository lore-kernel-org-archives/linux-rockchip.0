Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AEF5C98310
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 06:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjhryQBaz95ICeEvWeAPS4MzGj6nRz1+1Vr8c9sQBLI=; b=pDGsHvUBIjOAcp
	ID0lEAjdjAWCjqWBfhtZj2QOO0YcTEvud3UL/1wwQWRBHnWhYpvVOYF0H6LNDlNNXJzKzACNSCKwC
	mbR5hUSyLfM9iEOdMMoRVG8HbfUg9YvMAn0fV4bGnKvWgvABv3/1VU+IeDIHwPaRlj6/RZbsEiCf6
	9NiS89lMZIy8RDsGtkP1zdNx6lkeKgPX1dHw5aILGkhjTObP77ASnud/g23PYrIR+haK59q7qCu2Z
	AIlN6vBOiOTccHt8AFnagPI6N9l4UObous0/JGtYSL9VOuhFxccJTCaPl7m4INZwi58tQze2uTbuO
	FyEz7+bLzX+lo89EVQQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dJB-0000000AC2V-0NHm;
	Thu, 24 Sep 2026 06:51:53 +0000
Received: from mail-qv2-f12.google.com ([74.125.230.140])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dJ8-0000000AC1R-1X8x
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 06:51:51 +0000
Received: by mail-qv2-f12.google.com with SMTP id 6a1803df08f44-9106feddbdfso13329616d6.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 23:51:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790232709; x=1790837509;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WYSLaHavJ4PglZOT+cFIpQNUnogOMDphRk0Ds36kk5w=;
        b=J+0yVYAXaRah4Ou6OPJkiHgFtqMrtrKxPEFCBErd8D3kXecNjmY7LbXTBCfRBKO5Ap
         bdornJcrcI2vl7M6UDo1RLfKQueJx7z44DEABSUwXG+rb1euvYSw6ouxjq2dq96EgF43
         /D3AQQAl2TY4ThbdhQh7eKfeLvdG5okhqynGk02UoKKvWsbZzXLaaW3I9ZSmK6fqDPw4
         meBOq/illCjpwZg4EHQuT6WZ10TeMFIIUqPsJ6s8a1e+ZlzQ66lqeWe7XfresCu+V0+U
         SXs4fVFOVw2v36jdrw/v9fR6Bj9XFIG2k2GguDmyeDifrHDmwe5pOy2RxFVk5gvmdy/C
         U2sQ==
X-Forwarded-Encrypted: i=1; AKwUvBwV7XtAKwPREqmPdG/l4t0NUYpbaMLK5J0lCCHEzNiDc2nI5EKQ5dDIxzDWa5flxio+tO5VB79rLLi+rM4APw==@lists.infradead.org
X-Gm-Message-State: AFuF++lXlCSSFtkI74O92wP2v6T/W8/9/ExPNUb8V1fzzDdQ4BaW6I+0
	6vrjyRO43JaoWs1KGSgHPhUf8RjmRR9R2YEDOFIl1UJvhDMc/hIcf7+QOExAQ/MKEi4=
X-Gm-Gg: AYBFou0kCzfKBgG+w8AOHfroQ3xjpu8tJZJpFU6ymUn27to4I15hXPGBJkkzzyZ2alL
	aGgoyZ5BvZ5rPd4lHICK+LTkpLb8RRT3YgfXkcTAZxPzEuTWAHsyOuH+AO3KLzJxjhDvkmC5hdH
	Qf13y9aUGhUlsbpDVv+ainzZxGAp1l/I5NdmkYo/SZtmxtmmr3qSrjdOfGYGTnkGtTbP+Q7Tfqy
	TB9Nv3YrumCIMfyEpKqtx2qS70rLrp7546hhmVPbx7tyIgAUPdC6F0MZUtRVp0lBzjjBQv6kgOb
	3RNSnuR+TMA8fPnMQLTkoIzDhSJWR0skSXKugnuZjJWssbkMcYWRKIBgoIx5J+xqnk4NaRnQBuh
	BmCPV4nPd7jzBFvT5owRWUQFbkxOHR8h0Ml8DSVgpWvBy27Q6eY3QhZWJ4phVMrCVl/2GhH/ol0
	yx7oxUiv4m8qc7D9drJ2nMTIxD1Giyd117HlL2RqV6UEJJO8F/TRfZRWO3RmOex4Gukic7Qhgmo
	EKLzTCnYGjsjg8jnKN1EI3u0LXlspdBlZYw
X-Received: by 2002:a05:6102:578d:b0:7a5:51aa:9be3 with SMTP id ada2fe7eead31-7af1b55fca2mr814271137.7.1790232329321;
        Wed, 23 Sep 2026 23:45:29 -0700 (PDT)
Received: from mail-vs2-f12.google.com (mail-vs2-f12.google.com. [74.125.227.12])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-7af8bdcde81sm558621137.10.2026.09.23.23.45.28
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2026 23:45:28 -0700 (PDT)
Received: by mail-vs2-f12.google.com with SMTP id ada2fe7eead31-791a9878aa9so570214137.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 23:45:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBz2gID+FxVB8qld1DtKbDxQzCu0LL/abPq5IRGD0bEBH9fUu/Lmn3rfA0o0mp9EjXl1DGHD0r3yndJKtAmUCQ==@lists.infradead.org
X-Received: by 2002:a05:6102:e0c:b0:7a7:a382:6bd7 with SMTP id
 ada2fe7eead31-7af1dadc05bmr812949137.27.1790232328063; Wed, 23 Sep 2026
 23:45:28 -0700 (PDT)
MIME-Version: 1.0
References: <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-0-c1b9e5f10cd6@pardini.net>
 <CAMuHMdXMjxgj+pT5A=jd_A5BVQctHXJqeiU4EhPA_ZSANZAAmQ@mail.gmail.com> <e166f6e2-05b3-4f36-a1c3-b75861618c75@pardini.net>
In-Reply-To: <e166f6e2-05b3-4f36-a1c3-b75861618c75@pardini.net>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 24 Sep 2026 08:45:17 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU+Dum1VaMOQx9aS_hBn1Bmq_mZ1qaH-WegK7Q=pEdmTA@mail.gmail.com>
X-Gm-Features: AclHuK8sCbd_Nwk8hcPDRDy2MSUfMylLVdDaP4Bmdtue73-db_SXAulz9teSuSc
Message-ID: <CAMuHMdU+Dum1VaMOQx9aS_hBn1Bmq_mZ1qaH-WegK7Q=pEdmTA@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] describe RTL8125 PCIe NICs on Rockchip boards (and
 add DT binding)
To: Ricardo Pardini <ricardo@pardini.net>
Cc: Heiner Kallweit <hkallweit1@gmail.com>, nic_swsd@realtek.com, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_235150_432823_97341421 
X-CRM114-Status: GOOD (  23.68  )
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

SGkgUmljYXJkbywKCk9uIFdlZCwgMjMgU2VwdCAyMDI2IGF0IDIwOjQ5LCBSaWNhcmRvIFBhcmRp
bmkgPHJpY2FyZG9AcGFyZGluaS5uZXQ+IHdyb3RlOgo+IE9uIDIyLzA5LzIwMjYgMTE6MTcsIEdl
ZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+IE9uIFRodSwgMTAgU2VwdCAyMDI2IGF0IDIyOjA4
LCBSaWNhcmRvIFBhcmRpbmkgdmlhIEI0IFJlbGF5Cj4gPiA8ZGV2bnVsbCtyaWNhcmRvLnBhcmRp
bmkubmV0QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4+IFNldmVyYWwgUm9ja2NoaXAgcmszNXh4IGJv
YXJkcyBjYXJyeSBvbi1ib2FyZCBSZWFsdGVrIFJUTDgxMjUgMi41R2JFCj4gPj4gTklDcyB3aG9z
ZSBQQ0kgZnVuY3Rpb24gbm9kZXMgYXJlIG5vdCBkZXNjcmliZWQgaW4gdGhlIERULiBEZXNjcmli
aW5nCj4gPj4gdGhlbSBhbGxvd3MgZm9yIHN0YWJsZSBldGhlcm5ldE4gYWxpYXNlcyAobWF0Y2hp
bmcgdGhlIEdNQUMgYWxpYXMKPiA+PiBjb252ZW50aW9uIG9uIHRoZXNlIGJvYXJkcykgYW5kIGxl
dHMgVS1Cb290J3MgZmR0X2ZpeHVwX2V0aGVybmV0KCkKPiA+PiBpbmplY3QgbWFjLWFkZHJlc3Mg
cHJvcGVydGllcyBmcm9tIGl0cyBldGhhZGRyL2V0aE5hZGRyIGVudiwgc28gTUFDcwo+ID4+IHN0
YXkgc3RhYmxlIGFjcm9zcyBib290cyBhbmQgVS1Cb290IGFuZCBrZXJuZWwgTUFDIG1hdGNoLgo+
ID4+Cj4gPj4gVGVzdGVkIG9uIGEgTmFub1BDLVQ2OiAvc3lzL2J1cy9wY2kvZGV2aWNlcy8wMDA0
OjQxOjAwLjAvb2Zfbm9kZSAtPgo+ID4+IC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS9iYXNlL3Bj
aWVAZmUxOTAwMDAvcGNpZUAwLDAvZXRoZXJuZXRAMCwwIGFuZAo+ID4+IHUtYm9vdCBjb3JyZWN0
bHkgYWRkcyBsb2NhbC1tYWMtYWRkcmVzcyBwcm9wZXJ0eSB0aGVyZSB3aGljaCBpcwo+ID4+IGNv
cnJlY3RseSBwaWNrZWQgdXAga2VybmVsLXNpZGU6Cj4gPgo+ID4gSGF2ZSB5b3UgdGVzdGVkIHRo
aXMgYXQgMi41R2Jwcz8gV2l0aCB3aGljaCBmaXJtd2FyZT8KPiA+IEkgYW0gYXNraW5nIGJlY2F1
c2UgSSBoYXZlIHByb2JsZW1zIGF0IDIuNUdicHMgdXNpbmcgdGhlIGZpcm13YXJlIGZyb20KPiA+
IGxpbnV4LWZpcm13YXJlIChvbiBhIGRpZmZlcmVudCBwbGF0Zm9ybSwgdGhvdWdoKQo+ID4gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvQ0FNdUhNZFhQQWVIb2VhUWJNOXJYYlh1a29NYkZWKzBrMjhu
NnNSTXc4WEY4NzIwV1VBQG1haWwuZ21haWwuY29tCj4KPiBIaSBHZWVydCwgeWVzLCB0aGUgUlRM
ODEyNSdzIG9uIHRob3NlIGJvYXJkcyB3b3JrIGF0IDIuNWdicHMganVzdCBmaW5lCj4gKGJvdGgg
d2l0aCBhbmQgd2l0aG91dCB0aGUgZml4ZWQtZnVuY3Rpb24gbm9kZXMgaW4gdGhpcyBzZXJpZXMp
LiBUaGV5IGRvCj4gZ2V0IHF1aXRlIHdhcm0gYXQgMi41Z2Jwcy4gSSdtIHVzaW5nIG9uZSBvZiB0
aG9zZSBlbC1jaGVhcG8gOC1wb3J0Cj4gMi41Z2JwcyBzd2l0Y2hlcy4KPgo+IEN1cnJlbnRseToK
Pgo+IFsgICAgMy4yNTQ0NTBdIHI4MTY5IDAwMDI6MjE6MDAuMCBldGgwOiBSVEw4MTI1QiwgOGU6
YjQ6OTA6OTc6MzI6MzAsIFhJRAo+IDY0MSwgSVJRIDEyNAo+IC4uLgo+IFsgICAxMC40ODA4NzJd
IHI4MTY5IDAwMDI6MjE6MDAuMCBlbmQwOiBMaW5rIGlzIFVwIC0gMi41R2Jwcy9GdWxsIC0gZmxv
dwo+IGNvbnRyb2wgcngvdHgKPgo+ICMgc2Vuc29ycyByODE2OV8yXzIxMDA6MDAtbWRpby0wCj4g
cjgxNjlfMl8yMTAwOjAwLW1kaW8tMAo+IEFkYXB0ZXI6IE1ESU8gYWRhcHRlcgo+IHRlbXAxOiAg
ICAgICAgKzUyLjDCsEMgIChoaWdoID0gKzEyMC4wwrBDKQo+Cj4gSSdtIHVzaW5nIHdoYXRldmVy
IGlzIGluIEFybWJpYW4ncyBhcm1iaWFuLWZpcm13YXJlIHBhY2thZ2U6Cj4KPiAjIGV0aHRvb2wg
LWkgZW5kMCB8IGdyZXAgLWkgZmlybXdhcmUKPiBmaXJtd2FyZS12ZXJzaW9uOiBydGw4MTI1Yi0y
XzAuMC4yIDA3LzEzLzIwCgpUaGFua3MgZm9yIGNoZWNraW5nIQoKTWluZSBpcyBSVEw4MTI1RCBY
SUQgNjg4LCBpLmUuIGEgZGlmZmVyZW50IHZhcmlhbnQuCgpHcntvZXRqZSxlZXRpbmd9cywKCiAg
ICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRo
ZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoK
SW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBt
eXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVz
dCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

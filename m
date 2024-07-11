Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF82C3DA41
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 09:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQgc0gqFOFPYxO+EM+HDYod4jtAjUqc3vlAxPrcE9AQ=; b=mevAHNlU3q9Vs7
	OkHHv+DLdTMIFPvBk1dQir/AHKwqS/B7dcSSDiaJuM/mm0dUNsulERbyHvyJL6U/RHmJ7JjG9CgMU
	jfVg85ovtvVDKJJh+cXB7U7L83fMNYHEZ08PljZ5zRuvRFSFWiTUOxzNTs92VdkQWVdBd37VVouP8
	wuoGYfT/pBVNnj7jSo8LCOhruzflbgOnAhSG5eq/B/xI37KUOn1zP9XoR8SYejPGZKkOUOIOz8J0/
	RIxb4q5yDUVw67WIcF8LtOSptA829CnkSLcHko9CQxqBny2j9m7S620RqWtsoONsdfpWuAbJU3fjb
	Wl83FuoBCTGHJLwOu1ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRpvl-0000000DKJH-2kzn;
	Thu, 11 Jul 2024 09:17:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRpvT-0000000DKE7-1Djx;
	Thu, 11 Jul 2024 09:17:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B2A0361C22;
	Thu, 11 Jul 2024 09:17:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65ED3C4AF0C;
	Thu, 11 Jul 2024 09:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720689438;
	bh=tECCGwY1OlgusfgCcr1+rEQ9zmP+52bDi0SwX5GW63M=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=kmq/9PBpQ8BJOQVUc1LTq9N5hu05r+SjaQ5IjQeqtpn4oKx9JlD0WFzXJOcA0BSbz
	 cT0Aa5xzcsM5pT9zfnwRLaOsQ+923E7BliozltUWLTKe/6Y1WwBd382plU+LvKdrbW
	 Bs2EMmBdmmB5UtaMFcvOwA/vS3uNJn6LwDf7ZL0y3vDYK593i72GCeosaTvZxPjyfg
	 oQq+zOIZW3XEGuZbvwAsmXTLhyf7G9VrhKHBlgBb6B62RhJgI0UsXqfd9T6bpfk6gJ
	 vkyP2r3xoS9GNlVpbiPXyo+rYLxNilWn9mB2c3QruN/vdzelPssUzsu8a55T0Mf3dz
	 tKq/5FIBEsufA==
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2eeb1ba0481so7287231fa.2;
        Thu, 11 Jul 2024 02:17:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUgbQi/nhwijox7BI3+QQPO+JvwqAmEyepswpqIxdWGhANo37qkU3iu2amKAS9LFXuPoP69D7i2tsZ9Q5catrPQ/tP7nKfwGfpopMxYQcu/Mqxr18VyhmIQ8VnN8qhxySv8XCIdvJ4P1u0KZwiLWA6a8pr1Gc0EfP8=
X-Gm-Message-State: AOJu0Yy0h7e9PWEs7QmSLArc9QfDTXgcAMo+h9OKK4jKSpbo1ZeUKcu1
	fsFQUv8NU+yMpMZFUfFzt7oxtQyszjZtjwd+qv1PV225E4f8jXsKon9NI2L96F+AJ+I+787dJXF
	eCRtoHrtjshPLNjQlV/LdL/gQ1Go=
X-Google-Smtp-Source: AGHT+IGfyS6XEu/kHP9VNipjsPb7FnGJXyJ4CUOh/ZKrY8VHjEHaEg8CWd8+NAhyz3x/GgZTCAkP6MA3bw4fTqw/TO4=
X-Received: by 2002:a2e:9e54:0:b0:2ec:6608:a3af with SMTP id
 38308e7fff4ca-2eeb3103d02mr48694601fa.31.1720689436392; Thu, 11 Jul 2024
 02:17:16 -0700 (PDT)
MIME-Version: 1.0
References: <20240711060939.1128-1-linux.amoon@gmail.com> <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
In-Reply-To: <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 11 Jul 2024 17:17:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v65iR9BdAX43gfpBOeKF_B5PFm+RhPwu5FHUfRxCMeqh-w@mail.gmail.com>
Message-ID: <CAGb2v65iR9BdAX43gfpBOeKF_B5PFm+RhPwu5FHUfRxCMeqh-w@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_021719_452784_426F4AF2 
X-CRM114-Status: GOOD (  27.30  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBKdWwgMTEsIDIwMjQgYXQgNDo0NOKAr1BNIEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3
aWJvby5zZT4gd3JvdGU6Cj4KPiBIaSBBbmFuZCwKPgo+IE9uIDIwMjQtMDctMTEgMDg6MDksIEFu
YW5kIE1vb24gd3JvdGU6Cj4gPiBBZGQgbWlzc2luZyBwaW5jdHJsIHNldHRpbmdzIGZvciBQQ0ll
IDMuMCB4NCBjbG9jayByZXF1ZXN0IGFuZCB3YWtlCj4gPiBzaWduYWxzLkVhY2ggY29tcG9uZW50
IG9mIFBDSWUgY29tbXVuaWNhdGlvbiBoYXZlIHRoZSBmb2xsb3dpbmcgY29udHJvbAo+ID4gc2ln
bmFsczogUEVSU1QsIFdBS0UsIENMS1JFUSwgYW5kIFJFRkNMSy4gVGhlc2Ugc2lnbmFscyB3b3Jr
IHRvIGdlbmVyYXRlCj4gPiBoaWdoLXNwZWVkIHNpZ25hbHMgYW5kIGNvbW11bmljYXRlIHdpdGgg
b3RoZXIgUENJZSBkZXZpY2VzLgo+ID4gVXNlZCBieSByb290IGNvbXBsZXggdG8gZW5kcG9pbnQg
ZGVwZW5kaW5nIG9uIHRoZSBwb3dlciBzdGF0ZS4KPiA+Cj4gPiBQRVJTVCBpcyByZWZlcnJlZCB0
byBhcyBhIGZ1bmRhbWVudGFsIHJlc2V0LiBQRVJTVCBzaG91bGQgYmUgaGVsZCBsb3cKPiA+IHVu
dGlsIGFsbCB0aGUgcG93ZXIgcmFpbHMgaW4gdGhlIHN5c3RlbSBhbmQgdGhlIHJlZmVyZW5jZSBj
bG9jayBhcmUgc3RhYmxlLgo+ID4gQSB0cmFuc2l0aW9uIGZyb20gbG93IHRvIGhpZ2ggaW4gdGhp
cyBzaWduYWwgdXN1YWxseSBpbmRpY2F0ZXMgdGhlCj4gPiBiZWdpbm5pbmcgb2YgbGluayBpbml0
aWFsaXphdGlvbi4KPiA+Cj4gPiBXQUtFIHNpZ25hbCBpcyBhbiBhY3RpdmUtbG93IHNpZ25hbCB0
aGF0IGlzIHVzZWQgdG8gcmV0dXJuIHRoZSBQQ0llCj4gPiBpbnRlcmZhY2UgdG8gYW4gYWN0aXZl
IHN0YXRlIHdoZW4gaW4gYSBsb3ctcG93ZXIgc3RhdGUuCj4gPgo+ID4gQ0xLUkVRIHNpZ25hbCBp
cyBhbHNvIGFuIGFjdGl2ZS1sb3cgc2lnbmFsIGFuZCBpcyB1c2VkIHRvIHJlcXVlc3QgdGhlCj4g
PiByZWZlcmVuY2UgY2xvY2suCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGlu
dXguYW1vb25AZ21haWwuY29tPgo+ID4gLS0tCj4gPiBWMjogVXBkYXRlIHRoZSBjb21taXQgbWVz
c2dlIHRvIGRlc2NyaWJlIHRoZSBjaGFuZ3MuCj4gPiAgICAgdXNlIHBpbmN0bCBncm91cCBhcyBp
dHMgcHJlIGRlZmluZSBpbiBwaW5jdGwgZHRzaQo+ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgfCA2ICstLS0tLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ID4gaW5kZXggMmU3
NTEyNjc2YjdlLi5hYjNhMjA5ODZjNmEgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+IEBAIC0zMDEsNyArMzAxLDcgQEAg
JnBjaWUzMHBoeSB7Cj4gPgo+ID4gICZwY2llM3g0IHsKPiA+ICAgICAgIHBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7Cj4gPiAtICAgICBwaW5jdHJsLTAgPSA8JnBjaWUzX3JzdD47Cj4gPiArICAg
ICBwaW5jdHJsLTAgPSA8JnBjaWUzMHg0bTFfcGlucz47Cj4KPiBVc2Ugb2YgdGhlIGV4aXN0aW5n
IHBjaWUzMHg0bTFfcGlucyBncm91cCBtYXkgbm90IGJlIGZ1bGx5IGFjY3VyYXRlIGZvcgo+IHRo
ZSBQRVJTVCBwaW4uIFRoZSB1c2Ugb2YgcmVzZXQtZ3Bpb3MgaW5kaWNhdGUgdGhhdCB0aGUgUEVS
U1QgcGluIGlzCj4gdXNlZCB3aXRoIEdQSU8gZnVuY3Rpb24gYW5kIHRoZSBkcml2ZXIgd2lsbCBp
bXBsaWNpdGx5IGNoYW5nZSB0aGUKPiBmdW5jdGlvbiBmcm9tIHBlcnN0bl9tMSB0byBHUElPLiBT
byB0aGlzIG1heSBub3QgYmUgYmVzdCByZXByZXNlbnRhdGlvbgo+IG9mIHRoZSBodywgaGVuY2Ug
bXkgaW5pdGlhbCBzdWdnZXN0aW9uLCBzb21ldGhpbmcgbGlrZToKPgo+ICAgICAgICAgcGNpZTMw
eDRfcGluczogcGNpZTMweDQtcGlucyB7Cj4gICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBpbnMg
PQo+ICAgICAgICAgICAgICAgICAgICAgICAgIDw0IFJLX1BCNCA0ICZwY2ZnX3B1bGxfbm9uZT4s
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgPDQgUktfUEI2IFJLX0ZVTkNfR1BJTyAmcGNmZ19w
dWxsX25vbmU+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgIDw0IFJLX1BCNSA0ICZwY2ZnX3B1
bGxfbm9uZT47Cj4gICAgICAgICB9Owo+Cj4gU2ltaWxhciBjaGFuZ2Ugc2hvdWxkIHByb2JhYmx5
IGFsc28gYmUgZG9uZSBmb3IgcGNpZTJ4MWwwIGFuZCBwY2llMngxbDIsCj4gbm90IGp1c3QgcGNp
ZTN4NC4KCkNhbiB3ZSBjb25zaWRlciBpbXBsZW1lbnRpbmcgc3RyaWN0IG1vZGUgaW4gdGhlIHBp
bmN0cmwgZHJpdmVyIHNvIHdlIGRvbid0CmhhdmUgdG8ga2VlcCBkb2luZyB0aGlzIEdQSU8gKyBw
aW5tdXggZGFuY2U/CgpDaGVuWXUKCgo+IFJlZ2FyZHMsCj4gSm9uYXMKPgo+ID4gICAgICAgcmVz
ZXQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BCNiBHUElPX0FDVElWRV9ISUdIPjsKPiA+ICAgICAgIHZw
Y2llM3YzLXN1cHBseSA9IDwmdmNjM3YzX3BjaWUzMD47Cj4gPiAgICAgICBzdGF0dXMgPSAib2th
eSI7Cj4gPiBAQCAtMzQxLDEwICszNDEsNiBAQCBwY2llMl8yX3JzdDogcGNpZTItMi1yc3Qgewo+
ID4gICAgICAgfTsKPiA+Cj4gPiAgICAgICBwY2llMyB7Cj4gPiAtICAgICAgICAgICAgIHBjaWUz
X3JzdDogcGNpZTMtcnN0IHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxwaW5z
ID0gPDQgUktfUEI2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ID4gLSAgICAgICAg
ICAgICB9Owo+ID4gLQo+ID4gICAgICAgICAgICAgICBwY2llM192Y2MzdjNfZW46IHBjaWUzLXZj
YzN2My1lbiB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9IDwxIFJL
X1BBNCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiA+ICAgICAgICAgICAgICAgfTsK
PiA+Cj4gPiBiYXNlLWNvbW1pdDogMzRhZmI4MmEzYzY3Zjg2OTI2N2EyNmY1OTNiNmY4ZmM2YmYz
NTkwNQo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

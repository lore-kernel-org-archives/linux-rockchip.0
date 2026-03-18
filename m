Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25D5710854BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 08:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9wnBn4DuDcuOv9lpf/J7nIXDCCUzek8i5a/7OeKkdw=; b=SXSXMEpCiN5RNN
	SI7KSBLW/aMr0u9USTepLNVKoqNyY8RF6/p2Bw1WTSGhaX1knBxU/3KPsYKTiwbv+8sq4XAIffYey
	tcYgbe46SqBXC/owq2GNpAF5Uj0reH6ZFbT+HUISKqRM6Iaxbq+1O41OvAN2WSoKlBf8FLbDsDK68
	DosYWKwHHm5sDl4RlTYdzbjDk+bZ4wPN0JUOXqJg6oohecKqZJQXrBxlzl5iPD2YlcOrJ2sAD9ghs
	yRIZVMfwd4FcUlT98E9+v5rjidCkxEo/kywjzsT4XdZZz9essC+OgOXi/l8hKVBvdpNBEgf6wxcnw
	jpenemXI3W88X4zjUI/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2mi4-000000085XA-3Eit;
	Wed, 18 Mar 2026 08:57:00 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2mi1-000000085WU-2S39
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Mar 2026 08:56:58 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-b97ba4c2be2so383064266b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Mar 2026 01:56:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773824215; cv=none;
        d=google.com; s=arc-20240605;
        b=gCaed4AJy0JitK/0D8CVYoST4eGewb8liwEgCeWZfTPcC+30QJQgAX57peer3DEtzI
         I8XR4tn2u1MuCN7Lc++EcW//thA6s3U07EfwK3Byyt3K7Kk1EawmRJwyoxcPApXVb3U3
         PMzHu/VE0K/Dixw+XIN5Y91lOy4yp1tFUDCmfcLL0/pPL5GOnnKqlCAaoUmLs28fJ323
         iDTEBDMyWU/fQVo2jNIBH+8PfKjlhRgWbwbSXox1t1VktDDuZnlgyUinZePtoPBIu+8N
         irWsFhYzzeMAP7BrKLg/iXuxMi91Ybd9Yhyp67yG+PfmdsrNHAEbch5R7hkXLrEWifgX
         kWgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BiHpCwGFAOs/wXB6PtDSepAcPps28mvRmd8j+A87AOk=;
        fh=4clZtwgrPVL5Hi3sfj60bYvXsUsSL4I6AyfVLQcjHwo=;
        b=SiK7FYWz1+asYQie7qdhs9OCzUBhIsJs1IkxryUMv2rJqfhugCpqPnvJWcC3lkxgxK
         mbpJ8h8mLJPCA/HR/VKcpebCsu9C0zQcE+x6PsuVILFlP2QWkNsIlis9IVYPIWiWcRES
         iH424DX9o1lKD4CmhMsoOqlPPITEWdH64M/nsiaogpJU70f8emHrWR7idBSdNBuYdAI/
         knRSJ9aVdpQ/JX6woVmhXfidgg2mq25ZPFeUuZUCydLRusGaXokJfP0Xyog4JSH8yDAG
         c4kSZ6C0nO99tdsWtLu300YkH3aGJHTuXRhyMS1Ms0+wHPAgtQOv95Qj/Y6Y4Kohu9Ia
         VbFg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773824215; x=1774429015; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BiHpCwGFAOs/wXB6PtDSepAcPps28mvRmd8j+A87AOk=;
        b=ndAdmaPpEJe0XPMTxifMehoAFqcioOiOiglh4vJT8FPnFMK2npSyQ8ZbrxLKYFUoOx
         IEyyxvRX1RyC/KPrUEQqGoi+CAK5T4kjCiMw7kUXsV6OB69cuwx+/6nGAL33pJz9IIcI
         7Dw4bGPTrmlwuriWnkqk3YcuinSsd4nw9keeVYAcfPPdhajanj7Z3HgmYuxiiv8hsQ+s
         XN2D0y4puHeQM06X8A6843rR8dqdfs2H3jjXn97gC/MpRnUvCjG1AsApqbHOvsSoaNRM
         7XelAknIK6EJ5kRMKWUX8IyGgydnwb/CM3hpGQJmYLe2F8OAfvsxYD/BluC9a828qI7k
         lweg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773824215; x=1774429015;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BiHpCwGFAOs/wXB6PtDSepAcPps28mvRmd8j+A87AOk=;
        b=LLQuYSRirb11HXlqoOmSs7cOlV0iQ7XepiHkrXGvePPXBY5itSFX7TuXPJT2JvBvlN
         JWNa/9f0HaACCGq672LfGT6WAiclzBtloaGGZF46f0DY9uEOd16h3W9L+SS9CwQSXs9p
         Nt/oEbjyFnSFMv+3WvRHKcAlKl+GwwGaiYUayaSvejQPRogO8+ztlo0ZGcI1GoKRiONP
         XbL9BKZh0i778NVNFugTivXYe3jjAr0Alk8tAeUvR2ZcwczAJEDy/1XpgL318gf4HIR4
         vt4LfGV8RhxyPQYuyj0N2VZq4XqeDtHAOAN0lRhvWT7XlFpmbT3tiwZYyBWmpWgQ4nvR
         FIsw==
X-Forwarded-Encrypted: i=1; AJvYcCX8B18L5zlCuHUgjvbZBKPu23Tagrc530eQapnng/XQERisqHQ298gJ4lFt6VncRkB1lyu+Xvse12Ff5ZXsJw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzBeaQm/Eq6cw486nGM7IEb1gCffDtgtlntPL/ryNDm4VmAtjgx
	e0e5wC1807bOAxQ1FX4rpldAexbzNXiyf6uLLNQHVv/DhWsDAlDUDqt+Dhqn/ogOdhOWBdvJgXH
	HltvjYawpWhItRDapkxvxz599Uo+nTT89eNWaqwmQ2Q==
X-Gm-Gg: ATEYQzyPyusraQKoZpJ9tyq+zkg4nPIK32ya4JqNTDGfiivA/Wcg39bFC9n7gNYdeSy
	ARcxptrPygi2baWj60IcHRIkiSI4STeAUfaiZho5j62Ky06/Qkgp67znzAC0RGQ/Zxf+SH9zWqR
	kQrWUt/DXkkC6Od3bmf04EQoeR0HOk8MwyPG5rvr6i193xUa7e8Op7s8wjYbC5gAKkxIyqZdXER
	XhankuCgLFXHwQOAIoXHooBLAXwOAUv2tfjqPZcvY12AsqIwnm4aN/aWxXJDkDv0azugEvIoW8m
	LltO+Jej
X-Received: by 2002:a17:907:c02:b0:b96:edcd:cd04 with SMTP id
 a640c23a62f3a-b97f4b16f67mr130546366b.49.1773824215550; Wed, 18 Mar 2026
 01:56:55 -0700 (PDT)
MIME-Version: 1.0
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
 <20260317-husb311-v2-5-03c17c986abe@flipper.net> <20260318-able-goose-of-downpour-db3bbd@quoll>
 <d925c15d-add5-4f2a-8eac-fa7dd1b56bf2@kernel.org> <CAKTNdwH7RswOSBZyVKvsHfhZ3-xwyDs7ywOHuafMFb1-xNf0PA@mail.gmail.com>
 <c816a7b4-5237-4732-85af-26b70dce57f5@kernel.org>
In-Reply-To: <c816a7b4-5237-4732-85af-26b70dce57f5@kernel.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 18 Mar 2026 12:56:40 +0400
X-Gm-Features: AaiRm51Z1zxcom6oGEe1zlWDtcLo4AbRjORqgQ25Zd5ty1p7g_jEjtaNn5KvnQ8
Message-ID: <CAKTNdwE-d5c9gzCxc0sXErc-M6TGdsf8M+ZZ0yoVAH9h_bqTkg@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: Add HUSB311 Type-C
 controller on RK3576 EVB1
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Gene Chen <gene_chen@richtek.com>, 
	Heiko Stuebner <heiko@sntech.de>, Yuanshen Cao <alex.caoys@gmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_015657_657089_D71C3F19 
X-CRM114-Status: GOOD (  22.70  )
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

T24gV2VkLCBNYXIgMTgsIDIwMjYgYXQgMTI6MznigK9QTSBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gMTgvMDMvMjAyNiAwOTozMCwgQWxleGV5IENo
YXJrb3Ygd3JvdGU6Cj4gPiBPbiBXZWQsIE1hciAxOCwgMjAyNiBhdCAxMjoxOeKAr1BNIEtyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAxOC8w
My8yMDI2IDA5OjE3LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4+PiBPbiBUdWUsIE1h
ciAxNywgMjAyNiBhdCAxMDowODowMlBNICswNDAwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+
Pj4+IFJvY2tjaGlwIFJLMzU3NiBFVkIxIGJvYXJkIGhhcyBhIEh5bmV0ZWsgSFVTQjMxMSBVU0Ig
VHlwZS1DIGNvbnRyb2xsZXIgb24KPiA+Pj4+IGl0cyBUeXBlLUMgT1RHIHBvcnQsIHdoaWNoIGFs
c28gc3VwcG9ydHMgRGlzcGxheVBvcnQgQWx0ZXJuYXRlIE1vZGUuCj4gPj4+Pgo+ID4+Pj4gQWRk
IHRoZSByZXF1aXJlZCBEVCBub2RlcyB0byBlbmFibGUgYmFzaWMgSFVTQjMxMSBvcGVyYXRpb24u
Cj4gPj4+Pgo+ID4+Pj4gTm90ZSB0aGF0IGZvciBmdWxsIHN1cHBvcnQgb2YgbW9kZSBhbmQgb3Jp
ZW50YXRpb24gc3dpdGNoaW5nLCB0aGUgVVNCRFAKPiA+Pj4+IFBIWSBzY2hlbWEgbWF5IG5lZWQg
dG8gYmUgZXhwYW5kZWQsIHN1Y2ggYXMgaW4gWzFdLiBUaGlzIGlzIGxlZnQgb3V0IGZvcgo+ID4+
Pj4gbm93IHVudGlsIHRoZSByZXNwZWN0aXZlIHNjaGVtYSBpcyBmaW5hbGl6ZWQgYW5kIG1lcmdl
ZC4KPiA+Pj4+Cj4gPj4+PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2No
aXAvMjAyNjAzMTMtcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12My0xLTNlOGZlODlhMzViNUBjb2xs
YWJvcmEuY29tLwo+ID4+Pj4KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxh
bGNoYXJrQGZsaXBwZXIubmV0Pgo+ID4+Pj4gLS0tCj4gPj4+PiAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NzYtZXZiMS12MTAuZHRzIHwgMjAgKysrKysrKysrKysrKysrKysrKysK
PiA+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQo+ID4+Pgo+ID4+PiBEVFMg
cGF0Y2ggbXVzdCBub3QgYmUgaW4gdGhpcyBwYXRjaHNldC4gRG9uJ3QgbWl4IGl0Lgo+ID4+Cj4g
Pj4gSW4gY2FzZSBJIGFtIHRvbyB2YWd1ZTogYnkgZG9uJ3QgbWl4IGl0LCBJIG1lYW4gLSBzZXBh
cmF0ZSBEVFMgY2hhbmdlcwo+ID4+IHRvIGluZGVwZW5kZW50IHBhdGNoc2V0LiBUaGV5IGNhbm5v
dCBiZSBjb21iaW5lZCBpbnRvIFVTQiBwb3N0aW5nLgo+ID4KPiA+IFRoYW5rcyBLcnp5c3p0b2Yu
IEkgd2lsbCBzcGxpdCB0aGVtIG91dCBpbiB0aGUgbmV4dCBzdWJtaXNzaW9uLiBJCj4gPiB0aGlu
ayBpdCdzIGltcG9ydGFudCB0byBmaXJzdCBhZ3JlZSBvbiB0aGUgdXNlIG9mIGZhbGxiYWNrIGNv
bXBhdGlibGVzCj4gPiBhbmQgdGhlIGJlc3Qgd2F5IHRvIGhhbmRsZSB0aGUgKGFscmVhZHkgcXVl
dWVkIHVwIGluIG5leHQpIEVUNzMwNAo+ID4gcGF0Y2hlcyB0aGlzIGN5Y2xlIGJlZm9yZSB0aGVp
ciBiaW5kaW5ncyBoaXQgbWFpbmxpbmUuIFRoZW4sIEkgY2FuCj4gPiByZWJhc2UgYW5kIHNxdWFz
aC9zcGxpdCBldmVyeXRoaW5nIGFzIHJlcXVpcmVkLgo+Cj4gVGhlc2UgYXJlIGluZGVwZW5kZW50
IHByb2JsZW1zLiBCdXQgaWYgeW91IHdhbnQgdG8gY29ubmVjdCB0aGVtLCB0aGVuCj4gaGVyZSB5
b3UgaGF2ZToKPiBJZiBJIHJldmlldyB0aGUgcGF0Y2gsIEdyZWcgd2lsbCB0YWtlIGV2ZXJ5dGhp
bmcsIGRlZmVhdGluZyB0aGUgcHVycG9zZQo+IG9mIG15IGNvbW1lbnQuIFNvIGFzIHlvdSBjYW4g
c2VlLCBJIHNob3VsZCByYXRoZXIgbm90IHJldmlldyB0aGVtIHRvCj4gYWNoaWV2ZSBvbmUgb2Yg
bXkgZ29hbHMuCgpJIHRob3VnaHQgdGhhdCBoYXZpbmcgdGhlIERUUyB1c2VyIHdpdGggdGhlIGJp
bmRpbmcgdGhhdCBpbnRyb2R1Y2VzCml0cyBleGlzdGVuY2UgaGVscHMgdGhlIGluaXRpYWwgZGlz
Y3Vzc2lvbi4gV2l0aCB0aGUgRFRTIGNoYW5nZSBiZWluZwphcyBtaW5pbWFsIGFzIGl0IGlzIGhl
cmUsIGl0J3MgZGVmaW5pdGVseSBubyBiaWdnaWUgdGhvdWdoLgoKSSBhcHByZWNpYXRlIHlvdXIg
Z3VpZGFuY2Ugb24gdGhlIGZhY3QgdGhhdCBHcmVnIGFwcGxpZXMgYSBzZXJpZXMgYXMgYQp3aG9s
ZS4gV2lsbCBzcGxpdCB1cC4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

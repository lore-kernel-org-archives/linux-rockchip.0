Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CD09EFCE46
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 20:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbI6RpN6GOgPvm3YvH21r+BI6ZsMtCep9MsiP9zmUpk=; b=IcOKnDDw8CaTtv
	k5sl1Oklsc88Vnn1+I08o8rlPNrxaGXLSR22OMFFjMlOa+pxUaUiFONbz+RckpZ0xmQurBJOCQ4lU
	h19SqdJphNFh1R/CXja6IuL36R5ROOR6kgfCP/NBfWcQl/j0seSn67j6fBtqTKEunbp5dcJvwVM21
	QO1MyUZ91opkN0+CYM0ZBa5qg7fDPXxyeyxdSxTbPHrivGct8kLKUf1EVtPH3dApNJi6Fy07Q63wR
	8y6ZHFeZxkyPEBRTG7+pVUzQPUYlKyssV4/7AyivDr3QrXWT6aUR2ccQzJFhgw4C738VY+oZgq/6a
	tHRot1ve9U0t76BYytag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxsnN-00000000Sbp-0dl5;
	Wed, 04 Mar 2026 20:26:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxsnK-00000000SbA-3sOU;
	Wed, 04 Mar 2026 20:26:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Efys+qdhDxW8gOWCNyG8ButQuR6xST9UMil7BTxFr0I=; b=OCG17ytgl1BIh7wKVHQ4jUE/W+
	d5UEeIn5BVPknW6046z/yb39IA1XP8V1orCGXXIlSIyrH8UoQ3OYBIHi9yy5fKgR0Sqz7BKQPjkdS
	lndwsYRNYUzucKXAOmK5neJDjzib9cMOjPVWOVPTbTxsdniFXBc+mrgPpcIbK2k6XXfoHO57AKLmw
	KFwAbkBv81HPtyiai9lPGFenEaeo0nLQFCbA62/882SgY8QsK2/9l5pTKXLnRWju+Cjgr+TR2FWOF
	FUafC9j7Ipb5YL7c644l7xIRK4Ltc3GmjU/TJ1sYieJ2QbLHaSVw/UYmUkeUWpFcUElTfISEgvlQA
	2NITJWaQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <diederik@cknow-tech.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Pedro Alves <pta2002@pta2002.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
Date: Wed, 04 Mar 2026 21:26:00 +0100
Message-ID: <24285215.6Emhk5qWAg@phil>
In-Reply-To: <CAAEXfUVBVMmT3i+10F3uvmGOtMMLoQK4WXM7_0G88aL5DntOuw@mail.gmail.com>
References: <20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com>
 <DGU7SPZQMZR5.1506XM8RO4EHE@cknow-tech.com>
 <CAAEXfUVBVMmT3i+10F3uvmGOtMMLoQK4WXM7_0G88aL5DntOuw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_122611_000114_535466BE 
X-CRM114-Status: GOOD (  20.94  )
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

QW0gTWl0dHdvY2gsIDQuIE3DpHJ6IDIwMjYsIDIxOjA1OjUyIE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgUGVkcm8gQWx2ZXM6Cj4gT24gMDQvMDMvMjAyNiAxODozOCwgRGll
ZGVyaWsgZGUgSGFhcyB3cm90ZToKPiA+IEkgaGF2ZSBhIHN0cm9uZyBzdXNwaWNpb24gdGhhdCBp
dCB3YXMgbmFtZWQgJ2hkbWlyeF9kZXQnIGJlY2F1c2UgaW4gdGhlCj4gPiBzY2hlbWEgaXRzIGxh
YmVsIGlzICdIRE1JSVJYX0RFVF9MJyB3aGVyZSB0aGUgZXh0cmEgJ0knIHdhcyBwcm9iYWJseQo+
ID4gZHJvcHBlZCBhcyB0aGF0IHNlZW1zIHRvIGJlIGEgc3BlbGxpbmcgaXNzdWUgYW5kIHRoZSAn
X0wnIHN1ZmZpeCBpcwo+ID4gcXVpdGUgb2Z0ZW4gZHJvcHBlZC4KPiA+Cj4gPiBGV0lXOiBUaGUg
bGFiZWwgaW4gdGhlIHNjaGVtYXRpYyBmb3IgUm9jayA1QiwgUm9jayA1QissIFJvY2sgNVQgYW5k
IFJvY2sKPiA+IDUgSVRYKyBhcmUgYWxsICdIRE1JSVJYX0RFVF9MJywgeWV0IG5vbmUgb2YgdGhl
bSBmb2xsb3cgdGhlIGNvbnZlbnRpb24KPiA+IHRvIHVzZSB0aGUgbGFiZWwgZnJvbSB0aGUgc2No
ZW1hdGljcy4KPiAKPiBUaGF0J3MgYSBnb29kIHBvaW50LCBhbmQgdGhlIG90aGVyIGJvYXJkcyBh
bGwgaGF2ZSB0aGUgaGRtaXJ4X2RldAo+IG5hbWluZyBpbiB0aGUgZG93bnN0cmVhbSBrZXJuZWws
IHNvIEkgZ3Vlc3MgdGhhdCB3b3VsZCBiZSB0aGUgbW9zdAo+ICJjb3JyZWN0IiBuYW1lIHRvIHVz
ZS4KPiAKPiA+IFNvIG5vdyB0aGUgJ3Byb2JsZW0nIGlzIGluZGVlZDogbWFrZSBpdCBjb25zaXN0
ZW50IHdpdGggdGhlIG90aGVyIGJvYXJkcwo+ID4gb3Iga2VlcCB0aGUgb25lIHdoZXJlIHRoZSBj
b252ZW50aW9uIHdhcyBmb2xsb3dlZC4KPiAKPiBBbHNvIGEgdGhpcmQgb3B0aW9uIG9mIGNoYW5n
aW5nIHRoZSBvdGhlciBib2FyZHMgdG8gYWxsIG1hdGNoLiBFaXRoZXIKPiB3YXksIEkgY2FuIGRv
IHRob3NlIGNoYW5nZXMsIGp1c3QgbGV0IG1lIGtub3cgd2hhdCB3b3VsZCBiZSBkZXNpcmFibGUu
CgpJIHJlYWxseSB3YW50IHBpbi1uYW1lcyB0byByZWZsZWN0IHRoZSBzY2hlbWF0aWNzLiBUaGlz
IG1ha2VzIHNlYXJjaGluZwpzbyBtdWNoIGVhc2llci4gU29tZXRpbWVzIHRoaW5ncyBzbGlwIHRo
cm91Z2ggd2hlcmUgdGhhdCBkb2Vzbid0IG1hdGNoLApidXQgdGhlIGdvYWwgd291bGQgYmUgdG8g
YWx3YXlzIG1vdmUgdG8gaW1wcm92ZSB0aGluZ3MuCgpTbyBhdCBsZWFzdCB0aGUgbmV3bHkgYWRk
ZWQgaGRtaXJ4IGhlcmUgc2hvdWxkIGZvbGxvdyB0aGUgc2NoZW1hdGljcywKYW5kIGlmIHlvdSBh
cmUga2VlbiB0byBicmluZyBldmVyeXRoaW5nIGluIGxpbmUsIHlvdSBjb3VsZCBhbHNvIGNoYW5n
ZQp0aGUgb3RoZXIgYm9hcmRzLiBCdXQgcGxlYXNlIG1ha2Ugc3VyZSB2aWEgdGhlIHNjaGVtYXRp
Y3Mgb2YgdGhvc2UgOi0pCgoKVGhhbmtzCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6644B109C021
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 14:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-reply-to:References:Cc:To:Subject:
	From:MIME-version:Date:Message-id:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iw1U6yShf8A2B09KS2VD3m6ZHVjj3ofK1THH/tsouCA=; b=VMYWeEZhE4KGyr
	LPyIV2lbyeLKUSqPxReC2eAOVuigWTue8NwZE+dRcphbhne/7J05YmBgXUVIGM5fdPA+kMUivwtm9
	vNQD9shW92M06o1tSoj52Jix7X0fZuvuazf12S49DJDaEIfK9ByfONODncasFM1wYz1TWixEAaraH
	edq3L1xB5Kjs5lDhJjTClKKwfC+TrIYSdX8KXapiayToIQx0TOPHbWpVksZSZvH+pf5cGLxz0Lsw/
	xcCMnyN0DcVTTyavy/WhHXCW74GJqhmQHRF1Ygj7XQYFTR0dOZJKSW8Vqa1NITzHEraCvOfOcs+hj
	V6CdjOJSsbYF8vzaPN0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PAK-00000003ZHQ-1BZI;
	Wed, 25 Mar 2026 14:25:00 +0000
Received: from abi149ajj125.mrs1.oracleemaildelivery.com ([129.149.100.125])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PAH-00000003ZED-43cs
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 14:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=pta2002-202603;
 d=pta2002.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=4J2bs+Xgq5dSGZ9Mv94Ovt55+98SGPNbD1rG7ZHb4uQ=;
 b=FnnoRcvPwcQ88IXds65/B5P7//0iglThbcaIrcO6g3CofN44r6A3w0uPjjFLxWZY2jv0dTyocp6/
   3alQBPZxiyXOkcj9fTJEcl+gqw1PZcZ5XIzyepOchZ1PnETACiYvy2wMZ+ss9Y0Tu0XlWv1hTbjQ
   xN+lZfK3UYSbToUx9gFamkTolbnwpp+MvwUKZR/Kuhvs9kt044E/Hkn2cZBaE0qczKiKSwdvX8Oq
   Gr76XchpjPfqi/9ZxLZ72PMC51LF39zju3hZyEaOjZpaJZdZpO2MQla7y9d/UKrwl3BI54dxXBzi
   D2vgArP9RXzMlBj/NmdBazrFx44nn9hEXhRXvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=prod-mrs-20211019;
 d=mrs1.rp.oracleemaildelivery.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=4J2bs+Xgq5dSGZ9Mv94Ovt55+98SGPNbD1rG7ZHb4uQ=;
 b=b2OtjeDdRCdyh08wyO+KtsSS73aBbDEc/vKaLWFGsMVh+mHxQ5iyjzAhA38frxnjfLpUOHbbUXJd
   v4FlxUQz9kzLJ/uLOlmeAQ9WNKYNF4n26OOT+enRM57AdSIb+1s1N4Ls7kuLZ/JpleKgO6/4hoky
   DYci1CA2u7rgmsm/0kQjxGEIZZxdhL7G0vyaCxbG69+V4Tl9kWtkd6WyX5FSWKHu4enKo7ATgia1
   2uhu0A2/8IlypXmJOi9YNNU1gnENBzA1IsJznsVV8GfFAr9KfUZsigK2/d6+g8xtzv5111MrT073
   MDepG/M2jDAK9vDVPnNNNHGzOW3adClb3Xdd4Q==
Received: by omta-ad1-fd3-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com
 (Oracle Communications Messaging Server 8.1.0.1.20260212 64bit (built Feb 12
 2026))
 with ESMTPS id <0TCG002W5LDA3R60@omta-ad1-fd3-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com>
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2026 14:24:46 +0000 (GMT)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-id: <1331010f-1446-4892-9d81-2f18b60f6977@pta2002.com>
Date: Wed, 25 Mar 2026 14:24:45 +0000
MIME-version: 1.0
User-Agent: Mozilla Thunderbird
From: Pedro Alves <pta2002@pta2002.com>
Subject: Re: [PATCH RESEND v2] arm64: dts: rockchip: configure hdmirx in Rock 5
 ITX
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260323-radxa-r5-itx-hdmirx-v2-1-c52501909577@pta2002.com>
 <3407927.44csPzL39Z@phil>
Content-language: pt_PT, en-US
In-reply-to: <3407927.44csPzL39Z@phil>
Reporting-Meta: AAHaB8rt6U4pRWPuzg6HYoL14PsnJ3SvWR/H0/t4MAxeSZoxpcePWCN+kYBu4Dv9
 oyx+yTPV6GooNsUjV5QAIcVW9vm8S/sArtRQ2SNODSY22KEGleIjP6uGwBqTIjlP
 Bh3HyLj0hrl5EzJPxhRnOzz+U58brdGTqT86uJ/o+uKLRLhHv8WXIrgTV01JRzO+
 Zyy1PW+YIZy4E73HNorZYffU/d2/+lJkErb/RwFd1LL9VJiLKfwmLPsgboQfzdFQ
 w39ZzpXWpkcLBjXWxz0ww3monilmU1dCHlnu1T9bO4KGKhkYwct+F5XxPsZoROTP
 jL7eY9RJ+4aAef1WbwlTTkehF+6clrc7mlAkC/wNf/45by8h6m6p2a9zjhWXQoPZ
 FH3Q+vho+GS4qCW/ufgnfQnhv6ZsqUZTJY6M6osGWGz+A3PceOjyhxKwKjkAHTYg RRRLYDDM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_072458_007638_B0F2C04F 
X-CRM114-Status: GOOD (  13.18  )
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

SGksCgpPbiAyNC8wMy8yMDI2IDE0OjE4LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBBbSBNb250
YWcsIDIzLiBNw6RyeiAyMDI2LCAxMDoyNTozMyBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVp
dCBzY2hyaWViIFBlZHJvIEFsdmVzOgo+PiArJmhkbWlfcmVjZWl2ZXIgewo+PiArCXBpbmN0cmwt
MCA9IDwmaGRtaW0xX3J4X2NlYyAmaGRtaW0xX3J4X2hwZGluICZoZG1pbTFfcnhfc2NsICZoZG1p
bTFfcnhfc2RhICZoZG1pcnhfZGV0PjsKPj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
PiArCWhwZC1ncGlvcyA9IDwmZ3BpbzEgUktfUEM2IEdQSU9fQUNUSVZFX0xPVz47Cj4gCj4gYXMg
c2FpZCBiZWZvcmUsIHBsZWFzZSBhbHNvIGFkZCBhIHBpbmN0cmwgc2V0dGluZyBmb3IgdGhpcyBw
aW4uCj4gCj4gZ3BpbzFfYzYgaXMgbm90IHBhcnQgb2YgdGhlIG1haW4gaGRtaXJ4IHNldCBvZiBw
aW5zLCBoZW5jZSBuZWVkcyBhbgo+IGFkZGl0aW9uYWwgcGluY3RybCBlbnRyeSB0byBjb25maWd1
cmUgaXQgYXMgZ3BpbyBhbmQgcG9zc2libHkgc2V0IGFueQo+IGFkZGl0aW9uYWwgcHVsbCBzZXR0
aW5ncy4KPiAKPiBBbmQgeWVzIHRoZSBwaW5jdHJsLWRyaXZlciBkb2VzICJpbXBsY2l0bHkiIHNl
dCB0aGUgZ3Bpby1tb2RlIHdoZW4KPiBhIGdwaW8gaXMgcmVxdWVzdGVkLCBidXQgb3VyIG1vcmUg
bW9kZXJuIGFwcHJvYWNoIGlzIHRvIGFsd2F5cyBoYXZlCj4gYSByZWFsIHBpbmN0cmwgZW50cnkg
ZXZlbiBmb3IgZ3Bpb3MuCgpJIGFtIHByb2JhYmx5IGdldHRpbmcgY29uZnVzZWQgYnkgd2hhdCB5
b3UgYXJlIGFza2luZyBoZXJlLCBidXQgSSBkb24ndAp1bmRlcnN0YW5kIHdoYXQgZXhhY3RseSBJ
IHNob3VsZCBhZGQuIFRoZXJlIHdhcyBhbHJlYWR5IGEgcGluY3RybCBmb3IKaGRtaXJ4X2RldCAo
d2hpY2ggaXMgd2hhdCB0aGUgZ3BpbzFfYzYgcGluIGlzKSBwcmVzZW50IGluIHRoZSBmaWxlLApo
ZW5jZSB3aHkgSSBkaWQgbm90IGFkZCBpdCBpbiB0aGlzIHBhdGNoOgoKJnBpbmN0cmwgewoJLyog
Li4uICovCgloZG1pcnggewoJCWhkbWlyeF9kZXQ6IGhkbWlyeC1kZXQgewoJCQlyb2NrY2hpcCxw
aW5zID0gPDEgUktfUEM2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OwoJCX07Cgl9OwoJ
LyogLi4uICovCn07CgpMb29raW5nIGF0IHRoZSBvdGhlciBib2FyZHMsIHRoZXkgZG8gdGhlIHNh
bWUgdGhpbmcsIGJ1dCB0aGV5IGNhbGwgaXQKaGRtaXJ4LTV2LWRldGVjdGlvbiBpbnN0ZWFkLCBi
dXQgYXMgZGlzY3Vzc2VkIGluIHYxIG9mIHRoaXMgcGF0Y2ggSQplbmRlZCB1cCBrZWVwaW5nIHRo
ZSBkZXQgbmFtaW5nIHRvIG1hdGNoIHRoZSBzY2hlbWF0aWNzLgoKU29ycnkgaWYgSSBhbSBtaXNz
aW5nIHNvbWV0aGluZywgSSBkb24ndCBoYXZlIG11Y2ggZXhwZXJpZW5jZSB3aXRoIHRoaXMsCnNv
IEkgd291bGQgcmVhbGx5IGFwcHJlY2lhdGUgc29tZSBleHRyYSBpbmZvcm1hdGlvbi4KClRoYW5r
IHlvdSwKUGVkcm8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

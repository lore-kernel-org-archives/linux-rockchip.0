Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9357C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:55:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7CB1B613B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:55:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7CB1B613B0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F09EWqkwXK6zBOrSkMGNQA+3+VFok2TF1xlz50VeRRE=; b=MNMQkH1yRyK46flbe2I9IsYoF
	gaDeeidQqlfg7HkVRK85khDlsmAqPkav+7RsMRNcvjW2FqaY0tRn4+y0re6Mqgw5Uzl0TQi9ED79x
	mTIRSMGUIZ72vSkqINgE8XmSRO0xHRYUcGHPe0HvSkNNpN4XgqlleiVwyVmQke/7Zq6rKTpR8hZOg
	Tuh65WM9zGlRIxQ1HohrRHJtyg+J3NjzWr+sCbwt7KMv0uG2/+mjA8DENdI83cxBsQ9P3R1eqOCJ4
	3meDTXiprt60p+kypAcUE2P9fO3QxslyXxH7+sXyl44yR5Y94bliJTaEfRQ4C9BPZ7fu5DncN5xql
	EODLOrN5g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbIYe-0012Ve-1L; Tue, 27 Apr 2021 07:55:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbISz-00119b-MG; Tue, 27 Apr 2021 07:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=dHcB7cdSVkdJWK8lvqp/4DkdmAikKe6OtJsfoVUeLXA=; b=bnfYSWMg7srvz78g3QU8cJy5SZ
 VZD2nJXucNUenxkquqprLXDK7Yq77I9AfKG5AjimyBTfxenEiYr7cFP4v7OO7RJLJolEjdAj5HA0W
 HfbhgGKMi/P1XBRIAHdagTjgWKzHJFb3BhyQkYgUcvziUSM2IZvEtZe69HBRpfvNF/4wZ9gKShHIn
 vU3sNjB3l5PrbleZG2Uyofjqb/STyNrJR2MYlwQuvS+kAKLx8tOFnl5+ZbWek4rDACik7AxcIHE0t
 hOPAZrppS1nygLkkBtdPVPp3jmLIriOJ6Ku3gS3E+jtHOLqcPqzQj2mHnV1S/G0uzW3HwS8LSLL4H
 y++QNmNQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbISx-00GWFB-8i; Tue, 27 Apr 2021 07:49:08 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lbISa-0002Fw-Pi; Tue, 27 Apr 2021 09:48:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, cl@rock-chips.com,
 Kever Yang <kever.yang@rock-chips.com>
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com, zhangqing@rock-chips.com,
 huangtao@rock-chips.com, wim@linux-watchdog.org, linux@roeck-us.net,
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v2 6/7] arm64: dts: rockchip: add core dtsi for RK3568 SoC
Date: Tue, 27 Apr 2021 09:48:41 +0200
Message-ID: <2088315.NnIJQXNAa5@diego>
In-Reply-To: <c2e96d99-3af5-3f22-78de-f6eff18b9c24@rock-chips.com>
References: <20210425094216.25724-1-cl@rock-chips.com>
 <3d584cdc-020e-5aae-cae3-59ef45e64a9f@gmail.com>
 <c2e96d99-3af5-3f22-78de-f6eff18b9c24@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_004907_330536_212D2564 
X-CRM114-Status: GOOD (  16.42  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGksCgpBbSBEaWVuc3RhZywgMjcuIEFwcmlsIDIwMjEsIDA1OjQ1OjAzIENFU1Qgc2NocmllYiBL
ZXZlciBZYW5nOgo+IEhpIEpvaGFuLCBIZWlrbywKPiAKPiBPbiAyMDIxLzQvMjYg5LiL5Y2IODox
NiwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+ID4gPT09Cj4gPgo+ID4gY29tcGF0aWJsZSA9ICJyb2Nr
Y2hpcCxyazM1NjgiOwo+ID4gTWF5YmUgYWRkIHRoaXMgdG9nZXRoZXIgd2l0aCBvdGhlciBya1hY
WFggU29DcyB0byByb2NrY2hpcC55YW1sIG9uIHRvcAo+ID4gb2YgYm9hcmQgbGlzdCA/Pz8KPiA+
IFBsZWFzZSBhZHZpc2UuCgpJIGRvbid0IHRoaW5rIHNvLiBJLmUuIHRoZSByb2NrY2hpcCxyazM1
NjggY29tcGF0aWJsZSBpcyBub3Qgc3VwcG9zZWQgYmUKc3RhbmRpbmcgYWxvbmUgc29tZXdoZXJl
LCBidXQgc2hvdWxkIGFsd2F5cyBiZSBjb21iaW5lZCB3aXRoIGEgYm9hcmQtCmNvbXBhdGlibGUu
IFNhbWUgYXMgdGhlIHJrMzU2OC5kdHNpIHNob3VsZCBub3QgYmUgdXNlZCBhbG9uZSBidXQgaW5j
bHVkZWQKaW50byBhIGJvYXJkIGR0cy4KCkFuZCBwYXRjaDcgZG9lcyB0aGlzIGJ5IGFkZGluZyB0
aGUgbmVjZXNzYXJ5IGVudHJ5IHRvIHRoZSBib2FyZCBsaXN0LgoKPiBUaGlzIHJvY2tjaGlwLnlh
bWwgaXMgbm93IGRlc2NyaWJlIGJvYXJkcyB3aXRob3V0IGFueSBzb3J0LCBpdCB3b3VsZCBiZSAK
PiBiZXR0ZXIgdG8gcmVmYWN0b3IgYW5kIHNvcnQgaW4gdHdvIGxldmVsOgo+IC0gc29jIGxldmVs
Cj4gLSBib2FyZCBsZXZlbCBiYXNlIG9uIHRoZSBzYW1lIHNvYy4KClRoZSBzb3J0aW5nIGluIHJv
Y2tjaGlwLnlhbWwgaXMgc3VwcG9zZWQgdG8gYmUgYWxwaGFiZXRpY2FsbHkgYnkgZGVzY3JpcHRp
b24uCih2ZW5kb3IgKyBib2FyZG5hbWUpCgpNeSBpbnRlbnRpb24gZm9yIHRoaXMgd2FzIHRvIGFs
bG93IHJlYWRlcnMgdG8gZmluZCB0aGVpciBib2FyZCB0byBnZXQKdGhlIG1hdGNoaW5nIGNvbXBh
dGlibGUgLSBhbmQgSSBsaWtlIHRoYXQgb3JkZXJpbmcgc29tZWhvdyA7LSkgLgoKU28gSSBkb24n
dCB0aGluayB0aGVyZSBhcmUgYmlnZ2VyIGNoYW5nZXMgbmVjZXNzYXJ5IHRvIHJvY2tjaGlwLnlh
bWwKCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==

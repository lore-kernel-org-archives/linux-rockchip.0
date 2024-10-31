Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B41F4D5CCAC
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Oct 2024 12:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8D6Ht5VLuSSG2znHuT7PwB4dJl2ZGeAvDWYdZ2YRnE=; b=xHNCeYtQOIUGFS
	0nmBoIoUoemaQO9ZSp1DEX4iI7bvbM4Nww/Wmu9o++XvZ8pZ8ejlowwdpnTB42ZQhdg9K4ep0TBOS
	VXfCxTmNqauj2be2q9ak4Pe7SbXLnl8v8M8HgO6HjVWMTHxB5BSFOyI0Xe78n7puhf9ipOiGrZdxe
	59ahRjOiOji9lf1TaCr0XzOM/QHF9yY641/Cc/TH8yHH9YtcGYkBLRXK+rBMNEpMVsUPE4IcCtyOI
	89y3w9braXPsCR4xCw5/1nbWjvdsFJYqTZVKhOVJzVDBRjm588SsfBt/SWGG0d6hDQ8pYEL8lJdG7
	2udFjPq1oOicBSBacG+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6U4K-00000003Upl-2DVm;
	Thu, 31 Oct 2024 12:14:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6U4I-00000003Uoz-39S5
	for linux-rockchip@lists.infradead.org;
	Thu, 31 Oct 2024 12:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qzZLBzu6tyfJlmH/zutIjp+TUUKE+0aO3mck+5Q39Ic=; b=jnZ/A9Tdxg+LSPl6JXB0MKE9EN
	91IhwKQhLDAqQYI88kWTkDG8z6BC6soHAzAe9mHmYCwMCAGVPPLqWvZeUcqgqpLiKYsTYgXoYNNGd
	eozkSzarXVON5jo9els8bLbJ9uxhWQ2arjUbwvwVHA62IG+qxMMJocE9w3WYVbB7AM+H9L96Pv7OY
	mz4LJ3dXfL5mi4u9/hr63fV68ni6favMc+1aKIb9URuKpzaW0Fjo38w2W1GqKepF5IsSmwuT90swu
	/w2dqJ40e6FUDUrVwGg/00vE3FlO7mDZnIpLn54glKjtbiOu7P20dg2zy7JEgaDapz6rNKTQ5+ZdD
	b7AdOQIw==;
Received: from i5e861914.versanet.de ([94.134.25.20] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t6U4E-0008JK-VR; Thu, 31 Oct 2024 13:14:23 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 3/3] arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova
Date: Thu, 31 Oct 2024 13:14:22 +0100
Message-ID: <5831051.DvuYhMxLoT@diego>
In-Reply-To: <CALWfF7LNN2dAtr00nLyk8rgE-K1vtSXkjhCFMbkVSzxhhSDvWQ@mail.gmail.com>
References: <20241030192236.839105-1-macroalpha82@gmail.com>
 <20241030192236.839105-4-macroalpha82@gmail.com>
 <CALWfF7LNN2dAtr00nLyk8rgE-K1vtSXkjhCFMbkVSzxhhSDvWQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_051426_836337_FADBC0BD 
X-CRM114-Status: GOOD (  18.03  )
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

QW0gRG9ubmVyc3RhZywgMzEuIE9rdG9iZXIgMjAyNCwgMDE6NDk6MDcgQ0VUIHNjaHJpZWIgSmlt
bXkgSG9uOgo+IE9uIFdlZCwgT2N0IDMwLCAyMDI0IGF0IDI6MjXigK9QTSBDaHJpcyBNb3JnYW4g
PG1hY3JvYWxwaGE4MkBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IEZyb206IENocmlzIE1vcmdh
biA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPgo+ID4gRW5hYmxlIHRoZSBIRE1JMCBwb3J0
IGZvciB0aGUgSW5kaWVkcm9pZCBOb3ZhLiBUaGUgc2NoZW1hdGljcyBhdmFpbGFibGUKPiA+IHNo
b3cgdGhlIGhkbWltMF9yeF9ocGRpbiBpcyBjb25uZWN0ZWQsIHNvIHRoaXMgcGluY3RybCBpcyBl
bmFibGVkIGluCj4gPiBjb250cmFzdCB3aXRoIHRoZSBvdGhlciByazM1ODggYm9hcmRzLgo+IAo+
IFdoaWNoIHBpbiBpbiB0aGUgc2NoZW1hdGljIFsxXSAocGFnZSAyNCkgZG9lcyBpdCByZWZlciB0
bz8gSXQncyBub3QKPiBvYnZpb3VzIGhvdyB0byBtYXRjaCBpdCB1cC4KPiBUaGUgc2NoZW1hdGlj
IGxvb2tzIHRoZSBzYW1lIGFzIHRoZSBSb2NrIDVCIHNjaGVtYXRpYyBbMl0gKHBhZ2UgMzEpCj4g
YW5kIHRoZSBSb2NrIDVCIGR0cyB1c2VzIHRoZSBkZWZhdWx0IHBpbmN0cmwgWzNdCj4gCj4gTm90
ZTogVGhlIHZlbmRvciBrZXJuZWwgRFRTIGRvZXNuJ3QgbW9kaWZ5IHRoZSBwaW5jdHJsIGVpdGhl
ci4gWzRdCj4gCj4gSWYgeW91IHRyeSB1c2luZyB0aGUgZGVmYXVsdCBwaW5jdHJsIChub3Qgb3Zl
cnJpZGluZyksIGRvZXMgSERNSSBub3Qgd29yaz8KCkkgc3R1bWJsZWQgb3ZlciB0aGUgc2FtZSBp
c3N1ZSByZWNlbnRseSBmb3Igb3VyIFRoZW9icm9tYSBib2FyZHMgdG9vLgoKRnJvbSB0aGUgSW5k
aWVkcm9pZCBzY2hlbWF0aWNzLCB5b3UgY2FuIHNlZSB0aGF0IHRoZSBoZG1pbTBfcnhfaHBkaW4K
cGluIGlzIGdwaW80X2I2LCB3aGljaCBpbiB0aGVpciBib2FyZCBpcyBjb25uZWN0ZWQgdG8gdGhl
IGhkbWkwX3R4X29uX2gKZnVuY3Rpb25hbGl0eSwgd2hpY2ggY29udHJvbHMgdGhlIG91dHB1dCBm
dW5jdGlvbmFsaXR5IGJldHdlZW4gaGRtaTIuMC10bWRzCmFuZCBoZG1pMi4xLWZybCBtb2Rlcy4K
ClRoZSBoZG1pLWRyaXZlciBjdXJyZW50bHkgb25seSBkb2VzIGhkbWkyLjAgYnV0IG5vcm1hbGx5
LCBvbiBtb3N0IGJvYXJkcwpJJ3ZlIHNlZW4gc28gZmFyLCB0aGlzIHBpbiBoYXMgYSBkZWZhdWx0
IHB1bGwgdG8gc2V0IGhkbWkyLjAgYW55d2F5LCBzbyBvdGhlcgpib2FyZHMgZG9uJ3QgbmVlZCB0
aGF0LgoKU28gZm9yIG9uZSwgcGxlYXNlIGNoZWNrIGlmIHRoZSBub3ZhIGNhbiBydW4gd2l0aG91
dCBpdCwgYnV0IGlmIGEgcGluCnNldHRpbmcgaXMgbmVlZGVkLCBwbGVhc2UgZGVmaW5lIGEgbmV3
IHBlci1ib2FyZCBvbmUsIGxhYmVsaW5nIGl0IGNvcnJlY3RseQpmb3IgdGhpcyBoZG1pMF90eF9v
bl9oIGZ1bmN0aW9uYWxpdHkgYW5kIGRvIG5vdCByZS11c2UgdGhlIGhkbWktcngKcGluLXNldHRp
bmcuCgoKSGVpa28KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77D52E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 16:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpteJlZv8MOWHXBgO8tbx05NKiW4aTDJVrE/lK1osjk=; b=GYf//Go18tecsW
	t+xA9nGcTf2V3qybCtVZsH45zgnqCUi+eXZXQJqOzlJ+8CcA+QAzt0zrruFBLyUZmph1saCyr+Htt
	652d+4GTSNruk2R2VNwlB+mInwzhtoWIzbcD0mLu5crzftwGjNw502CVbInvKVh6hYer/6iVK156t
	IO1xkyQGG8u+bbYB9Sg6pfwIWm0+2xIxgtk528X3Tm+tPID3fHTHs7p/0sXLMMKq5g1xlMR4owmxb
	jemgD0VTt6aTIDa4SAanGBWXPrDl7P5UwYgDEvOIRAVzH6KBWbnWfUOXMBkLfCaW40Gh5tQRRpTcs
	qND2koN7rvVAB46kcVgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL33Z-0000000C5PE-2nsY;
	Tue, 10 Dec 2024 16:25:53 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL33U-0000000C5Ny-0PnJ
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 16:25:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1733847942;
 bh=Rfks6ZTiwp1kxRzHwe4qrzjZlR1gfefb3q3lO/fYtDA=;
 b=yurxfwQ7unIjEb47s7vUlZ5nmET+d0VFLe6GN+5yltcPCDp55mdq2yk34tDlbS1JKKK26E+6Q
 BuA01kE/9Q2TbpPFlrERXB1zdYKsJMIxjHKT11m/ehftMhBLy3ywdXesujxDSIlMk4auO5xK/IX
 IoihvM5L/pGdCuFof4QVP2sKMBuQ7TALx9EzorM+fdc9WgSrMpoJXwXqQRXGPUV3qEp0e5MjGAL
 GOwHoJVAXmn1NpbS9KXfk3et5WGdZ8iCMmm70veO9F+NN55Q+rfvPYdC652EjICEVx1lejT3FQm
 K64+FyWCPm6yF+6fHKu4ptB2KpLyvQWFpgssZ/GmBhXA==
Message-ID: <304fd668-0e61-4f5e-a12c-36fd7e54ab6e@kwiboo.se>
Date: Tue, 10 Dec 2024 17:25:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] clk: rockchip: fix wrong clk_ref_usb3otg parent for
 rk3328
To: Peter Geis <pgwipeout@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang
 <zhangqing@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241210013010.81257-1-pgwipeout@gmail.com>
 <20241210013010.81257-3-pgwipeout@gmail.com>
 <0d11705121f29ccfb7cfa342505a6e35@manjaro.org>
 <CAMdYzYqJLK6oJHCUVztth6mtJsYrRQSPzNYpR-ZmR7rNprZXfg@mail.gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <CAMdYzYqJLK6oJHCUVztth6mtJsYrRQSPzNYpR-ZmR7rNprZXfg@mail.gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 67586b83ce9f514b1380d1a4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_082550_582003_07B3A991 
X-CRM114-Status: GOOD (  20.04  )
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

T24gMjAyNC0xMi0xMCAxNDoyNywgUGV0ZXIgR2VpcyB3cm90ZToKPiBPbiBUdWUsIERlYyAxMCwg
MjAyNCBhdCA0OjQ04oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3Rl
Ogo+Pgo+PiBIZWxsbyBQZXRlciwKPj4KPj4gT24gMjAyNC0xMi0xMCAwMjozMCwgUGV0ZXIgR2Vp
cyB3cm90ZToKPj4+IENvcnJlY3QgdGhlIGNsa19yZWZfdXNiM290ZyBwYXJlbnQgdG8gZml4IGNs
b2NrIGNvbnRyb2wgZm9yIHRoZSB1c2IzCj4+PiBjb250cm9sbGVyIG9uIHJrMzMyOC4gVmVyaWZp
ZWQgYWdhaW5zdCB0aGUgcmszMzI4IHRybSBhbmQgdXNiMyBjbG9jawo+Pj4gdHJlZQo+Pj4gZG9j
dW1lbnRhdGlvbi4KPj4+Cj4+PiBGaXhlczogZmUzNTExYWQ4YTFjICgiY2xrOiByb2NrY2hpcDog
YWRkIGNsb2NrIGNvbnRyb2xsZXIgZm9yIHJrMzMyOCIpCj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRl
ciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPgo+Pj4gLS0tCj4+Pgo+Pj4gIGRyaXZlcnMvY2xr
L3JvY2tjaGlwL2Nsay1yazMzMjguYyB8IDIgKy0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsv
cm9ja2NoaXAvY2xrLXJrMzMyOC5jCj4+PiBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMz
MjguYwo+Pj4gaW5kZXggM2JiODdiMjdiNjYyLi5jZjYwZmNmMmZhNWMgMTAwNjQ0Cj4+PiAtLS0g
YS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzI4LmMKPj4+ICsrKyBiL2RyaXZlcnMvY2xr
L3JvY2tjaGlwL2Nsay1yazMzMjguYwo+Pj4gQEAgLTIwMSw3ICsyMDEsNyBAQCBQTkFNRShtdXhf
YWNsa19wZXJpX3ByZV9wKSAgICAgICAgPSB7ICJjcGxsX3BlcmkiLAo+Pj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICJncGxsX3BlcmkiLAo+Pj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICJoZG1pcGh5X3BlcmkiIH07Cj4+PiAgUE5BTUUobXV4X3JlZl91c2Iz
b3RnX3NyY19wKSA9IHsgInhpbjI0bSIsCj4+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgImNsa191c2Izb3RnX3JlZiIgfTsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAiY2xrX3JlZl91c2Izb3RnX3NyYyIgfTsKPj4+ICBQTkFNRShtdXhfeGluMjRtXzMy
a19wKSAgICAgICAgICAgICAgPSB7ICJ4aW4yNG0iLAo+Pj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICJjbGtfcnRjMzJrIiB9Owo+Pj4gIFBOQU1FKG11eF9tYWMyaW9fc3JjX3Ap
ICAgICAgICAgICAgICA9IHsgImNsa19tYWMyaW9fc3JjIiwKPj4KPj4gU29ycnksIGJ1dCBJIHdh
cyB1bmFibGUgdG8gdmVyaWZ5IHRoaXMgaW4gdGhlIHBhcnQgMSBvZiB0aGUKPj4gUkszMzI4IFRS
TSwgaW4gYm90aCB2ZXJzaW9ucyAxLjEgYW5kIDEuMiwgd2hpY2ggaXMgYWxsIEkgaGF2ZQo+PiB3
aGVuIGl0IGNvbWVzIHRvIHRoZSBSSzMzMjggVFJNLiAgSXMgdGhhdCBtYXliZSBkZXNjcmliZWQg
aW4KPj4gdGhlIHBhcnQgMiwgd2hpY2ggSSd2ZSBiZWVuIHVuYWJsZSB0byBsb2NhdGUgZm9yIHll
YXJzPwo+Pgo+PiBNb3Jlb3ZlciwgdGhlIGRvd25zdHJlYW0ga2VybmVsIHNvdXJjZSBmcm9tIFJv
Y2tjaGlwIGRvZXMgaXQKPj4gdGhlIHdheSBbMV0gaXQncyBjdXJyZW50bHkgZG9uZSBpbiB0aGUg
bWFpbmxpbmUga2VybmVsLCB3aGljaAo+PiBtYWtlcyBtZSBjb25mdXNlZCBhIGJpdD8gIENvdWxk
IHlvdSwgcGxlYXNlLCBwcm92aWRlIG1vcmUKPj4gZGV0YWlscyBhYm91dCB0aGUgdHdvIHJlZmVy
ZW5jZXMgeW91IG1lbnRpb25lZCBpbiB0aGUgcGF0Y2gKPj4gZGVzY3JpcHRpb24sIG9yIG1heWJl
IGV2ZW4geW91IGNvdWxkIHByb3ZpZGUgdGhlIGxpbmtzIHRvCj4+IHRob3NlIHR3byByZWZlcmVu
Y2VzPwo+Pgo+PiBbMV0KPj4gaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3JvY2tj
aGlwLWxpbnV4L2tlcm5lbC9yZWZzL2hlYWRzL2RldmVsb3AtNC40L2RyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsay1yazMzMjguYwo+IAo+IEl0IGlzIHVuZm9ydHVuYXRlIHRoZSBUUk0gZG9lc24ndCBp
bmNsdWRlIHRoZSBjbG9jayBtYXBzLCBiZWNhdXNlIHRoZXkKPiBhcmUgZXh0cmVtZWx5IGhlbHBm
dWwgd2hlbiBvbmUgY2FuIGFjcXVpcmUgdGhlbS4gSXQgYWxzbyBkb2Vzbid0IGhlbHAKPiB0aGF0
IHRoZSBUUk0gcmVnaXN0ZXIgZGVmaW5pdGlvbiBvbmx5IHJlZmVycmVkIHRvIHRoaXMgYXMgInBs
bCIuIEkgd2FzCj4gc2VudCBzcGVjaWZpY2FsbHkgdGhlIHVzYjMgcGh5IGNsb2NrIG1hcCBmb3Ig
bXkgd29yayBvbiB0aGUgZHJpdmVyLAo+IHdoaWNoIGhhZCB0aGUgbG9jYXRpb24gb2YgZWFjaCBz
d2l0Y2ggYW5kIGRpdmlkZXIgYWxvbmcgd2l0aCB0aGUKPiByZWdpc3RlciBhbmQgYml0IHRoYXQg
Y29udHJvbGxlZCBpdC4gVGhhdCBjb21iaW5lZCB3aXRoIHRoZSBUUk0KPiByZWdpc3RlciBtYXAg
YWxsb3dlZCBtZSB0byBmaW5kIHRoaXMgZXJyb3IuCgpJIGNhbiBhbHNvIGNvbmZpcm0gdGhhdCB0
aGUgY2hhbmdlcyBpbiB0aGlzIHBhdGNoIG1hdGNoZXMgRmlnLiAzLTgKUkszMjI4SCBDbG9jayBB
cmNoaXRlY3R1cmUgRGlhZ3JhbSA3IGZvciB0aGUgVVNCM09URyBibG9jay4KCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFhJTjI0TSAtXAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBTNDVfOCAtIHJlZl9jbGtfdXNiM290ZwpTNDVfNyAoMlBM
TCkgLyBHNF85IC8gUzQ1XzAgKERpdkZyZWUgMX42NCkgLS8KClJlZ2FyZHMsCkpvbmFzCgo+IAo+
IFRoYW5rcyEKPiBQZXRlcgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

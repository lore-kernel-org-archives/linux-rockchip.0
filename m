Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76A9CC02198
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 14:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlfGNXzrVNqw2w9OVjtW4pLBjYOeP+ca+s04N8g7FVU=; b=Izbx+rYFgg2DdC
	hRIjSm4X3IWdzqZHPHp1lnym2xEOa8HPcsOOI66rRKjoxS3oq6oczKZPpgeci2rXj7aeHPNvc4qeC
	SMaPT9eUx4755WCNd6INW+4+DsABpdt4vP9kEChPVGCSBnFJDuBYSHfeextRUNSUn2K0HAe+fYwAw
	B+VjBtjMbCwmIgTi3hV1rLgCQxxs0L1gLkmiLz48DI+Nrx5FmfrCU3X9y25QRC7hcWO1CIujU6sFG
	NuBZ3EVsWR981Qyl0nxKyYDLS8sZokwULBirFF4HbqsDICfldxG2fit5PyeAWUrzEsiYwrGQZrnMu
	XQoE3Es99nSdT4V+Ha5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkP4Q-00000008f5u-3LrN;
	Tue, 18 Feb 2025 14:59:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkOyL-00000008dgt-19KB;
	Tue, 18 Feb 2025 14:53:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=0vWS+jJLGaUznhkUfulRmF74wnw6+simbpz7/+3zlNU=; b=yCHNif8/OzKbJ8qOOHLZC7ehTA
	zdS8Ay0sBcb8JU2WO/UQqqsK68gdfuNU0GOadhvfFzsvvbJjgwWUmCPjoLBXYXVCfWkAClMQ2hCMv
	PdJk1AYucpPORfkt3caFGB1hO1/Ovl8P1W76OSLXbFRg+M0bSYTBSMcERhZDq2L5JXKU6AM/yoWUU
	uTEM13NnKraf0E1QhGoPLP8LWNWELxhHs2WsPUkU9IuxgXJeHVDfBeueJ58YMIcabdv8YFa0LEgO0
	6BUKBEGgN2ODQLuuVe4eto3M4Ba5Xjz4DZ7My9cqydE6khcMBrsiN1XNbTA8LYu8hQEmet7cmoGAW
	R4NEnpzg==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tkOyB-0005uw-A9; Tue, 18 Feb 2025 15:53:07 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Jianfeng Liu <liujianfeng1994@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add HDMI1 PHY PLL clock source to VOP2
 on RK3588
Date: Tue, 18 Feb 2025 15:53:06 +0100
Message-ID: <2425191.NG923GbCHz@diego>
In-Reply-To: <lnuceofdwm6lgibworaghcujp6rrncvn4e2xc2vzltimjw3rqu@jur7x5cxt5ue>
References: <1919367.CQOukoFCf9@diego>
 <20250218121749.1382322-1-liujianfeng1994@gmail.com>
 <lnuceofdwm6lgibworaghcujp6rrncvn4e2xc2vzltimjw3rqu@jur7x5cxt5ue>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_065317_306424_43337B2A 
X-CRM114-Status: GOOD (  34.19  )
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
Cc: simona@ffwll.ch, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, mripard@kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, kernel@collabora.com, airlied@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRGllbnN0YWcsIDE4LiBGZWJydWFyIDIwMjUsIDE1OjEzOjA3IE1FWiBzY2hyaWViIFNlYmFz
dGlhbiBSZWljaGVsOgo+IEhpLAo+IAo+IE9uIFR1ZSwgRmViIDE4LCAyMDI1IGF0IDA4OjE3OjQ2
UE0gKzA4MDAsIEppYW5mZW5nIExpdSB3cm90ZToKPiA+IE9uIFR1ZSwgMTggRmViIDIwMjUgMTE6
MDA6NTcgKzAxMDAsIEhlaWtvIFN0w7xibmVyd3JvdGU6Cj4gPiA+U28gSSBndWVzcyBzdGVwMSwg
Y2hlY2sgd2hhdCBlcnJvciBpcyBhY3R1YWxseSByZXR1cm5lZC4KPiA+IAo+ID4gSSBoYXZlIGNo
ZWNrZWQgdGhhdCB0aGUgcmV0dXJuIHZhbHVlIGlzIC01MTc6Cj4gPiAKPiA+IHJvY2tjaGlwLWRy
bSBkaXNwbGF5LXN1YnN5c3RlbTogW2RybV0gKkVSUk9SKiBmYWlsZWQgdG8gZ2V0IHBsbF9oZG1p
cGh5MSB3aXRoIC01MTcKPiA+IAo+ID4gPlN0ZXAyIGNoZWNrIGlmIGNsa19nZXRfb3B0aW9uYWwg
bmVlZCB0byBiZSBhZGFwdGVkIG9yIGFsdGVybmF0aXZlbHkKPiA+ID5jYXRjaCB0aGUgZXJyb3Ig
aW4gdGhlIHZvcDIgYW5kIHNldCB0aGUgY2xvY2sgdG8gTlVMTCBvdXJzZWxmIGluIHRoYXQgY2Fz
ZS4KPiA+IAo+ID4gSSB0cmllZCB0aGUgZm9sbG93aW5nIHBhdGNoIHRvIHNldCB0aGUgY2xvY2sg
dG8gTlVMTCB3aGVuIGNsa19nZXRfb3B0aW9uYWwKPiA+IGZhaWxlZCB3aXRoIHZhbHVlIC01MTcs
IGFuZCBoZG1pMCBpcyB3b3JraW5nIG5vdy4gVGhlcmUgYXJlIGFsc28gc29tZQo+ID4gYm9hcmRz
IGxpa2Ugcm9jayA1IGl0eCB3aGljaCBvbmx5IHVzZSBoZG1pMSwgSSB0aGluayB3ZSBzaG91bGQg
YWxzbyBhZGQKPiA+IHRoaXMgbG9naWMgdG8gdm9wMi0+cGxsX2hkbWlwaHkwLgo+ID4gCj4gPiBA
QCAtMzczMyw2ICszNzUxLDE1IEBAIHN0YXRpYyBpbnQgdm9wMl9iaW5kKHN0cnVjdCBkZXZpY2Ug
KmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLCB2b2lkICpkYXRhKQo+ID4gIAkJcmV0dXJuIFBU
Ul9FUlIodm9wMi0+cGxsX2hkbWlwaHkwKTsKPiA+ICAJfQo+ID4gIAo+ID4gKwl2b3AyLT5wbGxf
aGRtaXBoeTEgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwodm9wMi0+ZGV2LCAicGxsX2hkbWlwaHkx
Iik7Cj4gPiArCWlmIChJU19FUlIodm9wMi0+cGxsX2hkbWlwaHkxKSkgewo+ID4gKwkJZHJtX2Vy
cih2b3AyLT5kcm0sICJmYWlsZWQgdG8gZ2V0IHBsbF9oZG1pcGh5MSB3aXRoICVkXG4iLCB2b3Ay
LT5wbGxfaGRtaXBoeTEpOwo+ID4gKwkJaWYgKHZvcDItPnBsbF9oZG1pcGh5MSA9PSAtRVBST0JF
X0RFRkVSKQo+ID4gKwkJCXZvcDItPnBsbF9oZG1pcGh5MSA9IE5VTEw7Cj4gPiArCQllbHNlCj4g
PiArCQkJcmV0dXJuIFBUUl9FUlIodm9wMi0+cGxsX2hkbWlwaHkxKTsKPiA+ICsJfQo+ID4gKwo+
IAo+IFRoaXMgZmlyc3Qgb2YgYWxsIHNob3dzLCB0aGF0IHdlIHNob3VsZCByZXBsYWNlIGRybV9l
cnIgaW4gdGhpcwo+IHBsYWNlIHdpdGggZGV2X2Vycl9wcm9iZSgpLCB3aGljaCBoaWRlcyAtRVBS
T0JFX0RFRkVSIGVycm9ycyBieQo+IGRlZmF1bHQgYW5kIGluc3RlYWQgY2FwdHVyZXMgdGhlIHJl
YXNvbiBmb3IgL3N5cy9rZXJuZWwvZGVidWcvZGV2aWNlc19kZWZlcnJlZC4KPiAKPiBTZWNvbmQg
d2hhdCB5b3UgYXJlIGRvaW5nIGluIHRoZSBhYm92ZSBzdWdnZXN0aW9uIHdpbGwgYnJlYWsga2Vy
bmVsCj4gY29uZmlndXJhdGlvbnMgd2hlcmUgVk9QIGlzIGJ1aWx0LWluIGFuZCB0aGUgSERNSSBQ
SFkgaXMgYnVpbGQgYXMgYQo+IG1vZHVsZS4KPiAKPiBCdXQgSSBhbHNvIHRoaW5rIGl0IHdvdWxk
IGJlIGJldHRlciB0byBoYXZlIHRoZSBjbG9ja3MgZGVmaW5lZCBpbiB0aGUKPiBTb0MgbGV2ZWwg
RFQuIEkgc3VwcG9zZSB0aGF0IG1lYW5zIHZvcDJfYmluZCB3b3VsZCBoYXZlIHRvIGNoZWNrIGlm
Cj4gdGhlIEhETUkgY29udHJvbGxlciA8SUQ+IGlzIGVuYWJsZWQgYW5kIG9ubHkgcmVxdWVzdHMg
cGxsX2hkbWlwaHk8SUQ+Cj4gYmFzZWQgb24gdGhhdC4gQ29uc2lkZXJpbmcgdGhlcmUgaXMgdGhl
IE9GIGdyYXBoIHBvaW50aW5nIGZyb20gVk9QCj4gdG8gdGhlIGVuYWJsZWQgSERNSSBjb250cm9s
bGVycywgaXQgc2hvdWxkIGJlIGFibGUgdG8gZG8gdGhhdC4KCgpJIHdhcyBtb3JlIHRoaW5raW5n
IGFib3V0IGZpeGluZyB0aGUgY29ycmVjdCB0aGluZywgd2l0aCBzb21ldGhpbmcgbGlrZToKCi0t
LS0tLS0tLS0tIDg8IC0tLS0tLS0tLS0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2Nsay5jIGIv
ZHJpdmVycy9jbGsvY2xrLmMKaW5kZXggY2Y3NzIwYjkxNzJmLi41MGZhYWZiZjVkZGEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvY2xrL2Nsay5jCisrKyBiL2RyaXZlcnMvY2xrL2Nsay5jCkBAIC01MjU4
LDYgKzUyNTgsMTAgQEAgb2ZfY2xrX2dldF9od19mcm9tX2Nsa3NwZWMoc3RydWN0IG9mX3BoYW5k
bGVfYXJncyAqY2xrc3BlYykKICAgICAgICBpZiAoIWNsa3NwZWMpCiAgICAgICAgICAgICAgICBy
ZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKCisgICAgICAgLyogQ2hlY2sgaWYgbm9kZSBpbiBjbGtz
cGVjIGlzIGluIGRpc2FibGVkL2ZhaWwgc3RhdGUgKi8KKyAgICAgICBpZiAoIW9mX2RldmljZV9p
c19hdmFpbGFibGUoY2xrc3BlYy0+bnApKQorICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIo
LUVOT0VOVCk7CisKICAgICAgICBtdXRleF9sb2NrKCZvZl9jbGtfbXV0ZXgpOwogICAgICAgIGxp
c3RfZm9yX2VhY2hfZW50cnkocHJvdmlkZXIsICZvZl9jbGtfcHJvdmlkZXJzLCBsaW5rKSB7CiAg
ICAgICAgICAgICAgICBpZiAocHJvdmlkZXItPm5vZGUgPT0gY2xrc3BlYy0+bnApIHsKLS0tLS0t
LS0tLS0gODwgLS0tLS0tLS0tLQoKQmVjYXVzZSByaWdodCBub3cgdGhlIGNsayBmcmFtZXdvcmsg
ZG9lcyBub3QgaGFuZGxlIG5vZGVzIGluCmZhaWxlZC9kaXNhYmxlZCBzdGF0ZSBhbmQgd291bGQg
ZGVmZXIgaW5kZWZpbml0bHkuCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

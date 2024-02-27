Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0A4AC5478C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 16:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4ZcLm03Bqz9z4QepnltDVg9gjqbC9CCMFn6PQNJUK+g=; b=v+ZR+bPYA0v470cD9SN13VpVhw
	HCEuUxcLVCbXiGYZMoqTxHemwOv48MuI3EcYQgv8KzX6rn1pBQ96+sjBeDzhsxfRVOTgKWbN4ETcL
	YUUj51eZPH6oUlRX3tOPJs/oR2oGYPruo6czHScAZnujsFExl4zQ+tO+8uD+TTFYQnZr/K/CSaxNe
	WpLVFn7vhUb/ImP7uky/bHL6jkCNhZOg9y3WaLCuhKJQpPMGAz+IHtC0YNu7AEy9vjxep7s2/o9Ak
	ZNgI+Klm4DEDfawqVBovZc6DFNsD04LVkMoPgOyrgH+U4mnuui+TAKgASbRvCDlOUHMroQeQYPyA9
	aWYQmwIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rezsn-00000005tSq-3kNG;
	Tue, 27 Feb 2024 16:00:41 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rezsj-00000005tR9-3u7j;
	Tue, 27 Feb 2024 16:00:40 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709049634;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S0ScTYlEOMm7KmQCkQkjYPl7d36pL1WA+3JbO05QOqI=;
	b=ubQN3Jar96vFnIYInc7ImePz/0CkVCFsr74WzTjjQdPtwsi60iNnB6cRKzrHdG1qgUwYp7
	+HHx/D9waAvr2uAC/VMpdmpH3hEWLK5qN8ycT6DLK11gHLgxDnTad92LiZ6CdNZE5q+sjS
	Now4X4w1N+hgQmQ1GEZ/85EHSfPI3kXOS6OAGpeg5AgUf5RQp1zPDH8ikupOF3HM1b1TOa
	m6QfN2IpgGTWpwLotmL/uhQgQLjGex3j6LnA2XzNbqfS+BZ68s8dGYG7ZcF1iyle+QpvDp
	5OMHpDbdXhv/o+20dnda6iO1DfNY4J2Do0+4v41OaHbBh/yghGugRNUeFYMBwg==
Date: Tue, 27 Feb 2024 17:00:31 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Folker Schwesinger <dev@folker-schwesinger.de>, Alban Browaeys
 <alban.browaeys@gmail.com>, Doug Anderson <dianders@chromium.org>, Jensen
 Huang <jensenhuang@friendlyarm.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, Chris
 Ruehl <chris.ruehl@gtsys.com.hk>, Brian Norris <briannorris@chromium.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add enable-strobe-pulldown to emmc
 phy on rk3399
In-Reply-To: <eafd8d8c0cbcaca1b190f84ec17a1dcd7aec0306.camel@collabora.com>
References: <20220822074139.3810-1-jensenhuang@friendlyarm.com>
 <23552842.6Emhk5qWAg@diego>
 <CAD=FV=W-ajJDfYcP3P8Jyk_KgsUAbdTtmwiNXqJ=Ab2ojgrUGw@mail.gmail.com>
 <CAMpZ1qEe7xFr+XaXsS_hWDLnGGA8PfzQiToOjY1N_1ctyQ+KxA@mail.gmail.com>
 <CAD=FV=U-=2GpQTb0N1p3Qe2TAb=JhyZJw2V8T-qbLs5TYhW7qA@mail.gmail.com>
 <7873090c4aad382813a65e35157d8684e8842974.camel@gmail.com>
 <CZFS45VOLIKW.2VS3M3VOMBT8V@folker-schwesinger.de>
 <eafd8d8c0cbcaca1b190f84ec17a1dcd7aec0306.camel@collabora.com>
Message-ID: <ca5b7cad01f645c7c559ab26a8db8085@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_080038_504643_B7A82F6F 
X-CRM114-Status: GOOD (  36.68  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgpPbiAyMDI0LTAyLTI3IDExOjM4LCBDaHJpc3RvcGhlciBPYmJhcmQgd3JvdGU6Cj4g
T24gVHVlLCAyMDI0LTAyLTI3IGF0IDEwOjExICswMDAwLCBGb2xrZXIgU2Nod2VzaW5nZXIgd3Jv
dGU6Cj4+IE9uIFR1ZSBGZWIgMjcsIDIwMjQgYXQgMzowNSBBTSBDRVQsIEFsYmFuIEJyb3dhZXlz
IHdyb3RlOgo+PiA+IExlIG1lcmNyZWRpIDI0IGFvw7t0IDIwMjIgw6AgMDc6NTcgLTA3MDAsIERv
dWcgQW5kZXJzb24gYSDDqWNyaXTCoDoKPj4gPiA+IE9uIFR1ZSwgQXVnIDIzLCAyMDIyIGF0IDg6
MTEgUE0gSmVuc2VuIEh1YW5nCj4+ID4gPiA8amVuc2VuaHVhbmdAZnJpZW5kbHlhcm0uY29tPiB3
cm90ZToKPj4gPiA+ID4gSSByZWFsaXplZCB0aGF0IG9ubHkgc29tZSBkZXZpY2VzIG1heSBiZSBh
ZmZlY3RlZCwgc28gSSBjb25zaWRlcmVkCj4+ID4gPiA+IG1vZGlmeWluZyByazMzOTktbmFub3Bp
NC5kdHNpIG9ubHksCj4+ID4gPiA+IGJ1dCBvdGhlciBib2FyZHMgd2l0aG91dCBleHRlcm5hbCBw
dWxsLWRvd24gc2hvdWxkIHN0aWxsIG5lZWQgdGhpcwo+PiA+ID4gPiBwYXRjaC4KPj4gPiA+Cj4+
ID4gPiBJIGd1ZXNzIHRoZSBvdGhlciBhbHRlcm5hdGl2ZSB3b3VsZCBiZSB0byBjaGFuZ2UgaG93
IHRoZSBkdCBwcm9wZXJ0eQo+PiA+ID4gd29ya3MuIFlvdSBjb3VsZCBzYXk6Cj4+ID4gPgo+PiA+
ID4gMS4gSWYgYGVuYWJsZS1zdHJvYmUtcHVsbGRvd25gIGlzIHNldCB0aGVuIGVuYWJsZSB0aGUg
c3Ryb2JlCj4+ID4gPiBwdWxsZG93bi4KPj4gPiA+Cj4+ID4gPiAyLiBJZiBgZW5hYmxlLXN0cm9i
ZS1wdWxsZG93bmAgaXMgbm90IHNldCB0aGVuIGRvbid0IHRvdWNoIHRoZSBwaW4gaW4KPj4gPiA+
IHRoZSBrZXJuZWwuCj4+ID4gPgo+PiA+ID4gMy4gSWYgc29tZW9uZSBsYXRlciBuZWVkcyB0byBl
eHBsaWNpdGx5IGRpc2FibGUgdGhlIHN0cm9iZSBwdWxsZG93bgo+PiA+ID4gdGhleSBjb3VsZCBh
ZGQgYSBuZXcgcHJvcGVydHkgbGlrZSBgZGlzYWJsZS1zdHJvYmUtcHVsbGRvd25gLgo+PiA+ID4K
Pj4gPiA+Cj4+ID4gPiBPYnZpb3VzbHkgdGhlcmUgYXJlIHRyYWRlb2ZmcyBiZXR3ZWVuIHRoYXQg
YW5kIHdoYXQgeW91J3ZlIGRvbmUgYW5kCj4+ID4gPiBJJ20gaGFwcHkgdG8gbGV0IG90aGVycyBt
YWtlIHRoZSBjYWxsIG9mIHdoaWNoIHRoZXknZCBwcmVmZXIuCj4+ID4gPgo+PiA+Cj4+ID4gQ2hy
aXN0b3BoZXIgY291bGQgeW91IHRyeSAiUk9DSyBQaSA0IiBhbmQgIlJPQ0sgUGkgNCsiIHdpdGgK
Pj4gPiAiZW5hYmxlLXN0cm9iZS1wdWxsZG93biIgaW5zdGVhZCBvZiBkaXNhYmxpbmcgSFM0MDAg
YXMgeW91IGRpZCBpbiBKdWx5Cj4+ID4gMjAyMz8KPj4gPgo+PiAKPj4gd2l0aCB0aGUgZm9sbG93
aW5nIGFwcGxpZWQsIHRoZSBFTU1DIHJlbGF0ZWQgZXJyb3JzIGFyZSBnb25lLiBkbWVzZyAKPj4g
b25seQo+PiBzaG93cyAiUHVyZ2luZyAuLi4gYnl0ZXMiIGR1cmluZyBteSB0ZXN0czoKPj4gCj4+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrLXBp
LTQuZHRzaQo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2stcGkt
NC5kdHNpCj4+IGluZGV4IGYyMjc5YWE2Y2E5ZS4uYWUwZmI4N2UxYThiIDEwMDY0NAo+PiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrLXBpLTQuZHRzaQo+PiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrLXBpLTQuZHRzaQo+
PiBAQCAtNjQ3LDggKzY0NywxMCBAQCAmc2FyYWRjIHsKPj4gwqAmc2RoY2kgewo+PiDCoMKgwqDC
oMKgwqDCoCBtYXgtZnJlcXVlbmN5ID0gPDE1MDAwMDAwMD47Cj4+IMKgwqDCoMKgwqDCoMKgIGJ1
cy13aWR0aCA9IDw4PjsKPj4gLcKgwqDCoMKgwqDCoCBtbWMtaHMyMDAtMV84djsKPj4gK8KgwqDC
oMKgwqDCoCBtbWMtaHM0MDAtMV84djsKPj4gK8KgwqDCoMKgwqDCoCBtbWMtaHM0MDAtZW5oYW5j
ZWQtc3Ryb2JlOwo+PiDCoMKgwqDCoMKgwqDCoCBub24tcmVtb3ZhYmxlOwo+PiArwqDCoMKgwqDC
oMKgIHJvY2tjaGlwLGVuYWJsZS1zdHJvYmUtcHVsbGRvd247Cj4+IMKgwqDCoMKgwqDCoMKgIHN0
YXR1cyA9ICJva2F5IjsKPj4gwqB9Owo+PiAKPj4gRm9yIHRlc3RpbmcgSSByYW4gZGQgdGhyZWUg
dGltZXMgaW4gYSByb3c6Cj4+IAo+PiBkZCBpZj0vZGV2L3plcm8gb2Y9Li96ZXJvLmJpbiBicz0x
TSBjb3VudD01MDAwCj4+IAo+PiBJIHRlc3RlZCB0aGlzIG9uIGJvdGggYSBSb2NrIDRTRSBib2Fy
ZCBhbmQgYSBSb2NrIFBpIDRCKyBib2FyZCB3aXRoIAo+PiB0aGUKPj4gc2FtZSByZXN1bHRzLgo+
IAo+IEp1c3QgZm9yIHRoZSByZWNvcmQsIGFsbCBSb2NrIDQgYm9hcmQgc2NoZW1hdGljcyBoYXZl
IG5vIGV4dGVybmFsIAo+IHN0cm9iZQo+IHB1bGxkb3duIHJlc2lzdG9yIG9uIHRoZSBib2FyZCwg
c28gd2Ugc2hvdWxkIGJlIGdvb2QgdG8gZW5hYmxlIHRoaXMuCj4gCj4gSSB3b25kZXIgd2hhdCBv
dGhlciBib2FyZHMgdGhpcyBjb3VsZCBiZSBlbmFibGVkIGZvciA/Cj4gCj4gSXQgc2VlbWVkIHRv
IGJlIHRoZSBjYXNlIG9uIHNvbWUgZU1NQyBpdCB3b3VsZCB3b3JrLCBvdGhlcnMgaXQgCj4gd291
bGRuJ3QuCj4gCj4gSSBoYXZlbid0IHlldCB0ZXN0ZWQgdGhlIGFib3ZlIGRpZmYgaGVyZSBhcyB5
ZXQsIGJ1dCBJIGNhbiBkbyB0aGF0IHRoaXMgCj4gd2Vlawo+IG9uIG11bHRpcGxlIGJvYXJkcyAm
IGVNTUMgY29tYm9zLgo+IAo+IFRoZSBkaWZmIGFib3ZlIGlzIGFsc28gbWlzc2luZyBhIGZpeGVz
IHRhZyAoYW5kIGFsc28gYmUgZml4ZWQgZm9yIAo+IHJrMzM5OS1yb2NrLQo+IDRjLXBsdXMuZHRz
KS4KCldoZW4gaXQgY29tZXMgdG8gSFM0MDAgc3VwcG9ydCBvbiB0aGUgUm9ja1BybzY0IGFuZCB0
aGUgUGluZWJvb2sgUHJvLAp0aGV5J3JlIHVuZm9ydHVuYXRlbHkgbWlzd2lyZWQgaW4gYSBob3Bl
bGVzcyB3YXksIGNhdXNpbmcgdGhlIERBVEEKU1RST0JFIHNpZ25hbCBmcm9tIHRoZSBlTU1DIGNo
aXAgKGkuZS4gdGhlIGVNTUMgbW9kdWxlKSBub3QgdG8gZXZlbgpyZWFjaCB0aGUgcmlnaHQgYmFs
bCBvbiB0aGUgUkszMzk5IFNvQy4KCkhlcmUgYXJlIGEgZmV3IHNjcmVlbnNob3RzIGZyb20gdGhl
IHNjaGVtYXRpY3MgdGhhdCBpbGx1c3RyYXRlIHRoaXMKaXNzdWUgKHRoZSBmaXJzdCBvbmUgaXMg
ZnJvbSB0aGUgZU1NQyBtb2R1bGUgc2NoZW1hdGljLCB0aGUgcmVtYWluaW5nCnR3byBhcmUgZnJv
bSB0aGUgUm9ja1BybzY0IHNjaGVtYXRpYywgd2hpY2ggYXJlIHByZXR0eSBtdWNoIGV4YWN0bHkK
dGhlIHNhbWUgaW4gdGhlIFBpbmVib29rIFBybyBzY2hlbWF0aWMpOgoKLSBodHRwczovL2kuaW1n
dXIuY29tL01xRDdyY0cucG5nCi0gaHR0cHM6Ly9pLmltZ3VyLmNvbS9ocmxRQmNrLnBuZwotIGh0
dHBzOi8vaS5pbWd1ci5jb20vbXRZdmM5cy5wbmcKClRoZXJlIGhhdmUgYmVlbiBzb21lIFBpbmU2
NCBjb21tdW5pdHkgYXR0ZW1wdHMgdG8gaGF2ZSB0aGlzIGZpeGVkIGluCm5ldyBSb2NrUHJvNjQg
YW5kIFBpbmVib29rIFBybyBoYXJkd2FyZSByZXZpc2lvbnMsIGJ1dCBzdWNoIGF0dGVtcHRzCnVu
Zm9ydHVuYXRlbHkgZmFpbGVkLiA6LwoKVGh1cywgd2UnbGwgdW5mb3J0dW5hdGVseSBoYXZlIHRv
IGRlYWwgd2l0aCB0aGUgd2hvbGUgdGhpbmcgb24gdGhlCmJvYXJkIGxldmVsLCBpbnN0ZWFkIG9m
IG1ha2luZyBjaGFuZ2VzIG9uIHRoZSBTb0MgbGV2ZWwuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

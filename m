Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8887FCFD641
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 14:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0qziyIhNtEnEdXSWTFOG4RNa7QWDiyvgWorPFgXe10=; b=fb0TJKOb9tY8bK
	GABQuglnmdWVZssjeZXr0SbX3nHXxJqxllqo7U3gkd7qoaYyniGITh+ZJGd4a3Xanob1rIE0zcssR
	xUVPZxd+Anq+tll7KdoHAT/lRCQHlA80APx6MNlAgqRYcc3Rru+pXTFMa3TA1OqDbOrJnjWRTn1iW
	4tQR17TZIuxX4W5UPkoIPGPwg1cqrjjbHfr+S02Z8iXyHphU+5+z7x8x0zh02ajul4jwury8xipcu
	deCjeixJNE2JxXnwVHEui4xTazZ8yNb8tmPObN9EWWJjyyedg+kQFTVmkgJIukLOk43u/cpFgSHSS
	5nB1EYkWEdaT0cxWro5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdUwT-0000000F8Lo-1Ca3;
	Wed, 07 Jan 2026 14:55:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdUwP-0000000F8LG-0BD9;
	Wed, 07 Jan 2026 14:55:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=hcBGP+YEL31N0blv4+v2NuEIpQB28RQ0vx0uWq2aRTo=; b=Lom2AXd9dsigseGn1s7xGCiVIv
	/EKODcuzWY/SjvFU0VEexo4xSmkY3YpL0HexQ+CmXrKIj2FBvXUERsSewPX8Dkc9eOfezvxMjo4eP
	E0iaq9ntdXmolmGytsP1JO0eUXm+c1N3m+ukKzzpN2HkDMZn3+85miVMd1YWGx0qeD53/SF1TiRwd
	UE+PXSFjn03XEOJV46iM7T7gXDmzTpyYs+vCtw6/6RI0Tt7Ld8fse94tNPlCrEU5UpYIhPS+8j5XZ
	yg7EyF15l1tC9Ys9ftCUaWnWCeWqt1tb8J6QPaS4YRhFr/nAD8WouPjrqTFxLr1Pa/caNp6mD7hFT
	zWRAP3zQ==;
Received: from i53875b57.versanet.de ([83.135.91.87] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdUvw-001OJ9-Fm; Wed, 07 Jan 2026 15:54:49 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chaoyi Chen <kernel@airkyi.com>, Alexey Charkov <alchark@gmail.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Wed, 07 Jan 2026 15:54:47 +0100
Message-ID: <1956308.1xdlsreqCQ@diego>
In-Reply-To: <daa61083-ddc6-4454-9bea-d4ea2a4a9d91@rock-chips.com>
References: <20260107070322.323-1-kernel@airkyi.com>
 <881548f1-7dd9-40bb-9267-e5a03fb97820@rock-chips.com>
 <daa61083-ddc6-4454-9bea-d4ea2a4a9d91@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_065517_127571_CF5A4E37 
X-CRM114-Status: GOOD (  22.44  )
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

QW0gTWl0dHdvY2gsIDcuIEphbnVhciAyMDI2LCAxMTowNDo0MiBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIENoYW95aSBDaGVuOgo+IE9uIDEvNy8yMDI2IDU6NTcgUE0sIENo
YW95aSBDaGVuIHdyb3RlOgo+ID4gT24gMS83LzIwMjYgNDoyMSBQTSwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gPj4gQW0gTWl0dHdvY2gsIDcuIEphbnVhciAyMDI2LCAwODo1NjowNCBNaXR0ZWxl
dXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEFsZXhleSBDaGFya292Ogo+ID4+PiBPbiBX
ZWQsIEphbiA3LCAyMDI2IGF0IDExOjA04oCvQU0gQ2hhb3lpIENoZW4gPGtlcm5lbEBhaXJreWku
Y29tPiB3cm90ZToKClsuLi5dCgo+ID4+Pj4gKyAgICAgICB2Y2MzdjNfaHVicmVzZXQ6IHZjYzN2
My1odWJyZXNldCB7Cj4gPj4+PiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0
b3ItZml4ZWQiOwo+ID4+Pj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzN2
M19odWJyZXNldCI7Cj4gPj4+PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247Cj4g
Pj4+PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+Pj4KPiA+Pj4gSWYg
dGhpcyByZWd1bGF0b3Igc3VwcGxpZXMgYSBzb2xkZXJlZC1vbiBkaXNjcmV0ZSBodWIgYW5kIGlz
IHJlcXVpcmVkCj4gPj4+IHRvIHBvd2VyIGl0IHVwLCB3b24ndCBpdCBiZSBiZXR0ZXIgdG8gZGVz
Y3JpYmUgdGhlIGh1YiBpbiB0aGUgZGV2aWNlCj4gPj4+IHRyZWUgKHNlZSBiaW5kaW5nIGF0IFsx
XSksIG1ha2UgdGhlIHJlZ3VsYXRvciBpdHMgc3VwcGx5LCBhbmQgcGVyaGFwcwo+ID4+PiBkcm9w
IHRoZSAicmVndWxhdG9yLWJvb3Qtb24vcmVndWxhdG9yLWFsd2F5cy1vbiIgYW5ub3RhdGlvbiBo
ZXJlLAo+ID4+PiBsZXR0aW5nIHRoZSByZWd1bGF0b3IgY29yZSBkZWFsIHdpdGggaXRzIGVuYWJs
aW5nIGluc3RlYWQ/Cj4gPj4+Cj4gPj4+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMv
bGludXgvYmxvYi9tYXN0ZXIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi91
c2ItZGV2aWNlLnlhbWwKPiA+Pgo+ID4+IFllcCwgaXQgd291bGQgYmUgbmljZXIgdG8gaXQgdGhp
cyB3YXkuCj4gPj4gQSBsaXZlIGV4YW1wbGUgY2FuIGJlIGZvdW5kIGluIHRoZSBSb2NrIDUgSVRY
IFsyXQo+ID4+Cj4gPj4gWzJdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LXJvY2stNS1pdHguZHRzI24xMjY2Cj4gPiAKPiA+IFRoYW5rIHlvdSBmb3Ig
dGhlIGdyZWF0IGV4YW1wbGUuIEJUVyB0aGUgaHViIHVzZWQgaGVyZSBpcyBDSDM0NC4gSXQKPiA+
IGxvb2tzIGxpa2Ugd2UgbmVlZCB0byBhZGQgYSBuZXcgYmluZGluZyA6KQo+ID4KPiAKPiBUeXBv
Li4uIEl0IGlzIFdDSCBDSDMzNC4KCkkgZG9uJ3QgdGhpbmsgeW91IG5lZWQgYSBuZXcgY29tcGF0
aWJsZSBhdCBhbGwgOi0pIAoKV2hlbiB5b3UgbG9vayBhdCB0aGUgdXNiLWRldmljZS55YW1sIGxp
bmtlZCBhYm92ZSB5b3UnbGwgdGhlIGNvbXBhdGlibGUKYWxyZWFkeSBkZWZpbmVkIGFzIGEgcGF0
dGVybjoKCiAgY29tcGF0aWJsZToKICAgIGNvbnRhaW5zOgogICAgICBwYXR0ZXJuOiAiXnVzYlsw
LTlhLWZdezEsNH0sWzAtOWEtZl17MSw0fSQiCiAgICBkZXNjcmlwdGlvbjogRGV2aWNlIG5vZGVz
IG9yIGNvbWJpbmVkIG5vZGVzLgogICAgICAidXNiVklELFBJRCIsIHdoZXJlIFZJRCBpcyB0aGUg
dmVuZG9yIGlkIGFuZCBQSUQgdGhlIHByb2R1Y3QgaWQuCiAgICAgIFRoZSB0ZXh0dWFsIHJlcHJl
c2VudGF0aW9uIG9mIFZJRCBhbmQgUElEIHNoYWxsIGJlIGluIGxvd2VyIGNhc2UKICAgICAgaGV4
YWRlY2ltYWwgd2l0aCBsZWFkaW5nIHplcm9lcyBzdXBwcmVzc2VkLiBUaGUgb3RoZXIgY29tcGF0
aWJsZQogICAgICBzdHJpbmdzIGZyb20gdGhlIGFib3ZlIHN0YW5kYXJkIGJpbmRpbmcgY291bGQg
YWxzbyBiZSB1c2VkLAogICAgICBidXQgYSBkZXZpY2UgYWRoZXJpbmcgdG8gdGhpcyBiaW5kaW5n
IG1heSBsZWF2ZSBvdXQgYWxsIGV4Y2VwdAogICAgICBmb3IgInVzYlZJRCxQSUQiLgoKV2hpY2gg
d2lsbCBtYXRjaCBldmVyeXRoaW5nIFZJRCArIFBJRCBjb21iaW5hdGlvbiwgc28geW91IGp1c3Qg
bmVlZAp0byB1c2UgdGhlIFZJRCtQSUQgZnJvbSB5b3VyIGh1Yi4KCgpIZWlrbwoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

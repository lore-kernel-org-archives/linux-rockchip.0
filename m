Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63949E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 14:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IUxpEB7UjSxuYbWSrHZwdvEHK5SZa2x6+H7rENJ088=; b=eNoH2+9vlQmUQS
	2RTkKXubrG1NzdlayDYjqVhdnv74hB15tKQpJXFY+tBystKBd+ylP5P/FgCpx1ESetv/kojvgGgsR
	1rly0TdTCasdHbuRsmhHZjBY2Lz5h3WUxlpgk1EjsDnwLHzZ3SzxkO0o9h/CpF8/we7OLh325pIpX
	euitbr8zPmCexoHDNGzhNZOTWr+TNk1v6FmV6jdltlQWAI+7GUxqZZ3tQGVkGBpnV2HeFhKXH8Kzg
	hHWXN/Da/HU4xVdHo1ht5y8SlB5jrNzDWCbcmvXXCqs2YkBJQTvAJSysmjuVqSsfI54uiHZBTnwH7
	Jtr0VaU57PGZnEKQF90w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNYVP-0000000DjwX-2QFp;
	Tue, 17 Dec 2024 14:24:59 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNXRG-0000000DXKt-1zS4;
	Tue, 17 Dec 2024 13:16:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 63E69A412F3;
	Tue, 17 Dec 2024 13:14:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6638C4CED3;
	Tue, 17 Dec 2024 13:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734441396;
	bh=2ZJ0ETzEGovT3C+Lhgx2MC2gLEcVqJCSkAbyfxj/Rj0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t11yFRtDXZXYf7U/turp3S/eLXdXyGIa3s7eAy2myGUTN7Gzb+yZYbXAhGF12FSrf
	 4zwItyNXBM6iVo1U73e8rgNsrnM0uJL9Plf3F1tJQ7ADUjAbp+TV0CTe1P1BnNen5g
	 Pceba5qP/FIbztkrQ5ar85yQI9eKTNiS+zjipfpUK6iBwtEmex91RIMbFfg1HJB69X
	 ejQgLxNUuzKIJlQYpgv5iTm7azYq1z2UpI2OHWPe3aXgp40LluKoUzZH1AkFS2ttNw
	 W7CJ09HlujP08DuullW2BgsV72tW4rVuu+DzJ87KXvfDwkDS3RTRISYKZkM5UEF2x1
	 ssrvm9mZ517sw==
Date: Tue, 17 Dec 2024 13:16:29 +0000
From: Lee Jones <lee@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: jikos@kernel.org, jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
	srinivas.pandruvada@linux.intel.com, bentiss@kernel.org,
	dmitry.torokhov@gmail.com, pavel@ucw.cz, ukleinek@debian.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-leds@vger.kernel.org
Subject: [GIT PULL] Immutable branch between MFD, HID, HWMON, Input and LEDs
 due for the v6.14 merge window
Message-ID: <20241217131629.GJ2418536@google.com>
References: <20241107114712.538976-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241107114712.538976-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_051638_637967_E37E9DE8 
X-CRM114-Status: GOOD (  12.76  )
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

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDQwMzg0Yzg0MGVhMTk0
NGQ3YzVhMzkyZTg5NzVlZDA4OGVjZjBiMzc6CgogIExpbnV4IDYuMTMtcmMxICgyMDI0LTEyLTAx
IDE0OjI4OjU2IC0wODAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6
CgogIHNzaDovL2dpdEBnaXRvbGl0ZS5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC9sZWUvbWZkLmdpdCB0YWdzL2liLW1mZC1oaWQtaHdtb24taW5wdXQtbGVkcy12Ni4xNAoKZm9y
IHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDk4NTVjYWY1ZDRlYjFkOGI4YmJhNjBiZTI1NjE4
NmVhOGUwZjkwN2M6CgogIGh3bW9uOiBhZGQgZHJpdmVyIGZvciB0aGUgaHdtb24gcGFydHMgb2Yg
cW5hcC1tY3UgZGV2aWNlcyAoMjAyNC0xMi0xNyAxMzoxNDo0OCArMDAwMCkKCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KSW1t
dXRhYmxlIGJyYW5jaCBiZXR3ZWVuIE1GRCwgSElELCBIV01PTiwgSW5wdXQgYW5kIExFRHMgZHVl
IGZvciB0aGUgdjYuMTQgbWVyZ2Ugd2luZG93CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkhlaWtvIFN0dWVibmVyICg3KToK
ICAgICAgSElEOiBoaWQtc2Vuc29yLWh1YjogZG9uJ3QgdXNlIHN0YWxlIHBsYXRmb3JtLWRhdGEg
b24gcmVtb3ZlCiAgICAgIG1mZDogY29yZTogTWFrZSBwbGF0Zm9ybV9kYXRhIHBvaW50ZXIgY29u
c3QgaW4gc3RydWN0IG1mZF9jZWxsCiAgICAgIGR0LWJpbmRpbmdzOiBtZmQ6IEFkZCBiaW5kaW5n
IGZvciBxbmFwLHRzNDMzLW1jdSBkZXZpY2VzCiAgICAgIG1mZDogQWRkIGJhc2UgZHJpdmVyIGZv
ciBxbmFwLW1jdSBkZXZpY2VzCiAgICAgIGxlZHM6IEFkZCBkcml2ZXIgZm9yIExFRHMgZnJvbSBx
bmFwLW1jdSBkZXZpY2VzCiAgICAgIElucHV0OiBhZGQgZHJpdmVyIGZvciB0aGUgaW5wdXQgcGFy
dCBvZiBxbmFwLW1jdSBkZXZpY2VzCiAgICAgIGh3bW9uOiBhZGQgZHJpdmVyIGZvciB0aGUgaHdt
b24gcGFydHMgb2YgcW5hcC1tY3UgZGV2aWNlcwoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21m
ZC9xbmFwLHRzNDMzLW1jdS55YW1sICAgIHwgIDQyICsrKwogRG9jdW1lbnRhdGlvbi9od21vbi9p
bmRleC5yc3QgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwogRG9jdW1lbnRhdGlvbi9od21v
bi9xbmFwLW1jdS1od21vbi5yc3QgICAgICAgICAgICAgfCAgMjcgKysKIE1BSU5UQUlORVJTICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA5ICsKIGRyaXZlcnMvaGlk
L2hpZC1zZW5zb3ItaHViLmMgICAgICAgICAgICAgICAgICAgICAgIHwgIDIxICstCiBkcml2ZXJz
L2h3bW9uL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxMiArCiBkcml2
ZXJzL2h3bW9uL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBk
cml2ZXJzL2h3bW9uL3FuYXAtbWN1LWh3bW9uLmMgICAgICAgICAgICAgICAgICAgICB8IDM2NCAr
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvaW5wdXQvbWlzYy9LY29uZmlnICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDEyICsKIGRyaXZlcnMvaW5wdXQvbWlzYy9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvaW5wdXQvbWlzYy9xbmFwLW1jdS1p
bnB1dC5jICAgICAgICAgICAgICAgIHwgMTUzICsrKysrKysrKwogZHJpdmVycy9sZWRzL0tjb25m
aWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTEgKwogZHJpdmVycy9sZWRzL01h
a2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9sZWRz
L2xlZHMtcW5hcC1tY3UuYyAgICAgICAgICAgICAgICAgICAgICAgfCAyMjcgKysrKysrKysrKysr
KwogZHJpdmVycy9tZmQvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
MTMgKwogZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgIDIgKwogZHJpdmVycy9tZmQvcW5hcC1tY3UuYyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAzMzggKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9saW51eC9tZmQvY29yZS5oICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIGluY2x1ZGUvbGludXgvbWZkL3FuYXAt
bWN1LmggICAgICAgICAgICAgICAgICAgICAgIHwgIDI2ICsrCiAxOSBmaWxlcyBjaGFuZ2VkLCAx
MjU1IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9xbmFwLHRzNDMzLW1jdS55YW1sCiBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9od21vbi9xbmFwLW1jdS1od21vbi5yc3QK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2h3bW9uL3FuYXAtbWN1LWh3bW9uLmMKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2lucHV0L21pc2MvcW5hcC1tY3UtaW5wdXQuYwogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbGVkcy9sZWRzLXFuYXAtbWN1LmMKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL21mZC9xbmFwLW1jdS5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9s
aW51eC9tZmQvcW5hcC1tY3UuaAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 052D9C47DDF
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 14:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVuMdPkSR9YRv6D/eTqDAoKlLPHuViqJhtXDXS+NGMY=; b=MZbDRfGhhqsCAJ
	ZJMEiCAEiSLhUlXhHjC3EqvvRXUeem1Fn69XmA0/1CBlBjb4cXQ6MFRX25TlNbObn7WLaWrQBC3SK
	jyMS3ecMQk1AP1CcRMmWK3zFEbK9xThvrfj4mR1Sk8Goe9zG3LmBInQswU79hb9VvGFR82RILkC6L
	+xBJ5tbwpyaaB0G43+XT11kB3rV1EHxcprZFI2puze/RUENPSF+RhH9lHKJuVFo3uCqJMkPgeFt59
	bE8uKHDWItMLLWr+/u8ipceZGhO4NLBsFCKEgJgR8pyqDT7etX8Th4vfDdZRPQQyxhFiSR0S9E2Qn
	JN9jomqIRh9/g0y+Su8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVBVx-00000003s4Q-3k5d;
	Wed, 31 Jan 2024 14:24:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVBVv-00000003s27-17Hf;
	Wed, 31 Jan 2024 14:24:32 +0000
Received: from i53875ab1.versanet.de ([83.135.90.177] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rVBVh-0005Ja-Ds; Wed, 31 Jan 2024 15:24:17 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>, Andy Yan <andyshrk@163.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: rename vcc5v0_usb30_host regulator for
 Cool Pi CM5 EVB
Date: Wed, 31 Jan 2024 15:24:16 +0100
Message-ID: <2179538.KUTt5R2Mg1@diego>
In-Reply-To: <1e98352e.2dd2.18d5f780043.Coremail.andyshrk@163.com>
References: <20240127092034.887085-1-andyshrk@163.com>
 <00ed78ea06aecde202a11a23c80f80af@manjaro.org>
 <1e98352e.2dd2.18d5f780043.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_062431_335311_ECE5242A 
X-CRM114-Status: GOOD (  19.48  )
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

QW0gTWl0dHdvY2gsIDMxLiBKYW51YXIgMjAyNCwgMTM6MjE6NTYgQ0VUIHNjaHJpZWIgQW5keSBZ
YW46Cj4gCj4gSGkgSGVpa2/vvJoKPiAKPiDlnKggMjAyNC0wMS0yNyAyMTowOTo0Nu+8jCJEcmFn
YW4gU2ltaWMiIDxkc2ltaWNAbWFuamFyby5vcmc+IOWGmemBk++8mgo+ID5PbiAyMDI0LTAxLTI3
IDEzOjE1LCBBbmR5IFlhbiB3cm90ZToKPiA+PiBBdCAyMDI0LTAxLTI3IDE4OjM2OjQwLCAiSGVp
a28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4+PiBBbSBTYW1zdGFnLCAy
Ny4gSmFudWFyIDIwMjQsIDEwOjIwOjMzIENFVCBzY2hyaWViIEFuZHkgWWFuOgo+ID4+Pj4gQWNj
b3JkaW5nIHRvIHRoZSBzY2hlbWF0aWMsIHRoaXMgcmVndWxhdG9yIGlzIHVzZWQgYm90aCBmb3Ig
VVNCMzAgYW5kCj4gPj4+PiBVU0IyMCwgc28gZ2l2ZSBpdCBhIG1vcmUgYXBwcm9wcmlhdGUgbmFt
ZS4KPiA+Pj4gCj4gPj4+IEkgZG9uJ3QgaGF2ZSB0aGUgc2NoZW1hdGljcywgc28gSSdsbCBuZWVk
IHlvdSB0byBhbnN3ZXIgdGhpcywgYnV0IHdoYXQKPiA+Pj4gaXMgdGhlIHJlZ3VsYXRvciBjYWxs
ZWQgX2luXyB0aGUgc2NoZW1hdGljcz8KPiA+PiAKPiA+PiBUaGVyZSBhcmUgdHdvIHJlZ3VsYXRv
cnMgY2FsbGVkIFZDQzUwX1VTQl9IT1NUMSBhbmQgVkNDNTBfVVNCX0hPU1QyLAo+ID4+IGFuZCB0
aGV5IGFyZSBib3RoIGNvbnRyb2xsZWQgYnkgR1BJTzFfRDUKPiA+PiBUaGV5IGJvdGggZm9yIHR3
byB1c2IgMi4wIGhvc3RzLCAgbm90IHVzYiAzMCwgdGhlIHNjaGVtYXRpY3MgbWFrZQo+ID4+IG1l
IGEgYml0IGNvbmZ1c2VkLgo+ID4KPiA+SW4gdGhhdCBjYXNlLCBJJ2Qgc2F5IHRoYXQgcmVuYW1p
bmcgdGhlIHJlZ3VsYXRvciB0byB2Y2M1djBfdXNiX2hvc3QgaXMKPiA+ZmluZSwgYnV0IHRoZXJl
IHNob3VsZCBhbHNvIGJlIGEgY29tbWVudCBpbiB0aGUgYm9hcmQgZHRzIGZpbGUgdGhhdCBpdCdz
Cj4gPmFjdHVhbGx5IHR3byBzZXBhcmF0ZSByZWd1bGF0b3JzLgo+IAo+IEhvdyBkbyB5b3UgZmVl
bCBhYm91dCB0aGlzIO+8nyBPciBzb21lIG90aGVyIHN0eWxlIGxpa2XvvJoKPiB2Y2M1djBfdXNi
X2hvc3QxOiB2Y2M1djBfdXNiX2hvc3Qy77yadmNjNXYwLXVzYi1ob3N0LXJlZ3VsYXRvciB7CgpJ
IHRoaW5rIHdlJ3JlIHVzaW5nIHN1Y2ggYSBzY2hlbWUgaW4gc29tZSBwbGFjZXMgYWxyZWFkeSwg
YW5kCnllcyBJIHJlYWxseSBsaWtlIGdvaW5nIHRoaXMgd2F5LiBTbyB0aGF0IHRoZSBwaGFuZGxl
cyBmb2xsb3cgdGhlCnNjaGVtYXRpYyBuYW1lcyBhbmQgd2UgY2FuIHN0aWxsIGdyZXAgZm9yIHRo
aW5ncy4KCgpIZWlrbwoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK

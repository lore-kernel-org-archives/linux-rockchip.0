Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 548CCC52D7B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 16:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NkbDXqSZfKHN1KagkqkeeLIxg5zipNQQD5O4NFzd8Wg=; b=jKtCdrAuBjNVseB51+pqHSW37o
	2399ZzkZiKtkfmK1InZ+UQ7GW5bpjQWfk2Osvgwb6JgLWrT3dXoMtkRHFenPGVgx9+WHVi0pLqTfb
	yKTTNpSWXLC4LWO7HjKj5NlJlqvc+id7klvoPe66GNvtnpGPfbpcpQ7UdgLI7ziXWnd8EHfD0DCoX
	GCxKWYqkfdxcbS9lElaxCJUYwvjWhgxDR9/V+yBB+OXmXDPNnJdw6wQKfRDzUU7LQJfp93nxog2Mk
	ZJYuZbf/KXdwuDpgaECbJEsdPp8+wSkPS+RDBUQ7CWJCsJ1QizQA1GPRJVINbP2WJKMVV5WqX+dDC
	L/zqzbmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6FW-00000008zC9-1nwH;
	Thu, 08 Aug 2024 16:44:26 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Ew-00000008z5C-13s9;
	Thu, 08 Aug 2024 16:43:52 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723135425;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XKlIGGPj13gK8yKpbp3U+LvRWbJSc5NnOp+pssl/vnc=;
	b=eiGqp1bDO1iRcXfgByn26YpBoXRBjhUz/evQL5MbuhNC3NEPvW6e2awJdeHjD6c9Cmcli5
	T22v+igIm4LWS/Z0vzPi7qQpr+zOODRAI8FQzeX/VoTuJpX2TorePmcpkvVClT+T1zTLXt
	Jmc9oz666xX/v+8UVdfNgAJkVoTgFP9yEL3zSt3idBaho/C0gzOADiV0lnv5d4YS6qJF3i
	R5VJ1CeLWlY07jRDRLe5ypFjhOCmmr9lU5SmK5BOCiFtD9P4kCHHANWYBs7FuGELQVbOJj
	Li4dJGA5VMfv3ZUNx6EFcmNHLnGeR6Sm45FR1VFnGq/PiBD8a9z2uW+wfD4WTw==
Date: Thu, 08 Aug 2024 18:43:42 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Detlev Casanova <detlev.casanova@collabora.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Geert
 Uytterhoeven <geert+renesas@glider.be>, "Rafael J . Wysocki"
 <rafael@kernel.org>, Finley Xiao <finley.xiao@rock-chips.com>, Jagan Teki
 <jagan@edgeble.ai>, Elaine Zhang <zhangqing@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: Add power-domain header for RK3576 SoCs
In-Reply-To: <10908017.3WhfQktd6Z@diego>
References: <20240802151647.294307-1-detlev.casanova@collabora.com>
 <e04258dc-07c4-45c7-90d4-bc1ed9eb100b@kernel.org>
 <3310992.44csPzL39Z@trenzalore> <10908017.3WhfQktd6Z@diego>
Message-ID: <0c66dbf97fc5a5adc3831b1ed01e1188@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_094350_773648_5008DD8A 
X-CRM114-Status: GOOD (  17.21  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTA4LTA4IDA5OjU0LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBEaWVuc3RhZywgNi4gQXVndXN0IDIwMjQsIDE4OjM0OjQxIENFU1Qgc2NocmllYiBEZXRs
ZXYgQ2FzYW5vdmE6Cj4+IE9uIFN1bmRheSwgNCBBdWd1c3QgMjAyNCAwNTo1NjozOSBFRFQgS3J6
eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gPiBPbiAwMi8wOC8yMDI0IDE3OjE0LCBEZXRsZXYg
Q2FzYW5vdmEgd3JvdGU6Cj4+ID4gPiBGcm9tOiBGaW5sZXkgWGlhbyA8ZmlubGV5LnhpYW9Acm9j
ay1jaGlwcy5jb20+Cj4+ID4gPgo+PiA+ID4gRGVmaW5lIHBvd2VyIGRvbWFpbiBJRHMgYXMgZGVz
Y3JpYmVkIGluIHRoZSBUUk0uCj4+ID4KPj4gPiBQbGVhc2UgdXNlIHN1YmplY3QgcHJlZml4ZXMg
bWF0Y2hpbmcgdGhlIHN1YnN5c3RlbS4gWW91IGNhbiBnZXQgdGhlbSBmb3IKPj4gPiBleGFtcGxl
IHdpdGggYGdpdCBsb2cgLS1vbmVsaW5lIC0tIERJUkVDVE9SWV9PUl9GSUxFYCBvbiB0aGUgZGly
ZWN0b3J5Cj4+ID4geW91ciBwYXRjaCBpcyB0b3VjaGluZy4gRm9yIGJpbmRpbmdzLCB0aGUgcHJl
ZmVycmVkIHN1YmplY3RzIGFyZQo+PiA+IGV4cGxhaW5lZCBoZXJlOgo+PiA+IGh0dHBzOi8vd3d3
Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L2RldmljZXRyZWUvYmluZGluZ3Mvc3VibWl0dGlu
Zy1wYXRjaGUKPj4gPiBzLmh0bWwjaS1mb3ItcGF0Y2gtc3VibWl0dGVycwo+PiA+ID4gU2lnbmVk
LW9mZi1ieTogRmlubGV5IFhpYW8gPGZpbmxleS54aWFvQHJvY2stY2hpcHMuY29tPgo+PiA+ID4g
W3Jld29yZF0KPj4gPiA+IFNpZ25lZC1vZmYtYnk6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNh
c2Fub3ZhQGNvbGxhYm9yYS5jb20+Cj4+ID4gPiAtLS0KPj4gPiA+Cj4+ID4gPiAgaW5jbHVkZS9k
dC1iaW5kaW5ncy9wb3dlci9yazM1NzYtcG93ZXIuaCB8IDMwICsrKysrKysrKysrKysrKysrKysr
KysrKwo+PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspCj4+ID4gPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvcG93ZXIvcmszNTc2LXBvd2VyLmgK
Pj4gPgo+PiA+IFRoaXMgaXMgcGFydCBvZiBiaW5kaW5ncy4KPj4gPgo+PiA+ID4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvcG93ZXIvcmszNTc2LXBvd2VyLmgKPj4gPiA+IGIvaW5j
bHVkZS9kdC1iaW5kaW5ncy9wb3dlci9yazM1NzYtcG93ZXIuaAo+PiA+IE1pc3NpbmcgdmVuZG9y
IHByZWZpeC4gVGhpcyBzaG91bGQgYmUgbmFtZWQgYWZ0ZXIgY29tcGF0aWJsZS4KPj4gCj4+IExv
b2tzIGxpa2UgYWxsIG90aGVyIHJvY2tjaGlwIHBvd2VyIGJpbmRpbmdzIHVzZSB0aGUgCj4+IGlu
Y2x1ZGUvZHQtYmluZGluZ3MvCj4+IHBvd2VyL3JrWFhYWC5oIGZvcm1hdC4gU2hvdWxkIEkga2Vl
cCB0aGF0IHdheSA/Cj4gCj4gdGhlcmUgaXMgYWxzbyByb2NrY2hpcCxydjExMjYtcG93ZXIuaCAs
IHNvIHBsZWFzZSBmb2xsb3cgS3J6eXN6dG9mJ3MKPiBzdWdnZXN0aW9uLiBPbGRlciBoZWFkZXIg
bmFtaW5ncyBuZWVkIHRvIHN0YXkgdGhlIHNhbWUgb2YgY291cnNlCj4gYnV0IHRoYXQgc2hvdWxk
bid0IGtlZXAgdXMgZnJvbSB1cGRhdGluZyBuYW1pbmcgc2NoZW1lcyB0byBiZXR0ZXIKPiB3b3Jr
IGluIG5ldyBhZGRpdGlvbnMuCgpBY3R1YWxseSwgd2h5IGRvbid0IHdlIHJlbmFtZSB0aGUgb2xk
IGhlYWRlcnMgdG8gZm9sbG93IHRoZSBuZXcgbmFtaW5nIApydWxlcz8KSXMgdGhlcmUgc29tZXRo
aW5nIHByZXZlbnRpbmcgdXMgZnJvbSBkb2luZyB0aGF0LCB3aGljaCBJJ20gbWlzc2luZz8KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

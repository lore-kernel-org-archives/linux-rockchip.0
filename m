Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FB33C87FD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Aug 2025 06:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtZCxzeUaNxTqSSWQ+HQmDNLtLA3r61ql1ZuQp3MoJ4=; b=PVNHvjX07DDe3u
	f6DzIXiIDB20wlteTbSSvHCfomve4PyMLMYtIFXH1L1dTA8n5DRsecU+Xm8UH0ULce3DGUQ3Blhx2
	oDe4xzww5UrP5VEPwg4Y63ZJh/4T4EErUHOD0U/Qoke2ktq3mvS/RWFzOBGn3nxzvQ37SduDwDexJ
	ccZEw/vm5uTd5r2aLdMahiYz78Zub8odherp9eETn2uDSPUxiJkxQflPsOS8SOAqb+OkOrETtL50c
	BzJnvaLV21pGilGbfL7EF+1p/Y+L1SiSS+cgOVvGYuLPJasnsNv60Vcn20iHrJRE3N3ja7SAIa+UK
	gP39wVOD24UZgy+Z6Ucw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulM5o-00000006brU-2Hmf;
	Mon, 11 Aug 2025 06:33:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulM3E-00000006bdv-08vx;
	Mon, 11 Aug 2025 06:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jNzVtAsxtGf0lFnJlcfQ3TByjHHmjVeIgw7TiXHmnEM=; b=08oRKhIb1ajpli+TpTvmpRH+tl
	uEKnt6dZtNTopvuqjd613RK0L1/C0hYvZLIhNJjsKR93y1tgjTSYRQPSp5XUObmHBljtmdjC59nw3
	IN3ZtZb37VTpoI+kgkG2ucskyqnRCxJLr3i23yOwX2vbIymb2SOaAMpt3vDnoWx927okoBLRIXSUc
	CMF0m69rvjfBjrIDPSMgYpT8AK9KOinsArvfGZxqL0qlrED7VdOXHRxnniK15BmfWb9OCUto0h4PM
	jhmvqwZdw+GGuKkk4/hCozET4ujSOKMxXAi4hFT2S2NKAR/XnK9xufGxP78quMKKJsd65E+ots8o+
	EQ1ZgrTw==;
Received: from i53875a0c.versanet.de ([83.135.90.12] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ulM33-0006sA-Nx; Mon, 11 Aug 2025 08:30:21 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: disable display subsystem for Radxa
 E52C
Date: Mon, 11 Aug 2025 08:30:19 +0200
Message-ID: <3125650.687JKscXgg@diego>
In-Reply-To: <20250810100020.445053-1-amadeus@jmu.edu.cn>
References: <20250810100020.445053-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_233032_098241_6E8FD45B 
X-CRM114-Status: GOOD (  15.36  )
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

QW0gU29ubnRhZywgMTAuIEF1Z3VzdCAyMDI1LCAxMjowMDoxOCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIENodWt1biBQYW46Cj4gVGhlIFJhZHhhIEU1MkMgU0JDIGRvIG5v
dCBoYXZlIEhETUkgb3V0cHV0LCBzbyBkaXNhYmxlCj4gdGhlIGRpc3BsYXkgc3Vic3lzdGVtLgo+
IAo+IEZpeGVzOiA5YmU0MTcxMjE5YjYgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIFJhZHhh
IEU1MkMiKQo+IFNpZ25lZC1vZmYtYnk6IENodWt1biBQYW4gPGFtYWRldXNAam11LmVkdS5jbj4K
CldoYXQgYWN0dWFsIHByb2JsZW0gZG9lcyB0aGlzIGZpeD8KCkZvciBleGFtcGxlIHdlIGFsc28g
ZW5hYmxlIG9uLXNvYyBpb21tdXMgYWxsIHRoZSB0aW1lLCBiZWNhdXNlIHRoZXkncmUgb24KdGhl
IHNvYyBhbmQgZG9uJ3QgbmVlZCBib2FyZC1sZXZlbCBwcm9wZXJ0aWVzLgoKVGhlICJkaXNwbGF5
LXN1YnN5c3RlbSIgd2l0aG91dCB1c2VycyBsb29rcyBtb3N0bHkgaW4gdGhlIHNhbWUgc3BvdC4K
ClNvIEkgZG8gZXhwZWN0IGEgZGVzY3JpcHRpb24gb2Ygd2hhdCBwcm9wbGVtIGdldHMgZml4ZWQg
dGhhdCB0aGlzIG5lZWRzCnRvIGJlIGRpc2FibGVkLgoKVGhhbmtzCkhlaWtvCgo+IC0tLQo+ICBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4Mi1yYWR4YS1lNTJjLmR0cyB8IDQgKysr
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTgyLXJhZHhhLWU1MmMuZHRzIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODItcmFkeGEtZTUyYy5kdHMKPiBpbmRleCBlMDRm
MjFkOGM4MzEuLjNiNTE5YmU2ZTFlYSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4Mi1yYWR4YS1lNTJjLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTgyLXJhZHhhLWU1MmMuZHRzCj4gQEAgLTIwNyw2ICsyMDcsMTAgQEAg
JmNwdV9sMyB7Cj4gIAljcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2xpdF9zMD47Cj4gIH07Cj4gIAo+
ICsmZGlzcGxheV9zdWJzeXN0ZW0gewo+ICsJc3RhdHVzID0gImRpc2FibGVkIjsKPiArfTsKPiAr
Cj4gICZpMmMwIHsKPiAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gIAlwaW5jdHJsLTAg
PSA8JmkyYzBtMl94ZmVyPjsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

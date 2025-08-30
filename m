Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F4DCCA0FFD
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:Cc:References:Message-Id
	:Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugDAYOcMlcpHltGPwTbVJbiZr8aS2ZY0G/phHaUYh5s=; b=1gVZoZZdo7/gVG
	yODXP5w8uXsS9+1ncHTDy47m/yZ+k2QymnOlxOOyllwkekR/tnKIbPgHsFVd7B27XcD5aA9Av60ap
	DUoaNvw/OGZVErE+UStpSJmE7P2+VsRzkJArL6nyfUNQ0Yb5jlq1gSGBSUVoqi+Ks6PV0WJ+SViM4
	CpY3RXNIK42uch8+r7Cic2kK4YztZK46vptCRPRUmD3SwCpqgi+WQP2PDBohvOQs5jM15cZhLD866
	/iDNRNPvO9zGKXVQWiu6Xwf8XsK0uteGsHKW7tf5LSjEcBnJKj9W/5zVsZ0b/ZjoEqiMYrdljWDAx
	fqStDRo1SqgTqv1uyw+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usU22-00000008UaM-3SGH;
	Sat, 30 Aug 2025 22:26:46 +0000
Received: from chumsalmon.baetis.net ([209.222.21.150])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usTww-00000008U6R-1N3F;
	Sat, 30 Aug 2025 22:21:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tahomasoft.com;
	s=default; t=1756592489;
	bh=PHHa9DYJXHmkMKGNgwfkJoajblJ2zg1bqfQoS17QsXk=;
	h=From:Subject:Date:References:Cc:In-Reply-To:To:From;
	b=fCHcki9xdG3Dvrq2syz9niM89EurPYsCQfzVB9C4tRpXoHcsQt7GtBKdF9lX2/662
	 D1BJ6upsinoIgPJkDDD1+xQsO4XubDIZilP1wF8bdyRb1RYfT2LLRtOHQYpb5BAdy9
	 by2xmgQcsAgfrSTiT4824AYbdhtk01dB5w8xpRaABkmtZP+6q04CrLpV0IwcdJSGEJ
	 LnBE3b9peOpeN9+DlFfyUpGCSf4HQN/90EykaqxtN8izOmJ9De6pStlw3dGkqOCZW2
	 CfEOjV2AM8mv11At0Ij0pHYzutIbpICOQKmUnomTyL6kv3e2WAQtJJGUV3D/FIRHKi
	 0mJsbcNapKzzg==
Received: from smtpclient.apple (unknown [IPv6:2600:1000:b0ec:e674:574:f959:86e5:7770])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by chumsalmon.baetis.net (Postfix) with ESMTPSA id ED14527E468;
	Sat, 30 Aug 2025 22:21:28 +0000 (UTC)
From: Erik Beck <xunil@tahomasoft.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add HINLINK H68K
Date: Sat, 30 Aug 2025 18:21:18 -0400
Message-Id: <5285B176-5178-4F6F-8FB6-B898AC0EC939@tahomasoft.com>
References: <021c2e76-cbde-4a2e-a165-a61223cdff93@lunn.ch>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <021c2e76-cbde-4a2e-a165-a61223cdff93@lunn.ch>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailer: iPhone Mail (22G100)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_152130_429232_663BA0A9 
X-CRM114-Status: GOOD (  10.64  )
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

Cgo+IE9uIEF1ZyAzMCwgMjAyNSwgYXQgMTc6MzgsIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5j
aD4gd3JvdGU6Cj4gCj4g77u/Cj4+IAo+Pj4gKyZnbWFjMCB7Cj4+PiArICAgIGFzc2lnbmVkLWNs
b2NrcyA9IDwmY3J1IFNDTEtfR01BQzBfUlhfVFg+LCA8JmNydSBTQ0xLX0dNQUMwPjsKPj4+ICsg
ICAgYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmY3J1IFNDTEtfR01BQzBfUkdNSUlfU1BFRUQ+
Owo+Pj4gKyAgICBhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwwPiwgPDEyNTAwMDAwMD47Cj4+PiAr
ICAgIGNsb2NrX2luX291dCA9ICJvdXRwdXQiOwo+Pj4gKyAgICBwaHktaGFuZGxlID0gPCZyZ21p
aV9waHkwPjsKPj4+ICsgICAgcGh5LW1vZGUgPSAicmdtaWktaWQiOwo+PiAKPj4gUGxlYXNlIGNo
YW5nZSBwaHktbW9kZSBoZXJlIHRvICJyZ21paSIuIFRoaXMgY2hhbmdlIHdpbGwgeWllbGQgYW4g
ZXRoZXJuZXQKPj4gc3BlZWQgdGhyb3VnaHB1dCBjaGFuZ2Ugb2YgYSBmYWN0b3Igb2YgMTAwKy4K
PiAKPiBSb2NrY2hpcCBieSBkZWZhdWx0IGRvIGJhZCB0aGluZ3Mgd2l0aCBSR01JSSBkZWxheXMu
Cj4gCj4gIHR4X2RlbGF5Ogo+ICAgIGRlc2NyaXB0aW9uOiBEZWxheSB2YWx1ZSBmb3IgVFhEIHRp
bWluZy4KPiAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIK
PiAgICBtaW5pbXVtOiAwCj4gICAgbWF4aW11bTogMHg3Rgo+ICAgIGRlZmF1bHQ6IDB4MzAKPiAK
PiAgcnhfZGVsYXk6Cj4gICAgZGVzY3JpcHRpb246IERlbGF5IHZhbHVlIGZvciBSWEQgdGltaW5n
Lgo+ICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgo+ICAg
IG1pbmltdW06IDAKPiAgICBtYXhpbXVtOiAweDdGCj4gICAgZGVmYXVsdDogMHgxMAo+IAo+IFRy
eSBzZXR0aW5nIGJvdGggb2YgdGhlc2UgdG8gMC4gQW5kIHRoZW4gdXNlICdyZ21paS1pZCcuCj4g
Cj4gICAgQW5kcmV3CgpUaGFuayB5b3UhCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

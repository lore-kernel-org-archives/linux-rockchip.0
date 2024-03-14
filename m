Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 079B6C54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Mar 2024 12:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HT1fTTK54urCtRN1lN6GSSigkSUauF0hlFXZGuRnl/I=; b=GvNw29zpCKDAif
	+XNAQXy3b1WqrY8MynA1vw2enbt4EPC8bHgtQCdyUDMgGk9IGBLaih7HOVwHDZPVWJlE6cMwLShJj
	3PaGoMD2Q2TBbQpRwXR0DsZ+n1DAwa8urHdl85FO/Y6EYUTmOwJWms0a6CMoZm1uS5bGL/eL1LchN
	Lrk3c9OcFvzgbylSD1L94M7PgrEuooG2GKoCClrbuwaxpGLUK/1YrEJPaQaa5j/nqECIqdtwg5bQN
	n+5W+SlHY3/v567u0XwF3AJOFdOmcVXas5dkCbrVUxTZVTfrTz1fYY7pFtiUp6xR0JRv+4ba0qOVq
	uY/RR7tJk2R4/DQKW4gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkkLE-0000000EHTt-3jV5;
	Thu, 14 Mar 2024 12:37:48 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkkL9-0000000EHT3-3bPw;
	Thu, 14 Mar 2024 12:37:46 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 305FC60006;
	Thu, 14 Mar 2024 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arinc9.com; s=gm1;
	t=1710419858;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/peOBOnLsJGv1ihVaTFv7Ntt/VLBoWwY2pecEGf0v7c=;
	b=Zy1zUE5WNj30me+0vnKbflTH/h3Mx7DfSrQdmh/OlwgjRz6guFJpz5zDo6mdHj2YWymx7E
	nALZIKd+2Zw6tEn+N0zcsUcLCr2OjOjQQGP8TqkwZgkwm3RgxzViKo2mozGtSMHiw7RZpz
	gQ5Wh9O9VjUCU8jOUjonDaEwKdTvDNYbDZAgDd+0IrEc8rTC48ZNlmXX11xeDa5V7tqM3W
	INqoLgQ7voXnYIQNYWoPfDzjiQUWe5++2lVxe8A8EOrunaa9ZWxx66OyYv3fY2FmUbnV9V
	To3ECh0B5vbizAX5HXn0ZDLYklqcAjV1fNOTLM5RtjPObi+thVib6EqFWkX+ZQ==
Message-ID: <3eb63e39-c7f2-4411-bb84-e4c152be1f0c@arinc9.com>
Date: Thu, 14 Mar 2024 15:37:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: set PHY address of MT7531 switch to
 0x1f
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: mithat.guner@xeront.com, erkin.bozoglu@xeront.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240314-for-rockchip-mt7531-phy-address-v1-1-743b5873358f@arinc9.com>
 <4682635.taCxCBeP46@diego>
From: =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
In-Reply-To: <4682635.taCxCBeP46@diego>
X-GND-Spam-Score: 400
X-GND-Status: SPAM
X-GND-Sasl: arinc.unal@arinc9.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_053744_153726_472CA8A3 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
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

SGVsbG8gSGVpa28uCgpPbiAxNC4wMy4yMDI0IDE1OjMxLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBEb25uZXJzdGFnLCAxNC4gTcOkcnogMjAyNCwgMTM6MjQ6MzUgQ0VUIHNjaHJpZWIgQXLE
sW7DpyDDnE5BTCB2aWEgQjQgUmVsYXk6Cj4+IEZyb206IEFyxLFuw6cgw5xOQUwgPGFyaW5jLnVu
YWxAYXJpbmM5LmNvbT4KPj4KPj4gVGhlIE1UNzUzMSBzd2l0Y2ggbGlzdGVucyBvbiBQSFkgYWRk
cmVzcyAweDFmIG9uIGFuIE1ESU8gYnVzLiBJJ3ZlIGdvdCB0d28KPj4gZmluZGluZ3MgdGhhdCBz
dXBwb3J0IHRoaXMuIFRoZXJlJ3Mgbm8gYm9vdHN0cmFwcGluZyBvcHRpb24gdG8gY2hhbmdlIHRo
ZQo+PiBQSFkgYWRkcmVzcyBvZiB0aGUgc3dpdGNoLiBUaGUgTGludXggZHJpdmVyIGhhcmRjb2Rl
cyAweDFmIGFzIHRoZSBQSFkKPj4gYWRkcmVzcyBvZiB0aGUgc3dpdGNoLiBTbyB0aGUgcmVnIHBy
b3BlcnR5IG9uIHRoZSBkZXZpY2UgdHJlZSBpcyBjdXJyZW50bHkKPj4gaWdub3JlZCBieSB0aGUg
TGludXggZHJpdmVyLgo+Pgo+PiBUaGVyZWZvcmUsIGRlc2NyaWJlIHRoZSBjb3JyZWN0IFBIWSBh
ZGRyZXNzIG9uIEJhbmFuYSBQaSBCUEktUjIgUHJvIHRoYXQKPj4gaGFzIHRoaXMgc3dpdGNoLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBcsSxbsOnIMOcTkFMIDxhcmluYy51bmFsQGFyaW5jOS5jb20+
Cj4gCj4gRml4ZXM6IGMxODA0NDYzZTVjNiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgbXQ3
NTMxIGRzYSBub2RlIHRvIEJQSS1SMi1Qcm8gYm9hcmQiKQoKRG8gSSBuZWVkIHRvIHJlc3VibWl0
IHdpdGggdGhpcyBhZGRlZCwgb3Igd291bGQgeW91IGFkZCBpdCB3aGlsZSBhcHBseWluZwp0aGUg
cGF0Y2g/CgpBcsSxbsOnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==

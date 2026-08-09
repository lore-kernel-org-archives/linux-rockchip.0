Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87E21C5AC80
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Aug 2026 09:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMQZrhGVW4CmiNa4hc+P4ee/PDmoXztNT0j1UsKwI2s=; b=iSeHVjSIHD8qiI
	Dg71nhDSg+Mxk0MwVwIRbBdMKRUakpSIk4Njsnl0M8+2XThPcppA7aV41efuRXF/q9kQWXRUUsuMr
	BPkOA6TCJq2syC+6Y3236X9kR96fRjbxrV9fLhU1qWsvCgSFDGXCAAV2dNYEIcmRZ70iEoXjvNT4C
	h+eRtaVWgw6mLhQev6/VigvDb3bOyIIFoh6pZZPAOVqw9GIVotLooZpdd5UDVyviAc5K4XVIpksnU
	9RscX4RIUBaBR28yjLKWbOXNRwV2wcyjHLV3fyT6pbIkg6ZCY5SK2Camxy9gkZHboqaMDtpNpMbyi
	eAKV2bBGPPJeS+QCi52g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt03w-0000000A9Sr-0BRi;
	Sun, 09 Aug 2026 09:43:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt03u-0000000A9Rm-1hxB;
	Sun, 09 Aug 2026 09:43:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=aQnvBKTkEiMX3rxlz+/DiIhL/4xHaH5LdGAIChHO01M=; b=1W7GFneyTR+K9iQbkgC9h9Ck0g
	fOZI14liwQ4hgLTWRSey8gFHN9sdlZswm3Ao9Hbvv5PD6n4WlIjbHs4u5VDyDytZ3SHgGnlW0IulS
	vqF1ZB2zJihz/WVGuTU4jtLhcag0Gi0wwBWMNI692R4v1j86hnk1bIk9oRThCT00FGjRW5AUYiMmp
	TJy7IS4UzJCHOesKOn1jo0dHN6pwg1rkLgyRI0ovrP6YX/W+P5gkC0TsqgE2zfWkC9Ugplo7bdzMG
	CHNHs79twMyMsB9V9tfHylPztJ/QK2ms+0uF3TEYYXa9WDt26whX0QHtWpHrKKasAMoe8YTKOvTd2
	G/nY2MIw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linusw@kernel.org>, Simon Glass <sjg@chromium.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Simon Glass <sjg@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 huang lin <hl@rock-chips.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/4] dt-bindings: pinctrl: rockchip: Add RV1106 compatible
Date: Sun, 09 Aug 2026 11:43:17 +0200
Message-ID: <19061465.tv2OnDr8pf@diego>
In-Reply-To: <20260729072727.v3.3.3a4f9d47d4dba36e14141f8796afe8907028aa9c@changeid>
References: <20260729132736.3807082-1-sjg@chromium.org>
 <20260729072727.v3.3.3a4f9d47d4dba36e14141f8796afe8907028aa9c@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260809_024322_447000_F8CEFB8D 
X-CRM114-Status: UNSURE (   7.20  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTWl0dHdvY2gsIDI5LiBKdWxpIDIwMjYsIDE1OjI3OjI3IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgU2ltb24gR2xhc3M6Cj4gQWRkIHRoZSBjb21wYXRpYmxlIGZvciB0
aGUgcGluIGNvbnRyb2xsZXIgb2YgdGhlIFJvY2tjaGlwIFJWMTEwNiBhbmQKPiBpdHMgUlYxMTAz
IHBhY2thZ2UgdmFyaWFudC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTaW1vbiBHbGFzcyA8c2pnQGNo
cm9taXVtLm9yZz4KPiBBY2tlZC1ieTogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9y
Zz4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

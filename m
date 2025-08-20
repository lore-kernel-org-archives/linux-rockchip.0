Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63E61CA0EF8
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 09:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPiIyw8GjjL8vmJiHTjh/8JTrM30OJef7qX4Dc/IOKw=; b=XEk4cM1BGjQzP/
	A0mxwXyXX90DJcxX4IGsM2rMMcB8MiTQPRvx0rezgKFz9uQfla/mKaPyJuHFjeaLLwtItG795Z/Rd
	MhAG6SktRrU13UQTRXqh6RBhEyOfx1MJNN3p5QNGmI5xNdU/zMWgU8LVLLUQDJIB963iRvVvK3/+2
	tw+kwmyiiE39W705bNxD9rmdcZNQoVDpHZHewVZkOjaurL2YwskHTrmi+9M8LydeGEvFzHN8WUIH4
	uppz/CfN9bVkBit8PXa6DN60+MD1bYdf1sMU2wJyGF5h9vs8v7nBBu/Bt5ZDcsXBPCP9JSQ+X559j
	peYAjqMpevPhmNq1xaEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoesT-0000000Crpn-28dv;
	Wed, 20 Aug 2025 09:13:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoe59-0000000Cihz-0DZc;
	Wed, 20 Aug 2025 08:22:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JcAm9yTTKvqNJOXNP8pEqbZUIKYNqPig/u1OHo43/AU=; b=cwIb+PwC9yFnPRQfveAMrK7LZo
	ree++Om7C7EhWBUGYfmLWFqIDBHm7X5pzJzjkXp5EjX0mPx1jts/jgcMMtG1ALBfeL6In6e/blUjr
	pJtVUJ9CQTkw0PgshK2hw/Zg04XH3tiSMv/BeZLr4eCQyuaiUXZas3OiYSOkWY7tnR48wi/FxAjQO
	i+kwMO8ihycvStlkduzclhDSB0d9u2us0nPdZ0JkQJDBgYFywEkm6mVN4lo0UMo8Xpa6KBZPy6zxT
	egkUxAt46xi97doBFnmuuiulLVRkeODq43eiaYHVS/z/Jf0vUR5oqSstSHwtmySvPp5p6zaw8oDsJ
	njdWopcA==;
Received: from i53875a0d.versanet.de ([83.135.90.13] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uoe4b-0003a0-N1; Wed, 20 Aug 2025 10:21:33 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 3/3] dt-bindings: display: rockchip,dw-mipi-ds: Narrow clocks for
 rockchip,rk3288-mipi-dsi
Date: Wed, 20 Aug 2025 10:21:32 +0200
Message-ID: <1829992.7aRn1RRit1@diego>
In-Reply-To: <20250820-dt-bindings-display-v1-3-d5b2555df51f@linaro.org>
References: <20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org>
 <20250820-dt-bindings-display-v1-3-d5b2555df51f@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_012207_085404_1F41E1C1 
X-CRM114-Status: GOOD (  12.67  )
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

SGksCgoKQW0gTWl0dHdvY2gsIDIwLiBBdWd1c3QgMjAyNSwgMDk6MDI6NDIgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBLcnp5c3p0b2YgS296bG93c2tpOgo+IFRoZSBiaW5k
aW5nIGFsbG93cyBpbiB0b3AtbGV2ZWwgZnJvbSBvbmUgdG8gZm91ciBjbG9ja3MgYW5kIGVhY2gg
dmFyaWFudAo+IG5hcnJvd3MgdGhlIGNob2ljZSwgYnV0IHJvY2tjaGlwLHJrMzI4OC1taXBpLWRz
aSBtaXNzZWQgdGhlIG1pbkl0ZW1zLgoKc3ViamVjdCBpcyBtaXNzaW5nIGFuICJpIiBpbiByb2Nr
Y2hpcCxkdy1taXBpLWRzKGkpCgpPdGhlciB0aGFuIHRoYXQKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0
dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cgo+IAo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBL
b3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPiAtLS0KPiAgLi4uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1taXBpLWRzaS55
YW1sICAgICAgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9j
a2NoaXAvcm9ja2NoaXAsZHctbWlwaS1kc2kueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLGR3LW1pcGktZHNpLnlhbWwKPiBp
bmRleCAwODgxZTgyZGViMTEwNWU0ZjkyODQzMzgwYzAxODM1NjlmNjg4ZjA4Li5jNTlkZjNjMWEz
Zjc4YWUwZDM0NWRjNzI1ZjRkZmIzZWVkYjNkZTIyIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLGR3LW1pcGkt
ZHNpLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1taXBpLWRzaS55YW1sCj4gQEAgLTk3LDkgKzk3LDExIEBA
IGFsbE9mOgo+ICAgICAgdGhlbjoKPiAgICAgICAgcHJvcGVydGllczoKPiAgICAgICAgICBjbG9j
a3M6Cj4gKyAgICAgICAgICBtaW5JdGVtczogMgo+ICAgICAgICAgICAgbWF4SXRlbXM6IDIKPiAg
Cj4gICAgICAgICAgY2xvY2stbmFtZXM6Cj4gKyAgICAgICAgICBtaW5JdGVtczogMgo+ICAgICAg
ICAgICAgbWF4SXRlbXM6IDIKPiAgCj4gICAgLSBpZjoKPiAKPiAKCgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

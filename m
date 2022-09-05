Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21FD3ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 19:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2ffbk8OXUagxtB27kKzvF9BS3GPSgcEjqZhn5xrbXE=; b=qyjhmzD0ql1g3q
	1gR5u+SIwbgyESJNmmhDydaO8ti1Cula3z9qAVbrYn8W93D7oK3ER7dwVSwIkByu8X+lHyCwnkfy+
	WkziId4C4dnMypoK7+985mNevWHoct4qgXq38WN0NI+3UYSoeJwCAsUhk7RTfkmX4RNWD+e2FWB8e
	kFkoaiK+ty6NHcIG7TAjFM+ot2qfh6HMAIIg8DeUtkP5XB8wSSe511Q4LxNbtz1T1DjJde2U9n1iH
	3xgu5b0XBHaGAzABnv3TdFAXyCP/6bwOdDk3MKwWljuGkyTU2DGioNAPU7dFibHi4bGCTiY0fSv13
	+AJ2OGtggPqX1FqzMVhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVHLP-008tIr-3z; Mon, 05 Sep 2022 19:01:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVDEE-004Z8k-Oq; Mon, 05 Sep 2022 14:37:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0337360E9E;
	Mon,  5 Sep 2022 14:37:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 560CDC433C1;
	Mon,  5 Sep 2022 14:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662388651;
	bh=EfVrz7hsdJqROChFgfcYCDytEwOKRltEWiE8QmfhHwU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tywYUqphQhOv05BJumMzuExgaYoPQG/4CejLoVhTcrmNS8ekT98j/E2d4GqEbAJDp
	 Oc4+TRNanONALJaIXa9nkNFr1tZelmE3waxmWX/DYzgA7ha/k/qyblsiLWC4Khw7Pf
	 t0axjVOeaU4DIYGMdtVGsWbrargAjwfEkbrkESTF0NfQcgAH7ObadRHt3+w4D3Ivze
	 Ci8pn5Ndd/v74Mhl85Sv2NK1sFBDmXE7uQWj1coElMOm3V+iXcFJnApLDhMSq1tObY
	 uv+/9RkIIqifriNevXFx9QDm/rbH9iicn7p4I8HSDWovXfplDzt0ADT0mWNEmIRGNq
	 nSWS9DG2BOaow==
Date: Mon, 5 Sep 2022 15:37:15 +0100
From: Lee Jones <lee@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Tim Harvey <tharvey@gateworks.com>,
	Robert Jones <rjones@gateworks.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Maxime Ripard <mripard@kernel.org>,
	- <patches@opensource.cirrus.com>,
	Steve Twiss <stwiss.opensource@diasemi.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	Alistair Francis <alistair@alistair23.me>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Renner Berthing <kernel@esmil.dk>,
	Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH] dt-bindings: mfd: Add missing
 (unevaluated|additional)Properties on child nodes
Message-ID: <YxYH+POIURB9RO7T@google.com>
References: <20220823145649.3118479-4-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220823145649.3118479-4-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_073741_965357_02F8D5DF 
X-CRM114-Status: GOOD (  13.55  )
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

T24gVHVlLCAyMyBBdWcgMjAyMiwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IEluIG9yZGVyIHRvIGVu
c3VyZSBvbmx5IGRvY3VtZW50ZWQgcHJvcGVydGllcyBhcmUgcHJlc2VudCwgbm9kZSBzY2hlbWFz
Cj4gbXVzdCBoYXZlIHVuZXZhbHVhdGVkUHJvcGVydGllcyBvciBhZGRpdGlvbmFsUHJvcGVydGll
cyBzZXQgdG8gZmFsc2UKPiAodHlwaWNhbGx5KS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVy
cmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+ICAuLi4vbWZkL2FsbHdpbm5lcixzdW42aS1h
MzEtcHJjbS55YW1sICAgICAgICAgfCA0MCArKysrKysrKysrKysrKysrKysrCj4gIC4uLi9tZmQv
YWxsd2lubmVyLHN1bjhpLWEyMy1wcmNtLnlhbWwgICAgICAgICB8IDEwICsrKysrCj4gIC4uLi9i
aW5kaW5ncy9tZmQvY2lycnVzLGxvY2huYWdhci55YW1sICAgICAgICB8ICA1ICsrKwo+ICAuLi4v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvZGxnLGRhOTA2My55YW1sICAgfCAgNyArKy0tCj4gIC4u
Li9iaW5kaW5ncy9tZmQvZ2F0ZXdvcmtzLWdzYy55YW1sICAgICAgICAgICB8ICA1ICsrLQo+ICAu
Li4vYmluZGluZ3MvbWZkL21heGltLG1heDE0NTc3LnlhbWwgICAgICAgICAgfCAgMSArCj4gIC4u
Li9iaW5kaW5ncy9tZmQvbWF4aW0sbWF4Nzc4NDMueWFtbCAgICAgICAgICB8ICAxICsKPiAgLi4u
L2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgxNy55YW1sICAgICAgICAgIHwgIDIgKwo+ICAuLi4v
YmluZGluZ3MvbWZkL3NpbGVyZ3ksc3k3NjM2YS55YW1sICAgICAgICAgfCAgMSArCj4gIC4uLi9i
aW5kaW5ncy9tZmQvc3Qsc3RtMzItbHB0aW1lci55YW1sICAgICAgICB8ICA0ICsrCj4gIC4uLi9i
aW5kaW5ncy9tZmQvc3Qsc3RtMzItdGltZXJzLnlhbWwgICAgICAgICB8ICAzICsrCj4gIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zdCxzdG1meC55YW1sICAgICB8ICAxICsKPiAgLi4uL2Jp
bmRpbmdzL21mZC9zdGVyaWNzc29uLGFiODUwMC55YW1sICAgICAgIHwgMjIgKysrKysrKysrKwo+
ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvdGksdHBzNjUwODYueWFtbCAgfCAgMSArCj4g
IC4uLi9iaW5kaW5ncy9tZmQveC1wb3dlcnMsYXhwMTUyLnlhbWwgICAgICAgICB8ICAxICsKPiAg
MTUgZmlsZXMgY2hhbmdlZCwgMTAwIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpXaGF0
IGFyZSB5b3VyIHBsYW5zIGZvciB0aGlzIHNldD8KCldhbnQgbWUgdG8gbWVyZ2UgaXQ/CgotLSAK
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

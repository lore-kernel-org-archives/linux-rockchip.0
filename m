Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20C1FFA373D
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Nov 2022 10:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sql6QjUe/cc6wtYUI7o1H7BA2cFwzv8ivPT/kOglbBc=; b=ZZfd+l4AFNxtU3
	ZmwC/tDO1sxQW4UcfXRubKxb18WfFwwKTHjh3VydBflX3BFl1j+hB33DP8lWS1Xg0YZjhE+9eDfS2
	WufVm3UcOKwpzAAP52DZ9dnBRlWMDzUcpQ9IkYcmXuoNs8DNt7OsggpIcvdC5zSHPxI2GHJ3KGdFa
	IDdkzsFeK/sSVbus4aFifvAhndYO7oOupAnzozM50glm/7NRqD8qGE0fXoJb1nwbNOJEhCtQN1YCB
	7Kmxpec38+ZgsiFoUcf5JlecKL83LXlIqofjqOB59Vo+Fi3UHgfmcPFgwpLvw1TRM+Q7pw2vFgEW5
	IinL0i8QlH6uWgNxEo9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opoST-0042ha-4o; Tue, 01 Nov 2022 10:25:25 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opoSJ-0042Z9-9c; Tue, 01 Nov 2022 10:25:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id AD373B81B24;
	Tue,  1 Nov 2022 10:25:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8FCFC433D6;
	Tue,  1 Nov 2022 10:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667298312;
	bh=xaFUexV7MYwXBZ2ARe4EZEhgaYRXQWZ3AJuXjnpw1uY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u5gO4DFSfUwgEwxwj2Hne3ZKxcSXO49SUTYi9bc2H8kENoQ4V4Axr2tykanogWvRb
	 mL71xZiwh8nXKABsAIkgkeNKZwiwSvs/vaoAioBxbSf2hUQYWpWORJqpPKPah5DUAW
	 Ap/5YySro6biKUJda8QHGaybG/pN541Dr8z3JTYjC8NRLvzOPKRVqYWv6+5vbCWRa1
	 ZlvHW/9+Cbtc6NF6fI8fQ9xfh9RgryhyhJorQo8WndUDqbNJG08cLb9lLdIRy4Mt0C
	 gc4/wQefBumoHFXRHLTM1clfjHqd3MB/ZBDjYjxz6Z1GYAFGo0/p2IdS7aIMy1f1nU
	 Msx52f1p7LuXQ==
Date: Tue, 1 Nov 2022 10:25:06 +0000
From: Lee Jones <lee@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mfd: Expect specific type for
 monitored-battery
Message-ID: <Y2D0As4ezi/031lL@google.com>
References: <20221028231309.565451-1-krzysztof.kozlowski@linaro.org>
 <Y1+MNL+fCfreAqMh@google.com>
 <20221031192658.GA3286587-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221031192658.GA3286587-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_032515_507616_9FEF58D2 
X-CRM114-Status: GOOD (  16.59  )
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

T24gTW9uLCAzMSBPY3QgMjAyMiwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IE9uIE1vbiwgT2N0IDMx
LCAyMDIyIGF0IDA4OjQ5OjU2QU0gKzAwMDAsIExlZSBKb25lcyB3cm90ZToKPiA+IE9uIEZyaSwg
MjggT2N0IDIwMjIsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPiAKPiA+ID4gQ29yZSBz
Y2hlbWEgZG9lcyBub3QgZGVmaW5lIHR5cGUgb2YgbW9uaXRvcmVkLWJhdHRlcnksIHNvIHRoZSBz
Y2hlbWFzCj4gPiA+IGFyZSBleHBlY3RlZCB0byByZWZlcmVuY2UgcHJvcGVyIHR5cGUuCj4gPiA+
IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296
bG93c2tpQGxpbmFyby5vcmc+Cj4gPiA+IC0tLQo+ID4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21mZC9lbmUta2I5MzAueWFtbCAgICAgIHwgNCArKystCj4gPiA+ICBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3LnlhbWwgfCAx
ICsKPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gPiAKPiA+IEFwcGxpZWQsIHRoYW5rcy4KPiAKPiBOQUsuIFBsZWFzZSBkcm9wIG9yIHJldmVy
dC4KCkRyb3BwaW5nIGlzIG5vdCBhIHByb2JsZW0uCgpXb3VsZCB5b3UgbWluZCBwcm92aWRpbmcg
c29tZSBjb250ZXh0PwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

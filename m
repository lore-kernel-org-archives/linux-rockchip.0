Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5A38C77B75
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 May 2023 15:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9cgKffto2z3LuJ72FQvXZYp9YBR4kuRmigghFpXwBc=; b=wkJ9TgFP/V+cJY
	2OmOVf2rhclWdx5IvRNYFwA/XOfpGyVOZ6nB9bGY3cofCRaQzc2g3QoP+wkNGPHMdEXZy+ioQTXiC
	p3zAOVqJObwYagxyki+BJerGXxmXBlsidC81h2/rLjVHPjZWMYnD+HCEU0rITjA50JAWY3O0wkH6b
	dWwsJGiE7CzLagPh+N4tKkt4ngSm8gy5Ql1nc8UyqNQoxMvQz2amVDp0GcIjwqOyeIKUlga21lJiG
	+/RrZd+Bkuhs4PW//7/k/UPVQ/thr6wFJiwKksZ9QPgMPpvLkWOqHIJAJm5dLrxVOnAtKWhKpizez
	9vhpLWQWI2/ug/opczxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pya0r-002YY9-1h;
	Mon, 15 May 2023 15:21:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pya0o-002YXR-1c
	for linux-rockchip@lists.infradead.org;
	Mon, 15 May 2023 15:21:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 085676262F;
	Mon, 15 May 2023 15:21:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C74F7C433D2;
	Mon, 15 May 2023 15:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684164081;
	bh=BI1XvJ/+7nr33I+HqHD+sviHlUyTv6l5DQEgMdvdYEg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ac10X1BZ9z9AIu1/qTOtiNxQ+2jxaGlzA9DR0gP2gZ/ys0vqoNRfHFU/mADGpx9MD
	 PEYnQcxKSPqXHO9uNMB25iymh6WNeNirG4k4FZtkP7wYHMw+FRTkP+fGvMlN9pXhdl
	 i5IGXlaVJWgjiGi/TmyOshngsvBMntKd3wZLtl0mCt/T3/uOWpAnBS18swd1xhUpMm
	 +kvTVglTxJAJsbrY/sx9+2yuL6wCkdL+CXQTiSIKvPduVaD61E/uiJLd+/KMrKLeio
	 20NtAUBRCbfdbO/D0Ddt6OQRaSa3RPYoFjvyFSnLf+GaO9jfSmhdy/DF0zEV2tRVBK
	 CIAuZukZUE2lA==
Date: Mon, 15 May 2023 16:21:13 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	shengfei Xu <xsf@rock-chips.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: [PATCH v8 09/14] pinctrl: rk805: add rk806 pinctrl support
Message-ID: <20230515152113.GU10825@google.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-10-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504173618.142075-10-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_082122_582367_D4590F7A 
X-CRM114-Status: GOOD (  13.91  )
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

T24gVGh1LCAwNCBNYXkgMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IEFkZCBzdXBw
b3J0IGZvciByazgwNiBkdnMgcGluY3RybCB0byB0aGUgZXhpc3Rpbmcgcms4MDUKPiBkcml2ZXIu
Cj4gCj4gVGhpcyBoYXMgYmVlbiBpbXBsZW1lbnRlZCB1c2luZyBzaGVuZ2ZlaSBYdSdzIHJrODA2
Cj4gc3BlY2lmaWMgZHJpdmVyIGZyb20gdGhlIHZlbmRvciB0cmVlIGFzIHJlZmVyZW5jZS4KPiAK
PiBDby1kZXZlbG9wZWQtYnk6IHNoZW5nZmVpIFh1IDx4c2ZAcm9jay1jaGlwcy5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogc2hlbmdmZWkgWHUgPHhzZkByb2NrLWNoaXBzLmNvbT4KPiBSZXZpZXdlZC1i
eTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgo+IEFja2VkLWJ5OiBM
aW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4gVGVzdGVkLWJ5OiBEaWVk
ZXJpayBkZSBIYWFzIDxkaWRpLmRlYmlhbkBja25vdy5vcmc+ICMgUm9jazY0LCBRdWFydHo2NCBN
b2RlbCBBICsgQgo+IFRlc3RlZC1ieTogVmluY2VudCBMZWdvbGwgPHZpbmNlbnQubGVnb2xsQGdt
YWlsLmNvbT4gIyBQaW5lNjQgUXVhcnR6UHJvNjQKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4g
UmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9waW5jdHJsL3BpbmN0cmwtcms4MDUuYyB8IDE4OSArKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTY4IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9u
cygtKQoKQXBwbGllZCwgdGhhbmtzCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

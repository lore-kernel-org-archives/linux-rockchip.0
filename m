Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57D94C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Mar 2023 11:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QfuormQrSnbZ7gB3/UxyQlA7Ch6sdYBCAlXoh+Ghb+A=; b=sIA2nrLjkuTcct
	0USnMR5eduFtyJKtWiEyGQrMqZzYVOO9LyICMyRD4smVTbdeYnos97U3ejpjt88Z5PUVTpzX+PAiV
	jVy5qhJ38FFN12gpbHfudzn3hb8psSiI0nhIb5N+BCzA4r5Q2+dV1Zcgbx4wGxmsh0RLxaSltiigC
	SvoiUuOMjv6/7A/DCE5UkGFUMyVikR6pY4kWNHLApwtouhaSEGK+KKovzkMVimZPF9to6I0JrP5gZ
	S9yK8PDxLuidQB0C4X7Nn6bR8ZSoe0cqMqgzkDpzeM6OmNq6vhdDt/VDmETPMRnFyHXaGREEmTfOY
	LjA2NZPqYRm8rtlTjx4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paxfD-000OWD-2T; Sat, 11 Mar 2023 11:45:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paxf1-000OTX-3m; Sat, 11 Mar 2023 11:45:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id AC05EB82432;
	Sat, 11 Mar 2023 11:45:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF883C433EF;
	Sat, 11 Mar 2023 11:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678535110;
	bh=75mbQ2zIUa16Px+XAHlCBKsO8iebtVjeSF8AguylJ8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vKcuArUhUvEGj+8PjRsrv9iWFy3ybcuDWmCSvAgrw3VQcr0KCqVMB3Yd+hSUl/rWD
	 LCu8+rzUrXPWC4LCYoUTY2xxqaJI1I1cWg8N8qp1rdNKHSNgDDZgxRZzvPhyoW7LWx
	 cWPIh8k/c6WorLch500+1DFN9R9uHtSVtIbxVzVhhl/EGrk80HN4VeTWkdSZg7T2cY
	 I/lsX4kNDEE+9FWmE5/oHplFO/6HBF3GGkSUuRHlhxTakn/zWpKqq6pOYoXGeLuKAP
	 YqoVWlEGWkGw99B/Rl8mhHUCSuukN6sdHMUKQVz7ZUSBKj+QI18qIPWpeaZMwZ4rSP
	 O64zmpd8v+XCw==
Date: Sat, 11 Mar 2023 12:45:07 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Mark Brown <broonie@kernel.org>, Kamal Dasu <kdasu.kdev@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi@etezian.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 07/16] spi: s3c64xx: Drop of_match_ptr for ID table
Message-ID: <20230311114507.axtae3j64fbt64t3@intel.intel>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
 <20230310222857.315629-7-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230310222857.315629-7-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230311_034515_345610_A3257F43 
X-CRM114-Status: GOOD (  11.58  )
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

SGkgS3J6eXN6dG9mLAoKT24gRnJpLCBNYXIgMTAsIDIwMjMgYXQgMTE6Mjg6NDhQTSArMDEwMCwg
S3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBUaGUgZHJpdmVyIGNhbiBtYXRjaCBvbmx5IHZp
YSB0aGUgRFQgdGFibGUgKGFsbCBwbGF0Zm9ybXMgYXJlIE9GLW9ubHkpCj4gc28gdGhlIHRhYmxl
IHNob3VsZCBiZSBhbHdheXMgdXNlZCBhbmQgdGhlIG9mX21hdGNoX3B0ciBkb2VzIG5vdCBoYXZl
Cj4gYW55IHNlbnNlICh0aGlzIGFsc28gYWxsb3dzIEFDUEkgbWF0Y2hpbmcgdmlhIFBSUDAwMDEs
IGV2ZW4gdGhvdWdoIGl0IGlzCj4gbm90IHJlbGV2YW50IGhlcmUpLgo+IAo+ICAgZHJpdmVycy9z
cGkvc3BpLXMzYzY0eHguYzoxNDk2OjM0OiBlcnJvcjog4oCYczNjNjR4eF9zcGlfZHRfbWF0Y2ji
gJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93
c2tpQGxpbmFyby5vcmc+CgpSZXZpZXdlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBrZXJu
ZWwub3JnPgoKVGhhbmtzLApBbmRpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

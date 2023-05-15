Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33B37C77B7D
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 May 2023 15:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSUZoU3M0kiOH3LiyghxKR6b49UPmJOPhMH9C7lYB7M=; b=ZWxoW1QWLj6Mbb
	q3A8ceAJpSmZuhw82Uf6Oac8hclbiIFysP0Ys0pXU3LjqNYawcQ+g3FYquxuMH0nxCQ/6OEltwD2u
	Uvpis/xMRsLSCx1R/8skp94wFNNbwlYC5GBleqfBlKiaoWa2iQ9mCD8WlwGQSHsWhsfojS1dIEzZ3
	TzDqwp86DP7mywrn2GhPtVjkozK0JO/0eJfSMO8rr+7bgGd+pxu6tNkMEft0gil2rg2t/5UnQJIen
	3WAsKloZy5eGfZY9ZpIIpyRPgeqcgblHpmmfE3qv/XLbxsjk1NbznZD9lnKYEv9SSQRh54UsuSJec
	g5BH7jDeLGGZ+JqOTMrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZxv-002Xqj-1A;
	Mon, 15 May 2023 15:18:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZxs-002Xp6-18
	for linux-rockchip@lists.infradead.org;
	Mon, 15 May 2023 15:18:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E0DC661EF0;
	Mon, 15 May 2023 15:18:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABD54C433EF;
	Mon, 15 May 2023 15:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684163899;
	bh=O3PfqBWgvC8kkGINqTRq9A/j4B9puDgpei0jZpKHjlY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TR/ieNdtOS3Aq05DCRzeBZnDpGK4oekHaqZqUfIpl0QVfq8f/t3OjKl/AfRp4A7Jy
	 PbCkngvyAqOd+gZCVADseTLDifrg7EBiTi0GklaHhLYq4WD+ArWmpHEbxC6SSH1hNS
	 DsEC1UZy87aczsCm118Jo384Dhys8W/nRR1ULzJ80zWu/fEJCchb/MLyDT9pdAYuvr
	 Pp6f/iJJ5qP8xLi3xVJbzx1+EeI0T32Wv1wPpkk4sL5zbmTKr4bVucAQfcCmqAZNov
	 2A/aMOshbjV4GYL8H8fwh+a1bYUJKkIGM/zB762aMkszOhMX5r+/a6Dy0ZC1j5DxuS
	 RCTzI5gIG7/Pw==
Date: Mon, 15 May 2023 16:18:12 +0100
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
	Diederik de Haas <didi.debian@cknow.org>,
	Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: [PATCH v8 03/14] mfd: rk808: use dev_err_probe
Message-ID: <20230515151812.GO10825@google.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504173618.142075-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_081820_426604_958C3AED 
X-CRM114-Status: GOOD (  12.94  )
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

T24gVGh1LCAwNCBNYXkgMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IFVzZSBkZXZf
ZXJyX3Byb2JlIGluc3RlYWQgb2YgZGV2X2VyciBpbiBwcm9iZSBmdW5jdGlvbiwKPiB3aGljaCBz
aW1wbGlmaWVzIGNvZGUgYSBsaXR0bGUgYml0IGFuZCBwcmludHMgdGhlIGVycm9yCj4gY29kZS4K
PiAKPiBBbHNvIGRyb3AgcG9zc2libHkgaW5jb3JyZWN0IHByaW50aW5nIG9mIGNoaXAgaWQgcmVn
aXN0ZXJzCj4gd2hpbGUgdG91Y2hpbmcgdGhlIGVycm9yIG1lc3NhZ2UuCj4gCj4gQWNrZWQtZm9y
LU1GRC1ieTogTGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4KPiBUZXN0ZWQtYnk6IERpZWRlcmlr
IGRlIEhhYXMgPGRpZGkuZGViaWFuQGNrbm93Lm9yZz4gIyBSb2NrNjQsIFF1YXJ0ejY0IE1vZGVs
IEEgKyBCCj4gVGVzdGVkLWJ5OiBWaW5jZW50IExlZ29sbCA8dmluY2VudC5sZWdvbGxAZ21haWwu
Y29tPiAjIFBpbmU2NCBRdWFydHpQcm82NAo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWlj
aGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21m
ZC9yazgwOC5jIHwgNDggKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAzMiBkZWxldGlvbnMoLSkK
CkFwcGxpZWQsIHRoYW5rcwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA6F3C77B75
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 May 2023 15:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oYi2Aa5EKTzh9TG6k5z+sb2np5/itgmuK/UzB++1vg=; b=xfzeGUZ+cGTDU6
	Tl1vLIZUvXdOheCpO2snaeI/uWrHscnZ6tKKUDCl2z/AHfFR9tPoUuwiYsuF9D0/bd20L5vvzsUc8
	hHbK1774EcfkCmB5Ov7AAwSluHZXfR/QqCEwLXGl1Sh8c2KnO7fgLuMSqeX6Sj2tRg8/zkRJyOFgG
	FAJPboNi/tIyFrPRRDnd5+OiMbeOfoQQP3KZPMZpF/oMWwP/eHYt1j3vcj/1FTVkqeYuzM2F8pJ7O
	zW5RxRx3sud9AMWtrXyjQJSXK7QN3PlEyj3V4MmN0A/6Aik2bsN2+9i+9GzjLqrbqmvXf0XtfSnQR
	AATev0bjEwJ+qRrrsC+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZxO-002Xhx-0Q;
	Mon, 15 May 2023 15:17:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZxL-002XhF-1P
	for linux-rockchip@lists.infradead.org;
	Mon, 15 May 2023 15:17:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DD23362609;
	Mon, 15 May 2023 15:17:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACF93C433D2;
	Mon, 15 May 2023 15:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684163866;
	bh=xRDx23J8oIr9De1BAyUiwXOX7KYeXFs1unUdL4Xab3Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LpuVeN1bO0pv2BgtgRKs2z4mad3ys7ILW1tTTg/enjWyCaZ2zylqn/IZv7NtpLNMc
	 TcvUFYylDhr9fp3hMCkIrnzvh1pw8Y8rOdbhyKCx4aB7/gzSKc9yFx6lEUbIWXD/12
	 NAyiD+waFTix4NK5TmOo2M6Sjkg8PKFKtNnZuVVbyNdMCZ5PWe+iXo4plimYE89c9F
	 4LbsNy22dc3LZfzRXHhdOWYS247TkcQG/Ka7Wvez77kfPyCUuS10hNNClMcZCfnKKr
	 VeG5vzjY3PGUBL7kTtU4vZ9odmdi8HxDSAMtTp49bQKJx96O3HT/CJQIreF+QNjBKu
	 m3o+lFGN1TCdw==
Date: Mon, 15 May 2023 16:17:39 +0100
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
Subject: Re: [PATCH v8 02/14] mfd: rk808: convert to device managed resources
Message-ID: <20230515151739.GN10825@google.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504173618.142075-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_081747_515393_0C46A686 
X-CRM114-Status: GOOD (  10.69  )
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

T24gVGh1LCAwNCBNYXkgMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IEZ1bGx5IGNv
bnZlcnQgdGhlIGRyaXZlciB0byBkZXZpY2UgbWFuYWdlZCByZXNvdXJjZXMuCj4gCj4gQWNrZWQt
Zm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4KPiBUZXN0ZWQtYnk6IERpZWRl
cmlrIGRlIEhhYXMgPGRpZGkuZGViaWFuQGNrbm93Lm9yZz4gIyBSb2NrNjQsIFF1YXJ0ejY0IE1v
ZGVsIEEgKyBCCj4gVGVzdGVkLWJ5OiBWaW5jZW50IExlZ29sbCA8dmluY2VudC5sZWdvbGxAZ21h
aWwuY29tPiAjIFBpbmU2NCBRdWFydHpQcm82NAo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBS
ZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L21mZC9yazgwOC5jIHwgNjQgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA0MiBkZWxldGlvbnMo
LSkKCkFwcGxpZWQsIHRoYW5rcwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119F7606A332
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 16:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vGg+Dyqb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hOGW4L7i
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LC6yZvxj5kp3Yu0OuuPft3RIVWn0iOADV1vYuReRzmw=; b=vGg+Dyqb+M7legcHrqkij8wfBQ
	dwho5ma8JPk4/Om1M6Gwow174K6eulaoUDz1+oXjz41+REL8oHR09exd69k/+3qtwNmVn4ULOAzJe
	WlilqJTdMJUAZn4Q1pQdW4Fh71fbLNdbpmMUI0KnslTtvj/Lzfh9D2sBsvTy1kKGlCAFblSENS32V
	04hPEw4FqFWZiCrIkN3WHxisKAdd0xOChqHb2GNW2dI4bpJzm98tzYtF6bFeeqcSA3VOOnKG9BAaN
	x4nFkrmTRmKGiwqrfFs+uuXDPV+UiV+yhHJsTHPMBbBtzkWuS71A87vVbYNX4Q863syvY76KfG13R
	qjns/QgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU5JS-0000000CinG-24Fm;
	Thu, 19 Nov 2026 16:48:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU5JQ-0000000Cimp-466K;
	Thu, 19 Nov 2026 16:48:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4849561297;
	Thu, 19 Nov 2026 16:48:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4DBF1F000C7;
	Thu, 19 Nov 2026 16:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795106920;
	bh=8HXa68Qw9U8seRwWAPXNB/ewGGSCzzxtMHD1FScJ9Vo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=hOGW4L7iXcp23kZoYzOxl244lck6jnSGkO3u/foitA0/9XQXVU0S6YWNWJy74lRWJ
	 IZnpmAUyFvq0Kth/zdeWp/9lb+Xft6SlOmA00sPRSsX+vj6M3eUb15cntpHPNHu3I+
	 sqWeySL6onzxSn+OubDpygDV8ycIfwI6hjP5vEYboR6jH/XruUjQGwrpadH3FLRBcO
	 gWUmEu1Z6nHSwlR1k0HTIr5MQngxOUnS0sAJofHnQaqKOuTNDvPfkoLQ1H0G6fh82g
	 xkyXaRVVzeEs5ghlRSE6AjISFFFCihwgbiuQnBWawAOyXcTAmDsRfoRAXwvKbSihVw
	 K/J2K3KG5X2vQ==
From: Lee Jones <lee@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>, 
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, Ulf Hansson <ulfh@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Cunhao Lu <1579567540@qq.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-gpio@vger.kernel.org, netdev@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-mmc@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org
In-Reply-To: <20261022-add-board-ok3572-c-v1-4-0b0fd85a31ee@qq.com>
References: <20261022-add-board-ok3572-c-v1-4-0b0fd85a31ee@qq.com>
Subject: Re: (subset) [PATCH 04/27] dt-bindings: mfd: syscon: Add RK3572
 QoS register compatible
Message-Id: <179510691068.78262.17485799721461490431.b4-ty@b4>
Date: Thu, 19 Nov 2026 16:48:30 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.16-dev-ad80c
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1LCAyMiBPY3QgMjAyNiAwMDoxMTowMSArMDgwMCwgQ3VuaGFvIEx1IHdyb3RlOgo+IEFk
ZCByb2NrY2hpcCxyazM1NzItcW9zIHRvIHRoZSBzeXNjb24gY29tcGF0aWJsZSBsaXN0LgoKQXBw
bGllZCwgdGhhbmtzIQoKWzA0LzI3XSBkdC1iaW5kaW5nczogbWZkOiBzeXNjb246IEFkZCBSSzM1
NzIgUW9TIHJlZ2lzdGVyIGNvbXBhdGlibGUKICAgICAgICBjb21taXQ6IDk3NzZmYmI0N2Q2Yzlk
MDkyOGM2NjczNGVkNTY1ZDg3MGQ4ZmRmZTkKCi0tCkxlZSBKb25lcyBb5p2O55C85pavXQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

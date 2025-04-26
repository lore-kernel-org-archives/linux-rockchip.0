Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F74FC369CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 22:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=keJN2AplmWDAJFJHtpgSBjHAdkzUXKBoS42Iio29jRk=; b=lNpLJt3vb2Z/No
	ZamrgDq79X3xVCz418AjhNHzf3EDZjDCtE4XrTGNR2+IQ05i20nuQjHWl1yP5xNkdG7u2/h2JY4Pp
	9KAhGKukowMCXVe+tumcNDo2yQ6NRYp78+xH6fYvvcRv/T/ZgxWagluZtI8HxpkCON1oQ4Spg98ud
	Ak44e1Gfwv6rFqqK3OlIaAmxB46HwHMdj356wGxOcTF2KY0LiZASbR5wXGEHdXF7VDgVZl4RRaHmM
	Ac3bw7mBxm/pONRp5ncUe1tZ/tU11HADw1wzjdcyO/qFlq4k2xboUSYFFR+K1HohSlOZK9I20zFjw
	lWOtLW/LWmRkTiu69uuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8ncU-00000002Z1Z-0pe0;
	Sat, 26 Apr 2025 22:03:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8nMD-00000002XOY-3wuf;
	Sat, 26 Apr 2025 21:46:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=nzrNCfIbltJDUh80KeXlbQkeQ/0zkPnKqxcq0vFHnCk=; b=JQtUD51fZGQQxc8ThllDYRda/J
	UsYh90YKpgmHy6rd9JUOG9a7+SmcJR5UnWZ51MWF2l8hTlfGtV6phO5NyLN/qVSKNi4HU4BrRdbAA
	3dnXjheeTjG30PyUATW7xQXKD4PQZ18OvqlXdKb7BvV7B6/e9lFI7q3DehiofZL5tm72sBfbMYfl6
	/fDi/XafR845N/ZOXejcqVDt6npFcjfBk3vOm+6N9ti6CAkYvmdsbQjFG/EGnAmkRyLuRFoaqvvSs
	Ntp886f6adFTCfffJ+UaOSsyZ9H7o24mifmqjNIVSDHRqemOnHT8WyFmJHIk8H7j5drkcraRTqOZp
	Rua6IaAw==;
Received: from i53875aba.versanet.de ([83.135.90.186] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u8nLr-0001OR-W1; Sat, 26 Apr 2025 23:46:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chaoyi Chen <kernel@airkyi.com>
Subject: Re: [PATCH v2 0/2] Add support for RK3588 EVB2 board
Date: Sat, 26 Apr 2025 23:46:11 +0200
Message-ID: <174570370119.31943.10378973370072965130.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250418014757.336-1-kernel@airkyi.com>
References: <20250418014757.336-1-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_144645_974664_EAF27362 
X-CRM114-Status: GOOD (  10.41  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Quentin Schulz <quentin.schulz@cherry.de>, Alexey Charkov <alchark@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Fri, 18 Apr 2025 09:47:55 +0800, Chaoyi Chen wrote:
> General features for rk3588 evb2 board:
> - Rockchip RK3588
> - LPDDR4/4X
> - eMMC5.1
> - RK806-2x2pcs + DiscretePower
> - 1x HDMI2.1 TX / HDMI2.0 RX
> - 1x full size DisplayPort
> - 3x USB3.0 Host
> - 1x USB2.0 Host
> - WIFI/BT
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add rk3588 evb2 board
      commit: ebabb3cdb89eee8853157a6daeed9d3f5a46dce4
[2/2] arm64: dts: rockchip: Add rk3588 evb2 board
      commit: 013dd238a822c940e056504fe644bd0a38c5d806

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

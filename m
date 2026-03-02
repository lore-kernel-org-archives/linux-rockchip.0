Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D65EE9B36E
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 11:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9a9DsMnm77KpWtoP2HUrClh7AmKGU7rCd/VT+W2eWvI=; b=lv6AKrxyMJrvhV
	8Dn5WqOZ9SU+i81l800SYZKFQJIjx9He4rSzogq9idJILd6m54X50YsfMqAX5YlYZ5sr2JeCBKmbN
	HdGPj31rRIkvwkNlIDIspcYrxQZpXhX94xBtItKEEtlRTD/mI5YSQ3akriuyprkifc8Y5bNJmIGEN
	lrN0J83r19SSFs3MoqIchwvsJfF4bfPooUd8l6c+F1eosfq8KrFEeRYqk5jxsXtZ173tOcDA9n9TL
	wzxLTNZ5WwrjcBAFaNfWSedFoE4fbG3M0seFNqDTfbRVBChQYtwoX7862sy69BohjNJKbr15uI+8Z
	aMqmOyiXgEfwyLM5RdXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx1dB-0000000CqN4-1Slg;
	Mon, 02 Mar 2026 11:40:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx1d4-0000000CqHG-3mjp;
	Mon, 02 Mar 2026 11:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=at8PnShVMfshtIkjpE0qopOFBgp0mzWKYpLQrhnUqZU=; b=213ordRxKdkoLy7UcfBCFG9tJh
	aZLqgrPFOyu9CeGiEJknDIpr8HwuK5HFjGfOalw2xLxC0fpCFgMZBT1CYahsRdkM/KG9aMx1psD3W
	NrJAc49oMQ2SR7MilRMP9h889rut+iepDflfyYlk4FLmao1nTdHUO0Uyg5EVf6U5tL7uLIQjvmueQ
	RZynFA7gEULVorWl+dS3/7QBCqh8UUiGqrZCN2CMZxxDt+bpqNaijUAEIB5oznlVcYDckHsTj7JiX
	BcHqSlr+fIyv6BAKSUFgabWmSOl8bufUxua39wAK+x38K5kQVeyWWJY4M86fd5bqlq2yuMZG0HZIt
	oKq5Henw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: rk3288-veyron: Remove invalid property
Date: Mon,  2 Mar 2026 12:39:53 +0100
Message-ID: <177245158237.769695.12935872735393881924.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260226144842.2727107-1-festevam@gmail.com>
References: <20260226144842.2727107-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_034002_982957_77E06F04 
X-CRM114-Status: GOOD (  10.50  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Thu, 26 Feb 2026 11:48:41 -0300, Fabio Estevam wrote:
> The 'regulator-suspend-mem-disabled' property is not documented nor used
> anywhere.
> 
> Remove this invalid property.
> 
> This fixes the following dt-schema warning:
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: rk3288-veyron: Remove invalid property
      commit: 56e224f848c4e2a6f758bc142ae9d293544adbae
[2/2] ARM: dts: rockchip: rk3288-veyron: Fix the Bluetooth node name
      commit: 801d1afc6b6cdfb67b0098a795d2130ae0f775a1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

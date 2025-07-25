Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AF11C87FCE
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 23:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIqDxLjX8b487gBICeBtwNYtAR+CLoIUZgT198tN7B4=; b=x+FI8a/vJ5iOZV
	BvMdoFVhjm9g7/yGkwDhHfTiy7sNa6+xd/y3ZioDf/mCr7HGzgQ7JXQ3Mc4P5nm1vhF9QbuaWROTr
	5JX1LSf1OXN8mrgWjP/qk9y2xSNv9ygaxc9/bTPZuDPxGi8eC7UIpy1+ujSULhw5gHY51h4awqw0J
	17JtBfta0ZSwlfrA4m4Dl3tyPLpqParg+fPqCwIiqPAgUBGGxOT7WlgdbT3P7A9uwiGSgQHiIb+qG
	7rXRfJOlhkVYgpUzdhXcIl5SzDvUz8EgsYHF7IGHZZIkXODnWBUI5Z8w3blRHPjJbt9p1AUi4Kabx
	dERK+JMoZ3GbeZuSkApg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufRX2-0000000ApaV-3pnd;
	Fri, 25 Jul 2025 23:08:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufRSH-0000000ApC3-3Beg;
	Fri, 25 Jul 2025 23:03:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 218BD601DC;
	Fri, 25 Jul 2025 23:03:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92499C4CEE7;
	Fri, 25 Jul 2025 23:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753484636;
	bh=/ihqXbiLnvze8X7uQMIFreBNaBY/ADD8BZyIiZGUufc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FEXjstUOI0TN9HQBSTBwqbatkXGLTR8j38MRH0gaYGIjujVkhVpmcdbrufiYTszqh
	 ixhIl1p7DSDHg+eXdv19MOviwgiL6yDT3Sdfr9UvFsaDUwIURonuKLJ4buX0FqURKj
	 vJDuCcW94BuqQ2EeIuKROn1vn3TyYKszJkmmbyqApPir9CHfxOO/XqucVDJnSRazip
	 9Nzcwxa+Yf3rEBR3wHIxoOYkXz4bnce80LHQaI7vkxojkbhp7CKUyO+pus/y705TKF
	 uWbYGINWxygVgHZH6wPF4H5nP+zOhZzq5vqqSUqJ/HLOI3kS82hUx6KZ4mpYuuo0zO
	 N/mMYbJxHCwtw==
Date: Fri, 25 Jul 2025 18:03:55 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Yao Zi <ziyao@disroot.org>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 01/11] dt-bindings: phy: rockchip,inno-usb2phy: Require
 GRF for RK3568/RV1108
Message-ID: <20250725230355.GB1993803-robh@kernel.org>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
 <20250723122323.2344916-2-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250723122323.2344916-2-jonas@kwiboo.se>
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


On Wed, 23 Jul 2025 12:22:59 +0000, Jonas Karlman wrote:
> Typically these Rockchip USB2 PHYs are fully contained within a single
> GRF. However, for RK3568 and RV1108 regs to control the USB2 PHY is
> located in a different GRF compared to the base address.
> 
> Update this binding to require rockchip,usbgrf for RK3568 and RV1108 to
> properly reflect that the USB GRF is required to control the USB2 PHYs
> on these variants. Also disable use of rockchip,usbgrf for variants
> where it is not required.
> 
> This should not introduce any breakage as the affected usb2phy nodes for
> RK3568 and RV1108 were added together with a rockchip,usbgrf phandle in
> their initial commit.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  .../bindings/phy/rockchip,inno-usb2phy.yaml        | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

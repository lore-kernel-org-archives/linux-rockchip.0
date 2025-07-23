Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3ABFC83F17
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 14:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tg2QzGO8XBZs5sweqOBGa3EpUm6IyAnsgdeplhmJ/iM=; b=k8KxbdFZ1Kc/si
	F1q6yK1apDPTvaIKv+yi9Pu39GEBOhY5sk/1Dfl4xKbOZbbpacQXKDaJIquaz6TgiIc9aqMLZOjhs
	il9sdsu1AAmjDUH/3zc8NwcFZANbwrrV8gYxlL8m7KMoo6Btv9wzB7hsxvUG75fbq0dZdEbtIcbJO
	Wdz1oLdxe8mI7dnm+MZ7E5gHGefwMvlL6l59kYMPAn/Lx3T0LrxUqWfVWEJOTyjPjJtOgXw6IbXMJ
	lnxb/6dKDwIpV6MqQzGr5t8GtRbW6vnkjx9ByM9jHSQQycBZ3UdecaHFRaAsRL8FJVZZ6cLARnbLL
	WZTkhhcjhLY/8wc7RQGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueagb-00000005Eny-3Icg;
	Wed, 23 Jul 2025 14:43:13 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueZox-000000056Er-1eDQ;
	Wed, 23 Jul 2025 13:47:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AE24BA5284A;
	Wed, 23 Jul 2025 13:47:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44745C4CEE7;
	Wed, 23 Jul 2025 13:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753278466;
	bh=Ot/UdzeQO5DarxCrrxun4QJevXgk61ADtTLiX9hMKWE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ROmbDO1nOW0cPCfvJhA900URnUlCLj90ozJ8F7CM30IeqieCaoF/AL2a/Djfp7dUi
	 H0L0gF0Ic8iw4wkct5db4uyGj5Cr/rNvxcA0KPKbjRuZNZFXBxsQQsVZQdlO2o8DqA
	 YLpURgK3MvDmZAgCFAKPUvcnzk6+7nIFHN+s/tWuAOaYEm5//s3NwQKXlSgiDJKNE8
	 arA7CThehzYsm69bja20t9VMvSTdbDk3/G8DiyzCh9ezn07QiY9fa8UZtZ0mlUh28/
	 RbhvGxrwcpQxJvMEQckPzhEF4fQYG67yAAzwtGANP5yJDNpxMSSzJJYFYjpVxCx6B8
	 8qYrTxRu5rzqg==
Date: Wed, 23 Jul 2025 08:47:45 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jiri Slaby <jirislaby@kernel.org>, Yao Zi <ziyao@disroot.org>,
	Heiko Stuebner <heiko@sntech.de>, Chukun Pan <amadeus@jmu.edu.cn>,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 4/5] dt-bindings: serial: snps-dw-apb-uart: Allow use
 of a power-domain
Message-ID: <175327846490.2145535.759049072094464087.robh@kernel.org>
References: <20250723085654.2273324-1-jonas@kwiboo.se>
 <20250723085654.2273324-5-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250723085654.2273324-5-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_064747_501824_5C2C161C 
X-CRM114-Status: GOOD (  15.07  )
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


On Wed, 23 Jul 2025 08:56:46 +0000, Jonas Karlman wrote:
> The UART controllers in most Rockchip SoCs are part of power domains
> that are always powered on. These always powered on power domains have
> typically not been described in the device tree.
> 
> Because these power domains have been left out of the device tree there
> has not been any real need to properly describe the UART controllers
> power domain of Rockchip SoCs.
> 
> On Rockchip RK3528 the UART controllers are spread out among the
> described PD_RKVENC, PD_VO and PD_VPU power domains. However, one UART
> controller belong to an undescribed always powered on power domain.
> 
> Add support to describe an optional power-domains for the UART
> controllers.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v2: New patch
> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

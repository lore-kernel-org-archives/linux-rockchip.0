Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16C46C28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 17:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JYygSw5/UgSGxH2UEKu6Q5ty2kiGELQ3DquLt8zcgdQ=; b=mBba7B96Pd6dUc
	8O0ZWSYFVyMJAW2obQU5fsY8nM4bhzM8rWSod9BxHVeMjH5F6hC4mpcYaV967O7VUpKfLCic5Euud
	hiMNHD9hGV/j0/O30CjFffo3hE4gNxD0eOvbnUP6o0JcrqH4mwI15vambBf8vhd8Gk0USF/ofPZcP
	5IOVPyJ5UiuNWhSYolGRzXheU9aGImmEnSKgPXmCyMgvtr7dOGQR4Y9pq244y+hVSD8qRPhW1GzsQ
	9nnJf28kNZ8MIpKcjz/RA7Ep/oc59jmcKFLCZDR58Nb0vVmUDcDTjyE86tjIMuyl4ZdBjGH/w9b66
	bb6naCngqb+G+mqlE8rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsPa8-000000095yC-3PQx;
	Wed, 12 Mar 2025 17:09:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsPXM-000000095Tp-28SH;
	Wed, 12 Mar 2025 17:06:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C1D815C5CD7;
	Wed, 12 Mar 2025 17:04:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3862FC4CEEA;
	Wed, 12 Mar 2025 17:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741799191;
	bh=Ku0zOGsgy8nW6TnGyeloxNuOmdzoa1Y4XqlQKPQdjPc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BUkNneDdy4EQ1GGzUpIewE4E4iTQmS0e9bVbzsMi3PHjvkj/O783BQSn5VTPFDGxt
	 vuoTI0RaaY5t6ILNVue9uAIPvOq0kMnkTgl7nCMOhXZlkF++JB7ZrZPOOPiRqrJdSk
	 +65SdIAYPreQ+sHathgQZz6hLTU6KOeAM/unXaVoXTrqu8VILDKEJqH5dmcueyfsfh
	 niXA2hvWzDVU/nG1EBbBiJ1bkU0LlMYugSqNxEEAGc8ohDaEnOlQAPw3Nmifoy6EmK
	 CwUPkmPAPJOnKVFkDCVOLiB3XBrEvLS4tzRW+29IxIToXuU+s4pcECGhuYLO0UzvRY
	 prTE+ERTfIQ3g==
Date: Wed, 12 Mar 2025 18:06:21 +0100
From: Simon Horman <horms@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH v2 3/3] net: stmmac: dwmac-rk: Remove unneeded GRF and
 peripheral GRF checks
Message-ID: <20250312170621.GW4159220@kernel.org>
References: <20250308213720.2517944-1-jonas@kwiboo.se>
 <20250308213720.2517944-4-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250308213720.2517944-4-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_100632_588952_6106465F 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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

On Sat, Mar 08, 2025 at 09:37:15PM +0000, Jonas Karlman wrote:
> Now that GRF, and peripheral GRF where needed, is validated at probe
> time there is no longer any need to check and log an error in each SoC
> specific operation.
> 
> Remove unneeded IS_ERR() checks and early bail out from each SoC
> specific operation.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

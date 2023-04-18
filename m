Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02B57C77B71
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 08:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MoRN9A54NUhBrwSSm24S/CriSsCYxs9GQ0NRrNUFkJ8=; b=TG9FviMDBSWm72
	PYr6ztFmumWZGWIWRhLxG46MkATDOM27u75m7OxVtVwvemUjJf+5zjEPK4zHNf3RKYDNSDbsMRA64
	QAIgUOG/NJPoFoRGWf732f6yGdu8ZrtLBSc1QOnibUtXxOaqpSztpskUPyN9ZJfF28J5+0DeDyW7U
	hQVBlEZv3Lh9h7pPScI4U+17ZTZd6FgJZFN5/e1ssIS6ZIk/pJ/NZPUSa+9H07jsyG4ONAqLetTid
	iKqbT+gwFv6gQpKCUlh5GsfBTDzAOVwOOGI6vaE3N40vEHKu0/rch9EM3mlsQe8g08799Fz3LJ5bC
	5bsTwUmdnTHKAqbx8ZOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pogGy-001FEB-1Y;
	Tue, 18 Apr 2023 08:01:08 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pogGv-001FBV-0h
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Apr 2023 08:01:06 +0000
Received: from [IPV6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2] (unknown [IPv6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 742AE66031F1;
	Tue, 18 Apr 2023 09:01:00 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681804861;
	bh=P44nwNTaTh4la/amu8IeDe814GXL+1rjHBN5zd5Piwk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Q62tPvH7xp+V1Kgdk2oTay47f1wbeVxcbCVGuUWM2rIvKQm8n4pC5+k2ONaLAFDPO
	 jklV4hKn7FBsFmIzUurIV10TMSbUlCXw0lkMGN21ButMt9Dfzdykiq5H4V+qu66iWq
	 81taUlhzMrI+fiL9jteTkYVknmiYY/jB0toqvTkVEnFbsZkCcXV9QtntYsWSBIAIkQ
	 hVfG7MX4CcmHzKmcIn5pfldKoLmebDjwjwfgnw5ofVuDsrUjIshmfy0bvloO1Ez6Y3
	 4wKz9FngXsWVGnp0vX31xDj+ea4hsFD41Z2B1W82Utnp6DTORpoG7D8Nsu0DO3TqbF
	 ic1Poall/QVaw==
Message-ID: <393e77b5-38f4-98ef-9cc8-003436d58ddc@collabora.com>
Date: Tue, 18 Apr 2023 10:00:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v3 1/2] irqchip/gic-v3: Add Rockchip 3588001 errata
 workaround
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Marc Zyngier <maz@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Robin Murphy <robin.murphy@arm.com>, Peter Geis <pgwipeout@gmail.com>,
 XiaoDong Huang <derrick.huang@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230417214035.101190-1-sebastian.reichel@collabora.com>
 <20230417214035.101190-2-sebastian.reichel@collabora.com>
Content-Language: en-US
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230417214035.101190-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_010105_490182_7B63EAB8 
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Il 17/04/23 23:40, Sebastian Reichel ha scritto:
> Rockchip RK3588/RK3588s GIC600 integration does not support the
> sharability feature. Rockchip assigned Errata ID #3588001 for this
> issue.
> 
> Note, that the 0x0201743b ID is not Rockchip specific and thus
> there is an extra of_machine_is_compatible() check.
> 
> The flag are named BROKEN_SHAREABILITY to be vendor agnostic,
> since apparently similar integration design errors exist in other
> platforms and they can reuse the same flag.
> 
> Co-developed-by: XiaoDong Huang <derrick.huang@rock-chips.com>
> Signed-off-by: XiaoDong Huang <derrick.huang@rock-chips.com>
> Co-developed-by: Kever Yang <kever.yang@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Co-developed-by: Lucas Tanure <lucas.tanure@collabora.com>
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

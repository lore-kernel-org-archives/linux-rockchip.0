Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEC8CC282EC
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKjnRf2BD0TG6qZ1H7Fll9RKP2SJOGhxuimDeh8dXDA=; b=djgzKon8P3AUmZ
	VyknKbYeLXea2MT5Wo86aKDhke+PjgFkLrWAHyEUfuzw9AK6bYRl2KfgfFSQja1nOVbObmFM30E8x
	brb7RK+cCERswxOzu8PFiSYN/Jw4pUIWXu1cxf9Hrp5b2rUcmpFNunF9JNrgYVISB/49wdi12LeFe
	NDpru1L1NovkydBhZErVS/kq9/l6zqA4AVU0G88bQfz8VS5NtX+cN9e0memIT/mcxMKVDSHtmMUV6
	9sT5WJWz4VaZ4DM3dv821hLqqaBXkrsA6fGXPC1IEHDeUPO1EXGecEX9AQeDLCkIfOedZB9peLHOL
	vnheeYilMonQa9PkEUzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7qb-0000000AXSF-3oIY;
	Thu, 06 Mar 2025 09:48:57 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6ml-0000000AMoV-1757;
	Thu, 06 Mar 2025 08:40:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BDF45A43CFD;
	Thu,  6 Mar 2025 08:35:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D622C4CEE0;
	Thu,  6 Mar 2025 08:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741250454;
	bh=HwImz1GMX2O9S3KEUJEyqhf1220r8G2ZhwB4rv3Pob8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AazKnQU3lpC/mR19m3RChMYXqnp60ihyTBG2Nk16YTshw439YbLi3UHc0ohM67o44
	 zorrj1vzxP80o3/BFJHS+1NUtAmzFFGo8lawnA1mhSYYLmDZ2KiwEPDZgCXZyDraIT
	 8THZR42XJinbfZJuUS8K4K03q2XrhXVToJ5CTkSyAReMzmj1ZrIy8Hz0Y+y4Yj4i3O
	 GdCVUsMW1VDXYZfrAbxc2Je1H9ya97y13KBzSpkagKRML7KdXEabFX7cygCfUXUMLD
	 gLthe4MlABJWL2NjDRAC5iQ4SqMaA8rIHj3Z4fZTTkd6WoDRI2OcRjOykULzHjNEeK
	 ex4UUiP3Xd0OQ==
Date: Thu, 6 Mar 2025 09:40:49 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH v2 4/8] dt-bindings: clock: Add GRF clock definition for
 RK3528
Message-ID: <20250306-imaginary-fox-of-hurricane-aa1fa9@krzk-bin>
References: <20250305194217.47052-1-ziyao@disroot.org>
 <20250305194217.47052-5-ziyao@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250305194217.47052-5-ziyao@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_004055_367395_C9ED3EBA 
X-CRM114-Status: UNSURE (   9.46  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Jonas Karlman <jonas@kwiboo.se>, linux-mmc@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>, Shresth Prasad <shresthprasad7@gmail.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Mar 05, 2025 at 07:42:13PM +0000, Yao Zi wrote:
> These clocks are for SD/SDIO tuning purpose and come with registers
> in GRF syscon.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---
>  include/dt-bindings/clock/rockchip,rk3528-cru.h | 6 ++++++
>  1 file changed, 6 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

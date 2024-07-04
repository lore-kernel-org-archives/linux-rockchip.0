Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71A53C3065C
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 08:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0M44HMrk7gCp/H/76+jbFu9xkikEzw8honJgvvHaXU=; b=Lrv2B31nKJqdW7
	ZDcIXfa4zEjn4VwrJ9a7cb6QCZJ3RkDTqaIfXVHpvRW2LdRDIu97lVA0KWYqu1onwySSx4YeNv9Af
	fJoSBo3pQfOg1uel8frMS75Tz8fvyL7725fz5lDScG4d0fOqHigaznUHAjjaSxZafq4navRNv7FNc
	mvQmXAOtNEy72x2JYu05XuraxPS0Um8pVlQCHmuJKGMAZO4BZfkhggBqb4J12/V4NB4UCYmaXpbw+
	dwC9Hj2UPYUxpFN2IRy852aeMfbR2WWkJ4gqeeuJ6MYPwZwHiMl7KzC9eD4JNIBD/xG5MbpLvt2lh
	BF54eZ7EX/e2x5OSkOgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPHqz-0000000Cb0b-1NzT;
	Thu, 04 Jul 2024 08:30:09 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPHql-0000000Cavy-1uze;
	Thu, 04 Jul 2024 08:29:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1720081793;
	bh=+1mAHgPt3THuLbRBMxm88DU/XThtegA8e9GHYVcJVnk=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=RJ7VLSBu70E4JQRr8j/FTeeGrJ+6X7wJcoARYxTLPL8lZTnJ4MCuDJlZhdtbkkQCB
	 6rCyD8yztQlLHrJ2bsPSHiYBveTKrY7WFM9fTSItwyinCLM4vx5UPP5uThlpLkQe+z
	 phAvHnj9Ux6sWNYJJu5bEnDLblXi6KYDWbK/EWwy+55dERsxki7uPPemYkpHjvQKuM
	 HbJxUTJUgX6xoXvKEYJMM0IPGbGLYsVPqGIg60xk4rsMNaUJCEL6dfb96BXWS3j60Y
	 LFMQgwbQ8+d2HJhkBZe4lhnTCDnUMpXxz+eQa3pYgiJUQpgSiaxgfq9M1AhbH7OD4w
	 L+CIbs+QkgSew==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2825637821A8;
	Thu,  4 Jul 2024 08:29:52 +0000 (UTC)
Message-ID: <4e7b019c-f685-4370-9f67-f45e0bcbc626@collabora.com>
Date: Thu, 4 Jul 2024 11:29:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Add clock provider support to Rockchip RK3588 HDMI
 TX PHY
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Algea Cao <algea.cao@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240620-rk3588-hdmiphy-clkprov-v2-0-6a2d2164e508@collabora.com>
Content-Language: en-US
In-Reply-To: <20240620-rk3588-hdmiphy-clkprov-v2-0-6a2d2164e508@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_012955_663526_48FF6371 
X-CRM114-Status: GOOD (  19.73  )
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

Hi Vinod,

Please let me know if there are any additional items required for this
series to be picked up.

Thanks,
Cristian

On 6/20/24 3:36 AM, Cristian Ciocaltea wrote:
> The HDMI PHY PLL can be used as an alternative clock source to RK3588
> SoC CRU. Since it provides more accurate clock rates, it can be used by
> VOP2 to improve display modes handling, such as supporting non-integer
> refresh rates.
> 
> The first two patches in the series provide a couple of fixes and
> improvements to the existing HDPTX PHY driver, while the next two add
> the necessary changes to support the clock provider functionality.
> 
> To: Vinod Koul <vkoul@kernel.org>
> To: Kishon Vijay Abraham I <kishon@kernel.org>
> To: Heiko Stuebner <heiko@sntech.de>
> To: Algea Cao <algea.cao@rock-chips.com>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> Cc: kernel@collabora.com
> Cc: linux-phy@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> --- Changes in v2:
> - Collected Reviewed-by tag from Heiko on PATCH 1 & 2, and Acked-by from
>   Krzysztof on PATCH 3
> - Updated PATCH 4 to make use of a forced consumer put in
>   rk_hdptx_phy_power_on() and rk_hdptx_phy_clk_unprepare()
> - Link to v1: https://lore.kernel.org/r/20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com
> 
> ---
> Cristian Ciocaltea (4):
>       phy: phy-rockchip-samsung-hdptx: Explicitly include pm_runtime.h
>       phy: phy-rockchip-samsung-hdptx: Enable runtime PM at PHY core level
>       dt-bindings: phy: rockchip,rk3588-hdptx-phy: Add #clock-cells
>       phy: phy-rockchip-samsung-hdptx: Add clock provider support
> 
>  .../bindings/phy/rockchip,rk3588-hdptx-phy.yaml    |   3 +
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c  | 206 +++++++++++++++++----
>  2 files changed, 176 insertions(+), 33 deletions(-)
> ---
> base-commit: 6906a84c482f098d31486df8dc98cead21cce2d0
> change-id: 20240617-rk3588-hdmiphy-clkprov-f05f165ac029
> 
> _______________________________________________
> Kernel mailing list -- kernel@mailman.collabora.com
> To unsubscribe send an email to kernel-leave@mailman.collabora.com
> This list is managed by https://mailman.collabora.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

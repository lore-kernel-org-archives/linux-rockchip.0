Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CBFBC46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jan 2024 18:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dIf5+sRiO5RQETs+qwei700icFeJ+J1NubnQ/qLIMQ=; b=OuY/SVq99pUngj
	CeLSTjbilQW1Idr6zwxQ6FteF8Jpqq0vcrnegWxZdW4fKCr9cKSESj26F8tDU8YfPodgGYggKy9IU
	7/oeKaPIvoLuFvLtoHe6DJua0PbYg7oMOAax/n2fUAd31GHlCucxGeOdXaY/0t6xR6UAz7bh6yf+C
	yafqEqgI0l5ip/OHDlONeyHFRApcvEeDu7CYHBhiencGubFpk2LI94eJdwtH4Dzw/sNk6PdYCHJx9
	ceMGD98G3xFJBAhfhN18SVywRzh44PX+Xjf9jTYrBamOkvjmMh8IfXNP9c0W4cTT2HyovytdY9Vgv
	zKxqsEygsjxYAXaLGAOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKjuY-008mYA-39;
	Tue, 02 Jan 2024 18:54:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKjuV-008mXg-1u;
	Tue, 02 Jan 2024 18:54:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 33E20611F1;
	Tue,  2 Jan 2024 18:54:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9FB8C433C7;
	Tue,  2 Jan 2024 18:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704221681;
	bh=xX4Lln/6UdI6zrqWnFMmp4/+v7+YVcoSF10ZkFApq7k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KC1iyssykDPzsGGG8MaQUfQHFqPp9xFvFt+UGJ3NoER5V7DLBYHHKxQE5/NTsvEtp
	 lAcAe9lD/iqfAocAh/G1TQrqI37A5b7whMAF9n16lm1A70c1gsXLhmN5dsE4QQl0xR
	 knYlcbH36heVUUc+OCtO+a9ycpfGU4DH44zi+oxqZlFQ2ECWjMA0zydn5+dAYbAp0E
	 VaBucANI9tpayWfHX6peiWGA8IKD77Cuxrmlv+kEfsfJ4Lt4pBNpCQMZOClBv+Lvny
	 sYb56s7uBk9Ss0gCpfBzXtDAwkdrxiNQn2+rpnwhO4McBCLAUM9G6XGKk29XfyILlx
	 CMik/wcA9IcRg==
Received: (nullmailer pid 3374826 invoked by uid 1000);
	Tue, 02 Jan 2024 18:54:39 -0000
Date: Tue, 2 Jan 2024 11:54:39 -0700
From: Rob Herring <robh@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>, Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor.dooley@microchip.com>, Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 01/29] dt-bindings: display: rockchip,inno-hdmi:
 Document RK3128 compatible
Message-ID: <170422164796.3374067.13785716763431704594.robh@kernel.org>
References: <20231222174220.55249-1-knaerzche@gmail.com>
 <20231222174220.55249-2-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231222174220.55249-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_105443_692007_7AA7E487 
X-CRM114-Status: GOOD (  14.22  )
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


On Fri, 22 Dec 2023 18:41:52 +0100, Alex Bee wrote:
> The integration for this SoC is different from the currently existing: It
> needs it's PHY's reference clock rate to calculate the DDC bus frequency
> correctly. The controller is also part of a powerdomain, so this gets added
> as an mandatory property for this variant.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> changes in v2:
>  - clarify that the controller itself is part of the powerdomain
>  - simplify clock-names
>  - made power-domains property only allowed (and required) for new variant
> 
> changes in v3:
>  - collect RB
> 
> changes in v4:
>  - none
> 
>  .../display/rockchip/rockchip,inno-hdmi.yaml  | 40 ++++++++++++++++++-
>  1 file changed, 38 insertions(+), 2 deletions(-)
> 

Since I applied the conversion I applied this one, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

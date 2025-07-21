Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0763DC83F25
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jul 2025 16:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4N2UaYkAOIg/U9GFzeLCrF+VBS4kgnHKq5ioMabe/E=; b=zWk9oenhejMe3U
	cSMqx1pKjD8tKP/znZRMzsg1d4xHLNECn9ZuluzHFawurbDPvWTOqUEc0hBM2G6RH4JCtCD/XluIo
	11Ab4CagyHn1xvnhuVLWa9kxbh5l9OCukyLMWeAY8mkuHDex/hIU4fzXpiaiHgh9P6QReNxyiK4lg
	8YgGbBf1QXG7NAOKLkZ+HpYSMBs7/PAcQ9zPpC7HIRPMW0EeGesd1O1wZH2P1N3PJnVPKZ7MjXYGk
	W9BJCPGyE2oHuPA+Nebmt9yU/l4vh4gRzY+KRnp8cxCnDEBQuBUIwP58UJ+Dqq891h/25mH7ucKFe
	QWOLD/GlR/nZ8X/QpkbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udtfw-00000000EA7-329i;
	Mon, 21 Jul 2025 16:47:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udrzy-000000001TZ-1QQL;
	Mon, 21 Jul 2025 15:00:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AA28961360;
	Mon, 21 Jul 2025 15:00:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39475C4CEED;
	Mon, 21 Jul 2025 15:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753110012;
	bh=VZAFEBYGkW7zkA9QHXJ+nLYWvFYNy70boXd5O+3hoTc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IB/CSD6Vq+QSQx7hD4TITcqcR5SxQBlyS50DA0avSGhIjlvqkcRKYI17VaEjvhG9G
	 8EkxIyAshM5qj5/Ca5ztlQkj1/5by7Mn9fXzKf4k03zrNSF4q6xKRa+9ynRjtY32c1
	 koQ/MqhOdb++vqwtjVnKSWpw8D55HKl5tj8mVRhwr8N/crPeyeNEJXMwY/S5CE8p8V
	 kD7P+aQdsXlW2q/DsTXwF+7EQEN/Fa5+0Tg3w6c5t9/A3e3yqdRXuhO3vmRAcdsZfN
	 IVxJw+tZ2vk2x/To/uEb0vgzEKb9n3+yTioSZBLwKbhoPU54izO08bAtR3kGxOEwzH
	 TX8rvX67snRIQ==
Date: Mon, 21 Jul 2025 10:00:11 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Subject: Re: [PATCH v9 06/10] dt-bindings: npu: rockchip,rknn: Add bindings
Message-ID: <175311001041.629023.12786244001330541185.robh@kernel.org>
References: <20250721-6-10-rocket-v9-0-77ebd484941e@tomeuvizoso.net>
 <20250721-6-10-rocket-v9-6-77ebd484941e@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250721-6-10-rocket-v9-6-77ebd484941e@tomeuvizoso.net>
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 21 Jul 2025 11:17:33 +0200, Tomeu Vizoso wrote:
> Add the bindings for the Neural Processing Unit IP from Rockchip.
> =

> v2:
> - Adapt to new node structure (one node per core, each with its own
>   IOMMU)
> - Several misc. fixes from Sebastian Reichel
> =

> v3:
> - Split register block in its constituent subblocks, and only require
>   the ones that the kernel would ever use (Nicolas Frattaroli)
> - Group supplies (Rob Herring)
> - Explain the way in which the top core is special (Rob Herring)
> =

> v4:
> - Change required node name to npu@ (Rob Herring and Krzysztof Kozlowski)
> - Remove unneeded items: (Krzysztof Kozlowski)
> - Fix use of minItems/maxItems (Krzysztof Kozlowski)
> - Add reg-names to list of required properties (Krzysztof Kozlowski)
> - Fix example (Krzysztof Kozlowski)
> =

> v5:
> - Rename file to rockchip,rk3588-rknn-core.yaml (Krzysztof Kozlowski)
> - Streamline compatible property (Krzysztof Kozlowski)
> =

> v6:
> - Remove mention to NVDLA, as the hardware is only incidentally related
>   (Kever Yang)
> - Mark pclk and npu clocks as required by all clocks (Rob Herring)
> =

> v7:
> - Remove allOf section, not needed now that all nodes require 4 clocks
>   (Heiko St=FCbner)
> =

> v8:
> - Remove notion of top core (Robin Murphy)
> =

> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
>  .../bindings/npu/rockchip,rk3588-rknn-core.yaml    | 112 +++++++++++++++=
++++++
>  1 file changed, 112 insertions(+)
> =


Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D45C606A327
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 07:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=O4pECVo5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=PG0ErR3g
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=U7hBF8mgKu27ln0NccxyxyTAcI8eb4Tv6tMA3A5ZEfo=; b=O4pECVo5mqAoudYn+fzkRhgJzW
	cdKatDMBSa5j8OJkDDfPQLjuyxT1Atd6koJ8KSotgu8w+b6qE00P8dn7OczwTq+7s1ZD9PGUbaaiZ
	O5CxXKAw/e++J3mno5F9XjqmoQCapigNqhNI0YgcLq6PnuzJq33eRkxL+xzOHumjw9TXESGfG/CR8
	KUNwf0l2wpKtg6KbM2O/USDhpN/l+GgA+cRC+d5CQovSxCoJTBOAtgcFvkf5Tv9/lsW+jw2ENDoeV
	ARmAWf9TuLwX/Oyat1u8AhQT8EyMQ6c3XIhpMZD6tH+VfKFj95b39ZsiEUVn8ZNME2oHyXXEuO/ZJ
	2u0ojPlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW7Th-00000008tjS-1Kwm;
	Wed, 25 Nov 2026 07:31:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW7Te-00000008thS-1pAn;
	Wed, 25 Nov 2026 07:31:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 13BED4011C;
	Wed, 25 Nov 2026 07:31:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0EAE1F000C4;
	Wed, 25 Nov 2026 07:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795591897;
	bh=VBOZGBr55Ujwl78qDcJLp8xc/aTsL0m4eKXQ3BODtCU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PG0ErR3gAmTnmjd1zmcQ4dqGICFZ9/gVAxZhRY5ICPtEvjZXvnumFGUXPCvUnUM57
	 V7Ox3LPxJ/wqw5+ZP0v6lvBYkkzSOopSVTpyivztvutTZr1ReiNz//aM/+bvxfJqB8
	 mCAVVGL2FBMZCmX+yS3Yfq1JyPrEWPWbduh4CLW6sYREGtigXHCHuMa5qMt76KzEME
	 DOFFZL3mbaq4B/CGkkPNf+IZfang3VZrolXR/dyvBcclg9E35/1L8AxSwBir024KU6
	 Cc3hc8mq2GNXx4e5L5QgfSIj1SSjtM9Wsu9qmLciKh2Pu3oSLW/1FW6g98iY+Pw+5U
	 Y7gJQasbU6ElA==
Date: Wed, 25 Nov 2026 08:31:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Subject: Re: [PATCH v8 04/18] dt-bindings: display: starfive: Add
 starfive,jh7110-hdmi-subsystem
Message-ID: <20261125-tasteful-brown-galago-a6725e@quoll>
References: <20261124-jh7110-clean-send-v8-0-de92635dd857@samsung.com>
 <CGME20261124155406eucas1p23a523deb496c21cbf3da3724812a8101@eucas1p2.samsung.com>
 <20261124-jh7110-clean-send-v8-4-de92635dd857@samsung.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261124-jh7110-clean-send-v8-4-de92635dd857@samsung.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Joshua Peisach <jpeisach@ubuntu.com>, Conor Dooley <conor.dooley@microchip.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, William Qiu <william.qiu@starfivetech.com>, linux-riscv@lists.infradead.org, Chaoyi Chen <chaoyi.chen@rock-chips.com>, David Airlie <airlied@gmail.com>, Emil Renner Berthing <kernel@esmil.dk>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Dominique Belhachemi <db@domibel.de>, Robert Foss <rfoss@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>, Andy Yan <andyshrk@163.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Hal Feng <hal.feng@starfivetech.com>, Maud Spierings <maud_spierings@murena.io>, linux-rockchip@lists.infradead.org, Icenowy Zheng <zhengxingda@iscas.ac.cn>, Marek Szyprowski <m.szyprowski@samsung.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>, Thomas Zimmermann <tzimmermann@suse.de>, Manivannan Sadhasivam <mani@kernel.org>, Graham Markall <hello@big-grey.co.uk>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Xingyu Wu <xingyu.wu@starfivetech.com>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, Paul Walmsley <pjw@kernel.org>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Sandy Huang <hjc@rock-chips.com>, Conor Dooley <conor@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Philipp Zabel <p.zabel@pengutronix.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Yakir Yang <kuankuan.y@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 24, 2026 at 04:52:40PM +0100, Michal Wilczynski wrote:
> Add the dt-binding for the StarFive JH7110 HDMI subsystem.
> 
> The JH7110 HDMI IP is a monolithic block containing both the digital
> controller and analog PHY in a single register space. This binding
> defines the parent device, which holds the shared register map, and its
> two children: the PHY and the controller.
> 
> The two have separate resources. The PHY takes the 24 MHz reference
> clock and provides both the pixel clock, which the VOUT clock generator
> routes on to the display controller, and the phy the controller uses.
> The controller takes its clocks from the VOUT clock generator. What
> they share is the register space, which the parent maps.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  .../starfive/starfive,jh7110-hdmi-subsystem.yaml   | 95 ++++++++++++++++++++++
>  1 file changed, 95 insertions(+)
> 

DT bot reports here a lot of failures. I don't see immediate problem,
but something feels odd.

E.g. https://gitlab.com/robherring/linux-dt-review/-/jobs/18332570769/artifacts/raw/build-15017782.log
(see rest on DT patchwork)

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

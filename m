Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1078C61DB2
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 11:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3yXePbfjf/u/UEWrOaLSVxiN/JCyTud/OPkIWTSyQY=; b=X+mQ8w4ElINvcl
	6idPEX6C/Z8Iw3nTXbC2kQbCvHVZwTUGO7HY3hqyC4wm5lGzf9SrNe7qoqLTtPPbmA6CFLFWlJ8VW
	O6yLdRPzEo8gwDrUYRXaTHnFhRyYGcbbAlSftR1gepNa6/MaSXbPwwVdAoZJmBVK1EydVYcgk05Cp
	xXPC9TokpmQ9iQX7sEUqCrQyDJQBQ88AbkWk8zlkzICV+2U6VFKRKvcD9I9CnuPtUHaZ/tEU6s6fv
	lLpGgAuN0nwyupsL0oJCqiFQWt9VL2r+DcLxEqPeTtgcV1bymfdKZfmGIAKuuGbywYKpoK1/NdlEs
	6t7j5hBd+0qX2nnbfrPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2cX-0000000GArk-2jzr;
	Fri, 13 Jun 2025 11:30:53 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ1Ko-0000000G1ij-2SPQ;
	Fri, 13 Jun 2025 10:08:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1749809308;
	bh=s4XVAtXusftoKHAg337hEJV0678SCfgl4e9tbX5giyo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kD6LEarEzpWs4xLCDq8R3pAuynqJ4ZeqL34E45wr5koEtk0OLXpj99IXiZOPcwdQb
	 p5Iq05L9iBR7ggI0J3pXeWkLfxIzC3OBARgVEp3jK9TAr7ALCYeI+ySY9dPlZghRWd
	 Ds1PASLejz3jlgX4r4PjG++FYlwy8Rc8gu87Mn+GzZ600aDAYXtVO74+/IlhFnWIk9
	 Hv+q+thA08ckoQ1i+NLj6LtKv1PkVv0h2O7VdtYvDkBvbwpwpjDynfZcaz8HA01UMZ
	 HDx/hbVFOzgW4uB7GNYiYaXRC4ZeSjf1z4oyAriMshNGBeBv5R1piYPogkUgCzKZ70
	 JMEyPwRHQDWzQ==
Received: from [192.168.1.90] (unknown [212.93.144.165])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 914CA17E0C18;
	Fri, 13 Jun 2025 12:08:26 +0200 (CEST)
Message-ID: <5a1b4a52-2d6e-4270-82ac-494afe5c6556@collabora.com>
Date: Fri, 13 Jun 2025 13:08:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/20] drm/rockchip: dw_hdmi_qp: switch to HWORD_UPDATE
 macro
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sandy Huang
 <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, llvm@lists.linux.dev
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
 <20250612-byeword-update-v1-10-f4afb8f6313f@collabora.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20250612-byeword-update-v1-10-f4afb8f6313f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_030830_812312_24EAB9AC 
X-CRM114-Status: GOOD (  15.14  )
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

On 6/12/25 9:56 PM, Nicolas Frattaroli wrote:
> The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
> drivers that use constant masks.
> 
> Replace this driver's HIWORD_UPDATE with the HWORD_UPDATE from
> bitfield.h. While at it, disambiguate the write GRF write to SOC_CON7 by
> splitting the definition into the individual bitflags. This is done
> because HWORD_UPDATE shifts the value for us according to the mask, so
> writing the mask to itself to enable two bits is no longer something
> that can be done. It should also not be done, because it hides the true
> meaning of those two individual bit flags.
> 
> HDMI output with this patch has been tested on both RK3588 and RK3576.
> On the former, with both present HDMI connectors.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

This looks good and works fine on Radxa ROCK 5B (RK3588).  Will also
verify on RK3576 as soon as I get a board (expected next week).

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Tested-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

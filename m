Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7B3BCDD553
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 20:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUT03wVZer6IbeKxgJZK9415pm8+r5ZJV6ourJM7GU4=; b=Jz15m42UyymRwG
	3MAoJ8whlicyd6IXVJ9wnkhgtNj8JWtQVfhmFeVmCmI2MwqqXUqypZXVgPvvw27Mpwl/aXA83p4nt
	HtrmTmHBmqFeEcSRkZJr9CDkuxbaM+0sAsmQ0SqQd+mPibKmcyAHN4tZ1zdaBrE98L2T7VkX9jI0g
	jh+RKD2q1apb9DRAvz4g67o9mPQ7jfE3640JVoH1Zb2hwsbVyuXyJ5NAo9M42Dx79ab73e3ua61zO
	7oEHj+55aWsxRQ3WPqsSkgKcFKbYwzzI+PenP4YHkETEK2Hak+SkXBjKDM92ZnmLZrhB1G2k50Kn7
	uAnA07gEODvXgPHG28vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sr11H-00000008vZ1-0Rqb;
	Wed, 18 Sep 2024 20:11:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sr108-00000008vQ7-3zqM;
	Wed, 18 Sep 2024 20:10:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ED79A5C5A55;
	Wed, 18 Sep 2024 20:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C73A7C4CEC2;
	Wed, 18 Sep 2024 20:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726690210;
	bh=HP/zRaWLm37a0O/YnwD/z87FqywELzKP69C1iP96//k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ab4D6i2t1X8aYzasuMglH+8lIcj884En9JvHGqiJKCssXAyYDvgusG7KW/oQdp3bo
	 2rvibPnGOg/5tO6Yh+uoiJQSy+vWkregpERB2YcXHJux/E4hwcjhvZbUxVbI7O3rJ0
	 jojYEpuNO4DC7gb2zSdlCBH5Ffmx3RPGX0FnOIJBSi2dm9Cs8QVcZSySqewnPZ5S5l
	 m5pVhJRlYTf0VeSdqjP0za6numHxK/9wyjS9y3vYp9a3T3FbW9KcwG97f+gOT9Pc6Z
	 1+KprkgDs0slZmTyvMm9eC/AA1brksiHPZ5vzUWj6d4CnlTYyFPYLttA42Ht+u2RRw
	 MCgNSIH5L3mLQ==
Date: Wed, 18 Sep 2024 15:10:07 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, kernel@collabora.com,
	Jamie Iles <jamie@jamieiles.com>,
	linux-arm-kernel@lists.infradead.org,
	Jiri Slaby <jirislaby@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-watchdog@vger.kernel.org,
	linux-serial@vger.kernel.org, Dragan Simic <dsimic@manjaro.org>,
	linux-kernel@vger.kernel.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Elon Zhang <zhangzj@rock-chips.com>,
	Maxime Ripard <mripard@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Alexey Charkov <alchark@gmail.com>, dri-devel@lists.freedesktop.org,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>, Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Tim Lunn <tim@feathertop.org>, David Airlie <airlied@gmail.com>,
	Ondrej Jirman <megi@xff.cz>, Liang Chen <cl@rock-chips.com>,
	linux-spi@vger.kernel.org, Jimmy Hon <honyuenkwun@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v4 6/9] dt-bindings: watchdog: Add rockchip,rk3576-wdt
 compatible
Message-ID: <172669020548.2047533.8189624285795132059.robh@kernel.org>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
 <20240903152308.13565-7-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903152308.13565-7-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_131013_196774_0C8405C0 
X-CRM114-Status: GOOD (  10.52  )
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


On Tue, 03 Sep 2024 11:22:36 -0400, Detlev Casanova wrote:
> It is compatible with the other rockchip SoCs.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Guenter Roeck <linux@roeck-us.net>
> ---
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

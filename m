Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9060ACA100B
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 06:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUdq4CSH6rO07tDWRGus8+YMU4JjBJprWECqqtrideg=; b=tpvLSzL8EGh567
	rJdflHJzhl3bRKauZFkushf2Se0Swc6mvmXKmgqW4L4zyWNuCsW4cJEFV+l0071a4ly79Pkb/ONYI
	7ajzVhlPYzwZ6MBV7qmt2RCARzqrOgxV944Lmf/kZSXjWTvu5mdrpSstmf79Lf+qC0+RVr95fGL8E
	0Ma+bLj9O73y5c+pY5YohEFyAA1vtyVm8sLO8uTliVCxfKf1XQDhkSZXAfDbuoNt+Buso6RyDGVlr
	IbUNcT29gvXwah3QtVTiMQ8v9G1PRUkGq/8+oZAhdHqORzFvYKmQEgE4jWUnpDk0esHdm/HCgLL44
	XhwwqqCgnRU+9nu63gCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skHCc-00000008fhb-3DRh;
	Sat, 31 Aug 2024 06:03:14 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skHBV-00000008fUm-21gE;
	Sat, 31 Aug 2024 06:02:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B66EBA40182;
	Sat, 31 Aug 2024 06:01:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83938C4CEC0;
	Sat, 31 Aug 2024 06:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725084124;
	bh=q5otYUXCmcRRQaIS/CDJPlk+t95npFIXn2p5Mj8FmQ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=neayYJS6jQqJ0B5QAvUMLo6Kur102JeHu6b+CHM4FSdmm0b0I2Q7Ag7TIXl6ebtqG
	 rQCBGvfpwjaDiib9698az8U4UNV/+aqLi7fhdoWKHl7aY6Kiei/TuUZFt11b1zyLOJ
	 5utsJZgUKfq0SnDXakgk/8Ck+JeyfUwYXkJH/Vc7iATsDMQRRG1kwGORndOQ1YeKFN
	 9K5k8Xpt5aioAF+0/NbuKTqpFc9IA8CA4i9xai1l1fyVR0EhN/R1zenoS1F7e/5Vqt
	 N+xL8G2XVaoISXoKzgT0lLvAM9m+uY9iFeGU/WPcQNjJst8w/FLBfPw5PCzFz1vspV
	 Cs0WsED75PQCA==
Date: Sat, 31 Aug 2024 08:02:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, David Jander <david.jander@protonic.nl>, 
	Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v3 00/20] can: rockchip_canfd: add support for
 CAN-FD IP core found on Rockchip RK3568
Message-ID: <ecj2sv7xhmu6plfnrq4ezejn3d43cl5mwutvkwh4u2bqcmna3k@2jykwgizuxmb>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_230205_609490_A384D26B 
X-CRM114-Status: GOOD (  14.56  )
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

On Fri, Aug 30, 2024 at 09:25:57PM +0200, Marc Kleine-Budde wrote:
> This series adds support for the CAN-FD IP core found on the Rockchip
> RK3568.
> 
> The IP core is a bit complicated and has several documented errata.
> The driver is added in several stages, first the base driver including
> the RX-path. Then several workarounds for errata and the TX-path, and
> finally features like hardware time stamping, loop-back mode and
> bus error reporting.
> 
> regards,
> Marc
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
> Changes in v3:
> - dt-bindings: renamed file to rockchip,rk3568-canfd.yaml (thanks Rob)
> - dt-bindings: reworked compatibles (thanks Rob)

You never tested the patch before sending.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

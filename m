Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FBE6E77188
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Dec 2024 20:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhEumxuiJk7uiLeEe0agG/TBRm76EO37f5/fa2Y6y+I=; b=2TZZ3hSc1ilvwz
	upaWbNUmElD0i+K+ecZlBPN5jV99GQCpGqqxzjGJ7i6f2ge5aEegK10UdxuyilnxCtopY5g6G3isE
	1eWG6r8egtLWFlVQzg0Hu9nBjB2zJRFc7WCX6syxdnECJyy2j9S48/A0VdSUbr5sPtZ6B0V+Demlm
	F0a5qOFMJLHAGuJI0OBR7FL1wGIfZ1BQg5nQKpISJHIRn3D3ecF1HAM15d/wAVA1vFX1Q+HXYISjU
	ob7BqCqHpKHSKcljCSQkQrWyEnR1D/CfXkMD3qzqbcfV14NoYoPBMFLeTJ93L1wDdgl0gaa5a4ij+
	+YM91y7/Py5+NtdUHsMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSLwR-00000005m3u-1OeC;
	Mon, 30 Dec 2024 20:00:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSLwF-00000005m18-0pAp;
	Mon, 30 Dec 2024 20:00:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 056B55C5CB9;
	Mon, 30 Dec 2024 19:59:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2D77C4CED0;
	Mon, 30 Dec 2024 20:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735588830;
	bh=XVXy2fuy5cQTUl1NQssku78zv2A1hYK9bqf3cTVcWes=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=psVByz0Bj8dcUEvUVyu8mGyW0LVhHTqj2N8kkeJ9NvyNzTt7KQxEe/3moBnM90m71
	 1+DLeczYoHERZzKKlFlC9NQLIf8EQFQuCKlQ09ioqmKdMGH5vHQUhSI0VN+bKTEm4Z
	 eMZ7l3LTVsEQWg5Fb4aX/YRefAx/kYtXEsHAGcaiffgiuNyMzshtfyseM+9BPh9irW
	 WJJPM/o+JpImJ8+4edTAHVH7lN8eJ4Ti4iipO/t45aDPXXNpKWENqp65cJpquo/nzu
	 Lt1mS4neY1C05rOk6jruKFQ1Zn68ghh3fbFWYGnWVvz0WNBgkvygloODhbG6C8Aqjh
	 SDpJ/iumEpaQg==
Date: Mon, 30 Dec 2024 14:00:28 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Val Packett <val@packett.cool>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Alexander Shiyan <eagle.alexander923@gmail.com>,
	devicetree@vger.kernel.org, Mehdi Djait <mehdi.djait@bootlin.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Mehdi Djait <mehdi.djait@linux.intel.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 2/6] media: dt-bindings: media: add bindings for
 rockchip px30 vip
Message-ID: <173558882822.2475187.7583820035837779776.robh@kernel.org>
References: <20241217-v6-8-topic-rk3568-vicap-v2-0-b1d488fcc0d3@wolfvision.net>
 <20241217-v6-8-topic-rk3568-vicap-v2-2-b1d488fcc0d3@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241217-v6-8-topic-rk3568-vicap-v2-2-b1d488fcc0d3@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_120031_278739_A1BA0AE1 
X-CRM114-Status: GOOD (  10.20  )
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


On Tue, 17 Dec 2024 16:55:14 +0100, Michael Riesch wrote:
> From: Mehdi Djait <mehdi.djait@bootlin.com>
> 
> Add documentation for the Rockchip PX30 Video Input Processor (VIP).
> 
> Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> [revised description]
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../bindings/media/rockchip,px30-vip.yaml          | 123 +++++++++++++++++++++
>  MAINTAINERS                                        |   7 ++
>  2 files changed, 130 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

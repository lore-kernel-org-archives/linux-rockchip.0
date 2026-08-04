Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D45DDC55172
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 06:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/UQdpNdA3z6P8pG0rAOpVMKZF/Ih4MHrwIz5/DFZOU=; b=yyb4b7EJiF4oSc
	iCFSZWjThoEkCPS9vsSsyr+Hi+Y23r413MwavLSbpMZ2CgqE2x3EG/cvFY26uV0fFm6PY+uKMOmP/
	n9nt5BWUD69ngsCnOxApn5E8YqLPuvmq6xnGFRGX7++GKdKkWDAcDApZepJzBYTvOGE2JnR9jiRO/
	OIS9lC+ampQBG90hhmf/WFtFVXoyohJYY4TDbnlDoYfWEuZSZDzm/Szsm7LRq10CvC2ZT+8m5c12W
	QHPKciYKAhtwUi0w51Z2RIOSW+IFs8cbOL9UhDP9c3O4lM8taj9kEyimgo1q4DT9mW+xcqYBy9CPQ
	yvR9f+ePYQkAMWRPQVSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr93T-00000001A8L-1lwM;
	Tue, 04 Aug 2026 06:55:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr93R-00000001A7o-2asL;
	Tue, 04 Aug 2026 06:55:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E1F6260A59;
	Tue,  4 Aug 2026 06:55:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C7931F000E9;
	Tue,  4 Aug 2026 06:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785826512;
	bh=IwA9Whetrb7CNUR7iia3u3K6ci1E63s8f3RwkpXlLlU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YjQHWkAhQfHOgYdHvyfbBibVjttKRpJOv2AMj965eZRz0emODYXuipK8WyVVSqTgd
	 Ugp1ze89W4TKvz1qLroZmnVYC1/XQEt+oKFXNhHNvW6v7iJuNv/bk5VoeTYnGHGLZq
	 yNRiHkr2S0VFqH32+lVIlYdYpQ27IKnM0TJn5NcpheuB/mdfIfW+4bQDIVCgNaj24C
	 hY8z2HsvpUZKND8gHq0oSA+M9ifgb1oWwqvkVdeXUENFOH9zyyZuPFZPzbOO1djavU
	 udEh0eIIF0xs+T8L5btfl6EdXNM+ACjqNGUtB5pkfFUB07OOryritU9cGhehdOU7yk
	 6K1n0VKi2JBmw==
Date: Tue, 4 Aug 2026 08:55:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, 
	Fabio Estevam <festevam@nabladev.com>, linux-rockchip@lists.infradead.org, 
	Jonas Karlman <jonas@kwiboo.se>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Jeffy Chen <jeffy.chen@rock-chips.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Riesch <michael.riesch@collabora.com>, 
	Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, Yao Zi <ziyao@disroot.org>, 
	huang lin <hl@rock-chips.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/6] dt-bindings: soc: rockchip: grf: Add RV1106
 compatibles
Message-ID: <20260804-steadfast-agouti-of-stamina-efeedb@quoll>
References: <20260729133609.3465563-1-sjg@chromium.org>
 <20260729133609.3465563-4-sjg@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260729133609.3465563-4-sjg@chromium.org>
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

On Wed, Jul 29, 2026 at 07:35:50AM -0600, Simon Glass wrote:
> Add the compatibles for the general register files of the Rockchip
> RV1106: the main GRF, and the per-bank GPIO IOC blocks used by the pin
> controller.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

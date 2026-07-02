Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CD4AC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 07:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJQRNVYOvvQ82Ewv+ioA+eP1qaQHQIJiZwNjoR21loE=; b=iOBBiaziyiYAuu
	bFw3kYJye8NKOfK2XdSRrjF1fYtW6k6bAqB0aDOxhcnE5cIPyNDXBZE97Hm4ggZVxdWyr7MZjXELm
	u3e/szyyirDzJQMbCkIM9V4rdwPS9bjoTKSpNFvTz/eq+6yd7HXEHeAPigp69x9lrJf1jt7yKupdj
	5Un5Atuv6U57rvl75HXhU+/WRPjPm2v4DEGq0yVo+igXwY3e8Z/16jveiJO0H2xoqsThR/tt/ed/y
	2Q0DYButrsWF8u3uARVwEpRw9GgopT/ULuE94DJluLA0I4UxlJwhByzn8ztl5jXN7+bMzwR6fYwJU
	3MzRiZ/arX1IO7a6xPWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfC4v-00000003lLv-3DzE;
	Thu, 02 Jul 2026 07:43:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfC4v-00000003lLO-0b0U;
	Thu, 02 Jul 2026 07:43:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2DA9160125;
	Thu,  2 Jul 2026 07:43:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A82C71F000E9;
	Thu,  2 Jul 2026 07:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782978199;
	bh=wB9kFnvBOQDELA0/LuNhygIBNyEdZSej8PAkRHVCjqE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QeKndD1jWyB9gTZ81Av+/zXi5j2zbSXhrQTXLFHordVsRkH4deRZX8bPKCSyl5Yj4
	 zBuTuWtKj2W1PTTrMQnzTRDh9y5zGH71nfyvQ7nGQ5+nM/exM/LK38s8hyQWiv4ZC/
	 w/lF0KgRbM4gOY1skAcLSafV1hgRkGWzIGSqK+PhTkauzSJOossHdTODh5+8nvpaiv
	 JbSj9OpdmcuSDkyWwc/zVQOGFZkcq8gmhRR348rR+JfMt3FRBcDVi0J+1pYT3ukc6L
	 kBOuaVQ6gndpeZ9j97DHSiKtQQTwGugnc1XWqVJtA6PdGwKV+vUDapDJiO1XTCRzg4
	 vzS2Ftt0JJ7Tg==
Date: Thu, 2 Jul 2026 09:43:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: 1579567540@qq.com
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, linux-can@vger.kernel.org, 
	Vincent Mailhol <mailhol@kernel.org>, kernel@pengutronix.de, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: can: rockchip: add rk3588v2 CAN-FD
 compatible
Message-ID: <20260702-quantum-hairy-quail-e3eee4@quoll>
References: <20260701070128.2096267-1-1579567540@qq.com>
 <tencent_83A61C9A79199D04CC118A8026C435BFB907@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_83A61C9A79199D04CC118A8026C435BFB907@qq.com>
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

On Wed, Jul 01, 2026 at 03:01:26PM +0800, 1579567540@qq.com wrote:
> From: luch00 <1579567540@qq.com>
> 
> The RK3588 CAN-FD controller uses the same DT properties as the
> existing Rockchip CAN-FD blocks, so extend the current schema with a

DT properties have nothing to do here. Are you saying it is fully
compatible? Then express it properly with fallback.

> SoC-specific rockchip,rk3588v2-canfd compatible instead of creating a
> new binding file.
> 
> Keep RK3588v2 as its own compatible rather than an rk3568v2 fallback.

Do not explain what you did. Explain WHY.

> Driver support uses separate match data and the RX FIFO count field

Driver is irrelevant here.

> layout differs from rk3568v2, so a dedicated compatible is the safer
> description.
> 
> Signed-off-by: luch00 <1579567540@qq.com>

We do not take anonymous contributions.

> ---
>  .../devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml     | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
> index a077c0330..aa31ec78e 100644
> --- a/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
> +++ b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
> @@ -17,6 +17,7 @@ properties:
>    compatible:
>      oneOf:
>        - const: rockchip,rk3568v2-canfd
> +      - const: rockchip,rk3588v2-canfd

So that's just enum with previous entry

And why is this different from rk3588?


>        - items:
>            - const: rockchip,rk3568v3-canfd
>            - const: rockchip,rk3568v2-canfd
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

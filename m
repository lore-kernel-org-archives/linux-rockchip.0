Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98F93C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 16:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEjhnKXg5zVKGHBX13Sqn+KXW3TdixwhSq7C4SxBydQ=; b=yPwnvJwHP0eFt+
	0pgdqvHLpZclv9YE9VY+keViHxKLTcObyRNI785MtY1A181BUdp683UgQuoXPykDoXiIpSJc5RLr1
	yZ+eME7AiIJrLtSFWtYhQmtrXl0vaXJaAtgK4QVSK6+fxbze7xhedm6bIQ1CVezJM1t/VehyuPlSs
	jznA0NozgfBo47mB0GGmulWDYO5C7XCwprl3TwkzRI+9gw4IXdHE1jHdolgBHBhZL+AARgKh37R+D
	hOflFHWZTiA90iB1vQaN0ixEN9q5BG/z5Ys3BXQ8v6zoKUEx6riegmt2ayeva0gb/CyseAfKgYKuk
	B0oa/xH1k6pj2+7SzWnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scSNY-0000000BtUa-0b6f;
	Fri, 09 Aug 2024 16:22:12 +0000
Received: from out-175.mta1.migadu.com ([2001:41d0:203:375::af])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scSHB-0000000BrTN-407U
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Aug 2024 16:15:40 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1723220133;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=I3YQIqktxBdIIFcqZSYtEeGTQLWBvWkluBpPpmvl0vg=;
	b=UBELDXMHEVD1RfSvFdKIkTjpCItyWakTtX5Z53T/zPISvy16mn7htlKDEcNLyZzhXu/xHI
	FGcvlipRygRa2W8z5Q7TznppW3G0GWaa2nibUdFaR8B4YkIZSM2bY0ywHHfoR8Kzn6mer7
	+Z7e2ZHHP6TwqDIDzn9b9zV+gGAs8AbI8nyUJ5tJsMM14EHrKNXzXPHLyPkdiUB9rF4N52
	ooTxBx4S0Nt+uZnWbw08kkkRkNrW/++UNB1HnxHPgTYdur3+BG4Fnw2CyuzVYM8Y6avAub
	VTwO2//R2JneUuEiWUiY4yosVEu4HgxQD0LwpmRAo9kP+u6VnRFc9l1fZxr/iw==
Date: Fri, 09 Aug 2024 18:15:26 +0200
Message-Id: <D3BIJXIKYD7N.238B8AE16Y5AI@cknow.org>
Cc: "Michael Turquette" <mturquette@baylibre.com>, "Stephen Boyd"
 <sboyd@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "Philipp Zabel" <p.zabel@pengutronix.de>,
 "Elaine Zhang" <zhangqing@rock-chips.com>, <linux-clk@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <kernel@collabora.com>, "Sugar Zhang"
 <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: reset: Add rk3576 reset definitions
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Detlev Casanova" <detlev.casanova@collabora.com>,
 <linux-kernel@vger.kernel.org>
References: <20240809125553.3889-1-detlev.casanova@collabora.com>
 <20240809125553.3889-2-detlev.casanova@collabora.com>
In-Reply-To: <20240809125553.3889-2-detlev.casanova@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_091538_158650_12C1ADB6 
X-CRM114-Status: GOOD (  12.54  )
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

On Fri Aug 9, 2024 at 2:54 PM CEST, Detlev Casanova wrote:
> Add reset ID defines for rk3576.
>
> Compared to the downstream bindings this uses continous gapless
> reset IDs starting at 1 instead of register offsets as IDs, as
> introduced in the RK3588 bindings.
> ...
> ---
>  .../dt-bindings/reset/rockchip,rk3576-cru.h   | 564 ++++++++++++++++++
>  1 file changed, 564 insertions(+)
>  create mode 100644 include/dt-bindings/reset/rockchip,rk3576-cru.h
>
> diff --git a/include/dt-bindings/reset/rockchip,rk3576-cru.h b/include/dt-bindings/reset/rockchip,rk3576-cru.h
> new file mode 100644
> index 0000000000000..8c968af4888d5
> --- /dev/null
> +++ b/include/dt-bindings/reset/rockchip,rk3576-cru.h
> @@ -0,0 +1,564 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> + ...
> +
> +#ifndef _DT_BINDINGS_RESET_ROCKCHIP_RK3576_H
> +#define _DT_BINDINGS_RESET_ROCKCHIP_RK3576_H
> +
> +#define SRST_A_TOP_BIU			0
> +#define SRST_P_TOP_BIU			1

As requested you renumbered starting from '0', but the commit message
mentions "starting at 1". Same for patch 2 of this series.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

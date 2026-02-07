Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BB3DEE0AC8
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 10:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/MoOTlsYc5P8bpn/bb8594OXhv2atXuzUSqHfn0H7w=; b=w1fUN1m6NTRsw8
	WSCHjB8qqaQAaDA3tgxxAbsmOSiNTHfZOa5dy1mApu2o/RBxPW2ZcfTX3t6X7Wy55qbPFgIwz8pJH
	1ANlFwtDkbWIe5T9WlKy42tVHrK9gFJkGbdTktxAEE82q5r5MmymVz7vpj2QOBczx5heETuggLESf
	v1D+TQmrBgDfK9HELWuknF1y/rvK1HmRv9/cL/DMgR4yP+Jm5iZt/o6Alg5n8oOlcEFKfM4runk24
	let0sZOQ1lIiVRp1FVBUzAXLT1h6rIPXw/TiP7qpiIb0OqFFOcsW1Gf/WoWrLD5ZCzgeqk+pZMwVW
	6r12tQWh7NSsZUqhN1vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofxe-0000000CMnM-1OLD;
	Sat, 07 Feb 2026 10:54:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofxc-0000000CMms-2Ng9;
	Sat, 07 Feb 2026 10:54:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AA451600C3;
	Sat,  7 Feb 2026 10:54:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6F1EC116D0;
	Sat,  7 Feb 2026 10:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461683;
	bh=CIaNvMArFVinijQuP/o4enEv9UIgW3e3adWKyMKaAi0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XmrGv1SckVtBKJ+pWBXHBXcT6024nUGgM/hyt9lZn7rl4SXRJxpTNiS5Ph3GvK38V
	 r9SAJxRCWdBrz4OzTmAiKxu+1JLMrdIObTGiwoCfngNo68kMOmk1LHR9CauGC/sHnE
	 D5xYlsv405D3TFu2w69Ndv48uXvgS3BwJar/CEJQ/SFd8Wl3dAXMOM+XvpmAdzWC0j
	 gg0ko3myxX3Oxds6uvE0hh/lnoIRs56XZmAtqWVsN4zseL67qhan9eCTzJCMvvT5Zc
	 IkeSDilsdAuC5pftdihQk442yXzB1m9bUI2ZPDRg84Fqf8jzxoGpjjfHaQirzjZGjp
	 WoI7+27oheBrg==
Date: Sat, 7 Feb 2026 11:54:40 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>, 
	Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 01/11] dt-bindings: clock: rockchip: Add RV1103B clock
 and reset unit
Message-ID: <20260207-miniature-granite-piculet-4becd7@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-2-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-2-festevam@gmail.com>
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

On Fri, Feb 06, 2026 at 03:12:59PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add device tree bindings for the clock and reset unit for the RV1103B SoC.
> 
> Cc: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
>  .../bindings/clock/rockchip,rv1103b-cru.yaml  | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml
> new file mode 100644
> index 000000000000..fa7298955aea
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rv1103b-cru.yaml

Exactly the same as rv1126b and others. Why do you need separate file?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

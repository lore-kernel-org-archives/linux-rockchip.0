Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AB63C3601B
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 06:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgOKiOY0hEZPSXAER4pHWl54x27nRk828JbP8XvEXSI=; b=HSK9ZnPxFU7gQC
	TcBA7O271hx61xAEHzBGdyMMjzkIBc0nU7V30wUkF84NOd93IXsYowjYMyRl/RpVshk1zaO4xqsSX
	78Ap9MTafoLYiJSEhWkkauGxkBlDtHk36vMWoPtxTrjiwpO8zxOQappMwKTr2Z0mhEcQ0kiKV+Urc
	acySbD0uU+jKswMwmD4RV6Cx1zstw0cZwqD6RZBR6WxkoHhqlHOEomZQNE3MRfbBB8PIpZuwPbAKW
	0FsTqlnIMIaNXmIjtMwxskMl9jlB16UDZ09SaxgUPskiq46Y/AI3AMqX/g4aaSxqnHhxQmhToKVMV
	iE0EgqEK+CROd6zM1aUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0EJC-00000007xtG-2DA2;
	Thu, 03 Apr 2025 06:44:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0EHR-00000007xbC-3GEv;
	Thu, 03 Apr 2025 06:42:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E31F768424;
	Thu,  3 Apr 2025 06:42:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC26CC4CEE3;
	Thu,  3 Apr 2025 06:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743662544;
	bh=Mm5UvShqJfS6Bo3gBY57Tk/+isrXqZzI84v5T2TgGyI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qgce0Ewgkd+Cumb5f6U4T1HhR7WHTnXMeJrlK6+7f+dxtNnJnHGzn4rG1Mh0jfzKG
	 GYtkJizV2zO7Q72uwCvGV+9tZ7MjW203gozPMAbCeIkZnsgByXUV8z2r4qJ1sEcryJ
	 0RX3uL8ze5r0AjY4Ymw5pMLgaJum8G4C9JgeHAZwZMjMg60yGnZf9DZiVvrnA2uncK
	 TTDMv92scWRTufXVLVNFCgXkbUkZZHANAES+VwsOK7DGMrgpmPDjadzPqVXME1DnVt
	 96T/3vhXiBiJsHJydOyNmnrUJcYxXPYniJ1sxotmez8xtYriIU6Ck4lRHhZfRByenT
	 hz65jzoVWTjgg==
Date: Thu, 3 Apr 2025 08:42:20 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v3 4/9] dt-bindings: display: simple-bridge: Add ra620
 compatible
Message-ID: <20250403-big-hog-from-ganymede-6aa617@krzk-bin>
References: <20250403033748.245007-1-andyshrk@163.com>
 <20250403033748.245007-5-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250403033748.245007-5-andyshrk@163.com>
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
Cc: dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, sebastian.reichel@collabora.com, heiko@sntech.de, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Apr 03, 2025 at 11:37:32AM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> RA620 is a DP to HDMI bridge converter from RADXA, which first
> found be used on ROCK 5 ITX.
> 
> This chip can be used without involving software.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v3:
> - First introduced in this version.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

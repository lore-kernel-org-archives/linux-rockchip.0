Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CB4FC5472D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 08:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7nNtxkJlrIRiiSfai+FCeroJ6cyQHN5n4tscgeYsCk=; b=wUY4tKo/69JgyN
	SO69gqrFkApy68Q4LyYWGNBAnsDTe1krCkjM9iEITZsRHjxLPgyLZtrIgAb0mTLE4sHPdoOQysQFr
	FfBhBt5vTXxoylwmY1Qxt1vQpC21CAp2nej+UlPKFlq31e072NwrwEz8nKOrwaIFOQjcUrkcHm6wn
	5adw6NqSUypC9+TEPYC3bZ9eyKE6CV6ZewM6Zg9JHRqO9RQYvWv/mEA7N7qx+m5Bf/v8+1W75Vf/I
	p8HjiGpYiFF8DWTjAp7jURAiAA4cHWRb2ES+d+X46s5s51RCD/no32lBR8UTYCbI2y1LOU3MNnsKO
	BX8f1VuZYxT0rRnEy8ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjDq9-0000000EUkY-3hYT;
	Wed, 28 Aug 2024 08:15:41 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjBgm-0000000E0HR-2r5V;
	Wed, 28 Aug 2024 05:57:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 696E5CE1718;
	Wed, 28 Aug 2024 05:57:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A35F7C4AF0E;
	Wed, 28 Aug 2024 05:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724824669;
	bh=hJGiN1TYYdF0d6w75y2dv8nncd2Q7CRBoK+l2x2XjsU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kFXatulYPQlSvAc3urxL9L2SfGb3W1fD0yGmmSB0aNahSg2hFBKZMQxJCykkcJfwS
	 WqSsih+Fmmrv/Q9j+yjT5AKBMWL+vXYFFwVxF0a2seg6EEhWOz15+kE/yX+eqbPPRr
	 kUvRb/8GSHvhDX5CQaJokZ0FB13W/w/aVXN41LWpJX4DRvzFe8z/jmiq2s9ESED64t
	 GUMpyYUMscoy3TD/iqk8gR56PcrYKDmZHTt10TTNA83Epsiw0n/XPYl2W2CUK8y0It
	 tHVV2odL7KO9bjAdFmVioDdsERYTNG+pV2GxBuDA4jpwGngDPXBViNMuhO0n/p3QdD
	 uI0y5ORyRMSJg==
Date: Wed, 28 Aug 2024 07:57:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aurelien Jarno <aurelien@aurel32.net>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] dt-bindings: arm: rockchip: Add Hardkernel
 ODROID-M1S
Message-ID: <stxymvczkbkxicsbqy2eav5dg3o5d2vt5swmyw4o2mncq5mtlj@zabv3krorjqc>
References: <20240827211825.1419820-1-jonas@kwiboo.se>
 <20240827211825.1419820-4-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827211825.1419820-4-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_225752_910074_81C60840 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
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

On Tue, Aug 27, 2024 at 09:18:17PM +0000, Jonas Karlman wrote:
> The Hardkernel ODROID-M1S is a single-board computer based on Rockchip
> RK3566 SoC. It features e.g. 4/8 GB LPDDR4 RAM, 64 GB eMMC, SD-card,
> GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0.
> 
> Add devicetree binding documentation for the Hardkernel ODROID-M1S board.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

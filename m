Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFF24C83F22
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Jul 2025 23:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/ZB3TZbeTXcwa6swoiizEBaTETmPzIC/7Bfvr/xrM8=; b=Briuxy62o3uQuw
	jRJbusl6vLN7DQdiEwC+jtbvrJsBtH5OeByi4rQKT4TdaXETiJunXVxlO/zO37QjaNUydBzs3sOzA
	OG27rkl2KtKcPOTFzyefcmIL4dAAe/4Nmyj4V4MYQevXZzmvitS0wX6TIOuIQo0CoMPxNX8f5J3K8
	axIkGDSDVWWig+PIJ69JCLtZDNCQ5ggV3e+gjMlF3yB/a+JizxE8lvc39hb/0VbvbzGs/dTuSR0Zc
	YZ91wNi5LVki7owBPTYjkrIHOz6u53f4+OOA0wJUZy1dF/B56bk9+fAApFr1CejNI1nY7KK8p/Tro
	ALdUdEH+YTlNPw0gmoqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uddMS-0000000FpJM-3NNt;
	Sun, 20 Jul 2025 23:22:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uddK2-0000000FpEG-1gep;
	Sun, 20 Jul 2025 23:19:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C4B8C5C3C30;
	Sun, 20 Jul 2025 23:19:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AF8DC4CEE7;
	Sun, 20 Jul 2025 23:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753053597;
	bh=wVP6Z5f3CrPZapJWrOI/gGK/1g0Dd6+93XEM5STFPvE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IBvQUalOB1OsRlwAFKLx16AuV2nIykJ7sogpc3QGHUvaHinHxByeixDl9cMxQLMhw
	 q6NWYjlQDWM5Wy8l1QOLfVA3Icfqe1PpsQ6zjozz8iGk1m3PiktL9Imtmrn5F9xXm2
	 51JBEmP95tB13ZW/oxRyWlmtcnyNKlsBFDdCl3/aqPp6JQMYobVEjJ8qGVg4WGm78u
	 9aZkIScTC7ee6L5V4OX/6+DahsTXxyB0CYFMfZJ8HqDiw/jFWWxc7QZhFLQXf9MIvQ
	 ppe4ne0gwdnixA+Nyc4I+oSGF5J/jBwwFehkv9PSTTYsDQQY50/QZgE13sTNWrACDK
	 rUQan6BEuK0zg==
Date: Sun, 20 Jul 2025 18:19:56 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@cherry.de, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	damon.ding@rock-chips.com, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: add RK3588 DP carrier
 from Theobroma Systems
Message-ID: <175305359610.3055587.5271062385138916700.robh@kernel.org>
References: <20250716185027.2762175-1-heiko@sntech.de>
 <20250716185027.2762175-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250716185027.2762175-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_161958_476996_FC605E7B 
X-CRM114-Status: GOOD (  11.21  )
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


On Wed, 16 Jul 2025 20:50:26 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The DisplayPort carrier is a very simple baseboard only providing serial,
> ethernet and a displayport output.
> 
> But its main functionality is that it routes the Analogix eDP controller
> to this DisplayPort output, which allows to test that controller simply
> by hooking it up to a suitable monitor.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 410DAC5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 14:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LA/X4fNwjr2yaqupEYAZyC+nZP87VcDBetAp3ekOpew=; b=OZPRaHDKGnwU7X
	lat3ZxIlLky1saDcqNavDOiH0zskVV3HtOE4NolpR3mur2MM9zWp0loZzDYe7isAqs2wIssRoHgOq
	bLU4RlYQskmVQ5h65c+HLFHs2RGKP4eZR41tkiLEwADCP3B0KrRXCQGnW69GaK7pAXRJ5zdd+Y2i4
	/Smv3dVrNu8Yh1DMaAYm/HRKIDQjhvbH32lfWt5W0zLJyu0DV0Kyy1VvduNy8f8HXtcKWjMeoHt2L
	GLlz8hQ7FVAzJGCxa1Rz7N3G9etexGWHatWA0AjCbMcTcsh/FBGw4wwpFkIuWlLbZOFUQ7dq7X/02
	7bhXg1ttPMPF2TtmmQ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siaHq-00000007aKX-0Vet;
	Mon, 26 Aug 2024 14:01:38 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siaH1-00000007aB1-22TI;
	Mon, 26 Aug 2024 14:00:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A1FC9A4281E;
	Mon, 26 Aug 2024 14:00:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED2E0C52FC3;
	Mon, 26 Aug 2024 14:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724680846;
	bh=N6QZc8YM8klksq0nE1lKt6yDYzsUUOHjIINFLCMZQUM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a/xs8b/C1L9CHIrb9yc9EtcYI9Qixbr/BvDfyXHjXTL8woZUoYFLY+1J0vU267ATI
	 BH1AKAPNDDgC/lqiI/dC20ap9LZTKo9eWGQLiKLDBzZbNECqv0Jo2SykjK8KHp95se
	 J6AcxKncn/4aQo2+dOo5PqKlhgHyjfbv+RLWWABzQKRD2vAmHGY0uom0Fbw9rsvOXp
	 aoo/FbIHBSvMrker4TZ/btb64fn3Jju67Y14TR9uwrRZGmt7P72ubDB6M4qKhYqvP4
	 xCgi1RmrklIMnGp/G50pmlbJuUwckoPtIWoZsmRaGEw5ppxnWEFl0vCionzWvixwf+
	 Sr0fnsf4GRoZA==
Date: Mon, 26 Aug 2024 09:00:44 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v6 1/3] dt-bindings: clock, reset: Add support for rk3576
Message-ID: <172468084271.72163.10961446550304422485.robh@kernel.org>
References: <20240822194956.918527-1-detlev.casanova@collabora.com>
 <20240822194956.918527-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240822194956.918527-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_070047_607441_58721A63 
X-CRM114-Status: GOOD (  12.16  )
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


On Thu, 22 Aug 2024 15:49:32 -0400, Detlev Casanova wrote:
> Add clock and reset ID defines for rk3576.
> 
> Compared to the downstream bindings written by Elaine, this uses
> continous gapless IDs starting at 0. Thus all numbers are
> different between downstream and upstream, but names are kept
> exactly the same.
> 
> Also add documentation for the rk3576 CRU core.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../bindings/clock/rockchip,rk3576-cru.yaml   |  56 ++
>  .../dt-bindings/clock/rockchip,rk3576-cru.h   | 592 ++++++++++++++++++
>  .../dt-bindings/reset/rockchip,rk3576-cru.h   | 564 +++++++++++++++++
>  3 files changed, 1212 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
>  create mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h
>  create mode 100644 include/dt-bindings/reset/rockchip,rk3576-cru.h
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB5D9C7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 11:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLPJBwJSCLt+9uvr+GJb2yL9ld4GHmL/gnxJyldY1Nw=; b=PYnG4HRcyTiIEY
	qpTR4f0PYIkIVTTHzKzMntaGl4qy15bX1LQfSBlm2XRhxBU5L8lXf4ruI+vEZyBkh6ql9Vq7WiLfp
	0wWPSwcDuHjFwpUUDsHEYSRnMRjuiy+jyXhVojc3SnBvauEf5FRwRlPfud2mYm79W27sQHFQuRhGH
	4NisfC/AMuk1F7pU3dZFWPhDeXtdn2eAhsF1FtKihfoF/ehZQLOTsN764f/QBHZroWhfa4urLQSCX
	QbOVoxEBL1mhmYh9q9hGkMoTpOZLVpZz/BqPEvvZfawy3TeAv/OR2fECBT/RjvaB4Uee+Djo9sF8m
	NwPOTSF2wHUY/C0OVKGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSDQt-0000000Crbu-2oOT;
	Thu, 19 Jun 2025 11:27:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSByM-0000000CgDG-3Hrr;
	Thu, 19 Jun 2025 09:54:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2C9F64A6D6;
	Thu, 19 Jun 2025 09:54:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 426C3C4CEEA;
	Thu, 19 Jun 2025 09:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750326857;
	bh=liBrC581olewIxjbEjqmezkc4FAvhL6bE6utTt8dFjU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z5pcnnELNdgWWTpUPqvWO/Rjn59mzJal3u0PTtDti6dHWFKIeZ9bYaddL+4kJYJsY
	 +imfxJt+pi3/S79q8A25sV833O7pajN7iYJR4F8wzkP04ZeRLpzC2N26SF0XiYQyzz
	 0SXoZguPVAbHYQ1idOBHeuHxYh8hXzLDqWYiF4dSpWcFtp8R4QdGnLfQUu3CSUjR6D
	 xTXQIFzHKKXhYyB5/rzqzgdG9vKqbHPdS6ccjWvYPtlTeKNieMbs80rtW0ls0Hyvm0
	 XwsTe6eYbyGy2gWPm3phDYEtrviPH+8L+0qMtYrwUfu6XqQHSJsXFjKL9z46UICmKN
	 z+oIUFNTFph8g==
Date: Thu, 19 Jun 2025 11:54:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Subject: Re: [PATCH v3 1/5] dt-bindings: mfd: rk806: allow to customize PMIC
 reset mode
Message-ID: <20250619-unselfish-gorilla-of-joy-13fb93@kuoka>
References: <20250618-rk8xx-rst-fun-v3-0-081f02d3d348@cherry.de>
 <20250618-rk8xx-rst-fun-v3-1-081f02d3d348@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250618-rk8xx-rst-fun-v3-1-081f02d3d348@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_025418_843028_04979717 
X-CRM114-Status: GOOD (  16.32  )
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
Cc: Daniel Semkowicz <dse@thaumatec.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, Lee Jones <lee@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jun 18, 2025 at 12:32:40PM GMT, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@cherry.de>
> 
> The RK806 PMIC allows to configure its reset/restart behavior whenever
> the PMIC is reset either programmatically or via some external pins
> (e.g. PWRCTRL or RESETB).
> 
> The following modes exist:
>  - 0; restart PMU,
>  - 1; reset all power off reset registers and force state to switch to
>    ACTIVE mode,
>  - 2; same as mode 1 and also pull RESETB pin down for 5ms,
> 
> For example, some hardware may require a full restart (mode 0) in order
> to function properly as regulators are shortly interrupted in this mode.
> 
> This is the case for RK3588 Jaguar and RK3588 Tiger which have a
> companion microcontroller running on an independent power supply and
> monitoring the PMIC power rail to know the state of the main system.
> When it detects a restart, it resets its own IPs exposed to the main
> system as if to simulate its own reset. Failing to perform this fake
> reset of the microcontroller may break things (e.g. watchdog not
> automatically disabled, buzzer still running until manually disabled,
> leftover configuration from previous main system state, etc...).

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

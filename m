Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30A29D5C0C0
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 12:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5SSgC3X2NHZKw96/q/HO11pg5mM5Rhkh4XQWWXrWqQU=; b=ETKS0Tk88LThYR
	NlgM2p8vzlh4pxRHrew0zR10aO9iLkI49KgoicEO9OXIKTjFw62fPw33U38vg09ydNtOU12U6RMVr
	0aSe9tkvFwHnkue8NXeSRsWeltrH5lxOn6QNCwisVQdCqaMlNEnpCP0f9y2aT//CTp/W1WSMz5HD7
	8GIu3pjF/7TnSKP7hQM0XLOylJxeO3Hqyz6WroVoIFx0lo/u3mSXoFFqmI59f+8uqCrIuRMMPO+AJ
	dwuAiM3qcgQ7KLLOpy4zwt2nxL+dZSRzlCb6OyJeJtO7D/b0Tv4gIbe8H3lEwCXSS5NjLT0cD8cln
	KG7je+Tb9kTeTeZySBMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9NqT-0000000ATBZ-3W6b;
	Fri, 08 Nov 2024 12:12:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Nbv-0000000AQcT-3TmT
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 11:57:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4F95B5C5B63;
	Fri,  8 Nov 2024 11:56:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC1EAC4CECD;
	Fri,  8 Nov 2024 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731067026;
	bh=QbmFVfadbo8uXdqtT81Hz2hqVSegNMI1xnbOcKgH/94=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kdAskxrUCnQqARtdBdT1Xjji1CjZcDU39CU3w1LtZyMuDCq8L7NJq1eNyy3OsErH6
	 H7idgmY241VJ0qZbnoi/AdkHYqDllUAj8DILDvzKtmuX4T4HS86Hbs9+6gIsa+HKff
	 +RYqGGLLSL8u4MAQnLM+QnJhzC3/VKIwZmlmzne0L7MeSoLEbB2NYaRqumbcLIWr7x
	 gp3D8JQUAwIrCZuHORoMvmLdXzl+qxbw7LEqXvUQiSfWDN49Jb/qT8nmW5ymJK/6Vd
	 ktQavmGa2pkSzJGp4dboY5qnjVVDtCWnOFv5hohswKtzE7NR9KHVbnGdPzHGLa8rWT
	 in6s0lfz+w4Eg==
Date: Fri, 8 Nov 2024 12:57:03 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K . Petersen" <martin.petersen@oracle.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, 
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v5 1/7] dt-bindings: ufs: Document Rockchip UFS host
 controller
Message-ID: <bpxlah7lewfhbpe6555d6pb6sfj6eziu2ski5iiazu7pwpwc5j@jrhvjyke5rzl>
References: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
 <1731048987-229149-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1731048987-229149-2-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_035707_945824_9E056F5A 
X-CRM114-Status: UNSURE (   8.41  )
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

On Fri, Nov 08, 2024 at 02:56:20PM +0800, Shawn Lin wrote:
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - power-domains
> +  - resets
> +  - reset-names
> +  - reset-gpios
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3576-cru.h>
> +    #include <dt-bindings/reset/rockchip,rk3576-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/rockchip,rk3576-power.h>
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        ufshc: ufshc@2a2d0000 {
> +              compatible = "rockchip,rk3576-ufshc";

Odd alignment.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

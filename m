Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F58FC5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 06:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEe+eKNmllu2snD3/2mFtxH1fUrnKnYSXO/7tIoc6Tc=; b=yXUkcHaxPHi0t3
	+o9nZVlMBCj7rkhACaSwGz5qWzMxS22Ezgj7p3ImHuMXEUMdbPUUKRHKvOmfx7oVRZF8DvLHHfU4X
	CrVC6SFarnDz85FsKjDIhdK6WjgY+g1Nib0BKhYIURRKR4UHPHDfQKojO1mPVumpMJHC3jZlgmsyT
	mpCuEd4gHTwcR1zIVQBIV3B6N6+yhCuA9FW21xZtiQOih9eo7twnDR9WN7D/LhSIyOPU91DbvCOWF
	h1XxUx0s0s+6ry9NPNWULKHGiXQL5fkRi5ntZ3NK3vj5VaFVOTYnH5sdIiwn/coVJ4VdS/STAVWY5
	jJHEfQU2PWC7GyHYhc1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siSyP-00000005yTP-31Bn;
	Mon, 26 Aug 2024 06:13:05 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siSxc-00000005yP1-1okU;
	Mon, 26 Aug 2024 06:12:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 98848A41064;
	Mon, 26 Aug 2024 06:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06112C4FE9B;
	Mon, 26 Aug 2024 06:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724652285;
	bh=OCBrgSZHOjhaA7DpE+XqUtPuuxhlvNwyfG7+IxakSH4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OHRa/Vm956SqZW5cDNvQG/FcVK2MIdzWOGLrL1RUkmGOUrvNkvAKnPdwhPF2Duv40
	 uMWwAt/83uPnqMQpWxoTSyTQggyA6EvAAp+eK43zgjXRqsug8jFI4bte/l5Cp8FRnw
	 5j9G2eE/VTjAblXHaWlimziUM7OiTZG78IMGFhnDSlBQWppyaYsyH1NaB83rXcieu0
	 CpC4KdJV/85acRpPYJSoPvxugKXbJIhXAVN6GYx+34Ow2+wF/zhQy2VnF7I9ajbvmy
	 sbDyeQyebkFQQAT2xhsg2GjhpFlcmdAUOXUfBuIk0pl+Q7vTheFNEck7jN1pjaFVwH
	 FgzRhrD1/vw5Q==
Date: Mon, 26 Aug 2024 08:04:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>, 
	Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add LCKFB Taishan Pi
 RK3566
Message-ID: <5rohxcypstmm56x7fiywtis7rmavhdvpqx766nzoniejjmeit6@vzxrrg2duzu5>
References: <20240826044530.726458-1-bigfoot@classfun.cn>
 <20240826044530.726458-3-bigfoot@classfun.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240826044530.726458-3-bigfoot@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_231216_540612_CE211026 
X-CRM114-Status: UNSURE (   9.76  )
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

On Mon, Aug 26, 2024 at 12:44:12PM +0800, Junhao Xie wrote:
> This documents LCKFB Taishan Pi which is a SBC based on the RK3566 SoC.
> 
> Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

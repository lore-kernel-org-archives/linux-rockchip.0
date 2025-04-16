Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9771DC369B1
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Apr 2025 07:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKFKeGPBL02ZcRBk755q8D5XIEsY+9zr5lFw2fJvd+o=; b=JlGXBUov5h4///
	x3D+7iHbyi8z/6rLWPTp5xDB77urkj2DJ25PUTH19OTMMZi/z58Tq1C3T0xTNaawE53CxzFDxnQH3
	UYxo5S+RUd5FskYSjZJ6CNYHsbNbt7ak/F0BRZ005n5eZPAArbtHyQBjb6EI1X/BCW6hxV8+WF2Yj
	kx8j5QGAlWfnDhFCNt7m4wawFdOtJlR44s7tttUQp68DfrPNEr2VJ1YjV6VE5WKLd30VivNzHJo+4
	Ip0eCGeyitH/Wxtl6PrKNc8OTDVxgiie/AlsVUv8AANm6laTcFXZD2avLo17oq2MP4O61ytkoRyw2
	5FrISR/DB31kIHF8WJPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4wsC-00000008YgW-1uel;
	Wed, 16 Apr 2025 07:07:52 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4wqL-00000008YGc-08vC;
	Wed, 16 Apr 2025 07:05:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 02F1AA4B055;
	Wed, 16 Apr 2025 07:00:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B175C4CEE2;
	Wed, 16 Apr 2025 07:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744787156;
	bh=TvXOOfKd0AybmzJYKKOIvlp2HZzH1NJikgI1O9LLoI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pga454ijr9cG0L5OgTIT2/FkeP0bBGXdaK2we465eqKPpHz8IGq3a1p1nXMDMQKT6
	 GB4EQIzSJKyWdnsVmZfr3LNLtmPMXsCzplmXasJAA5dqMY3klHwHOtrBT1ZUvARjN/
	 Zzbax0FELML6UEenIIsL8HolP4iUWgDgDapZcU/Dn61a8PPpSuwT5iucZYIWsk/lZP
	 3uPhtIxDWz1tsQ7v2llcz2HDuCexK4UYI/UrHmy8nIC6s1i3671YFiMHRoFjhXL49d
	 VuqQP61yqkW2fZoS5glxVuRYO1m74CusWu/82h1+wclWgomWjUNbZ+allUKFvzwVoK
	 L8J/T4NyXXyTw==
Date: Wed, 16 Apr 2025 09:05:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	Finley Xiao <finley.xiao@rock-chips.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: power: rockchip: Add support for
 RK3562 SoC
Message-ID: <20250416-elegant-devious-rook-1bde16@shite>
References: <20250415032314.44997-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250415032314.44997-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_000557_133820_29D9355E 
X-CRM114-Status: UNSURE (   7.84  )
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

On Tue, Apr 15, 2025 at 11:23:13AM GMT, Kever Yang wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> According to a description from TRM, add all the power domains.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

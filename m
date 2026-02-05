Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B6B5EC1EB6
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Feb 2026 13:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jVSl6tyZ4bwEX0H8BxEdqCtQm+nSZLP4+fKoisvpHI=; b=CyqjKUlrlKz/Mn
	m0jzhv8qw5LGwYySmWxhN2JtPo9Q98cq1nG4hzFVMNW1G9r1dUQHKxwr+yEd16uU53Wb0qTproTjg
	x3iiMFDGCaTHz7vtNc3yHRjCm9YkB1w9IZv6PwwSEhG58U1HcrpE3dSHSZomHwT/NB1lbDrSKtIrI
	qRkBMrWA7zKi0+UlMzFqpaTAs+31jb8nvl0CdFU9vrDTNWhsttTrUnlBRcJeBnrG4sivguxyOIal4
	ObTvnLB18x21b/urrQd+YTYqOTPcW7K7VyCRF0uuHGARQXXfLirSgBC10o4RY38fEmgz9PvdzAW8i
	avAj3wS3blvX7GDB6cFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnzSS-00000009x7X-00N4;
	Thu, 05 Feb 2026 13:31:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnzSQ-00000009x6i-0rkN;
	Thu, 05 Feb 2026 13:31:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1E70B60010;
	Thu,  5 Feb 2026 13:31:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DD79C4CEF7;
	Thu,  5 Feb 2026 13:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770298300;
	bh=AUQFfU1fkfkYPuW5V8T6xoRa8uZPnGIai8orsPwhtOk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M6eYmqV7WCmThEk7wZK3ZffIxf7rs/+OjSNoi+Fqwrb8lUVp8teCejpP7msvpLvAC
	 4im2YokdR2XeIVsdFhKS1AMFgnaIUEqaqEgAAlGFXaVd+WDqO2Y/XlvNY/GjsWgBnE
	 cJlxzesSJytLbOvjG0uVxaiRaFTcllpsD70oqQ3RrXAOjzXFeHRLwCVwe3LWlZwL+U
	 AMdJNOZqkoYM4tVUhoblnUENgUYy1Ql1+RUyRKPKItRDopgGlDABE21jldTeh9W6//
	 hr30x04VDIuYazXVMRJWmckA+1f3sKHc2sn5/BdAXrVKHgVKcUDxSM1cHzF1VxyhBQ
	 UONJYSp0vSOhw==
Date: Thu, 5 Feb 2026 14:31:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: display: rockchip: Add rk3576
 DisplayPort
Message-ID: <20260205-shrewd-honeybee-of-diversity-f3e9c6@quoll>
References: <20260201081338.407999-1-andyshrk@163.com>
 <20260201081338.407999-2-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260201081338.407999-2-andyshrk@163.com>
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
Cc: heiko@sntech.de, kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, alchark@gmail.com, tzimmermann@suse.de, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Feb 01, 2026 at 04:13:27PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The DisplayPort found on RK3576 is very similar to that of RK3588,
> but work in dual pixel mode. And itself does not depend on the I2S
> clock or the SPDIF clock when transmit audio.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> ---
> 
> Changes in v2:
> - Remove unnecessary maxItems
> 
>  .../display/rockchip/rockchip,dw-dp.yaml      | 27 ++++++++++++++++---
>  1 file changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> index 6345f0132d43..8a5299755abf 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
> @@ -27,13 +27,11 @@ description: |
>    * Pixel clock up to 594MHz
>    * I2S, SPDIF audio interface
>  
> -allOf:
> -  - $ref: /schemas/sound/dai-common.yaml#
> -
>  properties:
>    compatible:
>      enum:
>        - rockchip,rk3588-dp
> +      - rockchip,rk3576-dp

Wrongly orderd. 76 < 88.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

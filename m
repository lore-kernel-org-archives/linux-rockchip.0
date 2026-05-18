Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58B9BCD4F52
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 11:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VN3Pfhy0xHCiYbUsRw0nY6qCJBBjOXs9L6TLqaSuASI=; b=dqUTcYUq6X1Pu6
	JKfKuQZTTB4Ki76mrkLKdAeDRIOs3yZEbUae92IrJpNd7zqu6aEDnmsg1xSqDl/3PQ9DoCerYXE/B
	4dtrE1SPK0BN2E64I9wrNZQiMW+2FQf48sIKnmuh66M/2IUjoH4e5x2IvVXw85UpYX+HOM7cSKB1h
	jiMoYuJvDVEufCylcHimh8AzLqOA4l5Iiry82r/4iezVrz+qPmMWLLEZzY1DaJHfQDup/nX6LfPcr
	mYdsx9rZJhp8WCxrgAPdTC2Lzpa3+o3JpTo+fIIdGR2n+QBJ0xGWguYT/AYtAY2vsmN6pfl5To4EM
	9nntwiq2xEDYiOpJVHeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvmB-0000000FMu4-1T5Z;
	Mon, 18 May 2026 11:04:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvm9-0000000FMte-43I1
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 11:04:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6EAB8601E4;
	Mon, 18 May 2026 11:04:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90C2DC2BCB7;
	Mon, 18 May 2026 11:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779102285;
	bh=lSgAgfsm+ifdU5GgoJvsBiZptAzOBTrHgO6WCViTs/M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o15OkzeXAMQyrt7tiEPJ65DlvmbL8phtOJn9IPU5pL+uOlFp32TPiANe7dMjcDY3C
	 X8OT8/6vDQ2B4s1pquHUUebOgqeQZFHxu7XmP4/CmfRTDMGSI5v+U5sw2FoOgZ1AZl
	 Wb96/DXLgdS5lXpF28Vyx/AQWraU+lF+qWrg41yLBsokeorerGal0MBVKW7Ks788Lg
	 29oQXGKGu4h5FMqSVw33S9v7JMppMK8hjaakI+IQRHEb+L5/UMu7B1xjGFVv+U/sUs
	 +2wj5tHa8qs7CNQzt4Qn8IKoobsm5yERVVMUnObUuGCf4h3nPbigTV0kMMn07pomlX
	 WHUR5zHOqFUaw==
Date: Mon, 18 May 2026 13:04:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	xsf@rock-chips.com, sre@kernel.org, simona@ffwll.ch, airlied@gmail.com, 
	tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com, 
	jesszhan0024@gmail.com, neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 3/6] dt-bindings: display: panel: document Anbernic
 TD4310 panel
Message-ID: <20260518-fat-bouncy-capybara-f1be7c@quoll>
References: <20260515221947.299229-1-macroalpha82@gmail.com>
 <20260515221947.299229-4-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260515221947.299229-4-macroalpha82@gmail.com>
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

On Fri, May 15, 2026 at 05:19:44PM -0500, Chris Morgan wrote:
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: anbernic,panel-vita-pro

You should have fallback compatible for the IC, at least that is the
review I was consistently giving to others recently. Apologies if
someone gave you opposite comment...

> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply:
> +    description: Panel power supply
> +
> +required:
> +  - compatible
> +  - port
> +  - reg
> +  - reset-gpios
> +  - vdd-supply

I guess this could go to panel-simple (after using power-supply instead
of vdd), but it's fine as well.

> +
> +unevaluatedProperties: false

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

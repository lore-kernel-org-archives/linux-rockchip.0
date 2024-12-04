Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30657E7716B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Dec 2024 07:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7k4vJPw38gDp6zxM76rx+OXVNmYti3y1SKkugwiziq8=; b=Ik2WyYn3XxiZLv
	7ABuN6F6XdJi2NRlsj2Bqpp4yWtMPEJI013EOs6WFTDhXQJz3A9mpR4Ihvx7JVKG7npjAre4sVh7J
	zW7hJGge+0laAgxbQ1Yarl3CnximlzmUh7tcpI3dOu87ltmPdhofFTqAS2ebTYaXGwRYZQ9LQTjJq
	WkOf70kCDTqI6vfQSfPVDyINKTI4FKPs/aDjOQ1WVZl/u9fmn7iqU4x2IKlh4Mdbp2CvdPDhYQnfM
	W1DdBem1+N74WLBXyIcPRXFs2+RgU3O8NQVwrCpOKCPkoE8OMAFh8WXDVXO21c3rSjlBuwPmqmQUH
	pQ9/mXDEtTQVlVlgaKCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIk03-0000000Bjqt-02Bo;
	Wed, 04 Dec 2024 07:40:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIjz1-0000000Bjja-0yav;
	Wed, 04 Dec 2024 07:39:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BA7D45C60F0;
	Wed,  4 Dec 2024 07:38:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D646C4CED1;
	Wed,  4 Dec 2024 07:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733297978;
	bh=OZXyxFp5uWXU4+gtNDcxN94xsKibQqokm4SOMt4Xt5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lyg8RjUGEl2gykO3cMw2tW7YE9qGqj3QwcLCyiSYGF8nZakDz4PXSmeILOTBxhian
	 nTYR9rhzSDSt5uTlCPM/pP6n2XiPQMn8tB3oPMAZic+P4gyILBUzUZHMElyT9qmUUW
	 hJr8S2Twk6DORz+F+XqCe3Tf3OvXY0txcULPWNW/vANxL5EnEg/d07W2hGt3b860ID
	 VqFKGOqt+kTmlRbvkxxdBmdzlG3YNEEW72B/Rj9oU5lb5apCGLOAsLqMLZhyOiggX0
	 w050em0y8RPkWSFtU6v/tfkAD5eG2er6wPX5c5Q1agAQ7GVKYLrt951bkKGLd7WSQZ
	 3fEA8Rr7Rvpqg==
Date: Wed, 4 Dec 2024 08:39:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de, 
	sebastian.reichel@collabora.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dse@thaumatec.com, Heiko Stuebner <heiko.stuebner@cherry.de>, 
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: Add Rockchip MIPI C-/D-PHY
 schema
Message-ID: <mdlcm57lway2wqwh7tp6bj6mi3nlwuaeadbsmgx3h6kcfdisq5@76ikce4yqfs4>
References: <20241203164934.1500616-1-heiko@sntech.de>
 <20241203164934.1500616-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241203164934.1500616-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_233939_311307_9D3B36B5 
X-CRM114-Status: UNSURE (   8.25  )
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

On Tue, Dec 03, 2024 at 05:49:31PM +0100, Heiko Stuebner wrote:
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3576-mipi-dcphy
> +      - rockchip,rk3588-mipi-dcphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 1
> +    description: |
> +      Argument is mode to operate in. Supported modes are:
> +        - PHY_TYPE_DPHY
> +        - PHY_TYPE_CPHY
> +      See include/dt-bindings/phy/phy.h for constants.


That's the only difference from version I gave review. It is approved
style of passing phy type/mode, so adding this is not valid reason to
drop my review tag and request re-review.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

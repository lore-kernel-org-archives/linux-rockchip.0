Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5967606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 08:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ok7pyYU7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WRgNkBuA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vdDf1YbpUZOX3Gf0+wQT8Mkih+hKGYS+0uFon9eDwcs=; b=ok7pyYU7xwAX68/uA8RMKkc34j
	WUwW4O7zapI2htQkD9QwbcFpU4VqX0yVYTuVuD6VBMBJ1ux9VS4oC+uJvAl5zB6d+htXA5cwWIDSc
	pk/w41DKINQS9xg/hZvayynCMf++caRdmlM2KO+VauKRB+87ZNllraXV0xq7ImGocICO7KeDF47Fq
	/aDfFswtCoYkbsbMA726ovelI7Jy7tTJx8hFYmTcnts9WzepU6+cA/f2heezVjtryu2fz0BbceRG5
	HSXBXQt04N38MJDVt3DvfumH6216Fxsvx9P8xXGFlZGvFlhEBFjYB6ORyI6Qwlew5KkKae94udQBq
	6vPf1b7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVPPn-00000002ZDL-28pB;
	Mon, 23 Nov 2026 08:28:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVPPB-00000002Z9g-0Onw;
	Mon, 23 Nov 2026 08:28:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7E774605C9;
	Mon, 23 Nov 2026 08:28:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72EB41F000CF;
	Mon, 23 Nov 2026 08:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795422484;
	bh=ijyetjFveDyx8d2oHXD3zLUbbfnSn8RYdMkJF4ohCQ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WRgNkBuATBZUt2Ophjkqvi6ZrUouc+KYnC048Q5TibJouB+gHeINVZ/p7qu1XI6a9
	 2txgSp+ZKHXQfE0vmhNscwVpGA140KfyagginBxbivt4s6C/pAOeFMbXwaXqZZ7QSP
	 OWMzC9jLT0fI4Py0ILZryqSbTU8GIktJTETeKRTVaVPo8jzsG/yXvEpLVdFbFKFT+z
	 SJD3Ybhf1izLyCZY03EYBDRFg6pZbaLMj+Sruz/uY8xzOOvoiu8/fyuw6qveKVPixg
	 hOvj69mcV+vW3jfmhBXn294OvOb8ZBkxX1dSmOOO6MXbqISEgZ6tEnxjCSFR/YvKVy
	 AO2wss5/0hnrg==
Date: Mon, 23 Nov 2026 09:28:00 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arun Iyengar <aiyengar1990@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	David Wu <david.wu@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Serge Semin <fancer.lancer@gmail.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-ide@vger.kernel.org, 
	Pranjal Shrivastava <praan@google.com>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux.dev, Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 1/9] dt-bindings: net: rockchip-dwmac: Allow iommus
Message-ID: <20261123-quirky-scallop-of-beauty-c662b7@quoll>
References: <20261113-mmu600-php-v1-0-231196049a3b@gmail.com>
 <20261113-mmu600-php-v1-1-231196049a3b@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261113-mmu600-php-v1-1-231196049a3b@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Nov 13, 2026 at 04:38:47PM +0000, Arun Iyengar wrote:
> The RK3588 GMACs are behind the PHP SMMU. Allow iommus.
> 
> Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>

No response to the report, so dropping from DT patchwork.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

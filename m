Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5DF0FF885D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 07:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixZ837dAbXn7GR0ci7UaRaI2j/ctdI8VBGOORhh4JWM=; b=2C5E4cdqHlnjoB
	K9MEloHWlexYo3PfwCzIyfE92C1MsLnlCJkf1gl7aB02AmJtJ4r0NZ1ke55+HDRoB4w7y5lmcQipL
	6K2KdTBLJVuFf++0179O3kvj5QO7z/UiQI7A8WUOpbWu9gxZXtCqUJO42NY4sFi41FJMwLIUnIzQO
	8tS/T45S3HhNdoA4FvsbgYfvmA84feZ/p5UPeEA6xyCvn5xkg76dg6Msb3Rli8fxOpA1YdfPI6yU9
	wcIzKGBj/w6FRmf54WX3qffAJ03DqkYCOW89kx8TBQtdN2B9Th1tkRa62LavByYba6pHPIyFsAexf
	1AKMXrmo1R8XpbsfyBGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdB9-00000000o7W-2TsH;
	Tue, 28 Apr 2026 07:48:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHdB7-00000000o7B-13l8
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 07:48:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0C6B3447B8;
	Tue, 28 Apr 2026 07:48:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 417F1C2BCAF;
	Tue, 28 Apr 2026 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777362496;
	bh=ft9oi09v7e6MaGktTxeycnqTmmPuYqwjGTgoOgQE+Ow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s6UkoYPrXiTQxDUl4bAQiXStQr+Bh9R0gc3d4IMmW8E102PEGQWk6t84EZ/S9R4YD
	 jZoKh7msf0blhF2IEbox08mZKBwat/WQyHJdW34XjqPWmVDwMR5pbiTwzoSGUwj6vy
	 r6GZKn1YqdNrhkTZXmDhzOt29qh9WL17jyQ/SxPlknnGH0AouF0TmNYEibvTEs4mOa
	 Vrw6bkNwXohgH1hcK2Sdb4fDCpXjrRTuwLedtrWvopNz/2W9MncfUna+8AyRriFDHH
	 /GtTIEk5GxSrntSDuXmxYcI7bjFlbH7LgARBt/KwQ89lBam12gUx6OrQsl3AFqlmM4
	 CUb9hBkz3HrUA==
Date: Tue, 28 Apr 2026 09:48:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, xsf@rock-chips.com, sre@kernel.org, 
	simona@ffwll.ch, airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org, 
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com, neil.armstrong@linaro.org, 
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Message-ID: <20260428-vigilant-grebe-of-tempering-0b5e14@quoll>
References: <20260427170914.5062-1-macroalpha82@gmail.com>
 <20260427170914.5062-6-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260427170914.5062-6-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_004821_307677_97E45044 
X-CRM114-Status: UNSURE (   6.33  )
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

On Mon, Apr 27, 2026 at 12:09:13PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for the Anbernic RG Vita-Pro.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

You combined three completely independent subsystems into one patchset.
Usually that's unnecessary burden on our mailboxes and instead of simple
shazam of entire patchset maintainers need to pick up individual bits.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

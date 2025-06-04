Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE48AC5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 11:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6HxkEA8ts/ickpLQLOkaDv3ifPW0fAojZbbP5ewMkQ=; b=rTRMibHtMNJgo0
	7vXDM+PWYh3wozdOZisE7P7K7Qm3IQwKX8i4wGxdKdGDbzlwg/dhYqQCqgvz4zoQ/Orv92sMe+Acd
	p52qRRm/JmrSKP/rvFoT+s+eJuxk1umSLKo8x0Y0DfG59hVnbXeEqXxds9BTU9RWkC9+m8WCbJQxi
	ejDnoFDw6XTcEG6OC5EIWlLd2LyLOY4jlrDi/6Emi84ldze099+ylcPypv/NWngyc0nAKQoZOGLX9
	CWR88AmTg0yfpoZ9GInA7uKxGs2e9I2IxW9tAKWqt3HHOiUzue0G586t6Wjr9vL4lCIj2zDNjwFf1
	eT9w9VCCTTj/pXmgFhww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmKT-0000000DDHc-0UiX;
	Wed, 04 Jun 2025 11:30:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmKQ-0000000DDHJ-2Keu
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 11:30:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3D20F43D60;
	Wed,  4 Jun 2025 11:30:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AD83C4CEE7;
	Wed,  4 Jun 2025 11:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749036642;
	bh=xaRdU654C9wS4ZfZAI2RLoVKKEW4q0RIJHCOrcqPbi4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VloJxxD6gyjQMD7btdyTj1BT0e4gBvR+E479LFRc4RqDa5BCpNiyY9BksVkveHe/H
	 QT27yuDd6r82lNHPAuxdWpVOt6QpC8Z4rgyDNkkyXMLinicyXDG4LYbPQROyqFZ7nn
	 4qkpFAKUL3sTFO8cqBp9256NMpmK1yoOYk/yfKR1OAvoJMR0CCXDXqc36Goin/uFvd
	 d681mGEyt2bz2v/OhTbFdSfeU0xVZN6lYdnUUAe4fCZUoJ6Y/1DbZ0ZV562cYFdDI3
	 EpSZIS2B6kBbpTmbRXs11TMblGwwlSyvQ32DamVq3SZw5XHjuyu8spR4WGMfIjTDSm
	 SiCjM7WP3t+Cg==
Date: Wed, 4 Jun 2025 13:30:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com, heiko@sntech.de, 
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de, 
	mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch, 
	airlied@gmail.com, quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, 
	javierm@redhat.com, megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: display: himax-hx8394: Add Huiling
 hl055fhav028c
Message-ID: <20250604-ruddy-lemur-of-defiance-333aef@kuoka>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250603193930.323607-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_043042_614273_62215FCC 
X-CRM114-Status: UNSURE (   9.29  )
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

On Tue, Jun 03, 2025 at 02:39:28PM GMT, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for the Huiling hl055fhav028c. This panel is
> based on the Himax HX8399C display controller which is extremely
> similar to the existing HX8394. Add a new constant for
> himax,hx8399c for this new display controller as well.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

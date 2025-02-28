Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79812C282C5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ov9Hc3CLE+i6jynluER64wnlXAnRIgDbrq/EetprFtA=; b=Xg/jdkDYyp+er0
	fstOps+h3HN2SA3JDD1V3RE7YoiLbA9eSZPAoJsHRq5wOfzJMV9PSW24K4XGEFEGDmOTFEM/BlSJ+
	NS43zSqzH1I2H+QKM4wTPcRAAjLQj8bkLjsBaefALE8Zjfaxk8pFhE7lmBF7bNXfhjQKJu7zjO6GL
	EQNxyRrEx5F2NciOWE/rUIjJmZQ8KaEx/5ns4PbbIl/8DBzgdekj2JlJ6Fyhm07GPrmd6rxMSuS/s
	US57aaUiXcy4DtrSreJ6IiGk2dhp+8MF28sF0dGPryzePzIB/w9d1mBvCm+X15Duf45Z43omNptRx
	nwx6E3xwGY1pPyaolKtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to7Gz-0000000CeNj-3GUD;
	Fri, 28 Feb 2025 20:47:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6oY-0000000CYxC-1dnE;
	Fri, 28 Feb 2025 20:18:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F07B65C69E1;
	Fri, 28 Feb 2025 20:16:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DC07C4CED6;
	Fri, 28 Feb 2025 20:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773909;
	bh=iGXo8WuPz9MZWdQEJLs/fObp9RRJtO0HVz65gpRrNrk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xdd3ObyGaW7wnwxC0xX59J+sWL/dpxUy2gx8HZEqHrL9wyU8vHMmiO1PO0IOvVavr
	 fiBG/YMCTAMgYg7ITRUxpuXAwafWcsvpny4jV/B7AnOFamhQfzssPBbQW1m6tfoFue
	 wMHP5/TiOLamAWilT22Ha8DpuyONTW9/TGWeixT5rqTPNkU2oPiPyPEJVLVlKpOvDM
	 CAzWZ460RnuoDIFTUD5hFNOhZCPcp0t/PZx6guDububQw5VWnUId2VdEpTcVi0yTiI
	 tjp/3poqj7mzcozd1FqHM+INiwn/HjuiXHnhaXbA9T6+5IdXVn69U6iUqyKK3BV08W
	 V4smjBnxhgzrw==
Date: Fri, 28 Feb 2025 14:18:27 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	heiko@sntech.de, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v3 09/15] dt-bindings: usb: dwc3: Add support for rk3562
Message-ID: <174077390696.3604658.16411681325263588112.robh@kernel.org>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
 <20250227111913.2344207-10-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227111913.2344207-10-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_121830_480966_2EF21626 
X-CRM114-Status: GOOD (  13.35  )
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


On Thu, 27 Feb 2025 19:19:07 +0800, Kever Yang wrote:
> The USB dwc3 core on Rockchip's RK3562 is the same as the one already
> included in generic snps,dwc3. Extend the binding accordingly to allow
> 
> 	compatible = "rockchip,rk3562-dwc3", "snps,dwc3";
> 
> There are 4 clocks with different name sequency, add schema for it.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v3:
> - Update commit message and add per device schema for clock name change
> 
> Changes in v2: None
> 
>  .../bindings/usb/rockchip,dwc3.yaml           | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

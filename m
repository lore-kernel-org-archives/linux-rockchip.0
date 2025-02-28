Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E014C282C6
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEHwyUEr+cvEhND2p6TcP6dUGi79cRPcpzG+ams+J3w=; b=U2P5EegwkksBHG
	7+rtssESAcHeJSU5M9jWnrQLSLCaCScNm7BQx/Uvn4B0QYMcf5hm85xw/Fq3YAWLijV0bP6x5A/1c
	EFIMsXh/+4qz0MYON3GrUssMecfH5XiVtfILWRIgO35w21YWUNj9GRq/9o1erCBs+pnhkeVcQwnff
	P67Za3TtSbxemB4XHbk2mpld56p3TjWcYiZ1IIOgfHs/ePWk3OPyt6Ti7npesu6jIXHxoCLc9OT+n
	dBQHFFl1EaWev4xpevQO60+MHE1nNFzaXeNJWI3/TRcoJTl3HCzbSLAEq9kntOAyedctFXo+LyA6e
	mCmeYC/cQgp/3DyKUQhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to7E0-0000000Ce28-0QOw;
	Fri, 28 Feb 2025 20:44:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6o2-0000000CYp5-2CDE
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 20:17:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5C3EB60008;
	Fri, 28 Feb 2025 20:17:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70BB6C4CED6;
	Fri, 28 Feb 2025 20:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773877;
	bh=gAs0/3F2geXV4YNTqhdtOdKytR/TAZyfSsX8wnGYoSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YbN7TGkOGRl6dt6bcyOVqjt/hdC+EO3hzNKaj9yB06GRKqtAo0lwhxxDC4U65SATz
	 Dk1sBmojt5+Wjmh82NE4rf6wQABwwqYDZXcp8kbBVXzZlreRDWWXnXakEcL7cDjBAA
	 EoU2eKiGkyai+l6RQScwyCjRxSJudBsCptCZ04vE3/7hU/nG4w2eFHCaj9j99vIhLJ
	 FRsiRQ1RLJE1OF7dB3OW/kfMA94l0MdxstVMiCFvYCV7NkxPBrIy74Dl9vluHLv+0g
	 pv5UMqbSticRLuVyXroK824tKnjcX3na3XSRjOM1CobP+l5iwwhuGsV0FdYqMlauXs
	 4DszI7cHkJl+w==
Date: Fri, 28 Feb 2025 14:17:55 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-serial@vger.kernel.org, heiko@sntech.de,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-rockchip@lists.infradead.org,
	Jiri Slaby <jirislaby@kernel.org>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 08/15] dt-bindings: serial: snps-dw-apb-uart: Add
 support for rk3562
Message-ID: <174077386802.3599396.5797329350683510790.robh@kernel.org>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
 <20250227111913.2344207-9-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227111913.2344207-9-kever.yang@rock-chips.com>
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


On Thu, 27 Feb 2025 19:19:06 +0800, Kever Yang wrote:
> The UART core on Rockchip's RK3562 is the same as the one already
> included in generic dw-apb-uart. Extend the binding accordingly to allow
> 
> 	compatible = "rockchip,rk3562-uart", "snps,dw-apb-uart";
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v3:
> - Update the commit message
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

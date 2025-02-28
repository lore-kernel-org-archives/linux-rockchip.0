Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C155C282C5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFTP2Tbe8e9/HqAxzroamhKWp++3+Frib6RCy16tOhc=; b=wi5iEhLGT/UGhQ
	1TifqKBCLxuS8PdbB++taqW+I2Xywscrmg+7+5lhQsFyyCQAHpmj7+uDaXf7NxcklsHuuEt24Ny6J
	njxUxO4/eMeqqD7O1jJdX+tBFqJV6W/1wqhBKTKWTZi+1yCz6KhZnvgPIiMAuCIIw1AN6OB9OMssM
	e/xaqQJ1v73AhdRIyeTYDc/tTA9/Zc8ydLWRJmTG/pai8yme5QvXGf2MMT7FSfWiL8FFRDAeeYZUa
	lVPttcAAnJKgl4V79VrEr6Y/xtt51UWWu+I3sYry7WhG3+nr8x01M3C+02+1KgQCII6CsnXGMqXme
	F2Y09DKtbVYBzb5dZ/QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to7Ip-0000000CeiX-3MMb;
	Fri, 28 Feb 2025 20:49:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6pv-0000000CZKQ-2tJh;
	Fri, 28 Feb 2025 20:19:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1971F5C6989;
	Fri, 28 Feb 2025 20:17:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B943C4CEE2;
	Fri, 28 Feb 2025 20:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773994;
	bh=cx6KMGBCYq6n3t5dzNY2lWOPSoiqWzxG3JY9eJ4yn6E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S0vOO0mOJdgxtFSleXuCWPKumz/sdC+rgI02yMpGAqO1S/cCrsP7wlw1W/Uf/w2ch
	 CzHhIzKiNhZdiUr0O8Xcfc8G0h2Iy9I7BYbr+RXHCfWyGYr+m81yzFC29DvAZghKaY
	 xT7TDVqaZsGBM7XwDL5hUhnlNst7SQPGuEv2qrwVoW1eo8g6PSW2HGx/5wTHBTUu40
	 aOpg80BuowOCcRG7FMMagG4UqpSVsLjhttAuG7DdWrkn9/4BAVZzCrQFJIWncO1zlT
	 oZJrNh1KCG4P7sC0Ooh2vR715dV93+qtW6p+jz48nEgC5b0SScmut7QxX5pGtByY3X
	 HCUvVa51IRC1g==
Date: Fri, 28 Feb 2025 14:19:52 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v3 12/15] dt-bindings: soc: rockchip: Add rk3562 syscon
 compatibles
Message-ID: <174077399176.3618688.11759633731165710590.robh@kernel.org>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
 <20250227111913.2344207-13-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227111913.2344207-13-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_121955_781181_16F49509 
X-CRM114-Status: UNSURE (   8.32  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, heiko@sntech.de, linux-rockchip@lists.infradead.org, Frank Wang <frank.wang@rock-chips.com>, linux-kernel@vger.kernel.org, Shresth Prasad <shresthprasad7@gmail.com>, Detlev Casanova <detlev.casanova@collabora.com>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Thu, 27 Feb 2025 19:19:10 +0800, Kever Yang wrote:
> Add all syscon compatibles for rk3562.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

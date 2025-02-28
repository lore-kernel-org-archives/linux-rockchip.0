Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81B78C282C5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWrq0WhlytKWC4+mFciahjrp99Yr3yfJtlpiI12xiPk=; b=HIbOSXqHnbFuo7
	CJSor27xDBn+rCdQgdoFf5iWRFXOvJTdiGE7hQPFHD+fKpdC5rzKZCI8ApHgeun6hkFZqQ/656oYA
	5lSrSj/3Iqc+9uACxJHoTLskURO6+kcgcF5uQ4nSxv7qMWP7n6Xs3phcn0Y/gmGf1UDcWfoNbMu5h
	0t2SgdGPRuOKWQl6Qz4MFZOVXC9GLh7JSoS6RH8nYIWpDhPiJePPmX1pEWwEGWHbRW3OHpzGtCwsA
	IYdxwJBz6MecJx/QREcnRnFYNv6r0k8/KYIsMkp4DZYPmk33+WtmCRT9cswDLkVnIlAAvpRtmblMk
	XGFWcQgV++HL7V3LQtGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to6yU-0000000Cbjg-2tXC;
	Fri, 28 Feb 2025 20:28:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6mY-0000000CYKO-3HSd;
	Fri, 28 Feb 2025 20:16:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 522B061FC1;
	Fri, 28 Feb 2025 20:16:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43D6DC4CEE2;
	Fri, 28 Feb 2025 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773785;
	bh=dzQqklMAZNYfmJATCpqkIwNah5vVcjjWwjEhWtWubkA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HAOczFQgs9pBBiUISu0r0SWsVgu8kYFsY1Wkng27PTVXjsNLrFM7brOWj9h2K5+z7
	 IE7lz9pyqKTcPGkYBJKlxQgqBK2Qd5MP2jPW69WbuACJMaF/EySaL66jtXvIROUsx1
	 qmb/k9JWxWdx9ICyNsdG5DfAJ39wV7RAYskskh7MR9Xz7weoEi9ZXHXyjBm2avwal5
	 fehpSl3krSm+3b97qnTzeeRGOCEy+Q6nR5rXWuaAI3x/zwJX+xJxfowN+4LU4v0e1d
	 asTr+0t4kYHl6HvBtRPJtWX8y8b8y5dQe0HFgml3UzRZX4/zWBQGVLY5SoUlf9MiaG
	 QW9ONIim5XFsw==
Date: Fri, 28 Feb 2025 14:16:23 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 03/15] dt-bindings: mmc: rockchip-dw-mshc: Add support
 for rk3562
Message-ID: <174077378239.3585541.5147136924937452066.robh@kernel.org>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
 <20250227111913.2344207-4-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227111913.2344207-4-kever.yang@rock-chips.com>
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


On Thu, 27 Feb 2025 19:19:01 +0800, Kever Yang wrote:
> The dw-mshc core on Rockchip's RK3562 is the same as the one already
> included in RK3288. Extend the binding accordingly to allow
> 
> 	compatible = "rockchip,rk3562-dw-mshc", "rockchip,rk3288-dw-mshc";
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v3:
> - update commit msg
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

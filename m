Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8766C3601B
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 06:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmw+q4o4WX2DKPhVbNARL7CP72rkN1x1lPWZJvjs97g=; b=lEjrySDe7vTaYq
	D0TDNI/IWHl+JGoF7x1UQcxHSFmFcaDUfYe2h/Mpi8lCVVTmhNA/hClEIUqoEiRTJtJrROCzgs8Ld
	8W1b4nfg6itHgM/HImikx5r3MGXGbblRTZ/EQ9E/LeNauw2ouTurfv5tW82RKCI9UczEvcst6+sYR
	CGgoO9gWUFM479YoWOWf2lPHkLatU/hXHgwBH4+f4VdVaO4vmETVb3ahUcCyKmILSnPSDwvHkiAvv
	SVqpGCRF+7D2DbpvLCNSQ1rNvnote5yPWnmQt2gmXnBqMf2uQA6BjtJXTmfR+JoD188y7H+ToM9pq
	PuDU6TXiHTYZO29W9qkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0ECB-00000007wl2-0ejk;
	Thu, 03 Apr 2025 06:36:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0EAF-00000007wBy-1z63;
	Thu, 03 Apr 2025 06:35:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C0EB75C64E5;
	Thu,  3 Apr 2025 06:32:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 776B1C4CEE3;
	Thu,  3 Apr 2025 06:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743662096;
	bh=qRM3eG6gqLVGutDjiR2oQQ4su3EUaT75uA7KTA4luMA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ic7VPpVbqDl+foe4m6vFPehXrEaNTdi6Fn3uQKFgASy7+TZXiOAWo9cHZLLtV2uQ4
	 U6A0a4ir7DbesULikeqlrXDugQQXaPnY9xf+mtJfIIlKZsI9HY1+lKnj9jTnKNup3h
	 VISQvK+3JPQzvfUtXTZsZSKlHwOndyyQSxNpUU12qFn891JZOisLp5HkLUalRF4JP7
	 L/9EeEkAB9SApAhYYQpaHOlHCTZfpHs1LUgUqfJXAXcSjQGn0mts8WiQoEmnJwoQ7x
	 NJA9ZmIbnTiFWBfGN2ujLCTXwg4pufVuK1BAWXNz8sD8vSkSf6v2BE7ZKJa6gxkeK1
	 /oN04mr+AN4CQ==
Date: Thu, 3 Apr 2025 08:34:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, hjc@rock-chips.com, mripard@kernel.org, 
	neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v3 2/7] dt-bindings: display: rockchip,inno-hdmi:
 Document GRF for RK3036 HDMI
Message-ID: <20250403-first-dandelion-orca-ed9bbe@krzk-bin>
References: <20250402123150.238234-1-andyshrk@163.com>
 <20250402123150.238234-3-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250402123150.238234-3-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_233459_579548_D0371492 
X-CRM114-Status: GOOD (  10.40  )
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

On Wed, Apr 02, 2025 at 08:31:36PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> HDMI on RK3036 use GRF control the HSYNC/VSYNC polarity, but this part
> is missing when it first landing upstream.
> 
> Document that it is mandatory for RK3036 HDMI.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> (no changes since v2)
> 
> Changes in v2:
> - First included in v2

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

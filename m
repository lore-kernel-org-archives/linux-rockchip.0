Return-Path: <SRS0=J32z=IP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68447C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:39:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0539264F8A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:39:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0539264F8A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jlRipNW49KNV8T/5E8Se8Ag6hlcZF7XzaZt5Gad+d0o=; b=cLGvLc58qXSE6eSsM1JxC28TT
	5IykVt3KWQhu3z15tuck7XO28zlS+iMcP3yGdhcTgs7U3Jada4HbyDBAckoeXW5joayRRxcj1XRpG
	keMXEnRaeoxsIIFISere5oVZZt5H2YCDGLtV8rMDurhri9IGg1XhH0R3g6IVV0lN36wMgtyCA6VNd
	WMTFu+0Rk+/slqtPCQakZ3aDMcuWHBM5rj8mameDEAEJHfb8tXDOT7tU6HxU7IJ7Q2Snh08n5lNB9
	POwF3mTPDRTvohAar/E1FUC5sv7cYv7mmJxZYORpB7tmuLqWAdDuy7ja0XMvwhkbegjdUC/gH5k3Q
	Tt/K8MYsw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lML9b-002EWC-Cp; Wed, 17 Mar 2021 01:39:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lML9P-002EUv-Ri; Wed, 17 Mar 2021 01:39:09 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 50CA364F3C;
 Wed, 17 Mar 2021 01:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615945146;
 bh=qGnc9fuxsfjUHSlaUCeiyxDxXEohk8ay31RvtAPRkDE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=BqUhghEP2W5tHnWYYQg5SbChqqx5dyGv498DX9lWX8BHg8Zzoa2d4PY0n6qfztG5o
 QpXB9KzVv4zfQ8xWT3PyKoSCvTbfgeaDjm4GcBAvEQ1EUyHr/IWRQN+KEem/QFdggm
 IVlH84OwRUBQa0Pizb0sl3IJXe3Ygfh7DCVIiGPTyBH4HC4bRj64OlC8jcDw5ltriz
 9Klv5aaSVydz6aBEnMr26G1/RYnxEp6BeUnuGMV02XpX5VnOLsS/nVanXPYQRLLYGw
 bvQD9XkRwSVMF+BuaWAtLVJ4U9S3oYs9ByoISEGHR6V+IeDSiclY8w1eQYI/zK7S7h
 rc3GkWx5QFNhg==
MIME-Version: 1.0
In-Reply-To: <20210315085608.16010-2-zhangqing@rock-chips.com>
References: <20210315085608.16010-1-zhangqing@rock-chips.com>
 <20210315085608.16010-2-zhangqing@rock-chips.com>
Subject: Re: [PATCH v5 1/4] dt-binding: clock: Document rockchip,
 rk3568-cru bindings
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, cl@rock-chips.com, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de,
 mturquette@baylibre.com, robh+dt@kernel.org
Date: Tue, 16 Mar 2021 18:39:05 -0700
Message-ID: <161594514504.1478170.12364418555385947548@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_013908_080640_1C0A1A07 
X-CRM114-Status: UNSURE (   5.00  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Quoting Elaine Zhang (2021-03-15 01:56:05)
> Document the device tree bindings of the rockchip Rk3568 SoC
> clock driver in Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

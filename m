Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBF08C83F09
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jul 2025 20:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22RcGGEDPovLxPm7c3DKUpL2ReyrJy/TtHmyo4AJrYg=; b=FkOezK8mGod6sF
	9K33lSdqAZFPFoLouP2L/I6V31B604qUosDIElEbhM7LVX3hwpYFeISca/UD5l0Ol6Yl7Utrfhhtb
	u45OpC9zLTTb0xQmo81Pd6hYcH8cDNBDZilA1lQdlBo/QPLbxhN4EeXGSKS7btzVS6Gi6QEJX2KGs
	C2SPN4veGdSz/dIUNsu6zevP8aa9b0iPShXeArggfxwdpi8DGEZM0KZry3hMcDgZbwfaaGKhBdxkJ
	4f9ouBgH6oYwyYiq7UQbzOaaSbS7OHiXjxx7OfTPpf9JNCJXGhZS5ozUl4a15Iv1OC6M38Z87rBdW
	iRAY+d1Yx0ElSSbfxihQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEys-00000006WKf-2d9D;
	Tue, 08 Jul 2025 20:31:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEYQ-00000006SO0-3mHF;
	Tue, 08 Jul 2025 20:04:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5889F6112E;
	Tue,  8 Jul 2025 20:04:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C74CCC4CEF5;
	Tue,  8 Jul 2025 20:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752005078;
	bh=WN1ciI/LBieroqRWpekh0sk9z4c32M5Jn2j2cKXXWbY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TXZXtSc8A4M1kGlmmHXWb8WChesdfRf/CIbbhEXgPJTuajjcvw3s9028JCk25xnxq
	 TYBOSLzvLwMcs//T9t2W31twuSOwleBbh4pUthoRYKRGu0PcSTlx6S+JHYT8tjmoly
	 sor3zkrlM50x2wIGRByPFSb4sBGvWTOIo6AmyRUpM1vbBd43Htwi12+OuQx8MlVBpQ
	 g4BrGONzUhh8OX7AJtkMI9A2b9S1BM7mXzq+Ni3gjTdNgN3NZEooxXVlLAxSDHCK+c
	 z5CTPG6h+9ccQ6MiZTos1Pclvqzk4RUsVjYZcIavkOaDUfAIWkPuLYg/88hESurgjS
	 OCPtOGqgiVfSQ==
Date: Tue, 8 Jul 2025 15:04:36 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 04/13] dt-bindings: vendor-prefixes: Add prefix for
 Shenzhen Bestar Electronic
Message-ID: <175200507614.878155.13962765298111291094.robh@kernel.org>
References: <20250707164906.1445288-1-heiko@sntech.de>
 <20250707164906.1445288-5-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250707164906.1445288-5-heiko@sntech.de>
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, andyshrk@163.com, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, tzimmermann@suse.de, quic_jesszhan@quicinc.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 07 Jul 2025 18:48:57 +0200, Heiko Stuebner wrote:
> Add the prefix for Bestar, named in full both on Panelook.com and their
> display datasheets as
>   Shenzhen Bestar Electronic Technology Co., Ltd.
> which produces at least DSI displays and maybe more.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

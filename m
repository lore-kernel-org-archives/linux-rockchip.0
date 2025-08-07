Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1596EC87FCF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Aug 2025 07:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2hS9Duz3LiLoS/rzaBnbT+i1xYUwj/f37BN3uvTyi0=; b=ZFlxZdW0v9xd6+
	sCD7N200ui/LXG1Btr5qLFyA24s6nM4zUt/RTSwOQZRjNupduNh7w1VQk7dZnvngasZNBkXKXpmnC
	9bu6aLBUmnrciQTAE/LLaCgvD0UZ+dNPQlFubZKv226deRarPPRec2CfVHZv1aVLWxf6Ac+e77XyV
	IkMl6Ed1FI54PzVxmOrp3jVQOUNLCrvJ3T6XMvoyjdiItxF615qLbaMJ3lbH8mOq9NbiuxYUUSqfi
	g4WNVN8RD4l+RDOuKs6HdkX+RxsjZ/tQk7Yc/sTSiRvDWDCgHW+377p+xXHz694dO7Wm8j9ARn0Za
	h7TAhmHdn+0IqLLt2sQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvLS-0000000HVMZ-3UxD;
	Thu, 07 Aug 2025 07:47:26 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvGa-0000000HUc1-28iD;
	Thu, 07 Aug 2025 07:42:26 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 159E220692;
	Thu,  7 Aug 2025 09:42:20 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HHqSeRq_gcEW; Thu,  7 Aug 2025 09:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1754552539; bh=H7gI/QkU5mGOp6GhLKlxsKsfd/y/Y4/o0Q88QZH7wIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JCLPVV6VnmiVpULyLwqu7CfnSt+w+68YFkSquR/haFOVOQvt3Tp1NyANmDsLS+n5v
	 0r3bomtLEYHgOX9MMUIgbYJBCSHb0tpkZ+4s0zz5powu+MNVt2GctxggttBF+pLnxS
	 qvhi3/aGsVapnSEaC4Dh2FuhIVT1tBbu2U+xLGdBrq+h9PeD5tYOkEIUhhf9UBeBMK
	 YNHKIWEcAt5u1T8d+0BZbULxj90ZJk/Mr+HfYv1y+9YsoTq8VvFXKaOMAhSUfTF7W7
	 ixfn0kCsmTO1KaQaciEOAP+zHNQOFQ0GhKb43uoKtJw4GZAZ2u76mK1ENpK86odBIt
	 Us8mvwZV0xVRA==
Date: Thu, 7 Aug 2025 07:42:06 +0000
From: Yao Zi <ziyao@disroot.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v5 5/6] phy: rockchip: naneng-combphy: Add RK3528 support
Message-ID: <aJRYlA6jo9l-XrHt@pie>
References: <20250728102947.38984-7-ziyao@disroot.org>
 <20250807063036.480766-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250807063036.480766-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_004224_972251_F766DD2D 
X-CRM114-Status: GOOD (  12.17  )
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
Cc: kishon@kernel.org, detlev.casanova@collabora.com, conor+dt@kernel.org, heiko@sntech.de, jonas@kwiboo.se, vkoul@kernel.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, shresthprasad7@gmail.com, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Aug 07, 2025 at 02:30:36PM +0800, Chukun Pan wrote:
> Hi,
> 
> > Rockchip RK3528 integrates one naneng-combphy that is able to operate in
> > PCIe and USB3 mode. The control logic is similar to previous variants of
> > naneng-combphy but the register layout is apperantly different from the
> > RK3568 one.
> 
> Is this a typo? apperantly -> apparently

Ahh, yes, thanks for catching it.

I think this series (at least the binding and driver parts) is mostly
ready for merging, so I'll be thankful if the maintainer could fix it
while picking up, or I will carry the fix in a new version if it's found
that larger changes are necessary.

> Thanks,
> Chukun

Best regards,
Yao Zi

> --
> 2.25.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

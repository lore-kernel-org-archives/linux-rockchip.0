Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44EF5D2A53D
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 18:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+t1B88UCw4vWc80ii2n6RhauBMSYt/RLAx9FrS1ghRg=; b=OtX+IBl7HNC1eX
	Tiq6EwEfn99ToaHn01DVOSarJ2ZjTyTDerMZ/v/X8Q278i+fE/xm8wH+J8/d8LQZ/Jqm+zX/d34f5
	ZM/6pXi98LEf2QN72YxsKkrPW6n/KxkZge/RLbg+11zL7aBRbbDolw3xQZTsYG6DB6LIXmgnIfuUE
	h7J4S7RDw5cQmJuEtIqIkJSoVcjOcv4KnIvXAxMHaUQ5LTIiTOzfRrkK4avunHuSS1vLu3Yq/s8Rv
	QtslX/FNWaPhwkuiJbit142zS2PRWpIkQj17Wec+V+0+j0wo4Iz+WNFcCvXho1+7VzpEOAy1aujMc
	j6SqSyypAseSMVlqREsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t18oS-0000000CgiL-0O72;
	Wed, 16 Oct 2024 18:32:00 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t18jI-0000000Cfzz-2Lxd;
	Wed, 16 Oct 2024 18:26:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A91DBA41B59;
	Wed, 16 Oct 2024 18:26:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45C58C4CEC5;
	Wed, 16 Oct 2024 18:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729103199;
	bh=VzEcdM7oxg8go3c06Uetl0AaBL4Nyw8umwHBNlCH7RE=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=mLI7RXIZ8p1Pg+Oo11M03Y0owKEKpR+zIRwNuD2phQi+AM3rpFNXNQg8fN8fxObHa
	 i83p+4ttgkPrSHBPJfjAHXsF3ysit2WuGQZ7K7hcY3PtVsbcv3VIYWvyCM3S/XBlNJ
	 y/nQDOPrCBbJgGjzwntVupTKZuUWvHyvyI2CxKyQMOxwlrgo3SGXvScyzynZInog1X
	 E/+uMl0mat0kT4Do4sL4CUmqdIemyySQgSI7PADT8EJNB40zyQxLjod3RC/pOIllEC
	 5b2xblTGCqrt2MGPS38Q3E+DbjFnTypiCTWS5+L3DGaC4eXug1TaPkG92Mx5G+fW8f
	 1s1BECml7Gh9w==
Message-ID: <de44454fe6d3c7238e28ec5545b2b84e.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240906082511.2963890-5-heiko@sntech.de>
References: <20240906082511.2963890-1-heiko@sntech.de> <20240906082511.2963890-5-heiko@sntech.de>
Subject: Re: [PATCH v4 4/5] clk: clk-gpio: add driver for gated-fixed-clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 16 Oct 2024 11:26:37 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_112640_685730_90FFE523 
X-CRM114-Status: UNSURE (   8.52  )
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

Quoting Heiko Stuebner (2024-09-06 01:25:10)
> In contrast to fixed clocks that are described as ungateable, boards
> sometimes use additional oscillators for things like PCIe reference
> clocks, that need actual supplies to get enabled and enable-gpios to be
> toggled for them to work.
> 
> This adds a driver for those generic gated-fixed-clocks
> that can show up in schematics looking like
> 
>          ----------------

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

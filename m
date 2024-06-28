Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC369C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 08:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+jTq+QZR+f7sXxixGPj/s6NU3BjJJAin+HcwgD6Ee4=; b=K7PzSPJ0AN7lvA
	D8GdVa1u1Iqjfsd5yVJFc4MXL/a+aQdEL6UuzA0/xmrsYAv57WQyQT+M4m3hl0gKivu3L7v47rG0X
	NGCN/3Qz2RGnXete/MTr1XQqblMtMlpYcitNKAoLNlyUOypOx5/4DV6W/YLheWI+HH6zF1FnMJux9
	Bz/0RWjegJtDDeJMFUwlGkjrLzch+V7V7tG1K9vREkIRO5PU0JlKFKguQxmCshJ4G9fDu7EKCabr9
	GW68gKFabexGTtCrj9L+fbv9IfCh8I0yHQVXXMlr1mv6ApGgnimFlDGfk2ZZcNwaRy3GaQycYMeRW
	SdWspModmyJBv+OySRcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sN6jx-0000000D1zO-3Xkv;
	Fri, 28 Jun 2024 08:13:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sN6jn-0000000D1y0-3WWF;
	Fri, 28 Jun 2024 08:13:45 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sN6jh-00027A-Kl; Fri, 28 Jun 2024 10:13:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: clock: rk3188-cru-common: remove CLK_NR_CLKS
Date: Fri, 28 Jun 2024 10:13:35 +0200
Message-ID: <2016066.NnIJQXNAa5@diego>
In-Reply-To: <d8df3cd5-c602-4693-b78a-63a963aa6522@kernel.org>
References: <6f21c09b-e8d2-4749-aca6-572c79df775d@gmail.com>
 <d8df3cd5-c602-4693-b78a-63a963aa6522@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_011343_911096_4011ABB8 
X-CRM114-Status: GOOD (  18.61  )
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

Hi Krzysztof,

Am Freitag, 28. Juni 2024, 09:27:14 CEST schrieb Krzysztof Kozlowski:
> On 27/06/2024 23:17, Johan Jonker wrote:
> > CLK_NR_CLKS should not be part of the binding.
> > Remove since the kernel code no longer uses it.
> 
> Please wrap neither too early nor over the limit. Not one sentence per line.
> 
> 
> 
> > 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  include/dt-bindings/clock/rk3188-cru-common.h | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/include/dt-bindings/clock/rk3188-cru-common.h b/include/dt-bindings/clock/rk3188-cru-common.h
> > index afad90680fce..01e14ab252a7 100644
> > --- a/include/dt-bindings/clock/rk3188-cru-common.h
> > +++ b/include/dt-bindings/clock/rk3188-cru-common.h
> > @@ -132,8 +132,6 @@
> >  #define HCLK_VDPU		472
> >  #define HCLK_HDMI		473
> > 
> > -#define CLK_NR_CLKS		(HCLK_HDMI + 1)
> 
> I still see it as being used in linux-next. Some explanation is missing.

I think me applying Johan's patch [0] removing the constant's usage, simply
overlapped with yesterday's next-creation.



[0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=for-next&id=ec2265dc91307622e43a7d602c3ea425da6f5de1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

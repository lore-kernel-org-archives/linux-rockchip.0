Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78EE9C27C52
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 07:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xT5uWRyJHAkJRYMLkGXji/2yxmlZkXZJHbw+cEA4dCA=; b=uYAxf1kZ5Mh7ag
	tyQO/0jchuH5fl8PQnbV72mgo+5M9VYU86EVhwPWBrH12l5DVyPM3+ujxQH114dl+l4SQcdElkbvt
	VEZ+JzyEOeTwh4sO7242dzyQ/PyO4+e+PFMF3xDMHx2+Zu9hnob9lDDoRybOSuIXfKJtb8ltidGM9
	OMOUOQGDdSWRnP9+1VQuO2furZj7UxcN1mhT8mLR8wLyY+/kOMXrcvecWo97Y9rH7KYa7UknR6Ft8
	b97aIl1pBzkICbryJuwH4CVOZoAeUO7GjjJnMLp8kOIi8oXiPF7UkymVTj3NrWRxk+NF8ANXW1OKB
	Buk94xrdtLzcJz8hvmGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF7gv-00000008hgs-2Bpv;
	Thu, 06 Jun 2024 07:37:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF7gq-00000008heP-2M2q;
	Thu, 06 Jun 2024 07:37:42 +0000
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sF7gh-0006li-LF; Thu, 06 Jun 2024 09:37:31 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 0/5] Add SFC support for RK3128
Date: Thu, 06 Jun 2024 09:37:29 +0200
Message-ID: <7129744.aoefvbuG5b@diego>
In-Reply-To: <fcff0181-b6de-4e47-b7ff-47baac061b3e@kernel.org>
References: <20240605205209.232005-1-knaerzche@gmail.com>
 <20240605205209.232005-6-knaerzche@gmail.com>
 <fcff0181-b6de-4e47-b7ff-47baac061b3e@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_003740_627629_891BC8BB 
X-CRM114-Status: GOOD (  18.03  )
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

Am Donnerstag, 6. Juni 2024, 08:41:19 CEST schrieb Krzysztof Kozlowski:
> On 05/06/2024 22:52, Alex Bee wrote:
> > This series adds support for the Serial Flash Controller (SFC) found in
> > RK3128 SoCs.
> > 
> > As without using some "id holes" we would run out clock ids in the binding
> > and would have to touch the ABI, I added patches which removes the
> > CLK_NR_CLKS macro and uses the recently introduced
> > rockchip_clk_find_max_clk_id helper instead to find the highest clock id.
> > 
> > changes since v1:
> >  - added patches to remove CLK_NR_CLKS (Connor)
> > 
> 
> Do not attach (thread) your patchsets to some other threads (unrelated
> or older versions). This buries them deep in the mailbox and might
> interfere with applying entire sets.
> 
> You sent now v2 immediately after. Confused.

it looks like Alex had some mail trouble yesterday.

The thread you Acked patches in actually is v2, just missing the label.

- original v1: https://lore.kernel.org/linux-rockchip/20240605172154.193047-1-knaerzche@gmail.com

- "unlabeled" v2: https://lore.kernel.org/linux-rockchip/20240605205209.232005-1-knaerzche@gmail.com/
- this as v2, but as reply to the previous
- real v2: https://lore.kernel.org/linux-rockchip/20240605210049.232284-1-knaerzche@gmail.com/

The last 3 are identical, just the sending process was somehow fumbled.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

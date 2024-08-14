Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FFC7C52D7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 00:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuFFXndUmO7F6MSNW8a0WAdm9X3O+73gZ/B74SSKyQg=; b=m0IFoikT16yu7W
	xJfyWLgfEIpqwto366ReShLvB/oOTTzbsUMqY593vR0r1OdRuuO8+LeSY1dYZuf7LzFr37+ALw95w
	WzByxLj3rfAIAiWoCK3l6Y8tfCBLRPBRXocmquU6ekZG5o6sCRatIWx07/X7HrPVZy3/9YyhemQfH
	SVkxiXZvN5hnRrNRc1i1pN9jntKFo1SZMNfoCldEQfhAG5vh/4fgH1uYPf4viRjTJEEJUevEHO+p8
	1Jx0QIPKK0XI96W2kmZJWZgkxI4NMC17kV+tSY702mVDzCCD0ZbI6fND3D7yOWxzK059oWnB3St+d
	jdLWJginJ1MwU9LZfYog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se1TH-00000005Ezy-3V56;
	Wed, 14 Aug 2024 00:02:35 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se1Sd-00000005Evb-2KgW;
	Wed, 14 Aug 2024 00:01:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 63093CE17E3;
	Wed, 14 Aug 2024 00:01:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 767A0C32782;
	Wed, 14 Aug 2024 00:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723593712;
	bh=O+tDBnWVqdcf72Sp7gBl+Zs0H0ScKcO7cHY7UGsqRb4=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=fMT8PLDNvelDL+HOD1J1ZYfRGoqt/Q0iK5aJd7x1P+B5EC1E0NLInZLBX3KaqFqyC
	 r5coCZOcQJoRZVopkzNQsBlYBayN/L78TDPzA8OLLJTBDVCgx1KZkMHEfRTWDzB3si
	 p1Rwp9OTfazqu73Df99nbhdmHDOBgc2kjIZ7OpIgV7CD7Fp+lY+Lr9tqK3q/ICJpYT
	 NIl6mLPJ+rn0Hj1sc2tOmD83V0jgkhUfUGRYobSo0fE5ggy+ffDfLcNegEBgypHnYE
	 HE0HiyNTZVUdxE/Ug6anRB8lTH04PAI0PRmFoPv97XIopx2idgrTyTb4Oqckmh+IJL
	 RenYj8Jt8LzaQ==
Message-ID: <2478bc8a787d07cd3e412b6ee4400669.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <ZrsbXMVy1Dsi4UZe@smile.fi.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com> <ZrsbXMVy1Dsi4UZe@smile.fi.intel.com>
Subject: Re: [PATCH v1 0/4] clk: Switch to use kmemdup_array()
From: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Sam Protsenko <semen.protsenko@linaro.org>, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Date: Tue, 13 Aug 2024 17:01:50 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_170155_991204_B8FA853F 
X-CRM114-Status: UNSURE (   8.17  )
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

Quoting Andy Shevchenko (2024-08-13 01:37:48)
> On Thu, Jun 06, 2024 at 07:09:30PM +0300, Andy Shevchenko wrote:
> > Replace open coded kmemdup_array(), which does an additional
> > overflow check.
> 
> ...
> 
> >   clk: mmp: Switch to use kmemdup_array()
> 
> >   clk: visconti: Switch to use kmemdup_array()

I have them all as "changes requested" so please resend.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B0E9C3ABA2
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Sep 2024 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHqYeJMsfzpJtoiz8EG9LGcEMsdGsKa9AfF311D7IoY=; b=RHDfHQrQDTW8kC
	A7XqNsRWtePNw+icfCyY3cqXtINZdyhBFQPpoI8yo+piZ1eLPtTu569+/bJRCoj02VxYO4lN267uw
	IulOQDSDmE1WSe/pt2emTfMTNsADQYrKI2CYqsBkWj1aXvWP6+XdkBjrIUbm0vlkEKQacTGsYWGOH
	vlp5j9RsO5xSJ1m/P146Jkm9VmA+Djva/goFe6t4PgjETczHDouDAPxJA1q7+ZhIQmahxtXlwcLNA
	T8fGc0pud7PNPw6euc2Nt2wnx/1+OJPChZbRzd/yhac1kN5rQWimTKk4jxAgJnsejNBDgIDXqfU/Z
	yFnRGp3N4Lg3VyglEEqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sptbD-00000002RS8-3zQh;
	Sun, 15 Sep 2024 18:03:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spta7-00000002RAJ-2bP1;
	Sun, 15 Sep 2024 18:02:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E8CAA5C55DF;
	Sun, 15 Sep 2024 18:02:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57AC1C4CEC3;
	Sun, 15 Sep 2024 18:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726423361;
	bh=6k4/XHECOk225ChNvXsCNWtARIZ1ghjxB8A7Nh3z5KQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m6Eug6aWR9x4kUqyS4PO7NemgW8AwX3Jjyaoe7jXxpMK18+8dGP5WRYHFIshC7f54
	 NlSkxNQ/IkczZXmjHBdZ47bhbKtd7DfIP1Xe5lBiUvonpPIlD9P7s8igM15wAkqgwl
	 5AQFI/aOlZZYETRdp2cmbFyuyHwc1uOhaAM1LmfjiBJCqoV+eycGaHhmUvNa90jXqv
	 Np3VcMfYNNRMxb1O906JwoeNl4541mXV7pAecd0YEy5Q/Ax4zC32yQiobq6fhlD7e9
	 sEbhxNehp8Nyx/qBOxgHVqRJKnDZqW2xTJCwSzIYh7k7aolKojXhXcwVkD3OSUDPnl
	 1qedABguKbt6Q==
Date: Sun, 15 Sep 2024 20:02:32 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Yan Zhen <yanzhen@vivo.com>
Cc: f.fangjian@huawei.com, broonie@kernel.org, linus.walleij@linaro.org, 
	heiko@sntech.de, krzk@kernel.org, orsonzhai@gmail.com, 
	baolin.wang@linux.alibaba.com, ldewangan@nvidia.com, thierry.reding@gmail.com, 
	jonathanh@nvidia.com, alim.akhtar@samsung.com, zhang.lyra@gmail.com, 
	linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-tegra@vger.kernel.org, opensourec.kernel@vivo.com
Subject: Re: [PATCH v1] spi: fix typo in the comment
Message-ID: <gccw6hkujwcbrb5mdokvscg5xdyvj35hwgmvpatbb2am72zrak@4sxtmkr3jg4j>
References: <20240914095213.298256-1-yanzhen@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240914095213.298256-1-yanzhen@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240915_110243_723277_4FBA9948 
X-CRM114-Status: UNSURE (   8.78  )
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

Hi Yan,

On Sat, Sep 14, 2024 at 05:52:13PM GMT, Yan Zhen wrote:
> Correctly spelled comments make it easier for the reader to understand
> the code.
> 
> Replace 'progrom' with 'program' in the comment &
> replace 'Recevie' with 'Receive' in the comment &
> replace 'receieved' with 'received' in the comment &
> replace 'ajacent' with 'adjacent' in the comment &
> replace 'trasaction' with 'transaction' in the comment &
> replace 'pecularity' with 'peculiarity' in the comment &
> replace 'resiter' with 'register' in the comment &
> replace 'tansmition' with 'transmission' in the comment &
> replace 'Deufult' with 'Default' in the comment &
> replace 'tansfer' with 'transfer' in the comment &
> replace 'settign' with 'setting' in the comment.
> 
> 

For what it matters, there are two blank lines here.

> Signed-off-by: Yan Zhen <yanzhen@vivo.com>

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Thanks,
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

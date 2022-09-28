Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D28EC32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 18:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hGx14lTAUBLKvZ4ygQCsQTSNOZtlFvH3tyoZx85aFU=; b=uR11pEQtI9VoGo
	H/v8HddTvKDjxUkYuosW4CZTdkgXhX3MRhvcL2StHVAzIz2nCovcpZe1ADsFiPdqOIcVFSGa2gCbz
	v01s4b1D9wNFVwSbcEUY3iOEYwLMmQFcFXK6qVdfO0LDQJdCxpeoeVg+ZEaY/dVxwIQAZ+tgYj6la
	tq/kNiAxALfA78Fa6AUx9/grfLYtGNQMO6hqYXfYlHPHHbm6TtBhaw/qL9+yMd7ygv7HmLVbsZzpj
	H0E5PtyqAX6i2q0wqyKEcD2cRvqyyy6ahkAZRGnczid85fKXQvXX3lK5o+TP4RV+ZUqlBQrnFj/ZB
	4SlXduvWgiAtfiaG5qxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odcGb-00059B-OV; Wed, 28 Sep 2022 18:58:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odcGQ-00056n-CN; Wed, 28 Sep 2022 18:58:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 108EB61F77;
	Wed, 28 Sep 2022 18:58:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59F7DC433D7;
	Wed, 28 Sep 2022 18:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664391512;
	bh=73cqCtnNsDvfXsy6P+CF5Gnpa0oRjpEWOATabkd0y9k=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=U1sH8DCduJBFVtNE7yAlXn+ak+MjNp86ZbDmHrcjAysL2CoJnUObFmS9WNGjF8SaU
	 lgeXbWR/3OJLLg8wlRs+xo69pUEwgVSTtBpJRdiKsiA/pSXsXGhOWTqDtzSTYhCvlX
	 NMHvN23fb+IA+pu6jw7hn+pcz/xe1A82Xe+wKRlRtUPpg5YySPJK/HNbotjrwsFuwd
	 6YPscxERooUYDYQu7LD6SXQ8brpzaXj+vtecP3pNaAB2t9EUy0iEhZHi/GUOIF+g86
	 CzTAkiLNISzTaJyaCQVkaCMBR2DxeXtMfFC38dtYPYc+V1DPyTGDJdfaXe4xdk4kvQ
	 AjoGrX4XAUfjA==
MIME-Version: 1.0
In-Reply-To: <20220927075511.3147847-27-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com> <20220927075511.3147847-27-clabbe@baylibre.com>
Subject: Re: [PATCH v10 26/33] clk: rk3399: use proper crypto0 name
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>, Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>, ardb@kernel.org, davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, robh+dt@kernel.org
Date: Wed, 28 Sep 2022 11:58:30 -0700
User-Agent: alot/0.10
Message-Id: <20220928185832.59F7DC433D7@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_115834_476112_3DD43E73 
X-CRM114-Status: UNSURE (   8.33  )
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

Quoting Corentin Labbe (2022-09-27 00:55:04)
> RK3399 has 2 crypto instance, named crypto0 and crypto1 in the TRM.
> Only reset for crypto1 is correctly named, but crypto0 is not.
> Since nobody use them , add a 0 to be consistent with the TRM and crypto1 entries.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

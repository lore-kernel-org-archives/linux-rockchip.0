Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4430C25B67
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 01:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvdJBPkghubjtzQ+mbw8CtOjI+O9sDANSe8K7eGvuCE=; b=GbLX7WVrvMJfrw
	Xi41V6EfiAetLJyhgXEkR78cL/+EV+sLghAZMlKjEwJqL2M+H7Z55s6qHcxqyhXgJrcef7V8Ri8Z0
	6Ib+U45oNto8YrzlMySCN1/hpZHj04ex3syW7uwUGnnaGDpubRfjo/zszigAunYaejnCjBLihH92w
	h8dwUPgxwm++vEs/0O+bFJEAtUYdtGaTST4XjBNHXFdoS/cE6c/04vUokp9VMKJqeXE6I1JIYO9zK
	sySWM6ookIKaE6FZcx/1iD/D/uqhZWauK3uES41EW4ugIKomy3a605nDe++XGJmRMVyHsgs3S45CN
	3sxLkuIXEFHBVTXhQOIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qv6Vz-008bsK-1P;
	Tue, 24 Oct 2023 01:47:27 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qv6Vw-008brB-1k;
	Tue, 24 Oct 2023 01:47:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 7FE9FB81F54;
	Tue, 24 Oct 2023 01:47:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06A4DC433C8;
	Tue, 24 Oct 2023 01:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698112040;
	bh=mO3XCjY6Z0lxeyk7f7BJMy9qpCv7zZnFBymSDfJlDWg=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=rJrG57SVlu4spNUaY4iPdXEtxyYZWOT7fb29l8P8JM4S/7pxetWDhYqsyNO7EXbcw
	 EatHJxOfWwk1Ff5Cm0x8u3BcMC3SMQEjmjilYtr1E47o5xQqqjDXMxbq/Xx22j9h1x
	 wLZdOBAWHS2eHUTXGjmngNvEBpHeQ3X64sFDAQIF+Fk7QsY+W0DJkqYbcHs4Y9jBj8
	 KYbPF5PJ5p2cXY9jc1mLAsgkjxLFcTp6R8acJdM1bX3dycKdM0Tl82elIXlAPcSirv
	 VrbX4bQ25xCAGTX+Mu6765zvmIw0kcr/Z57pqYRqGmufMCRrPwacnMq17dmjEPUwbA
	 1byHUuCsyROTA==
Message-ID: <b0af9e04bafb07e8a73e8f242a4ff556.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231018070144.8512-1-zhangqing@rock-chips.com>
References: <20231018070144.8512-1-zhangqing@rock-chips.com>
Subject: Re: [PATCH v4 0/4] rockchip: add GATE_LINK
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, huangtao@rock-chips.com, andy.yan@rock-chips.com
To: conor+dt@kernel.org, heiko@sntech.de, kever.yang@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, robh+dt@kernel.org, zhangqing@rock-chips.com
Date: Mon, 23 Oct 2023 18:47:17 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_184724_792174_FC3889CC 
X-CRM114-Status: UNSURE (   5.83  )
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

Quoting Elaine Zhang (2023-10-18 00:01:40)
> Recent Rockchip SoCs have a new hardware block called Native Interface
> Unit (NIU), which gates clocks to devices behind them. These effectively
> need two parent clocks.
> Use GATE_LINK to handle this.

Why can't pm clks be used here? The qcom clk driver has been doing that
for some time now. 

 $ git grep pm_clk_add -- drivers/clk/qcom/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

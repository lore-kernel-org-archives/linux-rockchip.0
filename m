Return-Path: <SRS0=CIwj=GQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29F5DC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 11:43:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AEA55233F7
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 11:43:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AEA55233F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C1VVHTAMxJp1e5eM43X+OcJVJIPS4BbaiAaCI5hSBPg=; b=RPS7SVVtsXTtOtKvMefv3KFPM
	KWcKrqsiDJ/IuTrxr1jWUKXNUqLbvSkJepgIgLGOrHqtPtOlu452oDyxFXuRG+LTC8dtA8pVXorbr
	fXeW6in8DHDVcIk4lsJkSpRfKwbbEyfq37ZXmaGFp8q/WRe6KwQW5UcUuLSJIWJeEjFS9pIUGzSaJ
	kOarKorcCsa6scdiWrm0ykcXSs1+0985lAANTDAqOXhx6gO2RkJm+dPAnurgv9XW+Tn1YUvXQPKEU
	c+bSZuvxCBW30sIyMuY0hqljpTsKrr6smOi4CRANDTgIB04c0Iq6tdvFSC+Q4GHurA5D1i801BWnW
	W+heEGBSw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzeYi-0004RU-9v; Wed, 13 Jan 2021 11:43:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzeYd-0004QJ-RH; Wed, 13 Jan 2021 11:43:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 99CCB233ED;
 Wed, 13 Jan 2021 11:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610538203;
 bh=4lfAzIIXpvDgPBgljbfYqu50jIJ3GftaisI4cpyB6LA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cH7Q1Mmh8k1Tg7X9NkHaLthBt+Zsk3e8LKYGc7NO2spDW/jO6zbg69p7npgbzjtbK
 m1ChektHDSte7Leb7PcEMROVmrXrjXJmnw4cdq63xG41juyHKrAZBpJV3cBhOwqSDC
 UkhB0gRBLxj0Hqu50/HJrmY6KNlJMGMgp8Q46Kzu6F0EHamlGpzUvSy0PmQKxSvhAL
 tIcYQ237PyW27M8pBu+4hB6EI1N+5xgmoc2Uedzv4FL4i23qViJ2AdRaJCfh6qZCic
 wbCdjLmTt8D/dSD7kFZdSxKigg91d8aB5No+xvOwhz3PlMJIr+pkHmefWXH8CCOSG7
 Dps2UJ/dvL2FQ==
Date: Wed, 13 Jan 2021 17:13:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: Re: [PATCH v3] phy: rockchip-emmc: emmc_phy_init() always return 0
Message-ID: <20210113114315.GB2771@vkoul-mobl>
References: <20201210080454.17379-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210080454.17379-1-chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210113_064323_991880_DBA914A5 
X-CRM114-Status: GOOD (  10.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 10-12-20, 16:04, Chris Ruehl wrote:
> rockchip_emmc_phy_init() return variable is not set with the error value
> if clk_get() failed. 'emmcclk' is optional, thus use clk_get_optional()
> and if the return value != NULL make error processing and set the
> return code accordingly.

Applied, thanks

> 
> Fixes: 52c0624a10cce phy: rockchip-emmc: Set phyctrl_frqsel based on card clock
> 

No empty lines after fixes line pls

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

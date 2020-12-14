Return-Path: <SRS0=K/hu=FS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MISSING_HEADERS,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33FB4C4361B
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 02:56:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B594C238D6
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 02:56:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B594C238D6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Subject:Reply-To:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Gevw4Xo4OgZVAOVWu49VQtuOK3FdQFAi9PmtsHSeZeE=; b=iABbOU3VZ7zPZy2EUAxDHPuU/
	TWEVMjQZ6FC4zvAi1m+Ci6BHIbYou+angfjUOKOdsZGr7mGurSpg4TiQZdwOQS3OC015Wt7YHT6VP
	XQeNAu1A2yDqEXD5iwLVOHVyuALkp5M7uIAc9pk4gcBmV+EwZCc3e5r45gVCi3rM12/byHLz3jsKV
	YsUwuMW0QdUbbOmRtrNLUvPql23/OaTE99zCodKMHblAtGAjqFSshsMdWaxA0Yn4dvfioSuJKxRrK
	TMzu4khRDZ5pZ2nCaxphlPMFOYr5Kj1nLkGlIIvawskUfEChhFZTyhos6eGs1jlNl8N7FTHuDELcU
	0P/HEo8cQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1koe2Q-0005dS-Gw; Mon, 14 Dec 2020 02:56:38 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1koe2N-0005cd-4M; Mon, 14 Dec 2020 02:56:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id D0F7920138C7;
 Mon, 14 Dec 2020 10:56:31 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sDG8LkYOmztR; Mon, 14 Dec 2020 10:56:31 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id AB2F420138C6;
 Mon, 14 Dec 2020 10:56:31 +0800 (HKT)
Received: from [10.128.2.32] (unknown [124.217.189.105])
 by s01.gtsys.com.hk (Postfix) with ESMTPSA id 2E953C01FAD;
 Mon, 14 Dec 2020 10:56:31 +0800 (HKT)
Subject: Re: [PATCH 0/3] rockchip: emmc: rk3399 add vendor prefix
References: <20201214024720.24656-1-chris.ruehl@gtsys.com.hk>
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Message-ID: <3de52cae-f790-9881-b540-328118de45cc@gtsys.com.hk>
Date: Mon, 14 Dec 2020 10:56:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201214024720.24656-1-chris.ruehl@gtsys.com.hk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201213_215635_396534_53D7F118 
X-CRM114-Status: GOOD (  12.91  )
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
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On 14/12/2020 10:47 am, Chris Ruehl wrote:
> This patchset follow up with commit
> Following the reference in vendor-prefixes.yaml, update implementation,
> devicetree binding dtsi and documentation for the phy-rockchip-emmc.
> 
> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
> ---
> Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt | 19 ++++++++++---------
> arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi               |  2 +-
> arch/arm64/boot/dts/rockchip/rk3399.dtsi                    |  2 +-
> drivers/phy/rockchip/phy-rockchip-emmc.c                    |  6 +++---
> 4 files changed, 15 insertions(+), 14 deletions(-)
> 

Sorry send incomplete patch-set accidentally

v1 follow.

Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

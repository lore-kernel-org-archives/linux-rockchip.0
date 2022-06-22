Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10FBDC43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jun 2022 08:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5WJAoECqqr5hJ3ddRMcju+wKhGbBTDkeeXjkoEptZc=; b=j1TPUm+bLTtSF0
	iZE5zE81PBjCqaGiVthdXQ+WJ0Ihq/+MnP5hkM0hGcDutBS9qUipjt4UQ2ywTM1VdK1HJgYUfZ3sJ
	MR8cdW3ZnogxOBNHkeQGnFvv9GFeLgh5xUBomzTIEtR3ElTSHJFoRSo/Z07ibQTGETPG3y//pg2sl
	KnR0MnK95Jki7MUhXr6adJKvdjj3bzyiXr2qClUU/0Q+tE7doyBIUoOa9CJvwrUyImBS+pFJ7GG8A
	NNexlAmOZf3MQFq6llLXAnsuzCdWm8ByyUfQtnQm3eb26bJ18hD4zxqGv7jbsZJeOnNUS1P8+eONM
	kpTCNGeEkvv2Rk7xoEfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3wCG-009P0D-Gi; Wed, 22 Jun 2022 08:58:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3wC5-009Ovn-03; Wed, 22 Jun 2022 08:58:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5C6F161901;
	Wed, 22 Jun 2022 08:58:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3606C34114;
	Wed, 22 Jun 2022 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655888315;
	bh=Wr0E9HYR/lRdsNctiBQuhP55cBrX1u8h4v65qm1rnsY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CfFNlfkeB0uVJEACrg+cJByiY37SBtzOj7lhrbswI9hQZn07/662K3hEqbuMxVJQe
	 m2Gz0CpR38aRA4gVk94Q2xtsEL18uHQt6tdRTQF9knZaYeUQUxSXcpNBz4Ua4V2uFX
	 aXXtT/yfRzXUi3h6cgcoGZZ4G8NzPyYb8cg7ucSi2x6Wz9GXviSnQp5oFnl/HvmMn8
	 D1WHLDexphb8teM/mrv7BOW+Z+o52Ef1iqcRukPqfQec0Bs+7S8FA3YXNh66GRVs9s
	 yUz9hCMXT1W/IvVJ0b0XBCUk1eSF/3iHDeTYw2h8D47Bq70AGVaDGlWVF5NmYC3bnr
	 PWX+aUL9UVZ3w==
Message-ID: <fea4cfbe-7425-ca0b-fe71-2f9cbcf24abe@kernel.org>
Date: Wed, 22 Jun 2022 10:58:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] pinctrl/rockchip: Fix refcount leak bug
Content-Language: en-US
To: Liang He <windhl@126.com>, linus.walleij@linaro.org, heiko@sntech.de
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20220619073315.4067956-1-windhl@126.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220619073315.4067956-1-windhl@126.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_015837_128935_0C5216C2 
X-CRM114-Status: GOOD (  11.12  )
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

On 19/06/2022 09:33, Liang He wrote:
> In rockchip_pinctrl_parse_groups(), we need a of_node_put() in each
> loop for the of_find_node_by_phandle() to keep the refcount balance.
> 
> Signed-off-by: Liang He <windhl@126.com>
> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 1 +
>  1 file changed, 1 insertion(+)

Before applying the patch please check it carefully. Previous evidence
[1][2] suggests that not it was not even compiled.



[1] https://lore.kernel.org/all/202206221602.odN70SHs-lkp@intel.com/

[2]
https://lore.kernel.org/all/16f9a971.44e5.1817068ee3c.Coremail.windhl@126.com/


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

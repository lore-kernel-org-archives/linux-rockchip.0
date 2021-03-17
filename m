Return-Path: <SRS0=J32z=IP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5536EC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:39:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D15C864F8A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:39:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D15C864F8A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6eIebnbpT7WanjVubIP7p/lzwVOP5KIZaUE93+LQfYE=; b=HS6pzhu7lvL6UHV5Yp9Bd/UYM
	6p/bU2voPLJRbhx3RJrrudDcArAxuunbEuN51AcBZjldjQVkF4hyazNW2g6sC04uQZ1aOc+yMk7JB
	SKCkidc6MAOwG8VL56FeJaLsaQoJab/my0GwWU0hOyrJQSKLAI3Tn5x5tQpnXeLlpN+Nq2jgWxKzm
	BK6Q9QhtiGivNiBMacPviZMCdrwCYnE5XjsssX1AvGh0CzgLjwlgILh+iFagORBaxWjmK9hbORAOE
	qdCJkZhiEzyZbsBYNO0lMe22fyVTu8QUdpv8VclaL+XGaaQi8SmcAt8I5cv3Nfk5CDzqgjapZGA6a
	Ag+1HkKSQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lML9x-002Eb6-Fp; Wed, 17 Mar 2021 01:39:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lML9e-002EWf-JI; Wed, 17 Mar 2021 01:39:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 26B1564F3C;
 Wed, 17 Mar 2021 01:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615945161;
 bh=j6CzSX9wEsNTHn4YGYlT8GSBeZDSs+ZXcd0CaxQgQxw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=cvZCfRfYPGFjO2GbZeZ2COgHxhp9G1Q/jgYZEZysjC3Na6hSocr9zcmbopPZXlffc
 338+DA6kpiTKoKndz1ltb/6qDp/stNHN3BywSlcNwbyjzTgpWIFJrcC4nLLzWF8PiL
 NCHg0scvn1uVbP8lyf18jDVx44xWi88Ftpw0N8Cf5bAZjouObbZrEKVRI8AdQ/kPoK
 R0uqqCDFMoLgSOdGwOCrnnKbY8n23mdU31DJOROdPTCrkqFe+PaXNRHJki1ZaMphEy
 LU3bg6+u3JAyNWIQ9Kjutmi303zdD9T5Vdk1fcZiPPTYRO/IWyvbnXmgly2KXbyrTd
 jjbftWqwq/SBQ==
MIME-Version: 1.0
In-Reply-To: <20210315085608.16010-4-zhangqing@rock-chips.com>
References: <20210315085608.16010-1-zhangqing@rock-chips.com>
 <20210315085608.16010-4-zhangqing@rock-chips.com>
Subject: Re: [PATCH v5 3/4] clk: rockchip: support more core div setting
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, cl@rock-chips.com, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de,
 mturquette@baylibre.com, robh+dt@kernel.org
Date: Tue, 16 Mar 2021 18:39:19 -0700
Message-ID: <161594515997.1478170.15019513894285693388@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_013923_440607_8B431FC7 
X-CRM114-Status: UNSURE (   4.72  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Elaine Zhang (2021-03-15 01:56:07)
> Use arrays to support more core independent div settings.
> A55 supports each core to work at different frequencies, and each core
> has an independent divider control.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

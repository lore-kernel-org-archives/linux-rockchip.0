Return-Path: <SRS0=J32z=IP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3DE7C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:39:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 82D5164F8A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:39:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 82D5164F8A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bve/0qkgOTh84Mf+QLOWBA4giJ6KrJ291WVlObeJWW0=; b=TyHCvswY3Gt4y2EB+IkQbCsmm
	Rotqusntw4yJcIJHT9/XaM/zGls2GZBRFPRNi60vSZFIZ7Nb02ymnbaxceEA4w7OWsTnMVpSL2p/m
	XrIfzlVB42X4qLZehEA8ulGTsrBVY5eYkq9vJ+9IuAnv9g+lBXviy7lhGwlrTcAmKInUqxlIRNqgR
	nlSGtGioUBw7Pqjxm0OnTUfrpEhIFvOfGV6SKN7SMv0EcRqkn30YFb2svi6x+fvkdMXdkm5YJAl1n
	tCZzfoSCCBEsr2o2kGfE8rzQsuo7+iwp10GdEx+9CucwF0xN2ksRRUEwJJ/0vnoVI8z0YU6+UHkW/
	bQA7bxFBw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lML9m-002EYO-J2; Wed, 17 Mar 2021 01:39:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lML9W-002EVc-TF; Wed, 17 Mar 2021 01:39:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 797FA64F8F;
 Wed, 17 Mar 2021 01:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615945153;
 bh=lbu695orGj63ivKv6YsWl2FwPs6zzrQavcWls7QgRY0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=cjA4WeDAeRkpWoE9BnBz87NOIaEkGJAbbE8cYShWllUetS8s7IizoNZFcHpsCbGM2
 GNPmBLGgj1BGlWY3n2ztCEp/880RFWAee4oShJXWA4LkeCfu4+PjxyW2v+zcFA2IrA
 aJ0YsKTS9HGfFCqnYokcbYESXpxd8PUfAu/h3geK6TIJf4XJvZ72cWMZygFuh3FAuf
 Sp094Nhtj7KnUuKBNhGbfjwxptOnboqcQY09jhZccDqDQw90wqWexPLirjkt/ly/9w
 7Sdb4AYkTHTTYJxUTCUmQmHweW7IiydkeNEAGc3EYmzPb9VaU/Wms3U+rfpD7ozppd
 eIHDuC9b81LtA==
MIME-Version: 1.0
In-Reply-To: <20210315085608.16010-3-zhangqing@rock-chips.com>
References: <20210315085608.16010-1-zhangqing@rock-chips.com>
 <20210315085608.16010-3-zhangqing@rock-chips.com>
Subject: Re: [PATCH v5 2/4] clk: rockchip: add dt-binding header for rk3568
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, cl@rock-chips.com, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de,
 mturquette@baylibre.com, robh+dt@kernel.org
Date: Tue, 16 Mar 2021 18:39:12 -0700
Message-ID: <161594515228.1478170.677486264440845481@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_013915_174767_F3517C43 
X-CRM114-Status: UNSURE (   5.94  )
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

Quoting Elaine Zhang (2021-03-15 01:56:06)
> Add the dt-bindings header for the rk3568, that gets shared between
> the clock controller and the clock references in the dts.
> Add softreset ID for rk3568.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

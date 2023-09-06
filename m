Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7824CEE14A1
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Sep 2023 15:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QQJfb7WeX0zpdaTWfq7GQADMtZ4PQeVBfPyMJBtQRqs=; b=StUG0CmtoISlsIcHKTP5mpCHQ5
	MzK8ip7KZzoSpFijXb/xvoYq7yZmfjuIveV2mv19lgii6AhGQjOEj53DgglW8+feCDcafBq5/e1V3
	GeLrIJBsDd4OZ7x3HzUh8n7TX/sKBE+Z+Df5TZBYonSHw9wsLNwhaavxzS9pc+Ga4X6xkk6g0nJrv
	o0kkoU0KRA5cS8xAavF9CZ1muUaEQhuOFW4EArGYqVJceuZUbAGFYGmgquSP93TJ82tpgAlymP9YB
	6ykturB91bM3K6QYoFXKZj7PhkzZ9RjqD9OregCIfCN8AsQ/PoRv5c2ebW0DXU5SpEfB0csu0qrHe
	EyKyVf0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdu1Y-00ALdl-0k;
	Wed, 06 Sep 2023 15:00:56 +0000
Received: from smtp.ivitera.com ([88.101.85.59] helo=mail.insite.cz)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdu1T-00ALcO-1E
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Sep 2023 15:00:54 +0000
Received: from localhost (localhost [127.0.0.1])
	by mail.insite.cz (Postfix) with ESMTP id 1FC3CA1A32301
	for <linux-rockchip@lists.infradead.org>; Wed,  6 Sep 2023 17:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
	t=1694012663; bh=xFq1kKi/ZzMaFpfYJ0p0ULyZcVLsRDVtqfCA2ZZd4gY=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=Hqns9oJJrQ3IWpM+zJOSBfWY40/v2JUC4WUZaKlJ5Sul7jsDtszB1HFEmeyi66zzY
	 4PxBHFwhuHBzBJdVK88GB0R4bJG77oFQ6fKPYRY2x9m5DB6epyfPKMjkE6AU2u40rM
	 Txhld34Dng0CYkP2YR/f7xjv76XuSoG7Eko5Tweg=
Received: from mail.insite.cz ([10.0.1.254])
	by localhost (server.insite.cz [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9pSWozSeFx3B for <linux-rockchip@lists.infradead.org>;
	Wed,  6 Sep 2023 17:04:17 +0200 (CEST)
Received: from [192.168.105.22] (dustin.pilsfree.net [81.201.58.138])
	(Authenticated sender: pavel)
	by mail.insite.cz (Postfix) with ESMTPSA id E625CA1A32300
	for <linux-rockchip@lists.infradead.org>; Wed,  6 Sep 2023 17:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ivitera.com; s=mail;
	t=1694012656; bh=xFq1kKi/ZzMaFpfYJ0p0ULyZcVLsRDVtqfCA2ZZd4gY=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=QESbzCZqgiV9T/UtoP9YtR9z/fpdEbIXwaOyXtgQmNOEqRQyd82Oi0TjAoPGdXkm8
	 LGE0lLbZ3sgafTB0z5vLnueJdo4cShfhIzg4uCRQqfCMTVtxYOnPGvqlu3wF9k54+w
	 lwe/31AGNpx5cg9i90mel42aQYbwS1pW5AgkxY4Y=
Message-ID: <2a67c4ac-a45e-01b5-58cf-78d0d6835455@ivitera.com>
Date: Wed, 6 Sep 2023 17:00:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Increasing priority of a DMAC1 hardware request ID on RK3568?
Content-Language: en-US
To: linux-rockchip@lists.infradead.org
References: <5806abb1-d7d3-294d-de18-6f05fe36e8e9@ivitera.com>
From: Pavel Hofman <pavel.hofman@ivitera.com>
In-Reply-To: <5806abb1-d7d3-294d-de18-6f05fe36e8e9@ivitera.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_080051_906085_F1B8AC5C 
X-CRM114-Status: GOOD (  10.67  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Dne 06. 09. 23 v 10:42 Pavel Hofman napsal(a):
> Please is it possible to increase a priority of a DMAC1 hardware request 
> (I2S1_8ch_tx specifically) on RK3568? I could not find any DMAC priority 
> mentioned in the RK3568 TRMs.
> 

The PL330 DMAC documentation specifically mentions that no priority of 
channels can be set.

But the DMAC0/1 clock on RK3568 "acl_bus" has multiple parents 
("gpll_200m", "gpll_150m", "gpll_100m", "xin24m") which corresponds to 
the documentation - CRU selector CRU_CLKSEL_CON49 aclk_bus_sel/aclk_bus 
clock mux.

The default value of that selector is 200MHz, yet my RK3568 has acl_bus 
clock switched to parent gpll_150m, i.e. only 150MHz. Perhaps keeping 
the default 200MHz would increase the DMAC performance?

Unfortunately I could not find where this particular clock gets switched 
to the non-default parent in the kernel code. Other clocks using the 
same parents gpll200_gpll150_gpll100_xin24m_p (e.g. aclk_gic_audio) do 
run at the default gpll_200m.

Additionally, the datasheet mentions bits aclk_en ("enable aclk_bus 
switch to lower frequency") and switch_en ("enable aclk_bus/pclk_bus 
automatically switched to lower frequency when pdbus is inactive") in 
register CRU_AUTOCS_BUS_CON1. By default they both should be disabled. I 
could not find any explanation of their effect in the datasheet, kernel 
does not seem to touch that register at all, as far as I could search.

Please can someone knowledgable of the Rockchip clocking help with 
locating the reason the acl_bus runs only at the non-default 150MHz?

Thanks a lot in advance.

Pavel.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

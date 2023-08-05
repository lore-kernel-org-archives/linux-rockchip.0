Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67241C00528
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Aug 2023 21:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1g2GCCU1iFBXQJx49T99vyK9cJuNCppJtXVGffc6M+M=; b=xAOjxZUjGRtUlC
	gRxhCsK+vAB0locMZro+esdpGb8TdLur3n/hZXI4KUoXOuZbTHN7KpCFpQKKeFFBcBc4h3MqV/OLV
	z2cWSfRd0RjTxdPUJAEbxSUW42t1iaFOJ9mNntQGr9zxs6Hoi7TNG/GAjmAI0q2YEgZhAh95tmWyk
	0KITUuSYRtfuYGi6p7z7m1MkvhkbJnJDkvkAIql3QE23TJBPPqZRu67sksWQq/qcdnjydED2NcBo6
	f9FJkphoOqZHi7dWT2hgcnEE/8jNSWrnFJsFvsqxZ74iUFX2LH2VByspso30u0Q+mKXNEBSzEwGZe
	TE1Na+WQji803hNt5jmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSP0f-00EawN-1h;
	Sat, 05 Aug 2023 21:40:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSP0d-00EavZ-06
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Aug 2023 21:40:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1B78260DEB;
	Sat,  5 Aug 2023 21:40:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E4C2C433C8;
	Sat,  5 Aug 2023 21:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691271623;
	bh=k64VRgGuJDKrIA65xa+FHVrwoVlo+w3ZLCxnjg6dZfQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZDXoqey1jOtrvd4DCRrmYiAIbh0sf46tBBQW2W2XV9D9vez79lWwVsHeTtomkX9je
	 dn+LspPo0W9nvUXfV4a6t15pn0XKKDT019pW4OqPMKe+3QXXg2dlFiVsTsm9PRRP+o
	 1gmfsM2vNp23+Y/dT2uEPrAb90Sk8PerUntuGUpkSFxgQHnqf9AP+L4KCnYi8bjVXq
	 AxfVlBzjlEJ/w7D2QJsMJtlgF/dazkgm/GqNLvPrAo8blTNyzFHUZcE9D3fHZHhnkX
	 I9g+cDnBzOQUNwPfqtzFU7SsnZ5XffiTN2CtOZZ1QJfS5X94UuIbx8OxzFYyg4a6xz
	 ikuNWhCG8BfwA==
Date: Sat, 5 Aug 2023 23:40:19 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Ruan Jinjie <ruanjinjie@huawei.com>
Cc: sylvester.nawrocki@gmail.com, mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	linux-media@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH -next 1/2] media: camif-core: Do not check for 0 return
 after calling platform_get_irq()
Message-ID: <20230805214019.vidikqlccitiddxa@intel.intel>
References: <20230803024645.2716057-1-ruanjinjie@huawei.com>
 <20230803024645.2716057-2-ruanjinjie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230803024645.2716057-2-ruanjinjie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230805_144027_115797_527143E9 
X-CRM114-Status: UNSURE (   7.45  )
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

Hi Ruan,

On Thu, Aug 03, 2023 at 10:46:44AM +0800, Ruan Jinjie wrote:
> It is not possible for platform_get_irq() to return 0. Use the
> return value from platform_get_irq().
> 
> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>

Reviewed-by: Andi Shyti <andi.shyti@kernel.org> 

Thanks,
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

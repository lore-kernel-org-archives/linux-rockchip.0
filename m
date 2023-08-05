Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 586D9C00528
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Aug 2023 21:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImMby1V3xadkEzyJOm+j6vJY8Cw4n0oJypjwMA/crF8=; b=ll+1wnIBdBrd3C
	IeV8Sgutfv00eIjnXe48/hJNvyuWLD6HUjw60GFh2F7ypGCRS/4PUqeZsclQK8mMwG2epOnK42GYy
	Yiw/9IMpg6W6jnZSukr4JXREBx/RyFrLdA1/ltLzclepQaJQuC1MlBJ5qZ9OeDNQngC4ijzkhLMUn
	nqCV4nF+s+Hb+Lnoui73JteFgBcsh2S3H+pUzN+XaLtrGGbtQVrz1Rhbluu6eFPm5JEqZq3bql5Ra
	HxScj3m0y0aQQiDqOWJe1DKu2C/YUdNMteQYIo4kbgHrkL9JX7QJm+PHH+q4S4aT2E1NisB1VmlA9
	pxHDhq42unfmJj10jtCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSP2k-00Eb7Z-1z;
	Sat, 05 Aug 2023 21:42:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSP2h-00Eb6y-3A
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Aug 2023 21:42:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1599960DEB;
	Sat,  5 Aug 2023 21:42:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47EFCC433C8;
	Sat,  5 Aug 2023 21:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691271754;
	bh=t9/PN8NddGMEUxQeZoMA3O8Sbt550SevL2v+P6ufCyg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cwMxHtdgC35fZyO9bZK9AiKZv7KpBingNGmGYJgMgKUoJRPQr51SnaVTPUEn3cf5f
	 V1DirzHs9KzbOuNmLqhTAPwxCsSAPcavUAR36f1R+Ditq2Ib/sUxMTvCSYj0LFrDmz
	 uxM/L3o4D9pmzY9psTHsPvR9pC86NlT2eOMNN6VS1lK9w/1KgvCgdhII0AC/sr0LX0
	 kTrC5WqApvFdeZRTS7A0DOMugOBqmKsm9NIClz4Szu0DbhcyqXNij7deedEAYP7TqK
	 7haLTiX9K1ovRtrdW+fEy6Nw1LOOGSY/LdjG0e9yVTFImeL0JSAtTft8c+ITCUyMKf
	 BW5BKQjXk3LMA==
Date: Sat, 5 Aug 2023 23:42:30 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Ruan Jinjie <ruanjinjie@huawei.com>
Cc: sylvester.nawrocki@gmail.com, mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	linux-media@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH -next 2/2] media: verisilicon: Do not check for 0 return
 after calling platform_get_irq()
Message-ID: <20230805214230.7v3kjloxoby3fyxs@intel.intel>
References: <20230803024645.2716057-1-ruanjinjie@huawei.com>
 <20230803024645.2716057-3-ruanjinjie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230803024645.2716057-3-ruanjinjie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230805_144236_056701_A7ABDA4B 
X-CRM114-Status: UNSURE (   8.46  )
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

On Thu, Aug 03, 2023 at 10:46:45AM +0800, Ruan Jinjie wrote:
> It is not possible for platform_get_irq() or platform_get_irq_byname()
> to return 0. Use the return value from platform_get_irq()
> or platform_get_irq_byname().
> 
> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>

Reviewed-by: Andi Shyti <andi.shyti@kernel.org> 

Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

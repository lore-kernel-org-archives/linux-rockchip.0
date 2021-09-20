Return-Path: <SRS0=3gvV=OK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D98BBC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 14:35:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A264C610CE
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 14:35:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A264C610CE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSy61xjEeMI3HQs86vr4LYeocQ7hpaAXQouwwhCOYbg=; b=loCZLisXFC7Vca
	C7ULDAnD2XN83jdPrBRh14G3KSYeGKfdKWchVhS3xWaxBrX57z6AuuKQlxSBwc4qEsD3zerqmsXWw
	CWMVgINA3tJJ0aK3l9wWoRpu7rGx8U5ivpMJYe0Pj3c4buRwp5wvEnM5xkn5Iok/8jga9Zv3FRPfW
	OfeWcnrwTv8WFT1yRGTVdDJie/aEBKdyFXP1yvB0mmL6qoxkmKuaJqbNnsPB9jRGaQUExHtkEyz2h
	/f1sJmWVJtI1AJBGtexZXSDpqIdeps1z6BtMQjNWLwowlZfTmz3NcZBnh05uEA2sGJtRfnN72sEdy
	3tiNuQPJB+8QBEFQEF9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSKNw-001xcz-DO; Mon, 20 Sep 2021 14:35:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSKL0-001wCt-NX; Mon, 20 Sep 2021 14:32:07 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1mSKKz-0005Rh-4o; Mon, 20 Sep 2021 16:32:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Tommaso Merciai <tomm.merciai@gmail.com>
Cc: tomm.merciai@gmail.com, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix: PCI reg address is not
 configuration space
Date: Mon, 20 Sep 2021 16:32:04 +0200
Message-ID: <4652194.GXAFRqVoOG@phil>
In-Reply-To: <20210918164153.207146-1-tomm.merciai@gmail.com>
References: <20210918164153.207146-1-tomm.merciai@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_073206_846238_0D10FD4B 
X-CRM114-Status: UNSURE (   9.63  )
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

Am Samstag, 18. September 2021, 18:41:51 CEST schrieb Tommaso Merciai:
> Warning (pci_device_reg): /pcie@f8000000/pcie@0,0:reg: PCI reg address is not configuration space
> 
> Signed-off-by: Tommaso Merciai <tomm.merciai@gmail.com>

applied for 5.16

thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 381DAC52D7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 06:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1wAK8lZYEPKQ26XGTwcliNh/zbZueVN5+ioIaQoUwM=; b=A2DYUAds92vaFK
	PuABi68Epej3lBZSqZG6pIlpC8hX4DDwaVTa/D5fKa5vgeI9uh13MdAVY5jrtaDznUNIC9KY0P6NZ
	Fh3hwz+fqDL6qds+BHl1/7nxmf8sk/PU3xUJyh8SuMcfrwwQIZY614ivmHehDXIIlmpiWLi4fVwo9
	lvtqW/mqjHqrXPE0CpQR1Drvg1UWyVCuelGTOPwA42zlCJb5sLIS2gtV7S6SS2z4J05ULKXxYCvsV
	qv9eZ5TQbVU9s5QEJU9Ba2E7E09jhAYPkkAFcEoRuZnLLabjnSikEIL7gLOuJvYhzKRioOuboadva
	PeNnTRIRzO/CUuHlxuCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se7GW-00000005tFA-07qd;
	Wed, 14 Aug 2024 06:13:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se7GO-00000005tE2-3MQ3;
	Wed, 14 Aug 2024 06:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=j21engmFs3GELUMW77iDDQjhaPDOeHUS9ui1dl3zxrw=; b=JhfeJuInZJtIHq01Ek4VKUtrGO
	LiuqF/40ahXHrkWuILM0WLlqQezvG21QVLvdljpoVYdGvsuqLkCGtJNL1x14Or1GVa4KoEjyeSxtH
	aIRULXOGnDFn6QiKteTyipFz1NxtOn7PgH9xu8LRq55U+JHN3sVuSmJI+NFqOCW8RDkGvjz+zfikn
	7lQhWZUFXSB+dZah5x7BrGo77sLM24ieisnPrBbXrE8CY+RWSiFHbRZD0xJfZ1zj18kIs9DCWLFYE
	0yPxFcGLnBDBLM8ZiYBa1pjtg1ziCv8H90rNfwpnizYQPl8d/u6Wyw/MOBzdXdgT70aCZszVfa6lR
	QSwHMhlw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1se7GJ-00007F-LA; Wed, 14 Aug 2024 08:13:35 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Liao Chen <liaochen4@huawei.com>
Cc: linux-kernel@vger.kernel.org, jassisinghbrar@gmail.com, wxt@rock-chips.com
Subject: Re: [PATCH -next] mailbox: rockchip: fix a typo in module autoloading
Date: Wed, 14 Aug 2024 08:13:34 +0200
Message-ID: <2181332.62m94kTkzf@diego>
In-Reply-To: <20240814025147.3875634-1-liaochen4@huawei.com>
References: <20240814025147.3875634-1-liaochen4@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_231340_900818_4BEBD3A2 
X-CRM114-Status: GOOD (  10.79  )
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

Am Mittwoch, 14. August 2024, 04:51:47 CEST schrieb Liao Chen:
> MODULE_DEVICE_TABLE(of, rockchip_mbox_of_match) could let the module
> properly autoloaded based on the alias from of_device_id table. It
> should be 'rockchip_mbox_of_match' instead of 'rockchp_mbox_of_match',
> just fix it.
> 
> Fixes: f70ed3b5dc8b ("mailbox: rockchip: Add Rockchip mailbox driver")
> Signed-off-by: Liao Chen <liaochen4@huawei.com>

nice catch :-)

Reviewed-by: Heiko Stuebner <heiko@sntech.de>





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

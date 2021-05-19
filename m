Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72ED0C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 23:26:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 061EE60FF0
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 23:26:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 061EE60FF0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Aua1GFRtLGe+0GsFzV4FlXkxQfDWFktxDI4T5ka7kR0=; b=I0ssC5XDzuzATIluvJn1ZA3BP
	pQwRgJd3nDrRq8qAMsEtMPLOOdN1/8a2oFJ2MvRPwjWjFbDXi3qDP95Z/Q2JhUe4Puvq+gg+2lC4i
	+3/tZn/19XSyb5xSG1G5nqYjl3pWEEllZU4DO2yeO1kmlM5KyK5h6y8GcCwfOodm2VfTGQa5PXUl0
	lVrJlIqiyWUhz0sxYY5drsZiEcUDPjAgEIB4N08VliLPJZj71UsgQ7MYIAVn/EhEadg/MgHdmm1F8
	CGK/3R0Ad/PTkmXkWIULu9kgnX7nJ/ux0YLBcUNQiK0zxAdoC3oTdOSbrngJT656uCQE9BcUKoW+M
	1GMFPKjZw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljVaW-005L3t-7C; Wed, 19 May 2021 23:26:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljVaQ-005L2x-PG
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 23:26:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=Xxty4EhUNDWdtLN08SUd7bvKvLYj/SEFjhZj9OX/3cg=; b=nWm5PTIIzbD65b/CQkT/sB6gtQ
 e+fSH1tyGTYPfS17TPnUtQ2afEOXi415BwX77CtYH1xj1DbFx1XLyl2Z8AK4MobONbL1Rpl4ZvqpR
 NC4F6/BIEkVc/TMLQgAumzMxsOmnU+nli2ppczc7B0qIXQHfC5HkQA4uQbxBHX1jv6kaTXGXepWcQ
 rqOLD/K1TsHmy4hISfU0IYGxui278SeJ4Ouqr/D7UoDX0FwUM89EUX1bMzAXkmKZWIbZEGS5g0Qe1
 uiS+T8ng2gH/I9kj3PwnuhmJ0vWLf5e0iN9psXf0QGkUB02Wb2x93YXMVXYGJypzQDPicNUB3GPR7
 H4uZYt6w==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljVaO-00FqHU-DU
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 23:26:45 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ljVaM-0003Mc-Sg; Thu, 20 May 2021 01:26:42 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, robh+dt@kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 7/7] gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq
 set type
Date: Thu, 20 May 2021 01:26:42 +0200
Message-ID: <1817539.g5d078U9FE@diego>
In-Reply-To: <20210510063734.506063-1-jay.xu@rock-chips.com>
References: <20210510063602.505829-1-jay.xu@rock-chips.com>
 <20210510063734.506063-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_162644_483563_4EA505C5 
X-CRM114-Status: GOOD (  10.00  )
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

Am Montag, 10. Mai 2021, 08:37:34 CEST schrieb Jianqun Xu:
> There has spin lock for irq set type already, so drop irq_gc_lock and
> irq_gc_unlock.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

I've looked that up, and yes the irq_gc_lock stuff really seems to be
redundant when there is already another spinlock in place, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

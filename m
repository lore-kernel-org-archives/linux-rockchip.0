Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAD09CCA47D
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jun 2022 13:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6t4dpQ7iNmy6rvWo05Zm5sht36nRLfBrPYN1Esn4Mco=; b=tOC8f0yUulbipY
	eR9MWzH1xB/apU0RAsupGO418KbPvStgu8G+qpZJNzCTcMR6q/xG9m63xhiBd6SrvrZD9MdIw+ZoS
	FKoSEyMLFfuwEpDpHuxQg48j8FumdOBxdhD0u/7BFTNog2z/r5kjRS1gyoattkYFnmFcWM4nskyw+
	LshX/qQ9bFvn6RlUNKeuL4+Fue3guICZu1dUracJL7Yb1pmKnNh52MqPmXHCk/rhCYss8AudNbg8V
	3KD+wCO0R2bH9OqlkEOq1WzleDtsRV4e4WuwLCZxEoFQL6o9N5Xzu5Bs6xx89aOsXXu0Re6fzO600
	tMNjI/NpCD1R+AQ43qOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o40AT-00AS9K-CO; Wed, 22 Jun 2022 13:13:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4081-00AQi1-9D; Wed, 22 Jun 2022 13:10:45 +0000
Received: from [62.91.21.7] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o407q-0001zi-OT; Wed, 22 Jun 2022 15:10:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Liang He <windhl@126.com>, linux@armlinux.org.uk, Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm: mach-rockchip: (pm) Add missing of_node_put()
Date: Wed, 22 Jun 2022 15:10:26 +0200
Message-ID: <4377545.PIDvDuAF1L@phil>
In-Reply-To: <1a450b67-1e37-1eac-5906-910cb4deefdf@kernel.org>
References: <20220616021713.3973472-1-windhl@126.com> <1a450b67-1e37-1eac-5906-910cb4deefdf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_061041_403848_E9A52715 
X-CRM114-Status: GOOD (  17.16  )
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

Am Mittwoch, 22. Juni 2022, 11:00:11 CEST schrieb Krzysztof Kozlowski:
> On 16/06/2022 04:17, Liang He wrote:
> > In rockchip_suspend_init(), of_find_matching_node_and_match() will
> > return a node pointer with refcount incremented. We should use
> > of_node_put() in fail path or when it is not used anymore.
> > 
> > Signed-off-by: Liang He <windhl@126.com>
> > ---
> >  changelog:
> > 
> >  v2: (1) use real name for Sob (2) use goto-label patch style
> >  v1: add of_node_put() for each return
> > 
> 
> Before applying the patch please check it carefully. Previous evidence
> [1][2] suggests that not it was not even compiled.

thanks noticing possible issues and for the heads up :-) .

I re-examined the patch and at least in this case the of_node_put addition
looks correct - the original code was missing this and not putting the node
it got in the error case. And the change also compiles :-) .

Heiko

> [1] https://lore.kernel.org/all/202206221602.odN70SHs-lkp@intel.com/
> 
> [2]
> https://lore.kernel.org/all/16f9a971.44e5.1817068ee3c.Coremail.windhl@126.com/
> 
> 
> Best regards,
> Krzysztof
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

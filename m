Return-Path: <SRS0=Y7pG=FI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43336C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 11:02:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 72D0F229EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 11:02:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 72D0F229EF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NvmRVA0LQmrTA4d1boCywhV1pNdlyX2yeHoFrfVmqKk=; b=lcSNHrYA91AFPYdZIoXO88lzE
	xIpDP9+3lcA6i0ob8o8QENkEyOvte5zNRoX11keNS9OpnIEP2ZnZFN2aLj3EtjgN++O+69yW5mwVI
	urWYkPGvjjStLGvBMB3W4nZaHcNGKQk4xWVU94W7H0zKf7flqhrrQYpQy8HEmAZS28HPxwKdXbYSV
	0ptrDjcBEUPha1b9VULHTIqjzK5TIcHowYOHdU3bQR5nVebN0sZSPwJzzFIraa+yQR0P4OtmK78I0
	et/KHBrls8/MZZnRYaB54fLQdcA9HTu0nhBcSOxKauQJE2rPP8Dv533oBaJ1x+lgZVMq4n7m7xEQH
	JQFc3J+dQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kl8qm-0001m1-Dn; Fri, 04 Dec 2020 11:02:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kl8qk-0001lV-7s; Fri, 04 Dec 2020 11:02:07 +0000
Received: from [95.90.166.74] (helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kl8qf-0005Lx-GJ; Fri, 04 Dec 2020 12:02:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: rk3328: Fix UART pull-ups
Date: Fri,  4 Dec 2020 12:01:55 +0100
Message-Id: <160707971061.1322141.15049981560864741595.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201204064805.6480-1-wens@kernel.org>
References: <20201204064805.6480-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201204_060206_325405_0D320B25 
X-CRM114-Status: GOOD (  11.76  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 4 Dec 2020 14:48:05 +0800, Chen-Yu Tsai wrote:
> For UARTs, the local pull-ups should be on the RX pin, not the TX pin.
> UARTs transmit active-low, so a disconnected RX pin should be pulled
> high instead of left floating to prevent noise being interpreted as
> transmissions.
> 
> This gets rid of bogus sysrq events when the UART console is not
> connected.

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3328: Fix UART pull-ups
      commit: 94dad6bed3c86c00050bf7c2b2ad6b630facae31

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

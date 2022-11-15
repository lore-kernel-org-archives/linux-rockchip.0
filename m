Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40FE1C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 11:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBSOzEzBbohZens664aitAQKuU2tWaU5pC6zRefDugY=; b=RiraBYRxhIB63s
	PHA0r7gF/uICsWqO44uNKwpTMXVJyE+hp8ENTLeCDguyXN8WK6vanzzj6xyPX303BOzAcuKhV19Ga
	w1ORXo0fzWWjNpTwRAWIC8xyslsmkupUUB/U7AGafLVoui//bzjNr9DecwCTgzydvXJrRd/MxzWgc
	Zdf1FnSCOrgncxRYF8JA7n95naXuQ4aKzWjwNVe457FPsRhucdSr6mWB2r6pqRDaENsrHcq5gjOin
	eLHuZRypL2lYhr9v5gAh5M3vanoDSvGKNEWmJNhm6dox4Bc48asuGuWxnOvouHaZB77u9KETL9wCY
	gzTsXWNPOEVfP7bWhW1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outqz-00ANmH-P6; Tue, 15 Nov 2022 11:11:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outpl-00AMuc-Ty; Tue, 15 Nov 2022 11:10:31 +0000
Received: from wf0498.dip.tu-dresden.de ([141.76.181.242] helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1outpe-0007ai-MT; Tue, 15 Nov 2022 12:10:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: rockchip: rk3xx: disable arm_global_timer
Date: Tue, 15 Nov 2022 12:10:17 +0100
Message-Id: <166851058436.863884.13293855526499863813.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <f275ca8d-fd0a-26e5-b978-b7f3df815e0a@gmail.com>
References: <f275ca8d-fd0a-26e5-b978-b7f3df815e0a@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_031030_018426_AA2EA167 
X-CRM114-Status: GOOD (  14.25  )
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

On Sun, 30 Oct 2022 21:56:29 +0100, Johan Jonker wrote:
> The clock source and the sched_clock provided by the arm_global_timer
> on Rockchip rk3066a/rk3188 are quite unstable because their rates
> depend on the CPU frequency.
> 
> Recent changes to the arm_global_timer driver makes it impossible to use.
> 
> On the other side, the arm_global_timer has a higher rating than the
> ROCKCHIP_TIMER, it will be selected by default by the time framework
> while we want to use the stable Rockchip clock source.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3xx: disable arm_global_timer
      commit: da74858a475782a3f16470907814c8cc5950ad68

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7343C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 16:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ReyLv8aoevCPskN3+kUIjC4jQzEzWrD5RTXA/zSLs7I=; b=gOR2WazgZHwsYD
	DYlAlAr6t/atSyKVSkv6fAaot0i+Smysur22igufwfkkZx0xGYfF4pr6BNL8q2poZLcXGA8JEPJ/d
	z9z5mYN1g3R1hC8Ql79wpJNYpLClZO4B09Y5bQ2SrsJGFn68L2HpsDGanFrBUN4pXT79BZ0qme0tb
	Gw1RZEtKnV1TVCKnCYUNXyQotkCCWEXYzZ0byEfHKp+gQxdmufB/e6+rAPqlOQ6ASIX+hdjnBOi5q
	Pp5X8bgSwLfsuRqEoKW5WgEmvsIsR6eiYrtWYLLep/HK7suDJp2HkOu0Wnzuo/4h1HiTcXZRXA6yS
	RO5Alve9Z2i8Rssswq1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQk-0000000HSd1-2hll;
	Mon, 24 Jun 2024 16:20:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQe-0000000HSa1-2GLP;
	Mon, 24 Jun 2024 16:20:30 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQZ-0001wn-Qq; Mon, 24 Jun 2024 18:20:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH v1] ARM: dts: rockchip: enable hdmi_sound and i2s0 for mk808 hdmi
Date: Mon, 24 Jun 2024 18:20:14 +0200
Message-Id: <171924573800.612064.1539997666589623837.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <aa79ff87-ea94-4f6d-a81b-5110724243f4@gmail.com>
References: <aa79ff87-ea94-4f6d-a81b-5110724243f4@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_092028_604463_E431AB82 
X-CRM114-Status: UNSURE (   8.24  )
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

On Thu, 20 Jun 2024 16:11:38 +0200, Johan Jonker wrote:
> Enable the hdmi_sound node and add i2s0 as sound source
> for mk808 hdmi.
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: enable hdmi_sound and i2s0 for mk808 hdmi
      commit: 99a2b6d16b37258bcbdc2e07eb55e129362a182f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

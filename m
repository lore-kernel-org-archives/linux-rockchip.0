Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFF74C04FFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziYCc6S2E2uLXP/o/dIwwZxxn5aDkWey7wBuS+gNZGc=; b=JOt26Evb3bnrpN
	8f9GzqnVYVzCkJBeUsIYJnlfxaZ9hEu7XIfWZjmmgBcztXk/3t5egQjJBlgP2Hl2BA/FLQuwdG68v
	v9BceMQsyEU+nL0KF5SvtvSTCSVLF7ORU19wts7SIGQgEJSVCF3/Q7cmSryDMSL0T4PIcwChYOPlk
	qVTeNnu4t/P0s7QaUUl3CCJtAgG9LAQ1mywlcF8v1dCEOjLyOKtr8FwZi4y4uYLyq1HxH7y+aaOMF
	BlXBMfM9xGu/LUQwWn4d2Y0eoZlAoGBTBzaGALbkXaspjoq8Sa9zS3ma7HL8Ug1tdqoXp+EHpH6fO
	ZAUbE8m1WyghyDY0xRZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHs4-00000000T3W-1Pn4;
	Tue, 23 Apr 2024 15:15:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHrx-00000000Syj-3PgE;
	Tue, 23 Apr 2024 15:15:43 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzHrv-0007PZ-QB; Tue, 23 Apr 2024 17:15:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marek Kraus <gamiee@pine64.org>,
	didi.debian@cknow.org,
	robh+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions for Pine64 boards
Date: Tue, 23 Apr 2024 17:15:32 +0200
Message-Id: <171388532521.2652222.18024517612743377604.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <ec124dab2b1a8776aa39177ecce34babca3a50e2.1713832790.git.dsimic@manjaro.org>
References: <ec124dab2b1a8776aa39177ecce34babca3a50e2.1713832790.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_081541_893421_4DC03CE3 
X-CRM114-Status: UNSURE (   8.82  )
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

On Tue, 23 Apr 2024 02:43:43 +0200, Dragan Simic wrote:
> Correct the descriptions of a few Pine64 boards and devices, according
> to their official names used on the Pine64 wiki.  This ensures consistency
> between the officially used names and the names in the source code.
> 
> 

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Correct the descriptions for Pine64 boards
      commit: 433dafc7b4f9f9a1011d72b32e138b598faa4807
[2/2] arm64: dts: rockchip: Correct the model names for Pine64 boards
      commit: adbc5e6b457e773f1afa11fdb9b667cd492a7f82

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

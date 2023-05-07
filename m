Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61755C77B75
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 May 2023 10:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O54N7GNG5aoOEhMKyFZaLvmICmFwXfZqWfYGhWLZwuE=; b=epxrzffQ/QnQE2
	FKWqC38shDosg6uyXg/6JZtRzObT1lLr27GQliHLstmXkIYNr+CV2StmF4ZoFpBjK9FmE19Jv1eT7
	2V5qy6dvaJuMpvMICaV6UexE+L1yvNYyz02VA0oHLb/BY2wT7EIR0XhGP9bcjx/wrXydftsvXPVhU
	QVqfUWNFUAiKiUNlK1cDjpQ6+eDtFkZvglBJwNwGlVF2BRs2gZCm35EYEHpGPGhJRaCc+Gc5VfU0J
	mytkkvu3+KRTnSBNEwyENkUuqCt36qFOS1ICE5y0GUuWMyLFd6KsxDHHnD0g3p+hI3LEnTCYIkTWf
	4xVyYcN9MjN8p/qB6F4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvbJh-00FiaO-1D;
	Sun, 07 May 2023 10:08:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvbJe-00FiUu-1v;
	Sun, 07 May 2023 10:08:32 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pvbJT-0005PP-7c; Sun, 07 May 2023 12:08:19 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject:  Re: [PATCH v4 01/21] PM / devfreq: rockchip-dfi: Embed desc into private data
 struct
Date: Sun, 07 May 2023 12:08:18 +0200
Message-ID: <2141728.irdbgypaU6@diego>
In-Reply-To: <20230505113856.463650-2-s.hauer@pengutronix.de>
References:  <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230507_030830_661321_6AF05441 
X-CRM114-Status: UNSURE (   8.68  )
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

Am Freitag, 5. Mai 2023, 13:38:36 CEST schrieb Sascha Hauer:
> No need for an extra allocation, just embed the struct
> devfreq_event_desc into the private data struct.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

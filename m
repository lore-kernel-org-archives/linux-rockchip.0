Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8212BC77B75
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 May 2023 10:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVPsg0lNRZt7oKhRdKvipszqxuHI4+KRIHLQu/Vkus4=; b=btMYlyyQvy1icM
	ngv2a+5F661kZ2Qj7C9yghfDTZeZ5dNqrlA3/n7MBaudHqlmOLBHl0ktJ1JogslnMYPXrQcYlZUp5
	BgYFSCEjB//oIjdBub+8Hn9DM/Nt/G6T2gC9oxygh1BMmf1OfQI9FhThr9wkk7e2Pvzm5AdUPOUjH
	PEdcVNBLCxFIkNVkjaHxG3lUi3VUEn5RBdaIv9s6ANtW1/6NYpxjaJR08Q56WR3QMpUeW9peYNIzb
	Egsn4795g+xA/YUZ2hRT/hOaTkOjjZi2KYoxyMTyqjqJiXzmSB8LEdLz61yp9T9mXc44ywyOqE5rK
	h4FAHKwtnzlQh79OrUkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvbWv-00FrT1-2B;
	Sun, 07 May 2023 10:22:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvbWt-00FrPj-08;
	Sun, 07 May 2023 10:22:12 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pvbWq-0005Uy-5A; Sun, 07 May 2023 12:22:08 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject:  Re: [PATCH v4 02/21] PM / devfreq: rockchip-dfi: use consistent name for
 private data struct
Date: Sun, 07 May 2023 12:22:07 +0200
Message-ID: <2880351.e9J7NaK4W3@diego>
In-Reply-To: <20230505113856.463650-3-s.hauer@pengutronix.de>
References:  <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230507_032211_083346_D4EA1D18 
X-CRM114-Status: UNSURE (   9.41  )
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

Am Freitag, 5. Mai 2023, 13:38:37 CEST schrieb Sascha Hauer:
> The variable name for the private data struct is 'info' in some
> functions and 'data' in others. Both names do not give a clue what
> type the variable has, so consistently use 'dfi'.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

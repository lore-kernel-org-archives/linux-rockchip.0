Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69DEEC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 16:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPZcvt/XIh6SdOtqQThLMItPdaUo3Gq8xOA2iaCMDjg=; b=RzQsIwk72X5XRe
	qq8hTXQumPA+vWuRYSbcJwlvfl3P/ukjySbEq3DnqHwkvMsPQEAtUeEPV88TvG5VWmV/E8GGDkRrE
	T8dDNSkSrLoXgvufB1oMUaGmiCTnA2SLgg2/iz+aj5pFrdZdq+KFwtWIAio/KYk6RIOTAXPLDrbNl
	NuEBsOuOKrvgh0YQwGXmvFqBxRgkUAgv+71Pq5zBQObm7gCqPbLt39hAh34cFGeBs1eNoMPTolp38
	krtvoL3Mm7ON4UraC4wjynl15PjhR/yXHeIkRcwegSiXwKmqddjvXFS0bX9K71rq3orap13bnhl6J
	CUNkzI/y3ixEoMpfPkLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox9ra-00G0D7-4i; Mon, 21 Nov 2022 16:41:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox9rO-00FzxE-7n
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 16:41:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1ox9rF-0007nq-Pm; Mon, 21 Nov 2022 17:41:21 +0100
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1ox9rA-0003Ni-Ge; Mon, 21 Nov 2022 17:41:16 +0100
Date: Mon, 21 Nov 2022 17:41:16 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Shengyu Qu <wiagn233@outlook.com>
Cc: devicetree@vger.kernel.org, ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de, jacob-chen@iotwrt.com, kernel@pengutronix.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
	robh+dt@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
Message-ID: <20221121164116.GE15565@pengutronix.de>
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <TY3P286MB2611FB223B1CC437B01BD984980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY3P286MB2611FB223B1CC437B01BD984980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_084130_292436_D1F5D50B 
X-CRM114-Status: GOOD (  13.22  )
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

Hi,

On Tue, 22 Nov 2022 00:01:28 +0800, Shengyu Qu wrote:
> Someone from pine64 discord found that RGA2 doesn't work properly on over
> 
> 4GB memory RK3568 devices. Are you sure current driver works now?

I am absolutely sure that the driver works on a 2GB ROCK3A board.
Unfortunately, I don't have a device with 4GB or more memory and I cannot test
the driver with such a device.

As the documentation for the RGA2 is the same in the TRM of the rk3288 and
rk3568, I would guess that the driver doesn't work on a rk3288 with more than
4GB (if there is such a thing) either and the driver needs to be fixed for
both SoCs.

Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

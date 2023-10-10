Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FBEACD68EE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 05:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8ioAcxsjzQs77BH33KtAvLzUpgHMxT1LcUY4AGQSqI=; b=T01DCbLWnmZNCu
	EQxoIeKMAeDndaM6dymtb7wZ1VRgY6vyqvtzEQfIP878mLC74JLRCcOza7jpG0YGlTDBx4jV2RqeY
	m4JiugREpDVdj/nHnm1BcTA7kxl0gC/Bg2zpDh/zGwPlaewho7TYxNZJSRpYUSxefmqzSPJPh4NX5
	4S9YmP/QCDgUUrKW5zPoTUoZ0ZjCCaM2IL+EBDrNkGmsBQ3y7vPj6RDtSMMj4IISq4sRESSZtODsm
	2u5ui9o83s68yBJNgkWMnNHkhbE+iMOVSMOvr0Z2jZM2N9+X88RTAR0T3lDn9R0Px4QWi4fTHRwh0
	yFQw+l2MQdWilHrVc4wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq5lP-00CVqZ-0W;
	Tue, 10 Oct 2023 05:58:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq5lL-00CVpR-1F
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Oct 2023 05:58:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qq5lH-00047h-QU; Tue, 10 Oct 2023 07:58:31 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qq5lC-000aTg-WD; Tue, 10 Oct 2023 07:58:27 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qq5lC-00Dfxg-T8; Tue, 10 Oct 2023 07:58:26 +0200
Date: Tue, 10 Oct 2023 07:58:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Chanwoo Choi <chanwoo@kernel.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Linux PM list <linux-pm@vger.kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	Sascha Hauer <kernel@pengutronix.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v6 00/26] Add perf support to the rockchip-dfi driver
Message-ID: <20231010055826.GI235829@pengutronix.de>
References: <20230616062101.601837-1-s.hauer@pengutronix.de>
 <CAGTfZH1An5ZYXkskY2vPvNFB=7tAzzGR1shf4_AG5jzsWAgu-w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGTfZH1An5ZYXkskY2vPvNFB=7tAzzGR1shf4_AG5jzsWAgu-w@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_225835_440421_2DE8B843 
X-CRM114-Status: GOOD (  16.09  )
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

On Fri, Oct 06, 2023 at 11:20:09AM +0900, Chanwoo Choi wrote:
>    Hi Sascha,
>    The Cc of this series doesn't contain me so that I didn't know thise
>    series.
>    Anyway, I'll review them today.

I wasn't aware that I forgot to Cc you, sorry for that. Thanks for your
feedback, I'll address the comments soon and send an updated series.

Thanks
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

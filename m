Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 008B2C64EC4
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Feb 2023 15:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mE55b4LTuI9pGq+cM5/tMnPwx9m6vWf/FyAVH+/uN0A=; b=49UUm3FcHMQ/xR
	tDOUn8wMjEBW8j9l40lDQRP1atXMN+uGTJch6CsunIFnXah1o+sgFW2mgnX1BMYZx5AmKBEnxM+MW
	mf0YdEvL4DFCi9+5iNw7aWGwxJx7NulMP6B0hxbrL22x3rviLnOFllsJNnHmjSDCsK3BM7cLh8h/5
	JxY4OkJ8OI4k4XNZ0b/GesCIzKQydysuYQzZsRR4ZHW/rRH1iwUzt9DVb8+rUVolH22nfaifR5scG
	FS0vNXLWvLQXkjOy3Q8Ux7Gu8CUB1Wq/YRGaT8p9xHzEPb9oUksyW+xZ71kkYgvzoO45ZGZumlNGU
	hT9Fe2jIpz4sOSe/w1cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT2iw-00EsYY-Uw; Fri, 17 Feb 2023 15:32:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT2it-00EsWo-Rw
	for linux-rockchip@lists.infradead.org; Fri, 17 Feb 2023 15:32:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1pT2ii-0000fo-9L; Fri, 17 Feb 2023 16:32:20 +0100
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1pT2ic-0006Rh-25; Fri, 17 Feb 2023 16:32:14 +0100
Date: Fri, 17 Feb 2023 16:32:14 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Shengyu Qu <wiagn233@outlook.com>
Cc: devicetree@vger.kernel.org, ezequiel@vanguardiasur.com.ar,
	frattaroli.nicolas@gmail.com, heiko@sntech.de,
	jacob-chen@iotwrt.com, krzysztof.kozlowski+dt@linaro.org,
	krzysztof.kozlowski@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	mchehab@kernel.org, robh+dt@kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH RESEND 2/2] arm64: dts: rockchip: Add RGA2 support to
 rk356x
Message-ID: <20230217153214.GB28242@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Shengyu Qu <wiagn233@outlook.com>, devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar, frattaroli.nicolas@gmail.com,
	heiko@sntech.de, jacob-chen@iotwrt.com,
	krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	mchehab@kernel.org, robh+dt@kernel.org, kernel@pengutronix.de
References: <20230119-rk3568-rga-v1-2-43d4d14365e6@pengutronix.de>
 <TY3P286MB26115F60D273E840D36A610598CA9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <20230217110413.GA28242@pengutronix.de>
 <TY3P286MB2611256E28AF951F2B38A5B098A19@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY3P286MB2611256E28AF951F2B38A5B098A19@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
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
X-CRM114-CacheID: sfid-20230217_073231_942832_7B24B0A0 
X-CRM114-Status: GOOD (  27.75  )
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

Hi Shengyu,

On Fri, 17 Feb 2023 22:14:13 +0800, Shengyu Qu wrote:
> Seems we could use GFP_DMA32 flag to limit memory required by driver into
> upper size range(actually using ZONE_DMA32 configured by device tree). Just
> some driver modification needed. 

I don't think the GFP_DMA32 flag works with DmaBuf import. The buffer may be
allocated by some other driver that is able to address more than 4G and
imported into the RGA driver. In this case, limiting the allocations is not
enough, but we would still need error handling in the map function for buffers
that cannot be addressed by the RGA.

I guess we need both, a limit for the allocation and error checking for the
map.

Michael

> Maybe Nicolas could help testing? I would
> 
> like to fix this, but I don't have much free time these days.
> 
> Best regards,
> 
> Shengyu
> 
> > Hi,
> > 
> > On Sun, 22 Jan 2023 00:50:37 +0800, Shengyu Qu wrote:
> > > Since we have the over-4GB problem now, should we mark this problem as a
> > > TODO or something?
> > I am not really sure where to put such a TODO to make it visible for people
> > that are running into the issue and to make sure that it is removed once it is
> > fixed.
> > 
> > Maybe it would be better to add error handling to the rga_buf_map function to
> > fail if the address of the buffer that should be mapped has the upper 32 bit
> > set and print a warning. Furthermore, the driver would be able to skip the
> > buffer and prevent potential memory corruption caused by the erroneous
> > mapping.
> > 
> > Unfortunately, I don't have hardware that allows me to test this.
> > 
> > Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

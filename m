Return-Path: <SRS0=rUAS=GR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D02C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 08:10:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2CB392343F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 08:10:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2CB392343F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N+jx8ZyRHSYgFkBWWzna3pcKQCPw9/FpjDWnIuCdJMI=; b=vTIVTnBPBUQylsSrXVEgkQBlI
	eAD6tkv2ptBMwx7NTj4fteccVSV3T/4F0KNHYztg/PX1YB+GVxwFduo/+SmUcrp/CM5mDI0IlNTU1
	W/FDpZAphwxp8wTtXr8Xklzcj5QEGE2Fo3bYVJckU5ZDbXusHLBy3TC1hHCTM7goVzXIQzSlgOVbG
	9f2JCiwMWtq7V/QDG5ARji8ZLFl876Cjl80pK4NJ0aFUd6ljZeTp1FPVnUR+etf2G3fq65+xVG8Cz
	VzJSTmsWOPL4gkmPVeARQs2F0GUNreeI8Uuc9xbRMiITOfGB08TUh8FzD5KTIFE31PbCyMDSQt5o7
	Mh+tM7xqg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzxhl-0005HB-5T; Thu, 14 Jan 2021 08:10:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzxhg-0005GJ-AV; Thu, 14 Jan 2021 08:10:01 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4D036233FD;
 Thu, 14 Jan 2021 08:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610611799;
 bh=h8yz1GRa6ZXiQMpcgDtQNAWbWiKhEQmrV0RpuC4UJLA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tAgvgz2ZR4RFMrrL0NJU8F37WSrtjufQ7SLTf3fZIWi4NHW7NaoTANw2X9taug/Aa
 Hb8g0x3iNvgkUOCKOEikM0AfnaOzmfhsyQzc3EWXIX2dHF7KoxYZ68L463c+HUb6Nl
 MpdUpQ3uozTb23OC3IFrg544rYU+hC27zwpRjH60gB13ueIo2h4kvYQCYz4rcutQuG
 R+VXZEHuYzmtm0raL5kfzcbtHB5Ax9kCS0gz2Gv3JdOakS5OHtFiE5TMPalZrxjwDJ
 EnY1n+GtV0nUanFitZIOVH6P7s3WZml7a8969q+D465B3Ch2mJ+6huS28niJhH9TrC
 AMjN/Uvg22kKw==
Date: Thu, 14 Jan 2021 13:39:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v1 1/1] time64.h: Consolidated PSEC_PER_SEC definition
Message-ID: <20210114080937.GA2771@vkoul-mobl>
References: <20210112153709.1074-1-andriy.shevchenko@linux.intel.com>
 <20210113193900.69b69a7c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAHp75VeeRRjm=bnyXGgf3j=bKB2wH-v=aDzH3OrQ0dO3BMTrDA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VeeRRjm=bnyXGgf3j=bKB2wH-v=aDzH3OrQ0dO3BMTrDA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210114_031000_453045_F6615AAA 
X-CRM114-Status: GOOD (  16.97  )
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
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-iio <linux-iio@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Yangbo Lu <yangbo.lu@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Andy Lutomirski <luto@kernel.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Jakub Kicinski <kuba@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Gwendal Grignou <gwendal@chromium.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 14-01-21, 09:10, Andy Shevchenko wrote:
> On Thursday, January 14, 2021, Jakub Kicinski <kuba@kernel.org> wrote:
> 
> > On Tue, 12 Jan 2021 17:37:09 +0200 Andy Shevchenko wrote:
> > > We have currently three users of the PSEC_PER_SEC each of them defining
> > it
> > > individually. Instead, move it to time64.h to be available for everyone.
> > >
> > > There is a new user coming with the same constant in use. It will also
> > > make its life easier.
> > >
> > > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> >
> > Which tree will you send the new user to? I'm not sure who you're
> > expecting to take this patch :S
> 
> 
> I think PHY tree is the best candidate with providing an immutable branch
> for others.

Sure I can do that, I would wait for other folks to ack this

Thanks
-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

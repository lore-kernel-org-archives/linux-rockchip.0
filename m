Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665E4C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 11:50:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DBACA610CB
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 11:50:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DBACA610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VKxfILX319REq2FN8GSNDOLa3CjlB1Fhdm4XXqdZ4k4=; b=ZTWEuEQSpdswiGXDRlVfthw9N
	9noWyHYCWZ+HslaSMyljgC9Kp6FY+Ka5FbnG4CVOzu8gz4mWwtTBLQ1MumVU1b+ZDRl1YoY9mCI3J
	w/dwdBUJsBDGfHarU8309yIG5Iy19Tq7gbhOitTdkcqjqP8kpsaWG/sszNyNfQWfj1rXMS2z66JoO
	lUG1s++g6U0B1CCYeAhPThhFBI0+RG46w+EbjwOPxWS+kvK/ZNBtFpNb4MpmLn+Lot5PBsNDQ8+jz
	EPXtFaYbvggS+2wr+ZvjhiK/qh2IyPa+Iw4NHOSVLkzo1568Mo7qU44+y2PL5pYnHZWfNr7NChs1m
	EsG4OPPzw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljKiM-003qPF-GZ; Wed, 19 May 2021 11:50:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljKiJ-003qO1-EM
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 11:50:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=qIj7fLXKJCW1ClsdVjQ8Ce0o2Jy0Cdsw+EFfSnMPZQY=; b=Z6MmtWtWyoqI9AbMemOkvvZ/jW
 yRHraOa/l90HPYvA+KAwN+vTqsOQKVtAIYwQj8xnyq1P/fobaac7y43z83TwJHtW/2zdCK9srtCar
 fDFhmPg0lTCm9Az5gZNB4P19l7AFyH9GHsm1o8DM2KvSjQXq+nPWfG33lUsprTmU3Bn2vfrYmQtUw
 u5pXf2/dTbtIu5MLfSO6/EDAaZrpoemA3hA2tkKGLWlUDKt5CxcnT7wJ21H0q6nebzGOQJyn/oiId
 q0dqU/FwS1wbZUv2Wc2WZJL60hsznQaxgthzs9RImlI6wa2JSzjp+xBhDQDe6d1BWNRmPCTV/uUDA
 E5sBvpjw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljKiG-00FQZp-QY
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 11:50:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 489F561004;
 Wed, 19 May 2021 11:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621425008;
 bh=IyFH+MsqCrUEp11ph7Ebo4LU9kmoq7dPm/W7a9IJJrY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ex5r+6vnzQswyzkWIQOOuU0coY0sHuhTwdvB8liV75Xf3Y4uVBNwCXbcu2TKJOk3v
 65QFdjAd3ylMiP597Nbubbxqn074d4ZyhGXg6oRj97XbyciTmZRmQFhfZdKBmfVeLi
 u6OPqikXBlZ5bXnQaEy6O0Fu9F1Wlk1CMid+rgBVPJv2FNVmXE1Q+G8HzsQ597CuJE
 Ologg02G9671v1mJoIw2bTUEdCoT2hSkOd9JOgZqzXyuSxnfdLrBXBd1A/wftCZwy3
 ptje/t5UCIesDwBxQaMB16JPYTAxF7HjoRaEi/njmU3PeYcy7zPDmZ9hCvvzdTi8Io
 Isg52/a3ThXhg==
Date: Wed, 19 May 2021 14:50:04 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <YKT7bLjzucl/QEo2@unreal>
References: <20210511214605.2937099-1-pgwipeout@gmail.com>
 <YKOB7y/9IptUvo4k@unreal>
 <CAMdYzYrV0T9H1soxSVpQv=jLCR9k9tuJddo1Kw-c3O5GJvg92A@mail.gmail.com>
 <YKTJwscaV1WaK98z@unreal>
 <cbfecaf2-2991-c79e-ba80-c805d119ac2f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbfecaf2-2991-c79e-ba80-c805d119ac2f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_045008_920716_19622211 
X-CRM114-Status: GOOD (  24.45  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, May 19, 2021 at 12:37:43PM +0200, Heiner Kallweit wrote:
> On 19.05.2021 10:18, Leon Romanovsky wrote:
> > On Tue, May 18, 2021 at 08:20:03PM -0400, Peter Geis wrote:
> >> On Tue, May 18, 2021 at 4:59 AM Leon Romanovsky <leon@kernel.org> wrote:
> >>>
> >>> On Tue, May 11, 2021 at 05:46:06PM -0400, Peter Geis wrote:
> >>>> Add a driver for the Motorcomm yt8511 phy that will be used in the
> >>>> production Pine64 rk3566-quartz64 development board.
> >>>> It supports gigabit transfer speeds, rgmii, and 125mhz clk output.
> >>>>
> >>>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> >>>> ---
> >>>>  MAINTAINERS                 |  6 +++
> >>>>  drivers/net/phy/Kconfig     |  6 +++
> >>>>  drivers/net/phy/Makefile    |  1 +
> >>>>  drivers/net/phy/motorcomm.c | 85 +++++++++++++++++++++++++++++++++++++
> >>>>  4 files changed, 98 insertions(+)
> >>>>  create mode 100644 drivers/net/phy/motorcomm.c
> >>>
> >>> <...>
> >>>
> >>>> +static const struct mdio_device_id __maybe_unused motorcomm_tbl[] = {
> >>>> +     { PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
> >>>> +     { /* sentinal */ }
> >>>> +}
> >>>
> >>> Why is this "__maybe_unused"? This *.c file doesn't have any compilation option
> >>> to compile part of it.
> >>>
> >>> The "__maybe_unused" is not needed in this case.
> >>
> >> I was simply following convention, for example the realtek.c,
> >> micrel.c, and smsc.c drivers all have this as well.
> > 
> > Maybe they have a reason, but this specific driver doesn't have such.
> > 
> 
> It's used like this:
> MODULE_DEVICE_TABLE(mdio, <mdio_device_id_tbl>);
> 
> And MODULE_DEVICE_TABLE is a no-op if MODULE isn't defined:
> 
> #ifdef MODULE
> /* Creates an alias so file2alias.c can find device table. */
> #define MODULE_DEVICE_TABLE(type, name)					\
> extern typeof(name) __mod_##type##__##name##_device_table		\
>   __attribute__ ((unused, alias(__stringify(name))))
> #else  /* !MODULE */
> #define MODULE_DEVICE_TABLE(type, name)
> #endif
> 
> In this case the table is unused.

Do you see compilation warning for such scenario?

Thanks

> 
> > Thanks
> > 
> >>
> >>>
> >>> Thanks
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

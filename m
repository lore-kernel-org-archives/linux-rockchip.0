Return-Path: <SRS0=dCsk=H4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CDC0C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 11:05:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ADE8D64E02
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 11:05:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ADE8D64E02
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1LP0q6pKGzckoZ7ryAjZ8eHSbgWThJEy7zQLpun5tXE=; b=KgUxvUdXa+u4fNAgBAv43CIPf
	yPIUgcgJaakTGIDzlUn35F2wDGK4geluXZOajTc/SxDHzMoiko0Q9nIq9hLocCaNzhf0s58Zzyvvw
	Qx2ocoWgfoZ7pO7pZK/GywadC9Vdd9q4oBNWAu4QhpfKhAlHBy2BkYw/jSFg5p25xYIU456F30GRm
	3v2YWWZe16mJyiYhqpy/oEMVztW4RyDO9doSa8t3MO5OXxWt+rEycZVKNYbA4YlZdHMd9+Xo8Kd4c
	F/DGJ5aypJmPDrBt6l+9KJjfXIzRCU8WQfzL3jJQ1yrUHfJ9WXq1sWuo25LcQbVvzyMZBWJjshnlI
	sj5Orewfw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFavp-0006bw-N5; Fri, 26 Feb 2021 11:05:13 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFavm-0006bH-KV; Fri, 26 Feb 2021 11:05:11 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11QB4twq079584;
 Fri, 26 Feb 2021 05:04:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1614337495;
 bh=MdgbDRHH4dg8uTJtgWTuDNWRvpN3VoqBOgFyw0Qzq/I=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=ntQy2PrRI5Qsyt2FubX0iw8ZrbOAnRqJKEKlkAbQNAEAx3Bs7KIWLeKKGmjhofOzD
 KfHtMhQYvnbGilCIUvCkSPyFkQXrPwpYkO+jcSX7Aorjo9GJqisVynL/SdIxD9RePg
 V9k1ZcbDrFXFwZ13klbItKptOucLmvtQTctQL3HM=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11QB4t7L097559
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 26 Feb 2021 05:04:55 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 26
 Feb 2021 05:04:54 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 26 Feb 2021 05:04:54 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11QB4s96066246;
 Fri, 26 Feb 2021 05:04:54 -0600
Date: Fri, 26 Feb 2021 16:34:53 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
Message-ID: <20210226110451.ijpllyczuquerfsr@ti.com>
References: <20210225125541.1808719-1-arnd@kernel.org>
 <20210226081548.h5ls5fxihunzxjvx@ti.com>
 <CAK8P3a3ep7DFnMYnA7q5b-P8X7nd3TAz=t82011j8=koK3T08A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3ep7DFnMYnA7q5b-P8X7nd3TAz=t82011j8=koK3T08A@mail.gmail.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210226_060510_986013_9095C222 
X-CRM114-Status: GOOD (  28.44  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Alexander Kochetkov <al.kochet@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Jon Lin <jon.lin@rock-chips.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vincent Pelletier <plr.vincent@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Emil Renner Berthing <kernel@esmil.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 26/02/21 10:49AM, Arnd Bergmann wrote:
> On Fri, Feb 26, 2021 at 9:16 AM 'Pratyush Yadav' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Hi,
> >
> > On 25/02/21 01:55PM, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Building this file with clang leads to a an unreachable code path
> > > causing a warning from objtool:
> > >
> > > drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> > >
> > > Use BUG() instead of unreachable() to avoid the undefined behavior
> > > if it does happen.
> > >
> > > Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > ---
> > >  drivers/spi/spi-rockchip.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> > > index 936ef54e0903..972beac1169a 100644
> > > --- a/drivers/spi/spi-rockchip.c
> > > +++ b/drivers/spi/spi-rockchip.c
> > > @@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
> > >                * ctlr->bits_per_word_mask, so this shouldn't
> > >                * happen
> > >                */
> > > -             unreachable();
> > > +             BUG();
> >
> > checkpatch says:
> >
> >   Avoid crashing the kernel - try using WARN_ON & recovery code rather
> >   than BUG() or BUG_ON()
> >
> > Which makes sense to me. This is not something bad enough to justify
> > crashing the kernel.
> 
> I thought about rewriting it more thoroughly when I wrote the patch, but
> couldn't come up with a good alternative, so I did the simplest change
> in this direction, replacing the silent crash with a loud one.
> 
> Should we just dev_warn() and return instead, hoping that it won't do
> more harm?

Hmm... I'm not very familiar with this device or driver so take what I 
say with a grain of salt. On the surface level it looks like it might 
end up doing something wrong or unexpected.

Returning an error code from this function (along with the dev_warn() or 
WARN_ON()) is the most sensible thing to do IMO. If the SPI layer sends 
an invalid value then the driver should be well within its rights to 
refuse the transaction. The function is currently void but making it 
return int seems fairly straightforward.

> 
> The backtrace from WARN_ON() probably doesn't help here.
> 
>        Arnd

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

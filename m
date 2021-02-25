Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A3B4C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 21:20:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7F60164E24
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 21:20:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7F60164E24
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QKDiYrr8tgF3pIbZZvPUmHTjy3M4XbsAqDWK5STh9nw=; b=t59aCpxpYgaXkr+xq38x5Nh1I
	koQU+OYgtmdTEV0y2TpeVHW8L/W+rhfddn4KBzh6+88TSPpt+fbgWI3KgXy3ZaH/5lH9/rRoFY75s
	JAJthfHy3Idsjr6fgKsvUChvS3RRwsRMt5VQTonQP0c4zFZ53dSppm7OWYjomQ8AjUmYu1CVlSX0F
	LUNo9a8GePKTz17qvTBY6x5cv5301XewBbdMlYhcOiDh6/6BNGCkyHCuJ9yk/szRnVWYiPrfQ1OCx
	7AOpJnLluDpu8oRi025eX772wBh7/tXsNTAxnhcNqSAlsdd5Fs0aREWKD0F1CtG8sb/Gdd8+pEHaT
	mqE9UZvzA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFO3C-0003mV-El; Thu, 25 Feb 2021 21:19:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFO37-0003lM-KS; Thu, 25 Feb 2021 21:19:54 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lFO2n-00059G-1g; Thu, 25 Feb 2021 22:19:33 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Mark Brown <broonie@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Emil Renner Berthing <kernel@esmil.dk>, Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
Date: Thu, 25 Feb 2021 22:19:32 +0100
Message-ID: <5587539.MhkbZ0Pkbq@diego>
In-Reply-To: <20210225125541.1808719-1-arnd@kernel.org>
References: <20210225125541.1808719-1-arnd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_161953_731065_2B5CFBD9 
X-CRM114-Status: GOOD (  18.77  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Alexander Kochetkov <al.kochet@gmail.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jon Lin <jon.lin@rock-chips.com>,
 clang-built-linux@googlegroups.com, Vincent Pelletier <plr.vincent@gmail.com>,
 Johan Jonker <jbx6244@gmail.com>, Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 25. Februar 2021, 13:55:34 CET schrieb Arnd Bergmann:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
> 
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> 
> Use BUG() instead of unreachable() to avoid the undefined behavior
> if it does happen.
> 
> Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/spi/spi-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 936ef54e0903..972beac1169a 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>  		 * ctlr->bits_per_word_mask, so this shouldn't
>  		 * happen
>  		 */
> -		unreachable();
> +		BUG();
>  	}
>  
>  	if (use_dma) {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

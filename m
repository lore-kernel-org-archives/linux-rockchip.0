Return-Path: <SRS0=dCsk=H4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00F9C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 08:16:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 591D564EE2
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 08:16:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 591D564EE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SKpyC2RhKxkGkMwBd2NwO3UnGeVV4aVUtk/o0oalVEI=; b=PXMQkHGsQ38Jtbdv67rcAMkFS
	VsASl6TplSLNw6SHy5p+us8RE0I+5dkAUmNsIZgl/wFSDrj/PHNr+YrYhQ+KD1SXQNzEvnWpVnZ1d
	qQXtFVQplB77e8sRW3EQCCShq/Eu4L3XH5yEdV7+gG6Y095ZWAl976PTPriJs2+yNKbS6p6l9pwhq
	ldkCWcObXxsJtC/elwL9q9jlizGiEZRLqb3JBomyCRAkOVP/r2GRQAI3nH3tmQNRbGpKf0Ugmb35L
	FcMgUpEtKHxW+3Nj9RgnNtKwySyB2sfNfltbTiPttonBUHAwExTOGARgsi9q619l1Dw7XfEEe0quE
	8fnD29HMg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFYIN-0004kK-4f; Fri, 26 Feb 2021 08:16:19 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFYIJ-0004jN-HL; Fri, 26 Feb 2021 08:16:16 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11Q8FovB105037;
 Fri, 26 Feb 2021 02:15:50 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1614327350;
 bh=M1DX4Z5TbpoNhnKn+jRkQPGNQQ6oXlmXqLr7m8RL0SA=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=EVXzNnfm8cSnMp0cZsY/C8lWzb9/zww+1Vf/mRyQ2Jqb7RGM9rvOwgWjmzAXL51bz
 D09Zgq6E0VQiWBAzUDqpT9xj5L36vT0/U16rbkd6XyQpLlG4YPWnmal/3jR3VIRgYb
 EvVnzHOWEwEogWR7YOxGI19Awmu40iTXHwt25/XY=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11Q8FodB039421
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 26 Feb 2021 02:15:50 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 26
 Feb 2021 02:15:50 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 26 Feb 2021 02:15:50 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11Q8FnDe107039;
 Fri, 26 Feb 2021 02:15:49 -0600
Date: Fri, 26 Feb 2021 13:45:48 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
Message-ID: <20210226081548.h5ls5fxihunzxjvx@ti.com>
References: <20210225125541.1808719-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210225125541.1808719-1-arnd@kernel.org>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210226_031615_714770_18C7187F 
X-CRM114-Status: GOOD (  19.52  )
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
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 Jon Lin <jon.lin@rock-chips.com>, clang-built-linux@googlegroups.com,
 Vincent Pelletier <plr.vincent@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Chris Ruehl <chris.ruehl@gtsys.com.hk>, linux-arm-kernel@lists.infradead.org,
 Emil Renner Berthing <kernel@esmil.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On 25/02/21 01:55PM, Arnd Bergmann wrote:
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

checkpatch says:

  Avoid crashing the kernel - try using WARN_ON & recovery code rather 
  than BUG() or BUG_ON()

Which makes sense to me. This is not something bad enough to justify 
crashing the kernel.

>  	}
>  
>  	if (use_dma) {
> -- 
> 2.29.2
> 

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DAB9C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Nov 2022 10:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WB913UEGuGOkzJN68abTd5gOXku40Gpy0t6Bh7iUr9A=; b=hPqI0xiAsXlRpg
	/ee21SNqjvXl4M7uuXK2ZbswDaX68EjuN0lHQ8vSLnGLTMhbCEPDj8w5gtTubKPC+WSqNCMIor5hk
	GJ9YQsVKkTBdiqXfn9VAzBIoMI0rRPTEzgpIQqjnae+9UhYcLMV3MOL/7mzHf3AVtcUqzHXDlQf8N
	cnPr0OIs285OAIJ9KBRrryKW2uyjnY727pRYhMA6VB5bH1wi+yUQkIQyXECK5ffl153J2z9oqujNG
	9o8y4tGYzAwPb15EwRXfD222Q0Vxf5x3Cjvrc0nwC8mHduUmlu1lepSWRC1j54PNSpvf6ccTATHxV
	o6YBlxpJ8my69uLEioPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otR6t-00Et0p-06; Fri, 11 Nov 2022 10:18:07 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=formenos.hmeau.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otR6h-00EstD-5Q; Fri, 11 Nov 2022 10:17:57 +0000
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.94.2 #2 (Debian))
	id 1otR6V-00Cyuz-KW; Fri, 11 Nov 2022 18:17:44 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Fri, 11 Nov 2022 18:17:43 +0800
Date: Fri, 11 Nov 2022 18:17:43 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: clabbe@baylibre.com, davem@davemloft.net, heiko@sntech.de,
	linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH -next v2] crypto: rockchip: Remove surplus dev_err() when
 using platform_get_irq()
Message-ID: <Y24hRzqzzJIHq37O@gondor.apana.org.au>
References: <20221104074527.37353-1-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104074527.37353-1-yang.lee@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_021755_239966_8EC38EC4 
X-CRM114-Status: GOOD (  12.13  )
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

On Fri, Nov 04, 2022 at 03:45:27PM +0800, Yang Li wrote:
> There is no need to call the dev_err() function directly to print a
> custom message when handling an error from either the platform_get_irq()
> or platform_get_irq_byname() functions as both are going to display an
> appropriate error message in case of a failure.
> 
> ./drivers/crypto/rockchip/rk3288_crypto.c:351:2-9: line 351 is
> redundant because platform_get_irq() already prints an error
> 
> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=2677
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
> 
> change in v2:
> --According to Corentin's suggestion, make the subject started by "crypto: rockchip:".
> 
>  drivers/crypto/rockchip/rk3288_crypto.c | 1 -
>  1 file changed, 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

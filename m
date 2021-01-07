Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0381C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 09:14:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E63C23333
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 09:14:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1E63C23333
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+hyoqy66hT5AMBdXTz5bIiCPTFQn9663LX+k+Zw/AT0=; b=kD1D+XRpUHRm2dAT1GMoOVPfb
	Acp8y2ey2BSR+8PjsW7x2yV3v1bSt69+Wprb/CFAQ2MsvNbMtENehTjoLZnfaOHDuwBXAb+D1K58a
	8lmPM6Fig3kvm9PF4viFKoFRe9IJVbHX7m1Ccqbgmz0Q/X+CWxjIXe2JR1Y//T/4hwxGN/k2n5cfs
	FdqKoJ63VWObtrXU3LHiwZ3tgXb7OMtckTWmAbSnILnuKTHhj4qGthbDVcFIGxEmzP588ArFZyoHA
	IaKxRJePVfvIzf5zciGfUOiDPRS7FWZ039dTxXK9lDTJK7/B5ewR4N8mQmjZgzMLbxHxohKc8YKsD
	kIiu7E7Jg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxRMo-0007KF-RM; Thu, 07 Jan 2021 09:14:02 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxRMj-0007Df-A3
 for linux-rockchip@lists.infradead.org; Thu, 07 Jan 2021 09:14:00 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id xRMVklktVbMeAxRMZkT4Za; Thu, 07 Jan 2021 10:13:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1610010830; bh=E0MA7bSe09OCRGTiRBeJqYGJV3Asl9zqcjkRywEcSlA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=LiqJ21KYHrwqKrRJcgKxZqm1AxBN59aAlf3EUIosdZWalxJ2wL1NvKnPXyy3G8Kwv
 zbWzE6Y8/nuiS6rogUvCfWoh+l8Ubn53VKT3c23ecaosLLAANRjTfe3b7t8k/tjDBd
 c+/aFH2YhtbKMkbuu93gpQXu7kv6vdbASh4EwInk6aJWmpsaSB1tNUYG5NiFHCsrde
 qnUIhYzEYwTpnz6KZ16dwFI+vEwuBq2rbmPBT1ewOXKeVIcRsjWZw8KvUqvBJYJ8iR
 581HlH8TUiMkRbJStjcx5IdxoSN1FWfTsh58D7t3xiH06Dp7mcy+gGJBRPMWD9S9cM
 hqsAlKnfIx+tg==
Subject: Re: [PATCH] media: rkvdec: silence ktest bot build warning
To: Adrian Ratiu <adrian.ratiu@collabora.com>, linux-media@vger.kernel.org
References: <20201208155540.340583-1-adrian.ratiu@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <76b5569c-bc19-3d11-4da7-cf0dbb244433@xs4all.nl>
Date: Thu, 7 Jan 2021 10:13:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20201208155540.340583-1-adrian.ratiu@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfECXKwRH1TUnQACLjcNLsP8PHssfJJz/tIezgMZj62/CxkRMGBxeAwNrUgW+Q3170ToZ4VnWpgpVMi/tPwXxZQTsqdGv1eukLo5ghbZ5Xgmo3wfn6QT4
 XPHbH2VyQJ9lQ1iiBZnfnwh9mWIE3CTJSlGRJPdtyNo4fb29QXbYynlw0T55QFeTbbDefiJxe8Cby7mIk/gLeHoObJ3kYd9fXUlltm2GF+r6IAgusSlF4VGN
 cOCIaubQuEIQHGtC++jcl/dTcaw9Q2N0iJTerVTq13CrZlwZInddDIHGqlo0ESut9PLWvuYoj4N1k/BtW/bKP6pFK+/gBw82VLVASDLcBuBG8l9i+CLLMkCU
 H1BB/rd9s18MP0BUpnMGxrzcK7dbH1CQHA0VxWO94undZRd0wyPOWIVUskiEwnYBvgAFycxi4aUrQKH6h0Tu1eII4xYIcGM9FT88VtCApDcFxCk1/EdAS0Fn
 sOG/rUxKg5I5+WUdx3/aeoiIHaVWXN2v6SVhDorbPjkKebsLIIMAHX+t80E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_041357_499237_D036B4A8 
X-CRM114-Status: GOOD (  18.17  )
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 kernel test robot <lkp@intel.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 08/12/2020 16:55, Adrian Ratiu wrote:
> Some configurations built by the ktest bot produce the following
> warn, so mark the struct as __maybe_unused to avoid unnecessary
> ML spam.
> 
>>> drivers/staging/media/rkvdec/rkvdec.c:967:34: warning: unused variable 'of_rkvdec_match' [-Wunused-const-variable]
>    static const struct of_device_id of_rkvdec_match[] = {
> 				    ^
>    1 warning generated.

I suspect that this is because there is no 'depends on OF' in the Kconfig.

'__maybe_unused' isn't used for this anywhere else, so this does not seem like the
right approach.

Regards,

	Hans

> 
> vim +/of_rkvdec_match +967 drivers/staging/media/rkvdec/rkvdec.c
> 
>    966
>  > 967	static const struct of_device_id of_rkvdec_match[] = {
>    968		{ .compatible = "rockchip,rk3399-vdec" },
>    969		{ /* sentinel */ }
>    970	};
>    971	MODULE_DEVICE_TABLE(of, of_rkvdec_match);
>    972
> 
> Cc: Boris Brezillon <boris.brezillon@collabora.com>
> Cc: Ezequiel Garcia <ezequiel@collabora.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index aa4f8c287618..3af0f02ec59b 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -992,7 +992,7 @@ static void rkvdec_watchdog_func(struct work_struct *work)
>  	}
>  }
>  
> -static const struct of_device_id of_rkvdec_match[] = {
> +static const struct of_device_id __maybe_unused of_rkvdec_match[] = {
>  	{ .compatible = "rockchip,rk3399-vdec" },
>  	{ /* sentinel */ }
>  };
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

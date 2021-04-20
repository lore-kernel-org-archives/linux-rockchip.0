Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB898C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 09:27:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 51F7B61042
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 09:27:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 51F7B61042
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yVhJkdWNGZ38TOqXK1jJ5RejL8lMd996vBOpyy+DYy4=; b=bD+GHUfCuoraFCoRSkJmpxmai
	QRMG2yHTICCZKDejL/cvJ4V+heprUDKxpJ0+7CFP01yNDRve8gj2eHpeDVXAWYyx6a6Z9hmDTRniz
	MFETMQuKNaezCLPAAZWtPNlLHhUZP3Ytbv06dimOwvUx6C1Q18Dlqt0PxZEkVFfG/Et+aZgstbzub
	PWHNKE2jP5rmxoWqfmeXWzMMbXGqEzz9VKbVv44oL3bhgFqyubGTHAhdFCcqISrNsH7FRGNotLBEP
	FYPQA8gxhVpJjgnJivakBU7o26O98UmU+0kNEJ5++DInycwmpedVDvPAIbNHszqK0ok7hXLtrUASE
	dH0ENyNFw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYmf5-00Bk2i-Tp; Tue, 20 Apr 2021 09:27:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmeN-00Bju2-HJ; Tue, 20 Apr 2021 09:26:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=utFkGbGLrOvtNH0EnIw+HSxWQqUFUjlS1WR4APy2bWc=; b=S62hM3e8B68NWRnZyJtnQ9s8QU
 fr65cP3AtHyWk8Xq73DiWFpaxlXEuoPrv2eyPYrauvBRm4L+qCtsDrl16o6UfcXmCUBGOWgk+RWbB
 fbYIzPzQbb7kmRPAWwRRdXNs2guiR7Ol/y7fU6Ob7hsN+uOE678S4suvm+fnmVWVXKjiOUv2GVBHP
 vYmsSFMGkNCVksMyo3tXYGfjJQKWOQBIsVgLeBPu1flk7B6uauUHgVV9IwVEVjfrupFSrq+An2plt
 9thMsh9C42MFAWEGlACD/qQ3PlzCIFnVlDbNnlwGJWi/cEp/IrSfACWR9SS8XGD5PgeTdXHlpPryV
 VHhPHiiQ==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmeK-00ByfW-Vj; Tue, 20 Apr 2021 09:26:30 +0000
Received: from [IPv6:2a02:810a:880:f54:f1d0:e988:975e:70e9] (unknown
 [IPv6:2a02:810a:880:f54:f1d0:e988:975e:70e9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9A3271F41F0F;
 Tue, 20 Apr 2021 10:26:27 +0100 (BST)
Subject: Re: [PATCH] media: rkisp1: rkisp1-params.c: Fix typos
To: Sebastian Fricke <sebastian.fricke@posteo.net>, linux-media@vger.kernel.org
Cc: Helen Koike <helen.koike@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210419060224.44353-1-sebastian.fricke@posteo.net>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <02425403-5b44-62f8-4cab-a677fe317dbe@collabora.com>
Date: Tue, 20 Apr 2021 11:26:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210419060224.44353-1-sebastian.fricke@posteo.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_022629_178612_06BEFD6F 
X-CRM114-Status: GOOD (  18.61  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,


On 19.04.21 08:02, Sebastian Fricke wrote:
> s/when the camera active/when the camera is active/
> s/thus not isr protection/thus no ISR protection/
> 
> Signed-off-by: Sebastian Fricke <sebastian.fricke@posteo.net>
> ---
>   drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index b6beddd988d0..ead948a2d01e 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -1258,7 +1258,7 @@ void rkisp1_params_configure(struct rkisp1_params *params,
>   	rkisp1_params_config_parameter(params);
>   }
>   
> -/* Not called when the camera active, thus not isr protection. */
> +/* Not called when the camera is active, thus no ISR protection. */

I think it would better to write

/* Not called when the camera is active, therefore there is no need to acquire a lock */

Thanks,
Dafna

>   void rkisp1_params_disable(struct rkisp1_params *params)
>   {
>   	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_DPCC_MODE,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

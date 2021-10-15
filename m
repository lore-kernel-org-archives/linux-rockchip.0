Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BB7DC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 11:25:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D936B60F56
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 11:25:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D936B60F56
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xi+eFYhosnzkHCBDmuracUfnPCmT1zgPp4Kq9mmZA7s=; b=AoF3Zw+62yAAwe
	olGhKhFau9n4a7Icy0JZdgwoKZPmCKNGGNsM01FrLyFLoaO0tGcjRImPONyjrMBgdGlkAHtwZxWGh
	4SDSm6/TPpup/ig3q3g9uN7VWo7bpFjjy/KKEjuGqzJNrSkw2Ijs9Ww/+ywGzoWgegM42Y98PsY6K
	T2O8XD3l/Go2JVIC8KNQ8aQay2iZXgDn8T2t37ALgmIbEnbdTxFMADJqIzcZszHf16znTY59y8qRV
	Q1hjSod1YWrHz29aegNPh6SEqqEOWy8/rRlqEh8PAVk9+SZ38dlH5eV/A0s2/A4CAA7ppjIevmNof
	0Wuhe7HMJLg3//pFyd6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbLKs-006i6N-C0; Fri, 15 Oct 2021 11:25:14 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbL8W-006eXK-Qg
 for linux-rockchip@lists.infradead.org; Fri, 15 Oct 2021 11:12:30 +0000
Received: from pendragon.ideasonboard.com
 (cpc89244-aztw30-2-0-cust3082.18-1.cable.virginm.net [86.31.172.11])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 714062E3;
 Fri, 15 Oct 2021 13:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1634296343;
 bh=uynZabXZy8nfj/k/5uQB3ukn1EYdSOycveOzbdcINP8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=rAmuAb8yHDL15D8KxoZTtm6i60MM2L+sydajRhUETQbJvbbeZ8XSmSdJM80LjzI/J
 R9S2qAJ8n6Sq/0UjLpmapaCYOVgtqTHxfvC9Hmcy17AHm6NiOOXm/e8ZdZubwLd7MG
 YkLvPrAuAmz/jSZOVRaegyZnHbU5L3lepJPBAKqQ=
MIME-Version: 1.0
In-Reply-To: <20211012221144.30638-1-rikard.falkeborn@gmail.com>
References: <20211012221144.30638-1-rikard.falkeborn@gmail.com>
Subject: Re: [PATCH] staging: media: rkvdec: Constify static struct
 v4l2_m2m_ops
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>
Date: Fri, 15 Oct 2021 12:12:20 +0100
Message-ID: <163429634048.4171071.2327108342733912267@Monstersaurus>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_041229_065547_5E1C1559 
X-CRM114-Status: GOOD (  13.27  )
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

Quoting Rikard Falkeborn (2021-10-12 23:11:44)
> The only usage of rkvdec_m2m_ops is to pass its address to v4l2_m2m_init(),
> which takes a pointer to const v4l2_m2m_ops as argument. Make it const
> to allow the compiler to put it in read-only memory.
> 
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>

Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index bf00fe6534a3..28aab5c7fe33 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -677,7 +677,7 @@ static void rkvdec_device_run(void *priv)
>                 rkvdec_job_finish(ctx, VB2_BUF_STATE_ERROR);
>  }
>  
> -static struct v4l2_m2m_ops rkvdec_m2m_ops = {
> +static const struct v4l2_m2m_ops rkvdec_m2m_ops = {
>         .device_run = rkvdec_device_run,
>  };
>  
> -- 
> 2.33.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

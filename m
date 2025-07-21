Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6C5DC87FCA
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jul 2025 16:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7a83tEfLT7fzBIYNZvETFW5XFUDNNXhnhzAg97uUCo=; b=vZaYRGL2z7ycU5
	z8E3hJyCWLT32hoCEBca8cNpQa1SKi/maniDKvnLj+VOgjwOAgVlpu16JuHD2yBiiHUM9R2MyK2JF
	yk0tM+9N3avgITRUYrLDaKsKieAQ0tXqBYDvsoAoJfOUJf5W2PX4M/+vK95iEPYZA13MTCdIuAHcW
	rtCT7UT0sBJJLe5EAVsy8CjTf9Isunb7QkurbBA3XEHSF63muSJp20O0rFCpxx2jRD2PmwQ71zB+F
	ot3a45gwhz0qfHrh8X1quzTX+NuTCZ0KFkW5YPwJZsZXmeZjrJLpwLq60tFoj3nF92C8v81F6XBBb
	VRSStf+4c5uGVl6h/qfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udtb1-00000000Bqt-3JUI;
	Mon, 21 Jul 2025 16:42:35 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udrBi-0000000HSw1-45Mq
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Jul 2025 14:08:20 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1753106889; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Z59vGM/4C6HeCkGkpTGlXB/INooxTGTCbMXlVKrKnXCzYTgMLU1rufxW22HSGRc9v8c8iuDKMUfprp3da72GnPAku7gGTij3Bm5s6lPNLDmuwzw1DROb8sLE+WkP7v+awCypwBrSCPCNNxcqxm5tMK1eEYRxjI96zDnGf20o7is=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1753106889; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=iUwGYLVqI6Xet0Y6yYXId8OhAeexUPWui/BWydgtxjc=; 
	b=XFMi09ggTPwIeka28tO2P/9v65WtMvNUHgWd6CrO28mYZ10fSUVAoceyZKJzy0RZ05Hl5DcJuf2tgv/lnb52ozIejBKm/DS0Fy6VgFHJT1Q6oMy/1/CH9BuxqumRG42c2Y/IY9eXEBz36denos92wRamjZZ/RTZQwJ+CTJ1eXok=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1753106889;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=iUwGYLVqI6Xet0Y6yYXId8OhAeexUPWui/BWydgtxjc=;
	b=O1/OT2JS33uLJgy6z/cS/tvpgWhtZPC+kVwWlYfZ3Q2P/tDCOTkJrKTdjeFcwFJX
	Q0Az0saTpCz2ZbJ6YqiL4gfo42cNWX6fS6wE+FBuv58OqMpewlGvmPf3IGx95wZ3t4p
	iwpd8EUhPHMOeOO9ZOkSVNKHzLo8DhR4ufMeL1nc=
Received: by mx.zohomail.com with SMTPS id 1753106885694476.02518889834164;
	Mon, 21 Jul 2025 07:08:05 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Dan Carpenter <dan.carpenter@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] media: rkvdec: Fix a NULL vs IS_ERR() bug in probe()
Date: Mon, 21 Jul 2025 10:08:03 -0400
Message-ID: <6175873.lOV4Wx5bFT@trenzalore>
In-Reply-To: <696219e9-a1c7-4c87-b15c-1ffd42c95d58@sabinyo.mountain>
References: <696219e9-a1c7-4c87-b15c-1ffd42c95d58@sabinyo.mountain>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_070819_087192_B21A9833 
X-CRM114-Status: GOOD (  18.00  )
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

Hi Dan,

On Wednesday, 25 June 2025 11:23:10 EDT Dan Carpenter wrote:
> The iommu_paging_domain_alloc() function doesn't return NULL on error it
> returns error pointers.  Update the check and then set ->empty_domain to
> NULL because the rest of the driver assumes it can be NULL.
> 
> Fixes: ff8c5622f9f7 ("media: rkvdec: Restore iommu addresses on errors")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c
> b/drivers/staging/media/rkvdec/rkvdec.c index d707088ec0dc..1b7f27e4d961
> 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -1162,8 +1162,10 @@ static int rkvdec_probe(struct platform_device *pdev)
> if (iommu_get_domain_for_dev(&pdev->dev)) {
>  		rkvdec->empty_domain = 
iommu_paging_domain_alloc(rkvdec->dev);
> 
> -		if (!rkvdec->empty_domain)
> +		if (IS_ERR(rkvdec->empty_domain)) {
> +			rkvdec->empty_domain = NULL;
>  			dev_warn(rkvdec->dev, "cannot alloc new 
empty domain\n");
> +		}
>  	}
> 
>  	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));

Thank you for finding this one. I tested it on rock 5b and all is good. 

Tested-by: Detlev Casanova <detlev.casanova@collabora.com>

Regards,
Detlev.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

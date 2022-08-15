Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1FAFC00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Aug 2022 10:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6ghE7vVXX2SAJKurdGJWy+TRW928qQllvELrLQUFG8=; b=IzCGiMoyq2KUnM
	2u1pK6zfSz5arrZo4Jv/Q9FIr19Czl24guCik9vH25lapO0vQMhhGJyh8v79wGPtxlGYesTje2/3n
	lHLI6GUJhR7qxC7zZnPg5ho1V2FhM9tzlqc8YaouIDypeZRlCN38NsInv+oHCxgDki6+V97oKf32X
	U18ZsTZ543irwI+zZYINi29O7AXR1yCNab4EqdkadsjcoIlVFOpIXHJwID55wYkAzk6ifw2vZSxXO
	U4xMmEDoR0VRBfBF/svyJEYTtS6y03GSmufS61UsX/gJbVjXu7wYBZqclbwN5R7G3KzXjHQ7iPj+6
	wZGOrCRKkpp3qPjh+70Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNXKp-00Ejkd-PT; Mon, 15 Aug 2022 10:28:39 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNXF6-00Eg4C-PG
	for linux-rockchip@lists.infradead.org; Mon, 15 Aug 2022 10:22:55 +0000
Received: by mail-lf1-x132.google.com with SMTP id r17so10022159lfm.11
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Aug 2022 03:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=GYPvjChMzihllF6NfylcKZILuIvORrCrmYPLKfqT66Y=;
        b=ZJUkVZk00qiLqlltF3e13FEMFL6jQ4rjBe5u+0Cq8QogsebiFsttF1uFP0a3Fzcxu3
         WU4C3HF8pltxTojHnR2ipOjMWWZKP/1if81a7tF3ZHFiBrIh8RQZRGGQoYT1evgLXHZr
         /r1qd5uiX4A4TI3DMuvz4YVfvdneXM9UHEacGmn81S/cMlg+uYC8w9WQEuYdyYTyKNhU
         CbZ8W6TDYGQnjqhRoRKqACVyCQMm9Cr4UJfTNQT2YHF9QhaThyAdxYmq09ftfRw+hBOf
         IXORo02R23c5UQCLckfeS3m3zLMMp/WGDyytEKlutJFz2KRYNsSzar+P6yTFsdZzI0Mo
         xRjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=GYPvjChMzihllF6NfylcKZILuIvORrCrmYPLKfqT66Y=;
        b=7fAyUMSbfJ2wGmJ8bA9xgCcke0DGAvUKTpwyvnk8CzPZ5Gs51WcWMihwbPzSi6ud0I
         gGjvYcCsAOg0JX2+g+IRkYP3S6F7I+KcVjnhVFQqjALXUMh9XaunUnQsAMPHFrUnvWHJ
         z3r7kVfUwIwSsWlPxJce4itSSrAqz113xcs1my1pJK3JNXTDelzi3VYMnhTGv2CaDHia
         7FB8WHlRMBmiCyXQVHMcW1LBuP9uo4EfxYMwpqZTCGipeZP/Iwp3VlzWNpWNbr3UQfS1
         9LA0ZpPcgzdTUT9nofgKH0Yqra6rDqk4ZAdHSgc1d/lDgKhn++mhPjnV0JJL1acSyop3
         p6Tw==
X-Gm-Message-State: ACgBeo0VQYX51p2LWGlW7XFVLU8xBBy5iFr2mDIa44fFN8xlWQwirych
	fT2nnZspYN0kfrFzf6N/GhuPtKcQxF/f+u6bYTN+us3soKp/Og==
X-Google-Smtp-Source: AA6agR7kv2rp1ww6/+Efl2vXjiGE20Moxf0J/RImS706rUjnl6INvnrEc5kn9YujRWIO7Qmat79PMOCrfUV2aCAdfOI=
X-Received: by 2002:ac2:5324:0:b0:48b:9643:3838 with SMTP id
 f4-20020ac25324000000b0048b96433838mr5553561lfh.373.1660558959554; Mon, 15
 Aug 2022 03:22:39 -0700 (PDT)
MIME-Version: 1.0
References: <bd442556c0094be2c240f070d15ce2061b376c09.1659288898.git.christophe.jaillet@wanadoo.fr>
In-Reply-To: <bd442556c0094be2c240f070d15ce2061b376c09.1659288898.git.christophe.jaillet@wanadoo.fr>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 15 Aug 2022 12:22:02 +0200
Message-ID: <CAPDyKFo24z-n5g5w4SwugySAQGVLAp4j5TGX-SBRLbBNgxBnRw@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Fix the dw_mci_rockchip_remove() function
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Jaehoon Chung <jh80.chung@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org, 
	kernel-janitors@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_032247_082632_302AF490 
X-CRM114-Status: GOOD (  25.47  )
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

On Sun, 31 Jul 2022 at 19:35, Christophe JAILLET
<christophe.jaillet@wanadoo.fr> wrote:
>
> Having a something_get() function call in a remove function is unusual.
> A something_put() is more likely.
>
> More over the remove() function does not match the error handling of the
> probe().
>
> Fix the remove() function to match the error handling path of the probe.
>
> Fixes: f90142683f04 ("mmc: dw_mmc-rockchip: add runtime PM support")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> /!\   SPECULATIVE   /!\
>
> I have a limited knowledge of the pm_ API.
> However, as said, the error handling path of the probe looks more logical
> to me.
>
> Moreover, some more or less similar code can be found in
> drivers/mmc/host/dw_mmc-exynos.c. This patch also align this rockchip
> driver to the exynos's one.
>
> So review with care.
> ---
>  drivers/mmc/host/dw_mmc-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index 2a99f15f527f..b5893c738b4a 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -373,8 +373,8 @@ static int dw_mci_rockchip_probe(struct platform_device *pdev)
>
>  static int dw_mci_rockchip_remove(struct platform_device *pdev)
>  {
> -       pm_runtime_get_sync(&pdev->dev);
>         pm_runtime_disable(&pdev->dev);
> +       pm_runtime_set_suspended(&pdev->dev);
>         pm_runtime_put_noidle(&pdev->dev);
>
>         dw_mci_pltfm_remove(pdev);

dw_mci_pltfm_remove() needs to be called with an active/powered host
device. That's why the call to pm_runtime_get_sync() is done, so I
don't think there is anything wrong with the existing code.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

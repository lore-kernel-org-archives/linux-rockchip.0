Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AECF4C982C9
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 17:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sad+kjvqA2a+Gin7hohUnjC0cSYxCJogST5W+GGqnos=; b=KJWJB6cxGLy4SC
	Q9zohdkN+fYtqt8nWIArb6xhEU0Q6UKEI3SfWY50LCpf5WgtKaQ/JYF5eKYl8XDailcJ+SACCINwz
	4FkP6doGl5ipDx8oyocZ/zb9wnvfSBsro6fOKcbqJpF9cfZW6gXzeye+z5N1ZqAtq5VAYPpU8Gkzt
	x/u1J6AHB7hmCfAlJXs36UBan2oxTbd/yFGItsFENtgR3uZ1hYwN3xcfkSRUbXqevzBs4MTDGxqYi
	pCkbGt9cPzIPQMGeRq9uEb5gUz/j+NIfiN7cxFG6bo3+CsRmAfZSpS54n1GOqm4MbIxZFV8Ohilfa
	nPCAfJufBO41BLP/xXiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6tPn-00000009rx4-3DnB;
	Wed, 16 Sep 2026 17:27:23 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6tPk-00000009rwC-3FHp;
	Wed, 16 Sep 2026 17:27:22 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1789579634; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OcWGWbCtQyAF4qkrN7p4azhGGDdw+5U5j8VyYOYLb1gBsSy3qgD5MLDMhBmn9+QjxkOqvYGfCX1flfr+kKYJxLwzsFX1cRUoA0iZWajNauXTL5DcfCF6+8H/CZOCKHJH9rZ8Z0yGzLIHMXFqU38Th52vBvswiwzlz/YcrTqiqrM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1789579634; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=yu4I8aA/dSCWiNzd0EiMaIb1hEBPZBMS5B0bclDwg3U=; 
	b=j1EjAJDPWLzUqrtf/AWps9jhj7K6lk233J0lmD2EGKZD6Xs1NfIr5FzpvHJvh4jpa3HwPTEXTskgBmeApmAwq8PIskOPdChg2bnHC/+cNVLIvBRe5ar9uK6zK/DSVa3694wXupmzLoyL1VBtW45k49r78EvTopgQqZ+yBA0WQrI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1789579634;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=yu4I8aA/dSCWiNzd0EiMaIb1hEBPZBMS5B0bclDwg3U=;
	b=JCN6Jf3VoU2FPQcE7Cla4Ac5E0bw+bPSvMGe+NiYJCMTz422U1TYnCsuRJOreAtD
	2ca+SRFf5xxKjMxM/+jr4coKAkqbDzVU5gThzZjCCf30AOZ+/Ypuvxar3/2759XUcmy
	W5TjQELzpkBQvDKB8T7xNYVjeI5pzIdNItz7RHY0=
Received: by mx.zohomail.com with SMTPS id 1789579634133586.5912753636819;
	Wed, 16 Sep 2026 10:27:14 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Guangshuo Li <lgs201920130244@gmail.com>
Cc: Guangshuo Li <lgs201920130244@gmail.com>, stable@vger.kernel.org
Subject: Re: [PATCH] media: rkvdec: do not destroy borrowed SRAM pool
Date: Wed, 16 Sep 2026 13:27:12 -0400
Message-ID: <h_fJ5CZXS3anfaQzbf4v3w@collabora.com>
In-Reply-To: <20260915140511.2429792-1-lgs201920130244@gmail.com>
References: <20260915140511.2429792-1-lgs201920130244@gmail.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_102720_871386_F2F32DB2 
X-CRM114-Status: GOOD (  21.20  )
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

Hi Guangshuo,

On Tuesday, 15 September 2026 10:05:11 EDT Guangshuo Li wrote:
> rkvdec_probe() obtains a provider-owned SRAM pool with
> of_gen_pool_get(), but its error path incorrectly destroys the borrowed
> pool with gen_pool_destroy().
> 
> of_gen_pool_get() returns a pool managed by the SRAM provider. The pool
> is not created or owned by the rkvdec driver and is destroyed by the
> provider when its own managed resources are released.
> 
> Destroying it when rkvdec_v4l2_init() fails can invalidate the pool
> while the provider and other consumers still reference it, and can also
> result in the provider attempting to destroy it again later.
> 
> Remove the incorrect gen_pool_destroy() call from the probe failure
> path.

This is indeed invalid, as the gen_pool is already created when this driver is 
being probe()'d.
The sram module can only be built-in, not a module, so we know that the 
gen_pool will never be destroyed while rkvdec uses it. That allows rkvdec to 
just get the pool pointer and not have to call a matching put() function as 
there is no need for ref counting.

Reviewed-by: Detlev Casanova <detlev.casanova@collabora.com>

> This issue was found by manual code inspection.
> 
> Fixes: e5640dbb991c ("media: rkvdec: Add RCB and SRAM support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> ---
>  drivers/media/platform/rockchip/rkvdec/rkvdec.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> b/drivers/media/platform/rockchip/rkvdec/rkvdec.c index
> 061281f903f3..4541ef9ee3b9 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> @@ -1857,9 +1857,6 @@ static int rkvdec_probe(struct platform_device *pdev)
>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
>  	pm_runtime_disable(&pdev->dev);
> 
> -	if (rkvdec->sram_pool)
> -		gen_pool_destroy(rkvdec->sram_pool);
> -
>  	return ret;
>  }

Regards,
Detlev.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

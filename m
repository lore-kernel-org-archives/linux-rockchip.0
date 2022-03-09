Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA41FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 17:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZw1Nzt3JiW4ypvxiI53BxtW16xB2u4juwjui30SOKg=; b=0COoHaiLZIak9v
	MEKNLgX06PQw3USPur+bHdmmniJzLs8q0Ug3s4lD0g3xwbwmciNPEcIdnqs5OeVGFR28D2yu3k8TM
	uWozIKts+dT8SN9lASx9+npnsD1ri3HJqz09LVpD9YawUFliHi51N34DSDUH5UHk9SXZJftVx25pT
	XniPgr99mXOVuodJg4CTV1bdEeKQtJVtatPc8uTaRedymYJkYWSKmJi8pwtR2RC2VZE7eeJ5qUxe3
	pQK59Ce9ERGO3aQAKJkoyymPOns2gSjvSh0cr0snQTp8U4Dfp1ZZx9vvU1DTDoqr0KKimVpe2rkkP
	CmzmX5MqeWcmdgFURg9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRzhf-009f5F-PG; Wed, 09 Mar 2022 17:02:23 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRzVZ-009ZdQ-Q8
 for linux-rockchip@lists.infradead.org; Wed, 09 Mar 2022 16:49:55 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 869503201E88;
 Wed,  9 Mar 2022 11:49:52 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 09 Mar 2022 11:49:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
 cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm3; bh=ajJcFNT9kvVGRVb35GoeQGaLTl/fgyA0mExoJp
 17Mcg=; b=Ed+UoUJF+2+ZLXg2/MPSRBVQQh0k1zkAH237jI/x5MiLNxuNY+ooQw
 rQ9jeJMXedyk/ATNofHGnkMEN9QrU56aEi8l7FGVZ6Amss5E46TSeXTqha5c8H7E
 OZ6NRdNzX/UPD1H7OaVWP6Pm7wV+R45IyRlO96ltqA/943JKeoUSIIMfZ/Bf+Cwe
 FpTJApiSFm6eXVgEYKoGXsgalen7YUjyuk+z9eXPJ/LJUQOiUntPlI+PYX5R3FiZ
 DlV5o0gQtbmsCjESnKixt6zpyZNM0nhaVSDq0QmEsFHmKDzt4G3oLMMveoope45L
 h+xgOhdohEjjwRMNX9+dySt72GTapSyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ajJcFNT9kvVGRVb35
 GoeQGaLTl/fgyA0mExoJp17Mcg=; b=NzKBEOOwZ88nzU6ESuwRSD6Y0n3AlHIOI
 gWKWpMOshcsYOYPcAaZXCCiKYBy4Rsx+k9C1jPIuFoGYb2BjqeZeYgGxjZZbcZWP
 DUiofVUAHUu3SzE37xSo4Ilq09v28YzsLvWrH1ddajormpADu07wNhfe4Cuk4jJn
 E5eC93EPet8QZyeGoTs2Vo8ZIHz/moNVnOd6SzG6YutQGiiwyL8S0zcX2SkLR387
 FKYmwbXs7UKUZX7fzBGdVnC/4/vRGoFDHKlI8P/Q4vuIsExE8K28xYrw0+/GrWud
 c4TrVUG11EgET34HayVfES9RC9XJy+UQrxphCGhNhls1GR+Mf51GA==
X-ME-Sender: <xms:r9ooYlgPv1jIbxuEjzB5JxQZbNkuE1EWAhKfhcV1RO2gBNZrKbHGeQ>
 <xme:r9ooYqC0OC7a9_y5oFJ6Hp0u4548zr_TuYYh9aJdYi0KhtD19wQcbFjyju0IdCMZ4
 3I-gLmSAq5XXGUOw_Q>
X-ME-Received: <xmr:r9ooYlEATdsiSY_HCbxD7nF_UNUmvwxT4lPPe0fWZVWMC3XKtD-IrQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddruddukedgleduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghfnhgr
 ucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqnecugg
 ftrfgrthhtvghrnhepffelvddujefgieetvdelveetudeukeektdejvdegvdfgudelteff
 ueejvdevkeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:r9ooYqRUoVvPHAtEpN_bISySBhBsQs7_4TceArSpqzDVG6znarILTA>
 <xmx:r9ooYiwmMHHZfZYQWcDDb148Ga9k7uAa0yPu3pIyAwUEUutNSURjfA>
 <xmx:r9ooYg5lQk32SDfK1VyZUE_vpuN2T46vTVMuWEeN7Hse3zf0m7-h0w>
 <xmx:sNooYstOuSui1dyjzKtGfoRSZ4x412fUZeGwS8YXUCoOtEyV-EUCog>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 9 Mar 2022 11:49:49 -0500 (EST)
Date: Wed, 9 Mar 2022 18:49:46 +0200
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 04/17] media: rkisp1: resizer: Fix and simplify
 (un)registration
Message-ID: <20220309164946.non2nvqjckwdtqem@guri>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
 <20220304171925.1592-5-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220304171925.1592-5-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_084953_954647_2E81E795 
X-CRM114-Status: GOOD (  20.08  )
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

On 04.03.2022 19:19, Laurent Pinchart wrote:
> The rkisp1_rsz_register() and rkisp1_rsz_unregister() functions don't
> destroy the mutex (in the error path for the former). Fix this, simplify
> error handling at registration time as media_entity_cleanup() can be
> called on an uninitialized entity, and make rkisp1_rsz_unregister() and
> rkisp1_resizer_devs_unregister() safe to be called on an unregistered
> resizer subdev to prepare for simplification of error handling at probe
> time.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>


Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

> ---
> Changes since v1:
> 
> - Reset rsz->rkisp1 in rkisp1_resizer_devs_register()
> ---
>  .../platform/rockchip/rkisp1/rkisp1-resizer.c | 34 +++++++++----------
>  1 file changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> index 2070f4b06705..df2beee1be99 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> @@ -782,8 +782,12 @@ static const struct v4l2_subdev_ops rkisp1_rsz_ops = {
>  
>  static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
>  {
> +	if (!rsz->rkisp1)
> +		return;
> +
>  	v4l2_device_unregister_subdev(&rsz->sd);
>  	media_entity_cleanup(&rsz->sd.entity);
> +	mutex_destroy(&rsz->ops_lock);
>  }
>  
>  static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
> @@ -821,47 +825,43 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
>  	mutex_init(&rsz->ops_lock);
>  	ret = media_entity_pads_init(&sd->entity, RKISP1_RSZ_PAD_MAX, pads);
>  	if (ret)
> -		return ret;
> +		goto error;
>  
>  	ret = v4l2_device_register_subdev(&rsz->rkisp1->v4l2_dev, sd);
>  	if (ret) {
>  		dev_err(sd->dev, "Failed to register resizer subdev\n");
> -		goto err_cleanup_media_entity;
> +		goto error;
>  	}
>  
>  	rkisp1_rsz_init_config(sd, &state);
>  	return 0;
>  
> -err_cleanup_media_entity:
> +error:
>  	media_entity_cleanup(&sd->entity);
> -
> +	mutex_destroy(&rsz->ops_lock);
>  	return ret;
>  }
>  
>  int rkisp1_resizer_devs_register(struct rkisp1_device *rkisp1)
>  {
> -	struct rkisp1_resizer *rsz;
> -	unsigned int i, j;
> +	unsigned int i;
>  	int ret;
>  
>  	for (i = 0; i < ARRAY_SIZE(rkisp1->resizer_devs); i++) {
> -		rsz = &rkisp1->resizer_devs[i];
> +		struct rkisp1_resizer *rsz = &rkisp1->resizer_devs[i];
> +
>  		rsz->rkisp1 = rkisp1;
>  		rsz->id = i;
> +
>  		ret = rkisp1_rsz_register(rsz);
> -		if (ret)
> -			goto err_unreg_resizer_devs;
> +		if (ret) {
> +			rsz->rkisp1 = NULL;
> +			rkisp1_resizer_devs_unregister(rkisp1);
> +			return ret;
> +		}
>  	}
>  
>  	return 0;
> -
> -err_unreg_resizer_devs:
> -	for (j = 0; j < i; j++) {
> -		rsz = &rkisp1->resizer_devs[j];
> -		rkisp1_rsz_unregister(rsz);
> -	}
> -
> -	return ret;
>  }
>  
>  void rkisp1_resizer_devs_unregister(struct rkisp1_device *rkisp1)
> -- 
> Regards,
> 
> Laurent Pinchart
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

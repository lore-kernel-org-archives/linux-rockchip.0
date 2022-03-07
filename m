Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88C6CC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 11:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3NbbrZqZAGx+iB+IWzyDnfMlebBLX8OJDCrLWL+ZoM=; b=bnhyQcbOIYPxKz
	GbaCjW3XJW2J/KBlWxU8YD8QDWL7T+Anzty0s7JUWPZh0rd+NHU1CxCszzOWSCPwLxCpX+UolbS+s
	tGX+rx839Gh0YRRk3+Dm2YcHmFHiELGBaXE1/5ZIgp4xG3/+P5B1sop9SommX234rADmghY86duvQ
	Tr2C/B/eMJ11HYHVGympI6uEekfs41UeCKqyU8h1pY9iJbVaTG6mXkIptH3b+B1IPPkH3TiTEIl37
	SEhxmhcbid3n61X5TRbDW3qVT24Rd8V2BcKkk29pVf/cPTjN/2rpMHhKlKpxh/MmJWVqfufqXViRu
	F5dVozyRJgMz08hVOIkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRBo4-00HMoa-3f; Mon, 07 Mar 2022 11:45:40 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRBo0-00HMnb-QN
 for linux-rockchip@lists.infradead.org; Mon, 07 Mar 2022 11:45:38 +0000
Received: (Authenticated sender: jacopo@jmondi.org)
 by mail.gandi.net (Postfix) with ESMTPSA id 380F51C0009;
 Mon,  7 Mar 2022 11:45:31 +0000 (UTC)
Date: Mon, 7 Mar 2022 12:45:30 +0100
From: Jacopo Mondi <jacopo@jmondi.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 02/17] media: rkisp1: capture: Fix and simplify
 (un)registration
Message-ID: <20220307114530.e3u4oqsburizcig6@uno.localdomain>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
 <20220304171925.1592-3-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220304171925.1592-3-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_034537_027910_6CC36345 
X-CRM114-Status: GOOD (  20.61  )
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

Hi Laurent

On Fri, Mar 04, 2022 at 07:19:10PM +0200, Laurent Pinchart wrote:
> The rkisp1_register_capture() and rkisp1_unregister_capture() functions
> don't destroy the mutex (in the error path for the former). Fix this and
> make rkisp1_unregister_capture() and rkisp1_capture_devs_unregister()
> safe to be called on an unregistered capture node to prepare for
> simplification of error handling at probe time.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Changes since v1:
>
> - Reset cap->rkisp1 in rkisp1_capture_devs_register()
> ---
>  .../platform/rockchip/rkisp1/rkisp1-capture.c | 26 ++++++++++---------
>  1 file changed, 14 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 9c11f2b8e5f5..96a7e6c0a622 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1312,8 +1312,12 @@ static const struct v4l2_file_operations rkisp1_fops = {
>
>  static void rkisp1_unregister_capture(struct rkisp1_capture *cap)
>  {
> +	if (!cap->rkisp1)
> +		return;
> +
>  	media_entity_cleanup(&cap->vnode.vdev.entity);
>  	vb2_video_unregister_device(&cap->vnode.vdev);
> +	mutex_destroy(&cap->vnode.vlock);
>  }
>
>  void rkisp1_capture_devs_unregister(struct rkisp1_device *rkisp1)
> @@ -1390,6 +1394,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>
>  error:
>  	media_entity_cleanup(&vdev->entity);
> +	mutex_destroy(&node->vlock);
>  	return ret;
>  }
>
> @@ -1425,26 +1430,23 @@ rkisp1_capture_init(struct rkisp1_device *rkisp1, enum rkisp1_stream_id id)
>
>  int rkisp1_capture_devs_register(struct rkisp1_device *rkisp1)
>  {
> -	struct rkisp1_capture *cap;
> -	unsigned int i, j;
> +	unsigned int i;
>  	int ret;
>
>  	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); i++) {
> +		struct rkisp1_capture *cap = &rkisp1->capture_devs[i];
> +
>  		rkisp1_capture_init(rkisp1, i);
> -		cap = &rkisp1->capture_devs[i];
>  		cap->rkisp1 = rkisp1;

This is set by rkisp1_capture_init() already

> +
>  		ret = rkisp1_register_capture(cap);
> -		if (ret)
> -			goto err_unreg_capture_devs;
> +		if (ret) {
> +			cap->rkisp1 = NULL;

Is this correct ?

As:
> +			rkisp1_capture_devs_unregister(rkisp1);

Calls
rkisp1_capture_devs_unregister():
        rkisp1_unregister_capture():
                if (!cap->rkisp1)
                        return 0;

Effectively making rkisp1_capture_devs_unregister() a nop.

Thanks
   j

> +			return ret;
> +		}
>  	}
>
>  	return 0;
>
> -err_unreg_capture_devs:
> -	for (j = 0; j < i; j++) {
> -		cap = &rkisp1->capture_devs[j];
> -		rkisp1_unregister_capture(cap);
> -	}
> -
> -	return ret;
>  }
> --
> Regards,
>
> Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

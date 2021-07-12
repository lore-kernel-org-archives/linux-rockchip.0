Return-Path: <SRS0=7Rgf=ME=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2771C07E99
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:06:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BDCC761248
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:06:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BDCC761248
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zxtd6N9rGXJAYzSIN5qDpun68j5MTKNYqmJCk5mTKU0=; b=kPfanSPC4tH183
	Gy8gwgkKvjtUPbeEmCvayGBLL4GVtj9Yp+2bIOO/+jHcfYmaprk84VFliTjoNwvmvByQTV8px+ASI
	MGKgNOBnbbJZ8OdoZetmFv9jyuOPoRuTq98iE7Q0I/KJ95h09KZv0HmWi/Fsmm6bz3VOrenDW3IL6
	VulYcJgSRK5R6ZXgbURTK+E1f8tSxBRqJJiXb9Xs/kBF+ClKNI3P1yV/75rQYJxQvKYGIYuXM6O7J
	Od4OPtIsafHD1BKAKhdj8bloX88BuietcfQGVrYZO6SLJBOIsXtSzde23mX3e9a0fhJSdLfJPbA2M
	BvmtibUwwNF+KSOngJTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m32CW-008LCP-2G; Mon, 12 Jul 2021 20:06:48 +0000
Received: from mail-il1-f182.google.com ([209.85.166.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m32CT-008LBe-Gw
 for linux-rockchip@lists.infradead.org; Mon, 12 Jul 2021 20:06:46 +0000
Received: by mail-il1-f182.google.com with SMTP id b14so7710441ilf.7
 for <linux-rockchip@lists.infradead.org>; Mon, 12 Jul 2021 13:06:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jNoeX8wO21WvMFCN8qLPmxb7NixIaEwIKhRa/jBZc4c=;
 b=XBQAfJ8O4kzYriKS2PJpYMR2xf39Kqr4uIC7AfXh7hDjiwek8Mi/jzBVFSKnZErRb9
 XDDJc5dezd7wkHtlNXrci2aiTtIn7wFKkcIEvo9sAAru8mYSY3CLsWCg2C/eThs9zb00
 VXDetekNaO3EHWi8b8OhH36N3RvAncy30kiHgiFboOpWIPDoH4jkNuIqtKwn47Gvlm/L
 6+2dKWTDM9USPr7BKtjhivGwB79IaFOPj9hr8jI/d92s8y4LWIv18UXQbvH7z4/2NC5i
 tze9PE9MWHdK7Bglx7lbWDyLjCTO+UNO6rbTEWvXsHbEFuc1VF3X+66fyNM4tWLXmoqA
 SfIA==
X-Gm-Message-State: AOAM533rM49FHs2cLACgqFYOf8NTabWMSR4AMgtd5wglQ/B/QdbGgIKy
 5ydmWRI8PkLB6uY7AagfHA==
X-Google-Smtp-Source: ABdhPJy3Ws07cjAcuQgmhwGmkg9rBtZCWcMS3vUCjkNdSNq8fw2r4z5SkuCIBcSAUyqhaEvi8EoI1w==
X-Received: by 2002:a92:660f:: with SMTP id a15mr427034ilc.182.1626120404334; 
 Mon, 12 Jul 2021 13:06:44 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id g22sm8572430ion.10.2021.07.12.13.06.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:06:43 -0700 (PDT)
Received: (nullmailer pid 2400326 invoked by uid 1000);
 Mon, 12 Jul 2021 20:06:42 -0000
Date: Mon, 12 Jul 2021 14:06:42 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 hverkuil-cisco@xs4all.nl, helen.koike@collabora.com, mchehab@kernel.org,
 linux-media@vger.kernel.org, Laurent.pinchart@ideasonboard.com,
 dafna.hirschfeld@collabora.com
Subject: Re: [PATCH v6 09/10] dt-bindings: media: rkisp1: document px30 isp
 compatible
Message-ID: <20210712200642.GA2400244@robh.at.kernel.org>
References: <20210618130238.4171196-1-heiko@sntech.de>
 <20210618130238.4171196-10-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210618130238.4171196-10-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_130645_596120_AAE324B0 
X-CRM114-Status: GOOD (  10.88  )
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

On Fri, 18 Jun 2021 15:02:37 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Add the compatible for the px30-variant of the rkisp
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 67 ++++++++++++++++++-
>  1 file changed, 66 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

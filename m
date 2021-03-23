Return-Path: <SRS0=giEr=IV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FD2BC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Mar 2021 22:35:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C5F98619CA
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Mar 2021 22:35:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C5F98619CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kf5cOEcdMgBTx7oLx487XEpGQl10cKtvuTMk8VAoIfw=; b=ga0MDndaMGwhFgP30a++YHAVn
	qCnUTD48YTqrkpeaFoJd9Y56ZJsmwV50RNQOI2/dzCmW4jV4kQOiSNzW0ai18MRy/poDoLJyBdMQm
	eC6LSyOJzLDj94juVNP0KJvIOQ1bH8KIim1CeP/Rne2MoZeLTeSDt8h9MZc7gQOIuTe+Zn9l2dpNy
	rRmdxjD8m3uWHx+MYAmo2GmRGzCN05tuGXetP+eGKkRT7oMpfoTUKLBctd0c8o/0jpzaPm7UQeMbY
	R10m1zGJpw2KjAB0zy58HJHiCSstGU3HqpzyR2CDvsdpWwQ9G0/5gaMeHiBOXdOKSfesIdCwBFbbs
	stDczvMVg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOpcX-00FtqM-5z; Tue, 23 Mar 2021 22:35:29 +0000
Received: from mail-io1-f42.google.com ([209.85.166.42])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOpcS-00Ftp6-TM; Tue, 23 Mar 2021 22:35:27 +0000
Received: by mail-io1-f42.google.com with SMTP id k25so7355008iob.6;
 Tue, 23 Mar 2021 15:35:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4F+lOADfr1heBBT3R6eeIF8gc1ZCUohYhREHfhhKIaM=;
 b=n1bLFwNsCC1yYGCSmb4F0mwqoS4GcRVreb3+6OX8X6mxFf76ye/d3FQ9CfLQdn0WS0
 QLgUrnr6lLLbKjepJXWeiCL1Pj2JmSggQyIecUCtU9YJYiGEg1mco8bUHs+Yx5z9qXCr
 fT6TmQ0A5fo1QlUhHH5XzI5K59soWIGzV21XLbGTEoSdgZmWHkufTHBXAS0xu5EIO6VP
 hiTZELmRI5ZBF7ukjfpCAgXP9wW/eBX9Gp/sbZ9g5NMUsrm9NJYVv9G65fP/ZFtgDoyM
 6K5EetssHjmgkTiY3cVDQvDEnI0EF6BJtJ8MyfWcz5KUiM4uMIV9JVINkJ1QLsoJe07i
 3Faw==
X-Gm-Message-State: AOAM532e5oiTxnRT7iVH3sGktoPTtP9EpFmboWIja5my8PQShqeHGNP1
 N6JuNy7P0YlLHLDMDq8L1Q==
X-Google-Smtp-Source: ABdhPJwblVg/v3ollbI0VK93RilPemu4LaeZa6xI4qEOVejZrRMxABDv4sARTyakc2IayFK+/ohQkA==
X-Received: by 2002:a02:4c8:: with SMTP id 191mr223485jab.27.1616538923860;
 Tue, 23 Mar 2021 15:35:23 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id y13sm121459ilq.20.2021.03.23.15.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 15:35:23 -0700 (PDT)
Received: (nullmailer pid 1470854 invoked by uid 1000);
 Tue, 23 Mar 2021 22:35:21 -0000
Date: Tue, 23 Mar 2021 16:35:21 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mripard@kernel.org, p.zabel@pengutronix.de, devicetree@vger.kernel.org,
 lee.jones@linaro.org, s.hauer@pengutronix.de, emil.l.velikov@gmail.com,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 wens@csie.org, linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org, mchehab@kernel.org, shawnguo@kernel.org,
 ezequiel@collabora.com, festevam@gmail.com, paul.kocialkowski@bootlin.com,
 hverkuil-cisco@xs4all.nl, kernel@pengutronix.de, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org, kernel@collabora.com, jernej.skrabec@siol.net
Subject: Re: [PATCH v6 02/13] dt-bindings: media: nxp, imx8mq-vpu: Update the
 bindings for G2 support
Message-ID: <20210323223521.GA1470799@robh.at.kernel.org>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318082046.51546-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_223525_273375_E1E8A241 
X-CRM114-Status: GOOD (  14.52  )
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

On Thu, 18 Mar 2021 09:20:35 +0100, Benjamin Gaignard wrote:
> Introducing G2 hevc video decoder lead to modify the bindings to allow
> to get one node per VPUs.
> VPUs share one hardware control block which is provided as a phandle on
> an syscon.
> Each node got now one reg and one interrupt.
> Add a compatible for G2 hardware block: nxp,imx8mq-vpu-g2.
> 
> To be compatible with older DT the driver is still capable to use 'ctrl'
> reg-name even if it is deprecated now.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 5:
> - This version doesn't break the backward compatibilty between kernel
>   and DT.
> 
>  .../bindings/media/nxp,imx8mq-vpu.yaml        | 53 ++++++++++++-------
>  1 file changed, 34 insertions(+), 19 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F28ABC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 21:45:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 65F9A6121F
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 21:45:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 65F9A6121F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uety1oXj1YjTHQQdlqXUI+A4ZCbI1dQjl9SwaxatGhU=; b=QS1gERwXiwFQ44aS4gyYui30T
	UKa5+G7cOJVeVfs7UEcoO5XelaY6zlBtGY6nlqrdvAgWnzZ5QTIu8EjWO6upGCEgkymT+DY2t7Kd5
	+BlO8zP9b9mR4w//nfbqnGlbdGeJVQymeLFyTXpdGXtNsB6OkYDz3Lei18iawroXmlPRtcr/WmvO2
	9+ZABCWypjAgJ8rxu4utiWPaeA/rlXQrVTODtJkgdAOZuniPIX0LSdmpb6ZPAU36+WVSgYONyGPsV
	mzCJ1HEbEZInc40ysrvtoa52LO1ga25d2TlXMb1X8P5GkcMjtX4My5VjxIMW67EtOnPF0OKOe9pMR
	yiDjEerSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lelny-005POh-5R; Thu, 06 May 2021 21:45:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lelnv-005POG-Gi
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 21:45:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XyAhogY5RKWxU8HPoNpJMjz+kQU5BtxI2lVbOAWbTl0=; b=G4tulaPGA574JfJGPeNrx7KiRO
 CQ/zd/zYRWkH3YCKX+/zl4Gft8C8IraQtz7q4263l+j3hQhH4CMpi+sPAI9z+/usSBjb6LecxjX6R
 8AOZkW30H0hLpRQHNV6QkVswN3Z18CUe3Swi5XCgioEowZBnJGo+AxvEWx/br3KfaUTUScPylHqJT
 dOkG6VJpBwJqorN7nHjbVB/Pwc4FYrqgFPOiv2CW0C5m9j7fJ6GpMb/Wf6bHJtRHxV9C09FwhnDXy
 nCZp2EtkTNGhUaT1MlnegIfHrDEPs/c4tHDLxIEyxg1v9sfQMblVFdKga5tkuyfdYqidIu5xmuj+Y
 S4KL99bg==;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lelns-006PnT-NK
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 21:45:06 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 u25-20020a0568302319b02902ac3d54c25eso6243727ote.1
 for <linux-rockchip@lists.infradead.org>; Thu, 06 May 2021 14:45:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XyAhogY5RKWxU8HPoNpJMjz+kQU5BtxI2lVbOAWbTl0=;
 b=sWeWEtVv2ZxaagWDEfcmMpz5IlKWF1pvGlhsXt5qm0AVu8Ex5A99RFnz08Cfuq06MT
 nCb6u++Qkbv6jdHRH4Dg5cS0wUb2y+/WskoH8tUseDubOajt4Ao+Bictef6P/D8b48Jn
 QrpY2sb/I8+rqRuTwr37ZXzJJZ1lEKD0szGkGVh8Ezs1XlBYDAq5gynVVN7KRfri5QJr
 4oVDD5rnbBEMT9aHyM9BJdwnvJwFu1Vpt003VpVoAY2Rg9/H0GHMdCz+zdfP0fWkOutt
 iXK9xdU2HetfDO1wUHcSisNYpOpoF6/koydzu9BOn4w0bZUfobhSUxKfBHNV2y0WYF0i
 vEVw==
X-Gm-Message-State: AOAM533jBLyfy2u5WPl49p6ZzNsBiYfiZU//bMzsC4INmUVEtnv9U481
 xJgDgHRFsnMkz71r+NSdKw==
X-Google-Smtp-Source: ABdhPJxHDr6Hds/Md7b57bDuLoP4gBNh8QTwF4qOLe9F2hOfCEB2PQePbXkcuiLLRFbMO4FW4wcJLA==
X-Received: by 2002:a05:6830:208e:: with SMTP id
 y14mr5322270otq.15.1620337502071; 
 Thu, 06 May 2021 14:45:02 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q130sm629601oif.40.2021.05.06.14.44.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 14:44:54 -0700 (PDT)
Received: (nullmailer pid 853927 invoked by uid 1000);
 Thu, 06 May 2021 21:44:52 -0000
Date: Thu, 6 May 2021 16:44:52 -0500
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 kernel@collabora.com, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Finley Xiao <finley.xiao@rock-chips.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/4] dt-bindings: rockchip-thermal: Support the RK3568
 SoC compatible
Message-ID: <20210506214452.GA853809@robh.at.kernel.org>
References: <20210506175514.168365-1-ezequiel@collabora.com>
 <20210506175514.168365-4-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506175514.168365-4-ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_144504_784462_5B591C4D 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
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

On Thu, 06 May 2021 14:55:13 -0300, Ezequiel Garcia wrote:
> Add a new compatible for the thermal sensor device on RK3568 SoCs.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=3gvV=OK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 322E4C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 22:17:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F142661100
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 22:17:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F142661100
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDbga638CliQ1Q7sAAM//FP9DyLXH5wjH4nGp2j5Aio=; b=M1TGd1U1wHh6oU
	tIBANZVDBA3QrFiv13UPbzNlIhY4+4mQodB6r4/iJSXKVgr13WZ+uL2vzDVW2QPIxFyLh8M2tCIp/
	+XvHM5NxIztCnmj3ze+hGRoQJvR/A3OzPzQwA2lRTWmo1ZRszJJ36fJmBA9GKygrMyw/VHpr1pDu7
	rmcy07vEZXQ1tGLEJ+FjpOWX+GvwlLT/yK1w/BQz9KO/1ox7e9WPb5biKPR6eZJdh6hSpMXvsHfCQ
	V5G+jG1Tm2ijUYt5E6B9UPCPzdH8oJ7aRwhKLxx/Y/178nuO5B44FnExtncKl+4NlA5aJrGF8pDSC
	iqB7qV9+SgcbuF3eGLoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSRbD-003FEq-Qy; Mon, 20 Sep 2021 22:17:19 +0000
Received: from mail-oo1-f46.google.com ([209.85.161.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSRbA-003FDx-LF; Mon, 20 Sep 2021 22:17:18 +0000
Received: by mail-oo1-f46.google.com with SMTP id
 t2-20020a4ae9a2000000b0028c7144f106so6385897ood.6; 
 Mon, 20 Sep 2021 15:17:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=U6ROm438VaDF/X83yU1GFicSY9rT7GthHqvBSSmCyxc=;
 b=F7Gxlvq1defbNqnrqeeD9d5+Nkc/RA8pEwHUni7fZfXLDpoY1cPXza7phunAwxGpBA
 jw6TFcS5hOCXB6LJ17oq2CuPd4Ykhk1/+plR9wTDMQc32fIKNSmXJUOGdq1xRsTx8s6b
 C5+KXh3OErlegeVqKX/eVviuKz56ctbqMcmtwh85viAu1M/INHkjc0in4n/7zCg5FERP
 uz8W5hauXkgorNtV3wLZuF/CluTuGjlj/zJ4FI8LZAq38J40g2dcjsAX5T453RNg88PE
 qj7ROveloRLbpC3Cp/ag9nMivtPE7TT2ZUZq4nyvPF6OfAn6Zd4YXWTZ1tqMXpIEeVGP
 /03g==
X-Gm-Message-State: AOAM530H/Prl7e294WG9ecg7kX0MYHU724dI6kZNfcfNYXd71l8hwoP3
 8vYNj6H3PbNUTXyPSOh01A==
X-Google-Smtp-Source: ABdhPJwMqbol2K20SQ5ba77WGRZQj9JVbeaXX0tb6m2bmPHGmYtgVns5mCkIFDzr/wrlskzHsQfIrg==
X-Received: by 2002:a4a:b64b:: with SMTP id f11mr21600944ooo.18.1632176234838; 
 Mon, 20 Sep 2021 15:17:14 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id j23sm912423oih.30.2021.09.20.15.17.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Sep 2021 15:17:13 -0700 (PDT)
Received: (nullmailer pid 893587 invoked by uid 1000);
 Mon, 20 Sep 2021 22:17:12 -0000
Date: Mon, 20 Sep 2021 17:17:12 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org, rui.zhang@intel.com, heiko@sntech.de,
 daniel.lezcano@linaro.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 amitk@kernel.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org
Subject: Re: [RFC PATCH 2/4] dt-bindings: thermal: remove redundant comments
 from rockchip-thermal.yaml
Message-ID: <YUkIaOt7xP1v2vYb@robh.at.kernel.org>
References: <20210906120404.10005-1-jbx6244@gmail.com>
 <20210906120404.10005-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210906120404.10005-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_151716_747595_CCA531DD 
X-CRM114-Status: UNSURE (   9.48  )
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

On Mon, 06 Sep 2021 14:04:02 +0200, Johan Jonker wrote:
> Remove redundent comments from rockchip-thermal.yaml
> Sort compatibles in alphabetical order.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/thermal/rockchip-thermal.yaml       | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

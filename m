Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43C7BC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 23:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1QCyBmmUixgB2Lpqao3ENegdXa6r6rD9wwY5rwIITY=; b=FSJAIVP3NkXp0c
	wv1eRwCjWegSYeKywmGlUYKDOef+JJZhwOxK66O5xaDuK9t/Z0nYdaVtcj8TaSzz/c05/Or9IUqhb
	LXKNSlVigjSW633jKuE4SgVDtq1uq55JQA5UrxtXIuchp4cDyChL/XmeeGDJBltFLVJ2lsL0ISpue
	BNTNh/1cgkuouGHRmllCd3ohJj5Bx16sB4db+qvYAWNjjhiK5wLz+KiIYjuJX7iIIvbRleteB1/OO
	m+9ngdDntoPjvzaYx1/ZMSsI5xewsP5A3CIlOsNjik3ufz4CZUeo83vt1mny6oosrFDGTzvKgspCk
	VehIZdZ3hFfa7ZdlqP3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB2Wk-005VpJ-ST; Mon, 11 Jul 2022 23:09:18 +0000
Received: from mail-il1-f170.google.com ([209.85.166.170])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB2WW-005Vha-Jb; Mon, 11 Jul 2022 23:09:05 +0000
Received: by mail-il1-f170.google.com with SMTP id a12so3889209ilp.13;
        Mon, 11 Jul 2022 16:09:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Esny3LkF85JNW9zTHN7u+n4M88LU/ALgn7WC/LhVj9E=;
        b=JSTcM3ePpckbkv7c9vsf5ihX4PSw7HlcHX7gPTiejRu1AE2/8dbNgCKumzIKrL6ZZk
         ifiECX5z/vP3TjDbLfyLc6EUhIjasAVetM8rx41d2qjdnv26WPtv2IqmwVisrwJqV9tL
         asUMCgobn2RolEawgKr2iWBXxRB70HsavuCnpg+CmNseH2wlIOW6ovqKqQQcnE5rdGNt
         CHTTeQo7SYIkzxB/uTFStZwKZ0l0SpE97O75CumTidDAxkvlZLTcPdvhlTMsauwRaT97
         DwA6+cPzHKGzanZOq5plHV0bf7VOvelA9pe0OYeDCqRNwn4jKlOKY7Td32pTjO7ZKfAu
         HapA==
X-Gm-Message-State: AJIora96DMoJe19TYoL1IfY12sqOV4JBS5m3Mx0QKSU9GK2lTx+uJ0ap
	ls//W8+K4ISB8U/PHctncurmttVlQw==
X-Google-Smtp-Source: AGRyM1s5y8ZgGxtrbdQ/DZFSTnnUHa2DE04OhdsqCIX+T7smvOnyEr5stdEJB8VfnL77vsXLAT0y6w==
X-Received: by 2002:a05:6e02:1b01:b0:2dc:7472:a5d1 with SMTP id i1-20020a056e021b0100b002dc7472a5d1mr5462931ilv.62.1657580942544;
        Mon, 11 Jul 2022 16:09:02 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id t2-20020a92c902000000b002cc20b48163sm3191864ilp.3.2022.07.11.16.09.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jul 2022 16:09:02 -0700 (PDT)
Received: (nullmailer pid 442504 invoked by uid 1000);
	Mon, 11 Jul 2022 23:09:01 -0000
Date: Mon, 11 Jul 2022 17:09:01 -0600
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add EAIDK-610
Message-ID: <20220711230901.GA442449-robh@kernel.org>
References: <20220709102902.2753851-1-andyshrk@163.com>
 <20220709103001.2753992-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220709103001.2753992-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_160904_674517_D2A1DB72 
X-CRM114-Status: GOOD (  13.38  )
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

On Sat, 09 Jul 2022 18:30:01 +0800, Andy Yan wrote:
> EAIDK-610 is a rk3399 based board from OPEN AI LAB
> and popularly used by university students.
> 
> Specification:
> - Rockchip RK3399
> - LPDDR3 4GB
> - TF sd scard slot
> - eMMC
> - AP6255 for WiFi + BT
> - Gigabit ethernet
> - HDMI out
> - 40 pin header
> - USB 2.0 x 2
> - USB 3.0 x 1
> - USB 3.0 Type-C x 1
> - 12V DC Power supply
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
> (no changes since v1)
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

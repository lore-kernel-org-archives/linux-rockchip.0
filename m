Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53902C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 18:53:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 173A66137D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 18:53:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 173A66137D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ULaYhqA7jLw3LNhdasiCP8pgUeRzhS0AeskSlpztHH8=; b=kWBGCVeMOSM6Guk0p8mSWIcx/
	1fqdyfl9fONgs1GAd1qzfK7lILiM/jYUHd5jjoEAr9JYyhbtT3W7YRb70I45E07NQq1/DgwZWVv1o
	OSD4omdIK9lgUx6wfCS11bANgqKBfYaoeiZd03+LXCFbcUIyXph1iH9bnqTcJosde5fjYOo/Dbfzj
	Lgq4aRTJnWHK1IFLIpjycQuUJhsQXVRz1FP9pEk5T+CpY0DoUtx5X2nbmB3Tm0oJYZ/rVyXH9toTL
	9TzdeFWHyp8EUpfHcxhZdFCCtmtkh4Kcf5GupDEH+j1I/QFq/v65JxTeehEIsreN5w2brlkDcVhH2
	wQLBMeMfA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXTaZ-0038y7-7a; Fri, 16 Apr 2021 18:53:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXTaX-0038vx-Sg; Fri, 16 Apr 2021 18:53:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bo317WIkFn1/Wn1GxMx0UU8JsonrX+yYrMt9jYM5jl4=; b=IpM9XdSfVf1z/eYxafBMXgTWNv
 v8ppr7xhbs9+u0yoRSiMAT5X6iwPu/7eCKWiXHabVqVicXCgTVBFViq7YqlDF4rVkY5mBNO8nknXp
 VyORGpsMNIL/pIbOqMeHea+CXS04hKMTNEbejXNYRCUHVWGL9FcehTyyQRblNdLfb3lYHH2omCmd6
 sr0aP6ZSGiDlbkdy/35T14QeFRhN3orm/UgTNSZ5HWADX/6KDLOmDWubGgpY2AByvZ66tUc4CqhYl
 sda/Rj0oXt7pkNDLa8faAOEiE7hV2HaE7BrCmm+Ubdd3LQOTFmHieQ46HbHL5YAskS3wPBhbJR/5L
 3GCYsKnA==;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXTaT-009dfS-P0; Fri, 16 Apr 2021 18:53:08 +0000
Received: by mail-oi1-f172.google.com with SMTP id n140so28826619oig.9;
 Fri, 16 Apr 2021 11:53:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bo317WIkFn1/Wn1GxMx0UU8JsonrX+yYrMt9jYM5jl4=;
 b=grhGMXa6qXGrGDu1BXa6aMmogsgC3WAMrDOofkcYsHzo6fkBa0JYKFh6c3wjkKZqcy
 WiFElLxpAmWDueGoPti8kSwnPvxtsD+aX7LHwLmo1P70t3ONOY6lXk+VYetfaJ3CpkpN
 tAlQVeTk1c25ZSe4sCaFg6h/nCsnNX6/o3nbHTy9XkxKuaxVr/B9zIXH+dcs9nNV/F0V
 yF1pwMKk+bzCEugn1iD+IrfQNTw0fVegWd+ub1Q5IUwGx/W47oJqjkOeT9HDfPdIs/wA
 t7+TqFeRXpYXY9wTBHVmsZdieQz05e7x9PvyDq4n9x1xY/a/ZuWioPP0xaYDJhsLDwtE
 5UiQ==
X-Gm-Message-State: AOAM532EwkDo0B9BT7vVLdykzNU5bUCjz0KRwJX5u/WLWYz4RxBnbb4e
 u8yUh95MuotxoU+IK1unPA==
X-Google-Smtp-Source: ABdhPJwV/QSxYl/xWKLHE2sSkjYKOeWI050rZiPSwPhXZYb8RB1IsWPwyyh33QU5h7/MmnBvjGIKmg==
X-Received: by 2002:aca:e003:: with SMTP id x3mr1658067oig.118.1618599184525; 
 Fri, 16 Apr 2021 11:53:04 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t6sm395376ood.41.2021.04.16.11.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Apr 2021 11:53:02 -0700 (PDT)
Received: (nullmailer pid 3747499 invoked by uid 1000);
 Fri, 16 Apr 2021 18:53:01 -0000
Date: Fri, 16 Apr 2021 13:53:01 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 enric.balletbo@collabora.com, heiko@sntech.de, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 zhangqing@rock-chips.com
Subject: Re: [PATCH v8 14/15] dt-bindings: power: rockchip: Add bindings for
 RK3568 Soc
Message-ID: <20210416185301.GA3747214@robh.at.kernel.org>
References: <20210416080342.18614-1-jbx6244@gmail.com>
 <20210416080342.18614-15-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210416080342.18614-15-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_115305_829800_735A668B 
X-CRM114-Status: GOOD (  11.91  )
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

On Fri, 16 Apr 2021 10:03:41 +0200, Johan Jonker wrote:
> From: Elaine Zhang <zhangqing@rock-chips.com>
> 
> Add the compatible string for RK3568 SoC.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> A note for rob+dt and others:
>   A review and ack tag was not added, because in this version
>   the schema layout changed a bit
> Please have a look at it again
> 
> Changed V8:
>   Add pd-node ref schema
> ---
>  Documentation/devicetree/bindings/power/rockchip,power-controller.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

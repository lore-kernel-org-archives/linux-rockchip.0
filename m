Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE96C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 17:29:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0F91A6528B
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 17:29:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0F91A6528B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0MxjLBDBnpTK7+oHy02B0DuvrwN/paaX3c0yrk1SEvw=; b=BirPqDuC1ms2BaFXlhFa1UTDA
	QEzT6BI+b5/kknpwdGh8dmBceXEJVs1aDk2x5cKBZ5QTNNRwBzW49Gi5ETgip+Rd0E8UU+dHVtshi
	9WwHdS5tQSSJe1nlBauOEVyMnv1ioiGh4i4ETD0FglVkj3fkeMB7DLathvtqs5vXoBHNLASdFZc0/
	QfBl+SQW+S75g7hHcv+Nqz1B6+drYFePTq9/HvxGkaaNyEKqU988cNGngGCIp1RR11XewigbzAPAR
	8v5G+6c3y1vvcgaTFkcH9Dmb36mQjuPbGpUz6zkxQs2D8EofOQmSp/drGbRyK0guARbm4ZjCNA8a+
	HRReesVGg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJJhS-001P9w-Ff; Mon, 08 Mar 2021 17:29:46 +0000
Received: from mail-io1-f52.google.com ([209.85.166.52])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJJgH-001OY7-OL; Mon, 08 Mar 2021 17:28:36 +0000
Received: by mail-io1-f52.google.com with SMTP id g27so10808652iox.2;
 Mon, 08 Mar 2021 09:28:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fws5MonGu3/ugwq9UdenhDT89R0PYuNDK5UhBQCoBJM=;
 b=uOdPOrlE7WI6uwtN4RRlrk9CbcP88nKITPGiQ7BuYXFmnbSu7O3G3KVydu/fkSIOSP
 SxIjGxDuUfFH4VoUuK+mzJt8eH3+SW0M+TN7ZhiJVF493n/+QPSQKmiNwxsancYLqRjp
 Z/ps/jwGxWayaLNS8nFGZlJa2eclPcucFrh8tHg5DrNfpkFgGQOxrZieQ3JWj3SqX4AK
 L3DT4T092ZSXC2Gsew94u5cF+iWECrNPYF2QO9TCqg65eptu5RIs9hb+la1VVO15ARyr
 YGrA6tzqTOgduL09uzR9QYLHRvej9pX6w7W6CuOR6kqrLoEt+A0DbCsQQ06CLL4Xwc7x
 YYIQ==
X-Gm-Message-State: AOAM531Jn2vfWWtq29fqvG32aO6Qc6tKf554NnsDeWWDGUPcvFqMBFjg
 iCir2VQkVnNVsm3AN9Q/fQ==
X-Google-Smtp-Source: ABdhPJyS+nur54q9MG9oIinTctfWUfF+pR/TVr6q+ykJUS8fdebTkaBQHkqp6/2E7igSyd/swhT75w==
X-Received: by 2002:a05:6638:238c:: with SMTP id
 q12mr24925610jat.114.1615224511898; 
 Mon, 08 Mar 2021 09:28:31 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id h23sm6189744ila.15.2021.03.08.09.28.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 09:28:31 -0800 (PST)
Received: (nullmailer pid 2664795 invoked by uid 1000);
 Mon, 08 Mar 2021 17:28:28 -0000
Date: Mon, 8 Mar 2021 10:28:28 -0700
From: Rob Herring <robh@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: huangtao@rock-chips.com, finley.xiao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, mturquette@baylibre.com, heiko@sntech.de,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, tony.xie@rock-chips.com, kever.yang@rock-chips.com,
 cl@rock-chips.com
Subject: Re: [PATCH v3 2/4] clk: rockchip: add dt-binding header for rk3568
Message-ID: <20210308172828.GA2664738@robh.at.kernel.org>
References: <20210301064749.10392-1-zhangqing@rock-chips.com>
 <20210301064749.10392-3-zhangqing@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301064749.10392-3-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_172833_944512_61313E8D 
X-CRM114-Status: GOOD (  11.65  )
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

On Mon, 01 Mar 2021 14:47:47 +0800, Elaine Zhang wrote:
> Add the dt-bindings header for the rk3568, that gets shared between
> the clock controller and the clock references in the dts.
> Add softreset ID for rk3568.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  include/dt-bindings/clock/rk3568-cru.h | 926 +++++++++++++++++++++++++
>  1 file changed, 926 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rk3568-cru.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

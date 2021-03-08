Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D902C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 17:28:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DAB1465235
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 17:28:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DAB1465235
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CWxsK2EwG+HqRr3uXuQPaBpnUTYyWPT9E5eW0XvsNL0=; b=regul2zq1v/hpDCQ3Vtuz+Fql
	h8ucQj6WbX7+y3mAtZp3Up8fqfreO+qe7GvMIU//1NNjF4bqQC9dRQiBnRQ0ka9s4e3RjuKWRXxsf
	z+fb3F7QJn60SbP4Jwf9X9Zp33YRGhY0dFCe8kwuDwUtYvuvIq1MqTZ8WHcVEnayOZVE0iPi5aXCh
	lQKGgSuW7mixuGpvohVSi3Gzdj36y6oGQUIGFADjIOps66JixxyM/4eaa1fC0t9vWYWP7w/cAuFHt
	Ja7Qrvf3KPpl+qRMaZ4BueeKfGCNA+2F5qMCiV4/zILFFAwC7TQIyEylV8RY9I/xMgmAKUq9FaiMr
	zkZ8wCQKA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJJfk-001OHZ-Tt; Mon, 08 Mar 2021 17:28:01 +0000
Received: from mail-il1-f177.google.com ([209.85.166.177])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJJfK-001Nzn-3S; Mon, 08 Mar 2021 17:27:36 +0000
Received: by mail-il1-f177.google.com with SMTP id f10so9542804ilq.5;
 Mon, 08 Mar 2021 09:27:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=z4VzCr+NjykMx6ss3+YedQXI/QaFLF89E2u39WmSoLQ=;
 b=Z+Xtd/iX/JdjOw9PtyGkgdS/vDA6j3mZd2lbtxGs199rDBs9CsnoECL3GWfdVyh6JS
 hAmRYRZwNhnml1UdJtVOZEYM2PI+U6oNkV504XFywMfFSqYMoJmDF+sFc6tiXk5O2sCO
 70D1CrcwIWOsQgYxFA4D5OyYDv05cZwenRrGZ/9Jt4pdsxw8bb7SL3CG2cCUNRtv+Arq
 Pa0wB/5wVDgWEhOUbTJKGqi5z+osqNJKj1Q7Ln2jHBlDWhjGuspRga6C9p/n+bJc1+Js
 2KQIvKNy9ncaSmSSOC8Z1UpMs7FFFBLOdYrnQz5rTfSCmcgriCqGFPa1YE3Em8g9PYkN
 fEhw==
X-Gm-Message-State: AOAM532hkHrdb5CaLn6Lo8UlWDMztoY5DTMdXdJs3SycnxS++3mvkQOw
 aueofdjXRl8V3+8JDY3Owg==
X-Google-Smtp-Source: ABdhPJymVBviqDmcjogfw4M2rtCtsicnvt2LVjcMBx2jYkzfy4qseIoAI3ubQ28VbDMgrro+hskwag==
X-Received: by 2002:a92:194a:: with SMTP id e10mr21733466ilm.213.1615224452312; 
 Mon, 08 Mar 2021 09:27:32 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id k3sm6267660ioj.35.2021.03.08.09.27.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 09:27:31 -0800 (PST)
Received: (nullmailer pid 2663388 invoked by uid 1000);
 Mon, 08 Mar 2021 17:27:28 -0000
Date: Mon, 8 Mar 2021 10:27:28 -0700
From: Rob Herring <robh@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: sboyd@kernel.org, kever.yang@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, mturquette@baylibre.com,
 linux-rockchip@lists.infradead.org, heiko@sntech.de, robh+dt@kernel.org,
 cl@rock-chips.com, devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 finley.xiao@rock-chips.com, tony.xie@rock-chips.com, huangtao@rock-chips.com,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-binding: clock: Document rockchip, rk3568-cru
 bindings
Message-ID: <20210308172728.GA2663354@robh.at.kernel.org>
References: <20210301064749.10392-1-zhangqing@rock-chips.com>
 <20210301064749.10392-2-zhangqing@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301064749.10392-2-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_172735_306681_66F5698F 
X-CRM114-Status: GOOD (  10.89  )
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

On Mon, 01 Mar 2021 14:47:46 +0800, Elaine Zhang wrote:
> Document the device tree bindings of the rockchip Rk3568 SoC
> clock driver in Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  .../bindings/clock/rockchip,rk3568-cru.yaml   | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=REIB=OY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F25BEC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Oct 2021 17:54:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C0E3B6120C
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Oct 2021 17:54:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C0E3B6120C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9SOx0Age1FaVWBUl/tK/WFqiziYUrSdD3ObD3UunQU=; b=OHfH9TTSo842Ym
	7r1pavcdfWL7u4KwiVtc71gmx/xY2++wutGSVdpiQMqorM39ZcFcyqoF9asNGS48gPvJ6Au8FGoPw
	D4YnuYJMutxLVa+hjKOkNYRL5anfCmroC3iLC0FWLz1rooLx3fgip1eH8Gq3oEm2yGB+TrKkEZVDc
	WsL+xonvxX2FOh0xlJ1gsf+BO+IeSpq5hTN+17FkiQnIoqLwdUGohzELdq5LpHr0b+pSRNBkvn/Er
	PbVozMOjqlZxbRrhGhSTeLtBhU/D0k+j+4s6K9C0HyPoOkEMJHvhVo8vEQrU/zrnLvcfTZkXqSWTO
	vxOzKkiwI5eU+zQZDoTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXSAM-007U8k-7R; Mon, 04 Oct 2021 17:54:18 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXS79-007S8K-NG; Mon, 04 Oct 2021 17:51:01 +0000
Received: by mail-oi1-f182.google.com with SMTP id 24so22732019oix.0;
 Mon, 04 Oct 2021 10:50:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6zRZuNIT+xjrODYlZtB6u3cOYxu5UNok+M2nhNfTu0k=;
 b=3jUVUnabAlz0+3X2SoUpTFa16YdO1FSaoUQhJmhtO5HXWiBqLFMZuavCyVZSeuKPtv
 E7A30VRxaig2KQKowEihDIAYte5bhpzLhmZzaJqKUpJN9+9z8fGSbdixv2uzBQXBWg//
 Mdl+sy4V1PtkGIJ1lK3ZAhI74AjAb/VHDRWjGVb4Bgcd4gDW2hHKP5DARkMS1oE1qHm0
 EcyXgyvTDuRdIDErbZVjpDBk7l9B0O7uxBIJgfGRL5FdC9ZqAwd1TXkxIkSPm9A37srp
 ep6aaXCUmEWlFls1IKr6SdkTq8o87/heQoLiTBb7N707NAmg9bV2iv1EXXBvwn6+E007
 08Tg==
X-Gm-Message-State: AOAM530h+dt6uI6yVDnPwwyy0rqb7R/mRgwtiR6nASfacmu4JlQR+lZg
 I6iNQyKZeqI0e0Feyb8BEg==
X-Google-Smtp-Source: ABdhPJxR8ab8KCaznBErFa6cOhc5HDtYnjYmeKqBUv+UFudLPe9JWsiqSQbzpiHh09qzFc8a+E22sg==
X-Received: by 2002:a05:6808:16a4:: with SMTP id
 bb36mr14511171oib.91.1633369858426; 
 Mon, 04 Oct 2021 10:50:58 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id p18sm3105821otk.7.2021.10.04.10.50.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 10:50:57 -0700 (PDT)
Received: (nullmailer pid 1552482 invoked by uid 1000);
 Mon, 04 Oct 2021 17:50:57 -0000
Date: Mon, 4 Oct 2021 12:50:57 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/3] dt-bindings: mfd: syscon: Add rk3368 QoS register
 compatible
Message-ID: <YVs/AZa2c6PTf6Bg@robh.at.kernel.org>
References: <20210925090405.2601792-1-heiko@sntech.de>
 <20210925090405.2601792-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210925090405.2601792-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_105059_818260_17A7A5DF 
X-CRM114-Status: UNSURE (   9.57  )
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

On Sat, 25 Sep 2021 11:04:04 +0200, Heiko Stuebner wrote:
> Document rk3368 compatible for QoS registers.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> changes in v2:
> - new patch
> 
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

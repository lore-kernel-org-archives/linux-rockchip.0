Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF159C43461
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 20:26:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6CA5820757
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 20:26:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="gykghFzc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6CA5820757
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EPsd5mHKhZkX8m/gNLNMTSIxEb+twnAxrTd+oaI0gfA=; b=gykghFzceZ5enW4yNh3jpvUGg
	HokzP5YE0OZmqXelNWH9t7NYJz7rscUQSLt4GK7qtlDbV0wDNv6Or6xI9YM5hMoTDA1fIev58w2AT
	B/hTzY10hcuwG++tTgNSFK5q/uipGEKh74joTraYxdHCn5ADc7daFYwHZaWJKqolZSpfuHm7VqGsX
	ubRwT7duC1XwY8w28BAuw2w/o8SKa4ciYxBrPcWogPKV9wYWWM8VXcQQcUEZ/BGZu5SHjUUBOmoq/
	u/ePb4xb14O5PbuuwAqmD8lWtc58ainqkARkYTcS9ocDHuyuJhDW+YFOQuzEU4j44ZPhHOCnM9ibg
	XJJXyk0Kw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHv3Y-00073u-UJ; Mon, 14 Sep 2020 20:26:33 +0000
Received: from mail-io1-f42.google.com ([209.85.166.42])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHv3W-00072F-PV; Mon, 14 Sep 2020 20:26:31 +0000
Received: by mail-io1-f42.google.com with SMTP id r9so1599476ioa.2;
 Mon, 14 Sep 2020 13:26:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pBnFBkWoZFvBeLIVMIY+de1Tgg4+VMrP2i4DNdIGX9U=;
 b=pwlYiShmfNz6ucYXKKMgM6kAJLXyt17NcrMDvEo2NuA5jK2mtBwuB7hQhoTjNPgSC8
 x343MUgoRqdAlq3XH5GRn2HWcr9JOS/0OMMYC90TNiygvgWpG5SIE5r+lQlgdyE1eXgw
 Rn2iNJsBgQvfZy2sb0QS8cG9t8OcooNHQFFPS1RMjKphsdXoecwjQK9rOV6fZZsXFQTX
 pyKRuXwCqndUHwijuUY4kFIZ8ChliHf7wAaw/B8VfgbO1QJ2DEXoTPhwVHH71M98bsYl
 0Sd1DZ7UDfE4w95PDYxXgoR5c+cBifL3sWVMCoE4btFZYG2MFQhkNOAdVd1GD29JsYU2
 +NaA==
X-Gm-Message-State: AOAM533dvPXQ8Rp51nEBziAhqsq4wCslcWdUY6B4udOuo8/nHcQOpqYZ
 0q4f3vDPbMadBHfZmUiZJg==
X-Google-Smtp-Source: ABdhPJzG7fU1g8IWiJZlne66hAGC8Dn0qryW6T3XCfP9dBS3ABXnxukUIIwe8+M6m34CHZdHTDe2uQ==
X-Received: by 2002:a02:9f0d:: with SMTP id z13mr14871940jal.60.1600115186421; 
 Mon, 14 Sep 2020 13:26:26 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id i14sm7679165ilb.28.2020.09.14.13.26.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 13:26:25 -0700 (PDT)
Received: (nullmailer pid 183633 invoked by uid 1000);
 Mon, 14 Sep 2020 20:26:23 -0000
Date: Mon, 14 Sep 2020 14:26:23 -0600
From: Rob Herring <robh@kernel.org>
To: lindsey.stanpoor@gmail.com
Subject: Re: [PATCH v4 1/4] dt-bindings: usb: add rk3328 dwc3 docs
Message-ID: <20200914202623.GA183582@bogus>
References: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_162630_850109_9EDFE3CF 
X-CRM114-Status: GOOD (  10.85  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org, heiko@sntech.de,
 balbi@kernel.org, gregkh@linuxfoundation.org, cnemo@tutanota.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 02 Sep 2020 11:12:31 -0700, lindsey.stanpoor@gmail.com wrote:
> From: Cameron Nemo <cnemo@tutanota.com>
> 
> Document compatible for dwc3 on the Rockchip rk3328 platform.
> 
> Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc3.txt          | 1 +
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.txt | 3 ++-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

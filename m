Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 258A7C1B08C
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 19:32:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D043660698
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 19:32:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D043660698
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOgHs5B4L9mbOWSXcx/+9aF6TEhDr9TcbpW82LDz4dM=; b=Sj3ex9jqvN7Ys/
	0v4IyAplk31Vps7luBosGpXlcpYDKMVCJ7Y0E4UaQP+LIIx+EuuvlrMyWlECuyWT/bHW8PDmsx/Od
	WnxyYXK35ccgnleeIf81HE4WLVveY/6enyfkuzqK/GEkEt7dFTzyb4oW02wW/JwQTFo/FRNqVPtrr
	cyzzqrIBH6ObKln2PNAR2bNBEs7wtuYyOC9QJIs+AXe7ScaNlffs9Sa3tHpgwAQBruyq7gSSyev+R
	46c5H3ko+kg8o4LU7pUme3RSmWlxpt381uNoN9d5DcISdXbBTERoVOPt3K3xfe/p83iCSgzw2OxPF
	OcqkrA9xXSznLIVlZzrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3kc7-00EZd3-9j; Wed, 14 Jul 2021 19:32:11 +0000
Received: from mail-il1-f179.google.com ([209.85.166.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3kc4-00EZcU-PL; Wed, 14 Jul 2021 19:32:09 +0000
Received: by mail-il1-f179.google.com with SMTP id y6so2704059ilj.13;
 Wed, 14 Jul 2021 12:32:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Z54s5QhYSOExzuzpvOFtLoRAPtUfWrEsWWGSgU1PAnE=;
 b=ZAiKJQ9VjbwDf/9oW4BiFI+Fi07U5dBEvkCXw3WdBQdZ7nbcUpk0yfTb0KVWpNfVOE
 U4v0NJM15+LdlkJzEoFE1vw6eTsYxN/JzYVEmnqRp30g0Gd3XffMcKx1Sl3ZeW/Dhorm
 uP9j0kRf8+ez1C21EhrraSEJ/YsagcrtQ2OaKPtQENEBkuaQEdiPnJYNNImPsDwwdQpE
 BamLMvqmSZvx3fOEsrvGgi2Y1uHKlQtndGh3evS+9LsZzptAlj3ZdzP05HlibAfuaL8o
 1urpPHM25IhN551CGamVATxsE+eaNU9kxyxeC4JfpHZoA6ZbHqnroo4Gf8kYLxNqfGqp
 iDlA==
X-Gm-Message-State: AOAM5336R54eeyIkzV6M0EcuqIPYgSc1cFlbzPxgJNQ3X9DmVycQnxc/
 aDDRt3ys78/O4xw97Bw5cg==
X-Google-Smtp-Source: ABdhPJx1+SSjmVRQRaFw07erbQbWbdwhTQo0pfdQDmm2BTFj8K/kX7s0rEeQqYhCGvFqwZrjQfskTg==
X-Received: by 2002:a05:6e02:106d:: with SMTP id
 q13mr7436201ilj.164.1626291128089; 
 Wed, 14 Jul 2021 12:32:08 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id w10sm1726955ilo.17.2021.07.14.12.32.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 12:32:07 -0700 (PDT)
Received: (nullmailer pid 3129884 invoked by uid 1000);
 Wed, 14 Jul 2021 19:32:05 -0000
Date: Wed, 14 Jul 2021 13:32:05 -0600
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 zhangqing@rock-chips.com, jbx6244@gmail.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de, lee.jones@linaro.org
Subject: Re: [PATCH v1 2/3] dt-binding: mfd: syscon: add rk3568 QoS register
 compatible
Message-ID: <20210714193205.GA3129835@robh.at.kernel.org>
References: <20210624114719.1685-1-cl@rock-chips.com>
 <20210624114719.1685-3-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624114719.1685-3-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_123208_871214_65F86C3D 
X-CRM114-Status: UNSURE (   8.87  )
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

On Thu, 24 Jun 2021 19:47:18 +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> Document rk3568 compatible for QoS registers.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

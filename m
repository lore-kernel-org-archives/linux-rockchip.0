Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82E69C12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 19:27:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 545C9613C8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 19:27:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 545C9613C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBXiFipGB9OdOWWzYw6de6rzZ+Brp8QsjT7/vH3KW9s=; b=M0LAIMwGa3ofXy
	wjKX58MWI6CTLWTtj8ELOY1PfqktvSPO+wQt5d2dRxxunxSHela+8mIyJ1VGBV5PZ8gcIVpsZFLSJ
	udqw6nFMW+Mykz4BgcVmRAdJmHRU3jqnk1fLi9b+UmKxW1eM9ktdKg2zhon3/zst9NO6etiZUwE62
	xuEy7KiC8Obu5Dr9UvyYQM5JnB5P8rZThgnKFO6XBoTFoMFnVnl/tJHo0T7rG44pRJPJVO60zIHPo
	K2aNEdsMC0atIk5pbTnmCjJ26qEVyPswOMMV4pkc/iWQ7YlqXS/8T5RCOEQrTVzSdZu7IS6L4DFvN
	wuc7ktSP5Ohb43CM5EBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3kXa-00EYFV-Px; Wed, 14 Jul 2021 19:27:30 +0000
Received: from mail-il1-f170.google.com ([209.85.166.170])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3kXY-00EYEJ-E7; Wed, 14 Jul 2021 19:27:29 +0000
Received: by mail-il1-f170.google.com with SMTP id z1so2752268ils.0;
 Wed, 14 Jul 2021 12:27:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=X7kTm5gxPH5p4R1974v+PBm/+rts1oxk8UnzwjXHDvI=;
 b=ssnLwMr/fKVXdGQbr7tGawCwcJMm3NkJ/5dpDmnJWt2ai7yQjflkkxwheB2hOjFiAw
 PC3E4U8vwpfJ0EpqD3zegeAHbV3AfWQg/tWFSIyMNAdit1zrlPhAGXxtcBjlfrHEnc1t
 LSjOflbMdxZTI9wUGrw8lKbBzUELC/HYXzjLMKK2bU4lXAy+TG8lPB4w+a3F6OasNhvG
 6WffURF43i8gQcxYlo8n2dm1O11Nz1gPOW6N++S6l+v4yY5BtXwjopQmpo3YjKPDuroT
 +DE9a3ps8Af/o64AAor6t+krcLJDzFVj8ktA/sqQyi+1/X3zKf/6hC8lNlsZTcnVPZ4s
 16aQ==
X-Gm-Message-State: AOAM530XBijyYJYnpyEP+hkATv2+cYT0gZXRkRLgjv0eJ0H1RP49HZ8Z
 MChMku3p+7rqm/YUxfvHjR7wkJeQXg==
X-Google-Smtp-Source: ABdhPJwLfEEHxMq4jIi852lj9hsvLGqB9q7nGImJXGLliWf7IlphmFLzkEsu0O9EBURvHVmbKq0Rqw==
X-Received: by 2002:a92:2a10:: with SMTP id r16mr7384739ile.223.1626290847246; 
 Wed, 14 Jul 2021 12:27:27 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id h13sm1514223ila.44.2021.07.14.12.27.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 12:27:26 -0700 (PDT)
Received: (nullmailer pid 3080414 invoked by uid 1000);
 Wed, 14 Jul 2021 19:27:25 -0000
Date: Wed, 14 Jul 2021 13:27:25 -0600
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, lee.jones@linaro.org, jbx6244@gmail.com,
 heiko@sntech.de, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, zhangqing@rock-chips.com
Subject: Re: [PATCH v1 1/3] dt-bindings: arm: rockchip: add rk3568 compatible
 string to pmu.yaml
Message-ID: <20210714192725.GA3080254@robh.at.kernel.org>
References: <20210624114719.1685-1-cl@rock-chips.com>
 <20210624114719.1685-2-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210624114719.1685-2-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_122728_512996_9D585C3A 
X-CRM114-Status: UNSURE (   9.92  )
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

On Thu, 24 Jun 2021 19:47:17 +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> add "rockchip,rk3568-pmu", "syscon", "simple-mfd" for pmu nodes on a
> rk3568 platform to pmu.ymal.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

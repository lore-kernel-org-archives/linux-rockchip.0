Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD71C07E96
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 16:23:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 86555613F6
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 16:23:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 86555613F6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcQkvf/ur4yZCgOdbxkEOAlNO9aFMf9LaNCqabbAbWM=; b=vm6LFN/gqfu/i3
	cK9jokagfccsEyZ2NRIeLHGBO3mhbCFHOegFvvnOYo+3NhV65Mj9/eSJ4AgWZYNOj8uVMH7yHGr0l
	PBhPZwPd5lbLfp3F7AawpwVdTwQvNRA40K6nM+a9EGtrE7hTcsG/dvBhLXBH2w8QT7U/UXcqAmiDz
	kxuezFQjLofb50v6LZuL8McyHbaHOCn9lCFeb5PQAlmijkglNbWyMjjmAvp3LeopOhymqS1sY68e3
	a/wHjf0KR8NNs/nrxzWAbX7vRHv7zD6d4mlVtuQnJlKvQ+AeCuU5WAq1Ut8V278ahmZUncUwD3kBr
	OEsQYTnM9I2+hiziDpcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m448s-001Kze-P6; Thu, 15 Jul 2021 16:23:18 +0000
Received: from mail-io1-f47.google.com ([209.85.166.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m448p-001Ky2-In
 for linux-rockchip@lists.infradead.org; Thu, 15 Jul 2021 16:23:16 +0000
Received: by mail-io1-f47.google.com with SMTP id g22so7148958iom.1
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Jul 2021 09:23:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VCPIeLGAQSi51KqlR8ncXAhDBGWQU/Qf2TsBbc5kmuA=;
 b=i5yE06YVoovk6YnmtHhWFdPVE2Iw+A6CW7vjScZ7V5rcfLGW0ZRhT0Aq+pSO7HCtwk
 giZC6d1sMr2BdD0ZCek39MSohuUqWSjtwMq2LobOn0gPIbKJibcozsEhbZa9EVI0suH2
 K1inv5i0D/c/o1eKc8p8LiUszCRu8Cajmq+u8dOVeCZj/RC8GMZhJ9J1u1zt/lNJ/HGC
 cpL22K+tA8sNWF9BhLQDtpERLRUIgnv2xmFbreor7GkpPTcwHQ0/OzaYN7BHzwfh3ygj
 6Jh6Esh4ayzlhvOWGVJE1TQDCIzlXQzuCACnKr7SqTQ9IMOs+oYx8pgAbfRX6s1gCyJp
 kQTg==
X-Gm-Message-State: AOAM5307GaVMlk06rom6TtCSOUWDfLbp1u9cC1hDQGY4/u84eftna5Tv
 1rTO0b5PM/R2OR1K7MiJmg==
X-Google-Smtp-Source: ABdhPJzy2uMToeJva3aDSimbcu1EnMG73hElYY0cXNXA6Bzw4Zwd39ZzLyNbeBONUjEMzsYSKydqFw==
X-Received: by 2002:a02:ad08:: with SMTP id s8mr4832356jan.40.1626366194189;
 Thu, 15 Jul 2021 09:23:14 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id f7sm3313767ilk.64.2021.07.15.09.23.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 09:23:13 -0700 (PDT)
Received: (nullmailer pid 1187046 invoked by uid 1000);
 Thu, 15 Jul 2021 16:23:11 -0000
Date: Thu, 15 Jul 2021 10:23:11 -0600
From: Rob Herring <robh@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Jonathan Cameron <jic23@kernel.org>, robh+dt@kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Lars-Peter Clausen <lars@metafoo.de>, Johan Jonker <jbx6244@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: rockchip-saradc: add
 description for rk3568
Message-ID: <20210715162311.GA1186976@robh.at.kernel.org>
References: <20210712014437.97427-1-xxm@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210712014437.97427-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_092315_661084_88550B99 
X-CRM114-Status: UNSURE (   9.69  )
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

On Mon, 12 Jul 2021 09:44:37 +0800, Simon Xue wrote:
> Add description for rk3568 saradc.
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

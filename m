Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 136A1C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 22:06:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CDC1460241
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 22:06:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CDC1460241
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xiAUOb46nVC+XWfgkrkL1D3zXzS8UjuMEwAqnqRbV/4=; b=Ox05zXqG6VvxMlBMNh2dRb6PjM
	7M4W1bfvDxPQzzA291yYwWbvaAIcGYtLQa7q3SN+pL4goRHsEKCvLjM/EWjv2KPtUtr1rGkyxqJ6p
	Bs0d44iPgakiGqyLU+c0pXA1MkTgEkZd1BqjoixsiDzl3G725koin17mSMxouinYm/Xq5cOjziWT+
	hAqPOstzFuTo/QRwTy1f69p1fr68JsnM68ZmiqPCKNdsc6f0ZDmWbB/+cmwsX7UXVUDGu8VIfm6AH
	mHrIONsFBSGylJ4wMVT32WxeBxUbnQU+R2AmYb/F99ZkRyosArtB8mpCXoWzET5r5XRhRb+RSQRi5
	1LRNyYWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKpQa-000k9T-F4; Mon, 30 Aug 2021 22:06:52 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKpQX-000k8u-Iu; Mon, 30 Aug 2021 22:06:50 +0000
Received: by mail-ej1-x631.google.com with SMTP id bt14so34340225ejb.3;
 Mon, 30 Aug 2021 15:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dVz7KNxNw9dPiD9LMKJTxCQFFumEXaLDXEl8yIFI81o=;
 b=oyV0YgMfgDuf0NQe8PGi/vWw6gTEujwa3IrPoPmXIGZYQ/6zTxalOVEeBHBAj3uFLZ
 1Vg9Ae50Tv1j3tpP1wkmpVr1/Vz5baU6YKW97ZJdMgiPJkN9TWazrTHvMBRxkU0nw+kB
 P0ExVIZGFQ1uamubwwBAfgg+Azwty/KZmIv0mLYvLSgbC+qMuPNBnyYCu8BOK6HylJEe
 jbcCixzBOt3kwvYlY8SU9Sqtlqq4uhYAtH56XBFji277Sr/3ekOq3W7bCsMH94BhE4V1
 bk23K/mjg6t0GpHPIJaqBJe1nutrH1YqJP9LJIv7tNI80VkPhF4OYGS5sOF6OI4FBj3H
 CRZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dVz7KNxNw9dPiD9LMKJTxCQFFumEXaLDXEl8yIFI81o=;
 b=AEUwLEnKfsPJWReIem1zx360TMDQ1BJubDv9w6jWw3OMPza1b6BxH24pd1y97HSSzC
 9n4aaX2oBq33I1YM86ct6grs470DIHzy12oI6cQavKjct2kUktgHoV6yCDtFS4Ix8DBR
 VDVPB/rJwlxDGk+ZrJUY1k69xYWVeBVQ0hTBP/qvDbxE62+UyCpNk2iBPjIgM5H9xK/g
 2mN7eztK5iuQt3zor7lO2l50w4bwrtYJP20asHuJn3Yu5HkNFyEfI7hwjM0sIWg5VIK2
 DGbHIoxk2g8RoVnkHVFomoNFwzDDTaxNF3kchdh5v3C/1u5ZDc6cFwhpW/hKmqmgGMiD
 OP8g==
X-Gm-Message-State: AOAM530IRDYiDA8Zf/vq195ViJVazklhqqHxzoaCmnk9xV34+q5pnFC9
 XoCOrYwKYrnUIvf2JfYepFE=
X-Google-Smtp-Source: ABdhPJw8aJhh+udRsP+f/0yjasvxRfiwvoKOJsTIHAwic+oU4cgejSuEQaa04/YieQ01NqaZvbqZHQ==
X-Received: by 2002:a17:906:8481:: with SMTP id
 m1mr27749345ejx.459.1630361207997; 
 Mon, 30 Aug 2021 15:06:47 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 r2sm8297876edv.78.2021.08.30.15.06.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Aug 2021 15:06:47 -0700 (PDT)
Subject: Re: [PATCH v1 4/5] dt-bindings: phy: phy-rockchip-dphy-rx0: add
 support for tx1rx1 phy
From: Johan Jonker <jbx6244@gmail.com>
To: Mikhail Rudenko <mike.rudenko@gmail.com>, linux-phy@lists.infradead.org
Cc: linux-media@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Helen Koike <helen.koike@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
 <20210830180758.251390-5-mike.rudenko@gmail.com>
 <60aa055c-d872-3e5c-3c85-09300215a60e@gmail.com>
Message-ID: <a9ce814a-d23e-2f5d-0299-4ffbb76609da@gmail.com>
Date: Tue, 31 Aug 2021 00:06:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <60aa055c-d872-3e5c-3c85-09300215a60e@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_150649_685594_530ED8B7 
X-CRM114-Status: UNSURE (   9.18  )
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

Hi Mikhail,

The file in the link below is in need for a YAML conversion.
Could you help?

Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt

- compatible: one of
	"rockchip,px30-mipi-dsi", "snps,dw-mipi-dsi"
	"rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi"
	"rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi"

On 8/30/21 11:00 PM, Johan Jonker wrote:

> Some comments below. Have a look if it is useful.
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

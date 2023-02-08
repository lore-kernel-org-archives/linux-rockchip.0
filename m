Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18885C636D3
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Feb 2023 23:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6ECCQ/v0vlAyqszeD8UqBBKhzANarTFynhg5Y7rugM=; b=dSZsYL2ANJ0HBv
	jtxh9Uiv1wxRH6YAyqBxvT1jOanrJ88hsKahdrC6WxwAcJdKB/ciWn2YGPsX6rjgv0QfPfW7Y3RQF
	7lRewljCRxhf++KF4vrizfXTOq4Mp2i1vUU7QYwHdrJzddqt1h4g1C9UGVpwdDdoo0Nt95DxLqfuh
	ZkpTsTFRQVygxJHi6OBbj8iGAQSQcUhAXCBHYhD4soSw1ciLsZ6xzo2n2iUPAOifhUjHP6BA62QRQ
	tpvnxooJwE9i0zAGSb79+YX7G/0FNw4G8zllzgFn7MJlesF1B3Av/jgukVXFDVRerQHCec8HF1EZV
	pPBaGlfCkPoL4buxsaLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPu8Z-00HDqL-5Y; Wed, 08 Feb 2023 23:46:03 +0000
Received: from mail-oa1-f54.google.com ([209.85.160.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPu8E-00HDgr-VA; Wed, 08 Feb 2023 23:45:44 +0000
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-1685cf2003aso520643fac.12;
        Wed, 08 Feb 2023 15:45:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qMbsxtsPaDcMRMJxOKC0VFQqMhagFJRucIidW5fqoA4=;
        b=52o9pRzmXkIC23TeA26lcj1wlUubnB8pXnyh4M1tsYJispusVT38ocjbjzCMtVlrX7
         3QHtJxehjSzqLqV1/xEF3kPaxtLnifImcu3WMuRM1lKIBnvPjy5qOH9Gq9IEl0Xv5U9M
         VnPTMpBtW6TuW1+1EHNEYSYgshJEBVcMcEkqWwe+rFGDHsdS0M3GemN5lq162LOkpZu7
         cycCWaBjAII+pqAEhSykmati+59cwJ/kxO8Gq3kF+uBJ3lgGDS0CWFYtqRZWDSrGY9ym
         BBRI1CySPGheqfJLieb+4XJ+ooR8UGumolCG5Sgvu5YOspqYPrIb8YAJO5wAQpx0ytNd
         8wAg==
X-Gm-Message-State: AO0yUKVGzEVz6w3DgI9I3hkHbxJTwseCAS/PAp9BCsKVYpsmlkXvBNsF
	8QyE2beWtyiNFAPVjIj7Vg==
X-Google-Smtp-Source: AK7set/HiavAQmjdUI295azWy8VOKgmxDX+rzwF0NMVaOP/jJRv88VuTHKrnggACA0Pq2t3dOvrAyw==
X-Received: by 2002:a05:6870:1c7:b0:160:319a:d1db with SMTP id n7-20020a05687001c700b00160319ad1dbmr5324286oad.3.1675899940841;
        Wed, 08 Feb 2023 15:45:40 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n189-20020acabdc6000000b003645b64d7b3sm52122oif.4.2023.02.08.15.45.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 15:45:40 -0800 (PST)
Received: (nullmailer pid 2933874 invoked by uid 1000);
	Wed, 08 Feb 2023 23:45:39 -0000
Date: Wed, 8 Feb 2023 17:45:39 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Will Deacon <will@kernel.org>, Rob Herring <robh+dt@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, Heiko Stuebner <heiko@sntech.de>, Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 18/19] dt-bindings: devfreq: event: convert Rockchip
 DFI binding to yaml
Message-ID: <167589862804.2903789.1604184239861791827.robh@kernel.org>
References: <20230208093830.143284-1-s.hauer@pengutronix.de>
 <20230208093830.143284-19-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230208093830.143284-19-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_154543_020058_457407E3 
X-CRM114-Status: GOOD (  11.59  )
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


On Wed, 08 Feb 2023 10:38:29 +0100, Sascha Hauer wrote:
> Convert the Rockchip DFI binding to yaml.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/devfreq/event/rockchip,dfi.yaml  | 61 +++++++++++++++++++
>  .../bindings/devfreq/event/rockchip-dfi.txt   | 18 ------
>  2 files changed, 61 insertions(+), 18 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
> 

With the reference fixed:

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

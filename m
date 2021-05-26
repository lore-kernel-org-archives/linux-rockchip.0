Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C9D1C47082
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 14:39:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3E7CB60241
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 14:39:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3E7CB60241
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfOecQuxWGY1lY9s0Q9z58Omz2QZNwjQxxIUp5CseM4=; b=x/4yX/bFUjVG+9
	HUtnul5+2d5W58Aa6YHkl0yXsPpSPTz0Uptgl/ks25Yf6E7EI9EUrjLOl1CqpEwzW47ERvoLATG9t
	wJhZGYJSNdLfGc4q2yLECF2HWmPNLZV3M2cCgDDyOwkxzUpgEfYbcFhgD8nka5xtpGcAALs0oNrsq
	rJH2yLc3CHYkg5DoyC1zBWnKnaJJKXDIwNp3OIvmu2z9Tis/Xa8zjKgBs9C19PIr6vD4xae+NTwzh
	XhXCO9mBmZBTeY1KlnvrRDwSW0DuzahmSISLw1yAtGUH18B5qXpK5z98FTF692WSFukxzUMnANFf7
	njXBFQRvwArU0hfawCLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llugZ-00Eyc8-TC; Wed, 26 May 2021 14:39:03 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llt4z-00ECVT-WC; Wed, 26 May 2021 12:56:11 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 r26-20020a056830121ab02902a5ff1c9b81so874305otp.11; 
 Wed, 26 May 2021 05:56:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=WDr90ifdj3u4jYGhMgen8Q6MrQ4gfRqH3T4/ru0a4II=;
 b=EoqApHgx6pay5i2peUGioxV1iNre1UViKFx7JZWdZ2Zmz2M/GQJloDxIGsUMyKGxZW
 6bo7LeK4y+8Cp6NVaARJTxIU3IOtKM8KpkKMMuMCG4eVl3ymgwsSKx79d8HEzoZLFElI
 MeuWjeBVDz2kJTJdjiZZtbsPKdEw5My/GZ0YGsFSw/bpqiYycTNAMB6LmHH0ZEKkl+Ta
 8gyEftVEbCuIWsN/+7RLO/ZZ0ufLfp1z0xEgjrAJPKkwwmL6iuxY4ogHUucSvZ1lDwEU
 8NC91joZpLqFjJg0jMtM3/1bGvg+jhl6PLA8SATpAUMd4dekHgDQ6SPKHTLFLBbupgk8
 OeYA==
X-Gm-Message-State: AOAM532P2B09QkauLDwqRgz4X0gGRfeKf+6Io7knPV+1FOPPGYV4zRle
 yhPiXMZLwPE1HDxZzY7LIg==
X-Google-Smtp-Source: ABdhPJy3kdIks/OI8CbwKalMBM56yICQjALGsg75Oj3b8ExULJoXEYRQiX3P5w2JcRHh7aqnH9h4qQ==
X-Received: by 2002:a9d:6d04:: with SMTP id o4mr2124928otp.57.1622033766082;
 Wed, 26 May 2021 05:56:06 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x65sm4410986otb.59.2021.05.26.05.56.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 05:56:05 -0700 (PDT)
Received: (nullmailer pid 2377033 invoked by uid 1000);
 Wed, 26 May 2021 12:56:03 -0000
From: Rob Herring <robh@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-rockchip@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-staging@lists.linux.dev,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20210525152225.154302-9-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210525152225.154302-9-knaerzche@gmail.com>
Subject: Re: [PATCH 08/10] media: dt-bindings: media: rockchip-vpu: add new
 compatibles
Date: Wed, 26 May 2021 07:56:03 -0500
Message-Id: <1622033763.765019.2377032.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_055610_097982_FDFE0CEA 
X-CRM114-Status: GOOD (  13.54  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 25 May 2021 17:22:23 +0200, Alex Bee wrote:
> Add compatibles for RK3036, RK3066, RK3188 and RK3228. Also reflect the
> changes to the additional clocks for RK3066/RK3188.
> 
> Checked with:
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  .../bindings/media/rockchip-vpu.yaml          | 33 ++++++++++++++-----
>  1 file changed, 25 insertions(+), 8 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/media/rockchip-vpu.yaml:20:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/media/rockchip-vpu.yaml:26:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/media/rockchip-vpu.yaml:29:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/media/rockchip-vpu.yaml:54:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/media/rockchip-vpu.yaml:57:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

See https://patchwork.ozlabs.org/patch/1483524

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

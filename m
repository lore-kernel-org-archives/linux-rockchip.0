Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC87C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 15:47:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 42CF023406
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 15:47:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 42CF023406
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XAakyIxcP7OeDDPx/ezUu2vSf4XAz4NjrnuOo9ikoa0=; b=lBfeI0ZEO6234x2Z/hTidvXgqx
	g9Ill7xgoPIPaF6/44aU9Ts9cFX/5F1NcilKPINVx+IprdVgQ6kcQqesRN0feI6JmNPd9tbHBUaz7
	fxKagq8aNAxlJ31f91gcSOvIFbUsHh1s/JhZvpuCN1zggG/aLl/+Yj7UWMsxvl1UDgnrIkkDWLqHJ
	JiLq6eLhs9kSPI6XtpayqNPnjBZgZsDcgdvywi3YyaFmBJTzrufb/+ee8uRW/LkA0Y4p4OgSZefHn
	nOIY7yxkPi1k5ytx/MdxUIOASDEsKgnmtpSUF79R+kqWCxxAWNm/UfetwajgNZnWlnOjppsI02stf
	tl/F6UNQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxXVM-0002l8-Vx; Thu, 07 Jan 2021 15:47:17 +0000
Received: from mail-il1-f179.google.com ([209.85.166.179])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxXVI-0002jp-2c; Thu, 07 Jan 2021 15:47:13 +0000
Received: by mail-il1-f179.google.com with SMTP id t3so3029496ilh.9;
 Thu, 07 Jan 2021 07:47:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=VYV9mW9VGIQs6XlBAT9aPte1dh6zAyieEkbEaZDlIzA=;
 b=krlYq4OU2SxbVfEmAtMRO4DFpBHL1SPwyE5DOIkurpDAGzyVjpqAnApdLTK08qn1+Q
 4ro0mmQR1alh9Vje8+Enk31PQZrrKbWPgGeDQU9DaRuuTDRXbJweRo+avZxSLEyXau6o
 5IgN1SPqSzV+JwZtwear+O5Tz4F9E4K7u4V2a/G9jyeY3BCZNwQkpmV63WNVrcnVoenh
 zg03eFO8iH90uVzUWT07D+4R86KYunPjkrN42axcnyVjXsn/vgY497iXdvHmwtHKtT7P
 4RU6MutPcWRKIwxtgaOu8pnvkEvBf4MO/nqw3AFyRP68I11e4d7aRrrvtpui6yrMaDza
 dV+A==
X-Gm-Message-State: AOAM5324OOGX7fRJtdO2hyvp8va/N2VhMpvjva9KkgMJQJXDevIG/BUQ
 z0rBTR0iqrJEOmiyNVSbHQ==
X-Google-Smtp-Source: ABdhPJzu6IB/yYHXV5VWJmKQJzxJTxPazba178YiSWDahPUZgTyO4v4/dFAadaYPZ7WVb2PEbRlTAQ==
X-Received: by 2002:a92:c081:: with SMTP id h1mr3165387ile.46.1610034429707;
 Thu, 07 Jan 2021 07:47:09 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id a18sm5020137ilt.52.2021.01.07.07.47.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 07:47:08 -0800 (PST)
Received: (nullmailer pid 907942 invoked by uid 1000);
 Thu, 07 Jan 2021 15:47:05 -0000
From: Rob Herring <robh@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
In-Reply-To: <20210107134101.195426-2-paul.kocialkowski@bootlin.com>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
 <20210107134101.195426-2-paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 1/5] dt-bindings: media: rockchip-rga: Add PX30 compatible
Date: Thu, 07 Jan 2021 08:47:05 -0700
Message-Id: <1610034425.195215.907941.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_104712_139748_97E3FB4E 
X-CRM114-Status: GOOD (  13.16  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 07 Jan 2021 14:40:57 +0100, Paul Kocialkowski wrote:
> Add a new compatible for the PX30 Rockchip SoC, which also features
> a RGA block. It is compatible with the RK3288 RGA block.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/media/rockchip-rga.yaml:25:13: [warning] wrong indentation: expected 14 but found 12 (indentation)

dtschema/dtc warnings/errors:

See https://patchwork.ozlabs.org/patch/1423299

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

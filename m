Return-Path: <SRS0=+1u9=H7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CA6C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 14:44:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6743C6146D
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 14:44:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6743C6146D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mS0zSXH8Q0HqD3zWldYzlGYQJKIdirW3dMAbvX7Tibk=; b=DNcIrNN201OEOYVzVoL6nYACdu
	c1hj08eWanGFy8YvKUmwLVyKMxCPCDAJG3npth9d1KQPFQ/yNRQOqSvubJEEDUKgmyZ61viByiMmd
	VdxcAr5dtnRHUoUucSpLlkF4e4Ybqfiv3hkDgPkOb2ygbycOyOXAgPn+JnqwE2ufHqN8ioJFRUSoz
	s/tC3MKA+SrP4XPzkBZi1DTUjyr6oeUxt+H3wwNjbaSW31FKfMPrCRMwVTcqiMgk6hcQKTOk4YipP
	cMliOu2q30r15Z7eHHvCm5lpevknAtqvPs0CJN1ASMVidCzqo4V+tPabqeBjaCt+GtAahFS1Pkq+v
	bnCPHHKQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGjml-0003g2-L2; Mon, 01 Mar 2021 14:44:35 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGjmh-0003eb-Mp; Mon, 01 Mar 2021 14:44:32 +0000
Received: by mail-oi1-f170.google.com with SMTP id o3so18222341oic.8;
 Mon, 01 Mar 2021 06:44:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=J2ZIXJIHgZRZeDGR4OI2DHoLCDtP7CHTCmJZimg406g=;
 b=cgQj/Y+XKAG+1KbfnqRLC0zYc4ihT/VpldhSM5lFgHWIS1m6CiKEXUF4QjRAJ67E/B
 Y1/5rtl7y8g2fC6uHqXWu4aEVu671dkHMPrAKoY+AuEBYRW/9Zu3PGw2KbQnWMWK4TRQ
 xIKoiGj4PFunKXNH9vfs5LH0T+z9uuywMooGoqpL0KU34fmVFr1Q3oZPLVdnAGNPUpWQ
 n7/e05o+QuGrfPtcDUlPODIkbMZZ2KlBlHTG++vJ1IqHdUg/Uh2f+2dASHb2m/GGx+5J
 E+vG+GEsgWiox0WitfoX7CYGf0Q1aJ60h9EUCD90VTIslnTpiDSN0WReqvanokb9b58v
 EtIg==
X-Gm-Message-State: AOAM531JBdZL67R1YuZSTTcaTBFQaDu7f7ChiB2+3Sxzb+VYJ8Un+akU
 5nVW5cxUZDCobK10NMN7VQ==
X-Google-Smtp-Source: ABdhPJwdfoSh104CVJJRArrFpm/81kQs1A+e8U2RsvVCJfYlkMgYgzy/vlQGFHJIYsxPcGk+LpsC5w==
X-Received: by 2002:aca:5fd4:: with SMTP id
 t203mr11622994oib.121.1614609868060; 
 Mon, 01 Mar 2021 06:44:28 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n20sm1167413otj.3.2021.03.01.06.44.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 06:44:26 -0800 (PST)
Received: (nullmailer pid 37862 invoked by uid 1000);
 Mon, 01 Mar 2021 14:44:21 -0000
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20210226091128.14379-3-benjamin.gaignard@collabora.com>
References: <20210226091128.14379-1-benjamin.gaignard@collabora.com>
 <20210226091128.14379-3-benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: media: IMX8MQ VPU: document reset
 usage
Date: Mon, 01 Mar 2021 08:44:21 -0600
Message-Id: <1614609861.076244.37861.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_094431_783157_D562D4B0 
X-CRM114-Status: GOOD (  13.17  )
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 kernel@collabora.com, p.zabel@pengutronix.de, ezequiel@collabora.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, gregkh@linuxfoundation.org, mchehab@kernel.org,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 26 Feb 2021 10:11:25 +0100, Benjamin Gaignard wrote:
> Document IMX8MQ VPU bindings to add the phandle to the reset driver.
> 
> Provide an independent reset driver allow to the both VPUs to share
> their control/reset hardware block. The reset driver replace what
> was previously done be using the 'ctrl' registers inside the driver.
> 
> This breaks the compatibility between DTB and kernel but the driver
> is still in staging directory and limited to IMX8MQ SoC.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../devicetree/bindings/media/nxp,imx8mq-vpu.yaml     | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.example.dt.yaml: video-codec@38300000: reg: [[942669824, 65536], [942735360, 65536], [942800896, 65536]] is too long
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml

See https://patchwork.ozlabs.org/patch/1444845

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

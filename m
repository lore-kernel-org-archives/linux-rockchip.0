Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.6 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BEE0C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:25:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CEBFD20767
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 15:25:11 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="feLrMEWW";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mxVwxBdb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CEBFD20767
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZdP0zVKXBYBPOoYywP9Zj0p1sLGoNb4AeqOiEnFUwxk=; b=feLrMEWWBrXU3XxTT4OnHD+o8
	/YwKLWXheQtsrAQcLoQjGtQb4dd0OxyF7LGwHH7VIy0+R9AGm/ByRgyEsSBbmaaz+VKbbO/AK22Wm
	jfwBWQlAJ6UOxeyxy1vmSUhHCe+EEP5ILsEC34XH93UFng4B4a5KQlImGcIjI+J06sD5Wdj8hFaIs
	51VoTiS24Oza5dKbWJCIr8aLiPU4MVHkrad216Iz7XM/C/g2csv9/KUAQx8R8D6x7aLI/KrVZMunM
	PjyVxanqbYWrpkBKIleFjm76naFUre+TXU9BQhMPnymkKDadKFh+7ULz7OEvcb5q9qEcx0LbzWi0h
	hOO47w1dg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDUdG-0003fM-Ib; Wed, 02 Sep 2020 15:25:06 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDUdE-0003eZ-5H; Wed, 02 Sep 2020 15:25:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id 7so2699353pgm.11;
 Wed, 02 Sep 2020 08:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=9egEgwHbell+Vp+FzaRF5HQxPX8jduHhbTufKmGyrCM=;
 b=mxVwxBdbeCaRpCy8dMALx19AWZCNbqDvFiqlOKHGsaWAFlLLVNCLuBJyoOt/Pq4a4B
 kPrBcUCY1S3D1P1/0v9mtR63ullGPIoZ7ui2JsClIAmwOpZXebJuwzoKld7esZVgwIHd
 Tz3vUTXvsoSQDGGXLj9VV1hm11tx7pCxRJn+c15Cm0gP4WaLBKJ7OjWyZPxejLY6ti2a
 qFwsx6f1R2QO0s7IYqexyjIbbxhUjjEoY71vM8HcLVxAF8/hgfW4bOut19EgDQKd54zf
 a/y++XOFDSFm037j4fqvFuNUP1yPvs7wPsuszb+JYI7vpqaxeTWrQSOMCxrM8eILYHno
 SWfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9egEgwHbell+Vp+FzaRF5HQxPX8jduHhbTufKmGyrCM=;
 b=ZuPRrEBSWpKi0zuPWAlIZNDgm2g3CfU3mR5ewUhUGVOwe4t2zSbYRy+TUE+FTrC5ve
 jgpf2wx87tTttcjXCL6yp1c0nmdbM1QQdGHWxxO39t9U1IJpLDRz2fgJALRM6yo8iYrH
 dvjxavyoSiUvQYgcOIy4R8f+i32LPKbaa0eFr4RBGI+e72/jpUM9nAmn5k5pFnNC45H4
 5nsrMJYeGEiA3l9hSU6plCV+ebr08G5+jHFn6080zVXcIj5ljfw2E5QfQJrD59+QTf8n
 UXbaWqoSqEGvrK92FQcykAZX1d7S2ih9zcK+CRlJxfwWjb0C8acac7rl5YgTjmZKZLnK
 Lq7Q==
X-Gm-Message-State: AOAM531iNoU9rbd1EZiK2wFzNHlcl7Q72avONFd6XYfpRgNRvKAhzaQ6
 8seWfGR/DLG5WHZtWyMUkEo=
X-Google-Smtp-Source: ABdhPJwpzMqqhegc92irnbmZ7DqXPb2X+KXRPw2ICETQlHugEduxoNrNbfoVAN6znE19G8LcmHVMag==
X-Received: by 2002:aa7:9427:: with SMTP id y7mr3705007pfo.12.1599060301995;
 Wed, 02 Sep 2020 08:25:01 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 p68sm6147744pfb.40.2020.09.02.08.24.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Sep 2020 08:25:00 -0700 (PDT)
Subject: Re: [PATCH 3/9] i2c: bcm2835: Simplify with dev_err_probe()
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Michal Simek
 <michal.simek@xilinx.com>, Sekhar Nori <nsekhar@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Oleksij Rempel <linux@rempel-privat.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Peter Rosin <peda@axentia.se>,
 Wolfram Sang <wsa@kernel.org>, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20200902150643.14839-1-krzk@kernel.org>
 <20200902150643.14839-3-krzk@kernel.org>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <7867b520-950d-aa8e-a7a1-f3590abb98c6@gmail.com>
Date: Wed, 2 Sep 2020 08:24:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.1.1
MIME-Version: 1.0
In-Reply-To: <20200902150643.14839-3-krzk@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_112504_225011_972BE0F3 
X-CRM114-Status: GOOD (  11.92  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 9/2/2020 8:06 AM, Krzysztof Kozlowski wrote:
> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and the error value gets printed.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

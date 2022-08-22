Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F0CEC28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 18:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OM1ufzJ0HvwZzh5QgjdKCcUqiLEGIbfGJ3DU1xcV2vk=; b=RVmiTDZs2P8R0j
	5kpXr5vnFGtM7JHnwKFpwdL1F+QQMy7doSybfx6ALd7SCuzZFvUS5alUlqLTM3QaY5vJ61HteigO+
	2RbPFRzirQ2RCkJjrgYD2ttF2Gws96jgPTzz+oXkKtpzKRDma1qAGpsYCTMWXlS9lCmGB3QRvBaix
	S8TnpguKMIrHExqYbcED+jNiEAAYce2DAJCYPCRYVh9V8ez1v6l3vqfF4F1Eq7XsJusqAz5u64wCD
	UwgQzb3YCcOjSV4ghALDn5FP23jOu4hjN5kJbOtkBe80KKLJbFhJF7GvKre2e9jhosXXVrIs+l2Lm
	ACWBnqOEEHY+LzAw0aAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQBsY-00DPO2-Fe; Mon, 22 Aug 2022 18:10:26 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQBsL-00DPHi-4x; Mon, 22 Aug 2022 18:10:14 +0000
Received: by mail-oi1-f176.google.com with SMTP id t140so4305472oie.8;
        Mon, 22 Aug 2022 11:10:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=e9AqIUIO9u8Q0cx3y6LQnMaSjH/c6l3ApVpiGp13j3I=;
        b=SRmekgs7WsaVj3P5XKXhL3SDn/XqsLNEXYAxAEvzjKyd72KgE1zOs2QzvOr+5aiJ5X
         McujlQD2vJA7RxctxBH6Wc5AcMdtLMPAKONYVZy4xGN5a4VK7uqJh4j2ywJEp12wXfyZ
         fPrnw/nFgkdBnIOvMntXanN5kTjBjodNVU0pMNjKVFunt0T3igVttzLtdstgkSKFQxlQ
         YQTEkO46mnCqC/Yt67MUkRjrOFegXI/htejbFJqFjCBrks9zda4dUFIFZljkO1vRh6QQ
         +/k9zMU/LtIlSAoK6KkbJVOTrW2PPm1WmqX6hMi5CTOWgpB1s4ZWY1yWpzL2yh7gwS+g
         0mSQ==
X-Gm-Message-State: ACgBeo1zr/nXaHrysrz8JxKMUMVu00jQJ2Hb7olOSiaFFPr66oAv0SxM
	eEWC8q69a16HEvijb56EJg==
X-Google-Smtp-Source: AA6agR5SfzObR/DqjpR5Nv9r2XhuYAidUeM2j1ygw8Boxdz67jOhUkfg0GXA16CsuluH2kvzhF7wLw==
X-Received: by 2002:a05:6808:2d7:b0:344:a080:7e8a with SMTP id a23-20020a05680802d700b00344a0807e8amr11157992oid.10.1661191811700;
        Mon, 22 Aug 2022 11:10:11 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x20-20020a056870331400b0010c3655967csm417357oae.40.2022.08.22.11.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 11:10:11 -0700 (PDT)
Received: (nullmailer pid 85043 invoked by uid 1000);
	Mon, 22 Aug 2022 18:10:09 -0000
Date: Mon, 22 Aug 2022 13:10:09 -0500
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v3 09/19] clk: rockchip: Add dt-binding header for RV1126
Message-ID: <20220822181009.GA80526-robh@kernel.org>
References: <20220818124132.125304-1-jagan@edgeble.ai>
 <20220818124132.125304-10-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220818124132.125304-10-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_111013_235251_2BD245EE 
X-CRM114-Status: GOOD (  19.09  )
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

On Thu, Aug 18, 2022 at 06:11:22PM +0530, Jagan Teki wrote:
> Add the dt-bindings header for the Rockchip RV1126, that gets shared
> between the clock controller and the clock references in the dts.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v3:
> - update the file name
> Changes for v2:
> - exclude from clk patch
> 
>  .../dt-bindings/clock/rockchip,rv1126-cru.h   | 632 ++++++++++++++++++
>  1 file changed, 632 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h
> 
> diff --git a/include/dt-bindings/clock/rockchip,rv1126-cru.h b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> new file mode 100644
> index 000000000000..cfba8226ded2
> --- /dev/null
> +++ b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> @@ -0,0 +1,632 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

Dual license please. Need an ack from Rockchip for that (and not just 
on this one).

> +/*
> + * Copyright (c) 2019 Rockchip Electronics Co. Ltd.
> + * Author: Finley Xiao <finley.xiao@rock-chips.com>
> + */

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

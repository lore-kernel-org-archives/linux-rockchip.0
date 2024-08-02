Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6A58C52D71
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 05:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKzIUpBAxG5XRN7kcoDzbEAd32xthA3uSNGvVuXlws0=; b=rnRdLWKJ9Rlv5D
	casUo1Cxz16mAJ//4u37CutJynAQvv2/kZd4srOv0auo5LwPjkqm6lRycuOs4MhdfAh1nbPjSUzUf
	QgY/UVoKUvJPNb1j4OMZVhCcKB8p7GMy0CAGNKJoD40QppQph9uYFFkxgpmXB9mhtc1UcY6XWEPC9
	mzNQA+IAFhyse/4f0H7CsJsfMAis6NBVHF7ZJXBwnwUumwSiLhk6EYm62fTXmp4IjmBp4I8cN0BBC
	Sp4EgYFePOzce1yu0dJqsOSs6TyiflsFciiVq75mDCUVWRyIZ22WRkoNYq4M6m0WJZOjNJFMvYrQQ
	f0x5NcQImrpIUzJr1e1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZkzk-00000007iDl-1DmE;
	Fri, 02 Aug 2024 05:38:28 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZkzh-00000007iBo-3cRj
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Aug 2024 05:38:27 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-428141be2ddso51167615e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Aug 2024 22:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722577103; x=1723181903; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DfeP6amEbFO01B4Acz+SaLNxYhMl+/N6xqPd9wmuVYo=;
        b=NYYuB3Qi2T2dkCqntHkw78u3QbhbTttLVsMa09rfWH38bHV1PCX+rMJLXuNofxuTo/
         Ee3wE5zJqgILXIjRyg16Un9C6MfZbD3vlfxtstlbvqiQdmbXq071E217thOG2uFvKHzU
         s/CoUqwvoXr8aqNknafIvgYQSADTABTYq5CZA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722577103; x=1723181903;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DfeP6amEbFO01B4Acz+SaLNxYhMl+/N6xqPd9wmuVYo=;
        b=MqRp32HGaT5Qw1x+qcX2CwBiPnB/gdkzNRdZGoRK+/6t85dQcT5hyPLAbtuVcSy+3o
         zmGv4vRHUpaQ9NCd6d0ZtG7aOmV/NIMWshgSG8gpv2C81xC31w3m5cYVvYgJzRzEmFTp
         6trHRlz4kEzXRc/oWaU5nEt0KL3ZVWZP0y4ydJhuzzQ8ywuwHQTrT2MNMNe7BPIBSO5m
         VXkoNQlq/N+5dY1xnoGr43GfcRI93hRu/v7CU5vFBiaVO5pt+PMYh9uE/LvIeo3m4FDW
         BB0zrZEPoGczwmprPlylmVeIcV1ULb12RQPcs1pN8woanSxQTHAQ6LCbTAeXDoAkgjs7
         V0xA==
X-Forwarded-Encrypted: i=1; AJvYcCW/WfUJ27/LAMk4qn6Kce4ZSUIqyulmZ8vLN1sxa5ACkyhd0BXdRlF21RlEKj9nbpCzs0bl+kbn4wgcD51GaxvJI5PskIEpCZDvDpgFQNTrHa/b
X-Gm-Message-State: AOJu0Yy4vuhn/j4BpFe2CuIGVGBtSavd7a6PGb/hYsq93a0u5vI6i+wc
	G7T5SiLBDnGl7gQ0qp2uDrLVv7YJT+PRM1eG+EsJwcQKW+UUdcO1AUJJkX6vUg==
X-Google-Smtp-Source: AGHT+IEejV9gHMncaZ3o/uEqdLFU6pJXfTAhrguKl3WqsWQrl6f780k97r/VhDfVH2wQrwxF/xsUbA==
X-Received: by 2002:a05:600c:1d20:b0:426:668f:5eca with SMTP id 5b1f17b1804b1-428e6af76f7mr14366225e9.7.1722577103013;
        Thu, 01 Aug 2024 22:38:23 -0700 (PDT)
Received: from [10.229.42.193] ([192.19.176.250])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282b89a946sm81037345e9.6.2024.08.01.22.38.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2024 22:38:22 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Jacobe Zang <jacobe.zang@wesion.com>, <robh@kernel.org>, <krzk+dt@kernel.org>, <heiko@sntech.de>, <kvalo@kernel.org>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <conor+dt@kernel.org>
CC: <efectn@protonmail.com>, <dsimic@manjaro.org>, <jagan@edgeble.ai>, <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, <arend@broadcom.com>, <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>, <megi@xff.cz>, <duoming@zju.edu.cn>, <bhelgaas@google.com>, <minipli@grsecurity.net>, <brcm80211@lists.linux.dev>, <brcm80211-dev-list.pdl@broadcom.com>, <nick@khadas.com>
Date: Fri, 02 Aug 2024 07:38:22 +0200
Message-ID: <1911198a4b0.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <20240802025715.2360456-5-jacobe.zang@wesion.com>
References: <20240802025715.2360456-1-jacobe.zang@wesion.com>
 <20240802025715.2360456-5-jacobe.zang@wesion.com>
User-Agent: AquaMail/1.51.5 (build: 105105504)
Subject: Re: [PATCH v7 4/5] wifi: brcmfmac: Add optional lpo clock enable support
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_223826_187669_B8CC6117 
X-CRM114-Status: GOOD (  10.74  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On August 2, 2024 4:57:48 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:

> WiFi modules often require 32kHz clock to function. Add support to
> enable the clock to PCIe driver and move "brcm,bcm4329-fmac" check
> to the top of brcmf_of_probe. Change function prototypes from void
> to int and add appropriate errno's for return values.

Sorry, but this is moving in the wrong direction. The reason for changing 
from void to int was to propagate the error up to the bus, ie. PCIe, SDIO, 
or USB. Anyway, I reworked this patch last night to do just that. Let me 
send it out to you.

Regards,
Arend

> Co-developed-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> Change-Id: I21bf9e21b275452369dce1f50c2f092eded6376c
> ---
> .../wireless/broadcom/brcm80211/brcmfmac/of.c | 49 +++++++++++--------
> .../wireless/broadcom/brcm80211/brcmfmac/of.h |  4 +-
> 2 files changed, 31 insertions(+), 22 deletions(-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE7C5C021A0
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Feb 2025 20:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28IeHK6/fHHQIpfOYSOD73D2WT7ODMxVd33ykyEl+uA=; b=Ul4xath6UyTUsc
	RXC1TtgqGdV6Dba7k9ILHy4ZDXVBz+T6RMfIaKuooGNuFlIS5a86YnsFzEdN7bNJFfXbI1S+qXh84
	yW/wH1y5okgJeWhgcqe6NYncl/oaYOqJ0guss9wurow5ZrCQUu7aDJSfLXhFf+liQL6wkUTZbkq5y
	OnTfLsZFRXMfISevmeTgKEBlWsWd5ceKs8zh4dCdj7gtpWmhZk5xgRxU5FsFtvSq+dLijYGxT5yca
	sF8JmKz+TIf8Q5lJcuDK4D/8x4EZVYPzxuWUAEs9Jw9E0Zmjh3enukr315Mq2g6XdT/Hn1CMtEh0R
	dx/8y5b7zBtdWYJgmKzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiJhn-00000008pea-0CPg;
	Wed, 12 Feb 2025 20:51:35 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiJgK-00000008pI0-0xWA
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Feb 2025 20:50:06 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-43938828d02so205665e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Feb 2025 12:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739393402; x=1739998202; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=05bFiLRqtjieBdQP28ZStS6jjJuxslhK7B+dgz1ufHY=;
        b=zuRg+7YjP1kL0Hba2QhgCAnjIO1woaFhtxPfvBUX0hEhtxxjpwGUmOocHvr3Q/mcVm
         QK+nOCEXeuMm3qOWvdlg+laTwlwKhYUJrfubYbFUMHYpfgr9d5NRmf89VnSTpJI49vrX
         tr6nhGvri1BSwZ/ATnVIBWNFLqaIphz1SO5oF3pt29ISy3CGOxq5c46XQ0dsmCAJ2p3u
         4O04acAvoedXV4Xtgkmj3WFG+ZhfgSgXkXgJ48x23YKQgBAbVVdK6To3cbzfhenfux2P
         n5yAsYVkpZ9qNsWGo7gBBE1LP8XF+7YDE+8f2AJBUwb7ljkxGb+UXHJFhXnSMLkSj+WU
         sxFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739393402; x=1739998202;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=05bFiLRqtjieBdQP28ZStS6jjJuxslhK7B+dgz1ufHY=;
        b=g9KjgxVDXx2dWUWytiFn8oPKLp2EfjPoLDYsMNzoGR/Bgq/aOr0Sih9gBXQVM8h+Ut
         bRPS6mSejBEPl6+fctNl731H2J7httrGYBlyLatDv2P9+10zpwuQo/Ps30gOqBydW5kF
         Hqd1sgKiYID5xrppp4q+5kEDoiCGPMDnEVFAkVYlXs19ee1s3uRt+/ZEWNt55hvjDMQp
         zLQnMzNKE+vhO6McojbRB5F/tKDwQ4xtnDZCQXTasIBOxYF3FiwkE2lm2+9GRJkKD+BJ
         PfZRRov8gjxWfNZfRyWooLyLwIbsJ5FJjR9EcmPwHAnce8xGheL9cJiysqBJwjhKoGWb
         wnyw==
X-Forwarded-Encrypted: i=1; AJvYcCUqsmAxCQ8vY2Y+5xOlthxwYjne8Dm/pEkr48xFy2zqBemkckiqAQJdMC4RFJF17FTH/iwN+JAI5LOKwwNXEA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyPTOWlbsR5/f1R4rClv0uKq2hejMNRYbzpBTpd74Z5CRt5udFX
	MI0s4vtr5jK24F4C0pGhRfRJfbSqz1szi+zq1meJqKwFg50+dfucV+XFD9ydi4c=
X-Gm-Gg: ASbGnctji01N1fhheXPjWCwet8Af+m72hKnd96qCtxXsb8Hv2chghzq0H4aU6vDM2JU
	2ik/PBMKh1wxMtNzX1SUtMrhhfG1udGzyC3xDf8mf9gJgWuqwsgT7iM3DWZI0C0hB7tgQD+i/8a
	5DhvIFqts5yRaZgoqGbph+siGAbXNiB6T+xyVp7oEUGbf8T5/aFmAvSy4f6F/rJnr1lrqwl6Qrc
	c+HX7yOZibkKIY8HXUPh++VLcyUB6o6b/2h3lgx8eAYjHb5lSNn+zMq26R+O2/thxnTKpeodB1S
	iVKeS/96pDBFwRDGFUSfzqEyCWWeqRQ=
X-Google-Smtp-Source: AGHT+IEBtbJJPvZYtnqI1EcUYSzvnE3bHzpiZAK+Kj6ubquz7Vmwq6Ph8AWnkEWgLrniziBTqXUdZw==
X-Received: by 2002:a05:600c:5103:b0:439:560f:e7cc with SMTP id 5b1f17b1804b1-439581bfdd8mr18910825e9.6.1739393402471;
        Wed, 12 Feb 2025 12:50:02 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a056151sm30461495e9.16.2025.02.12.12.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 12:50:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, 
 Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Huacai Chen <chenhuacai@kernel.org>, 
 WANG Xuerui <kernel@xen0n.name>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 imx@lists.linux.dev, loongarch@lists.linux.dev
In-Reply-To: <20240717-anvil-ashy-544e80a1317c@spud>
References: <20240717-anvil-ashy-544e80a1317c@spud>
Subject: Re: (subset) [PATCH v1 0/4] Removal of non-existent DAC nodes
Message-Id: <173939339997.59416.11108011581545463665.b4-ty@linaro.org>
Date: Wed, 12 Feb 2025 21:49:59 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_125004_285974_2EA1B15D 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
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


On Wed, 17 Jul 2024 10:37:52 +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Recently I've been getting triggered by abuse of the Rohm dh2228fv
> compatible to get the spidev driver probing in Linux on development
> kits by employees of various silicon vendors (like NXP or my own
> employer). I had a look around the kernel and all users other than the
> original Clearfontz board added by Maxime appear to be similar abuse.
> Drop the non-existent nodes from all of these devices :)
> 
> [...]

Applied, thanks!

[3/4] loongarch: dts: remove non-existent DAC from 2k1000-ref
      https://git.kernel.org/krzk/linux-dt/c/854a080f0b73ff966a813ec2dc53891831daa28d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

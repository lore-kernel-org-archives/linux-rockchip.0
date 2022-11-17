Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66553C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 09:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hu8CCmjxdmavFVq+YlbRnRHjU4IxNxe36kEugbaCUy0=; b=FwfeaA6Hs3/Ah7
	4vWZgK3OZD8ieuCV1CohVL1MQxlbOIIdY+NFyGrSrqcgCrz33B7PxhU9cV779F8WlfTHFXpX3d1cx
	S2MvuODkiRsRGC+f2WVDhMJaRSCeMXajoaEVs4lyQMFQfTic0azqBWMuyF7IhrNHtfnjX/iZ9OvJZ
	wPSAWoMSklRXp5swNic8bP5gUZblCsghVuwuhNeWgRfjNt5s/HSHPhspY3RS+p2r/f9PHeFFP7WZg
	3lt/NIRHolUa9tzdRbQOp7U+HkjM7zy7T+7EBmjNo8iK2GRNFlv44b6Yw4T0SlQFPddpk/qph5tEV
	DBfMG44j21bB5wDHbg9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovb3f-00C1QJ-FJ; Thu, 17 Nov 2022 09:19:43 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovb3d-00C1Oo-JM
	for linux-rockchip@lists.infradead.org; Thu, 17 Nov 2022 09:19:42 +0000
Received: by mail-ej1-x62a.google.com with SMTP id m22so3465693eji.10
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Nov 2022 01:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tE554iAjQ7h+EY98fG7iQCp1+WR6gTDY9R3izQaYbSM=;
        b=RJhyPa+0sTKDvMNQhGaUZE84gU7cSwkIKl8kF/HVjWq5Kj8MIaUnjuF3vLeI9zmqt5
         S4s2/BXDCeR0toJbwvrndR8Rf5UdjyCQum80hnZc7NVvKmoSa674I2uUdmUvlens85Oh
         4IEcYGdVLztzhbGbHqk1ZEtp/QFDREZj6FTRUqRKGVlXFCjQljGRgSSASkya/Vzc8HYK
         VTCncgrg+fqLRoFnVi4HvY7VC9MQCX+Tm7avrETJiBdVXAgiE7WBypICOwr5fpEwMgS9
         eeomFvvxoF/uVInIxAoNemvxQI3VF46GvnxUZznQv1ccf6lqUT3r9FGZ2CCBL3f6760M
         X6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tE554iAjQ7h+EY98fG7iQCp1+WR6gTDY9R3izQaYbSM=;
        b=DXwbWl6naORH8MM+7DABZa+40PWvzEIFH5OkGYp1UeVCKkIpKvhQacvutYHhaNWqaS
         YIefnRm4H0n826EaJMGCMxvtT0yi8UXnOPui6/MqWc72vq40ibGFOO3Lo+2OQdaqUjd+
         7I+UmXl5F1ZsGS3MA7wnEZfcJzrlMZ1sCh6kku9rD+tQy4fB4rGM1IVfKjaMshc7JH9C
         dvKXQ019tkxBHUYgt4XIlce7+DHh+r2fCINgVi/HJeRwdo0V63sMSjp3WNdfQqo2zLCi
         3FdEjh3cpjUR4y7juQewPTEsHsAbMnh+d2iUFYQVaU5O2ldr+mwTr6IymeFR58Bu00NZ
         nYKg==
X-Gm-Message-State: ANoB5plYg9KqkxUFcWGKHNptANsqW4dMnyFaO5yCjDsQqepOdwS/an99
	UEZh4zrvAKBbhU5HGpKZw7iwFTqTC6jsJYpyXfiKUQ==
X-Google-Smtp-Source: AA0mqf5VrTpLOj4ZlFDKaIXtnaXLgZ0CYm7CAAQQe4DXP0PzbRK8eD99DVN0IU9z/RBBDpyRyd9Mayz9bYXq1N47AjA=
X-Received: by 2002:a17:906:19d2:b0:78e:11ea:8528 with SMTP id
 h18-20020a17090619d200b0078e11ea8528mr1440243ejd.190.1668676778935; Thu, 17
 Nov 2022 01:19:38 -0800 (PST)
MIME-Version: 1.0
References: <20221021172012.87954-1-sebastian.reichel@collabora.com>
In-Reply-To: <20221021172012.87954-1-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 17 Nov 2022 10:19:27 +0100
Message-ID: <CACRpkdYKdTWAtW_dhCgfja4pNZqNh=ixZ0H36bpFj=x_3t2zXQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: pinctrl: rockchip: further increase max
 amount of device functions
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_011941_663431_F3FF1DE3 
X-CRM114-Status: UNSURE (   7.52  )
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

On Fri, Oct 21, 2022 at 7:20 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Apparently RK3588 pinctrl has 13 different device functions, but dt-validate
> only checks for pin configuration being referenced so I did not notice.
>
> Fixes: ed1f77b78322 ("dt-bindings: pinctrl: rockchip: increase max amount of device functions")
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3BA5C43217
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 20:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2mSiNuEg7wuBwbHnnM1rFD5eG6uFj0eu0RoHyvWUFY4=; b=NeQRxU4NdDvwW5
	D1JOhQh8OtSmQTykHFMGeQZo/eJGMSvo0iObvRl0pXSGgsm+ivzwG12ae17N9byhIPMDO2jdMVpnF
	MpDHhlDpS7qxURrQimGIuT3zlssB1mdGmqove9mF/qVixQcbcT7xOgQO39RLpyYeuh4aSVl6EJH4w
	Lpo4UZrLsvsfseXKlhCFNriI5MHkNVvaWIZzWQUCMbB+X5xTQX9EVUsW3PeeQKRsbQ9gib/hPROrw
	lLRUiR5pejtDwQLW2Nid6yTv2qpqTaZejZmfebjoxKq/eawkQZbcV39V7Ap5LjGkUJMO6L0/4GQBT
	trUgzgd1rXVUqzl82epg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0qOE-00Auc0-Hs; Thu, 01 Dec 2022 20:42:38 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0qIr-00ArAU-F9
	for linux-rockchip@lists.infradead.org; Thu, 01 Dec 2022 20:37:06 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1442977d77dso2384721fac.6
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Dec 2022 12:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E1Ndzf/70Cu56cOOMzXW9Zrj43ga/wYG1emkxeajc3g=;
        b=JamvVIVtdsoGlM+BOqJP3KKa4sY9Z5rQ7De0WenRyizpkYEEk4wCg7ZKuy6I54HWN6
         FuTkSDTgoeLu0Fmg2HK9D5JlBOaJ5KXePrLfca0sM0oUrbrttBiY2TUTcEWsQpVNtyhw
         dP/XMM43cvFfbuvw0RX2HgAWqHvc8sHpZvIJ33Gzyd5p5AuiboDAbzG+808agDoAG/Zn
         kUsbuEnzuNddVggXtQs2gPexNdGMI5mZDvEz02VdjoJaOOjbrJmtkxreL/xGKpK3oLXB
         qhjTDTIj8ndLca9KmLe/YdPnUtNALgG20ijUBOpQos89OpeGmaFSzwDYEi9TN9OvMrNY
         Wilg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E1Ndzf/70Cu56cOOMzXW9Zrj43ga/wYG1emkxeajc3g=;
        b=dbgaA6MNkePdW2EiHE/w+CBSzqWTjpTMWgiIaPLqm3a7Q0TUQAWao3CDJOz2Q7w2V8
         iJm3wRmvKX3Haav2GOnD0+W+wYOjlV4GIbnTaA5zC2/uSoy7x/JNsNloB9gT1ujdh9Ri
         8Z0Pn53aIP0UE7qdjDRXNsJlecHsd3GvN0ksnZGj0sJz3BjQrexffzqjIIuRKAfr7FNg
         vYZiNny4gyQZ0PrqzXTf2y/l7D9B6cdDqaDjaUMdb6OcFoDrjnLj7TTxhJbq2JY05oP4
         XyNpJay0GyhMWvitYLz3ZmppZZ3gTofIIjjzZBrY2Gb35ocWiHR8O6TsMX8N8u23xKN1
         OgAQ==
X-Gm-Message-State: ANoB5pm909+kK7EXvO2AMy95/7/aIzrHIztnVPqjRPZOCIHW/EXcdILN
	dhofh1k3LioN8HmqLUXVhhdDa1PPHb4=
X-Google-Smtp-Source: AA0mqf5Fiavuu01H6gA0wqobdOMOd9vhUDu1vgG+v78Y6oCz9iMPw8upmMYGBTKyEIYiRQMuK7OLJA==
X-Received: by 2002:a05:6870:a44f:b0:142:87f4:4140 with SMTP id n15-20020a056870a44f00b0014287f44140mr30818833oal.235.1669927020321;
        Thu, 01 Dec 2022 12:37:00 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020a4a3754000000b0049fd73ccf72sm2142142oor.42.2022.12.01.12.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 12:36:59 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] Miscellaneous fixes for Odroid Go Advance
Date: Thu,  1 Dec 2022 14:36:51 -0600
Message-Id: <20221201203655.1245-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_123705_547801_3C03FCE5 
X-CRM114-Status: UNSURE (   9.02  )
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

From: Chris Morgan <macromorgan@hotmail.com>

This series is for a bunch of trivial changes to the Odroid Go
Advance to clean up some errors in the dmesg log and make it
easier to support with alsa ucm.

Chris Morgan (4):
  arm64: dts: rockchip: Change audio card name for Odroid Go
  arm64: dts: rockchip: don't set cpll rate for Odroid Go
  arm64: dts: rockchip: update px30 thermal zones for GPU
  arm64: dts: rockchip: Update leds for Odroid Go Advance

 arch/arm64/boot/dts/rockchip/px30.dtsi        | 33 ++++++++++++---
 .../boot/dts/rockchip/rk3326-odroid-go.dtsi   | 41 +++++++++++++------
 2 files changed, 56 insertions(+), 18 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B41D8C54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 17:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mrouah6hoYyzR+rkXB6XqNp+wKcsk3f787ds6aN2t1w=; b=y3ff6LJ9nmY5Vl
	EV+ZiBRfsPWP5317A6h63Rzlm0F3ZGBrw7cEyqgw9NnAWyBnPCE6gACSPcBRV7KAcNETbCtmt7cOo
	TZX6EyUP6mPd3+LnbChMabjUl1VBX3g9sfTBmfRRW42e09r7f6Ol87VQUO+SIy0cqMql6JsFHB1/S
	BMV4t7Raz7490wA098+351o9E70yNxpblel4dU9rP4VstT4QWK5nMqP8KX6muzxuoCkB77RwNWsD3
	W78QxBh+IEk3zPNDJG+8pT6xjrBhpxjAFo/XdQ3xYD5G2In4Iq99FoNUNuE0sf8WfoaGKjOTiaAsL
	PJrUBf/1uEeTS95gGTeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooUC-000000019N2-0Dyy;
	Mon, 25 Mar 2024 17:51:52 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooU6-000000019JN-0huO
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 17:51:48 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3c37e87756dso2828055b6e.3
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 10:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711389101; x=1711993901; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/r8vljI0U/6T7iQFumI3En0jSQqfhVb0aBnuodSXerk=;
        b=JamrjxS0pyH9CsuuijQiw9Yryt4FXiKtYY1IMaxOpBhQNjqy2q/WjlSHgcqzxpfT5X
         8WLPh1RuJjufi5rWUb0BA41D/UwJeD01W9GMy0O1YmB6jgMjV01WcT8UTd5p/i715lAX
         aUIppMl6KaBuQIBz+7yoJ4pOloejbHubp9yG6G6DrjbwM+YzuSzdVEgS7nJ8jXYdGCUb
         C25+AhhvY+Gih6LCS1YitYSadREQxfudtoOh+Zs6kFk6ltyR5uAz6H1sN8EkIa9UMwc2
         HFnmuzJNwnTlF5bWLVs+T1n1PMZuE1gkM0p3Vo3iEBz4tpUGI2yMJDNBr+cEbyHB7+Jm
         anFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711389101; x=1711993901;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/r8vljI0U/6T7iQFumI3En0jSQqfhVb0aBnuodSXerk=;
        b=chshvlOHs6Tnpcf8LaTqvWYOMoZ1UdHjphe0NC4opyrOU/8XdPQgMkUm0Geqa14UAL
         nbswFgLqZ0DG4DRN28mtoDD3iwuirWTXmWGhjdpMJccJfZ/qOrnVBMB3LYI79MSAMXw1
         6vXE8jjPLeiGne4FGJYJDGGsDhmhFnY3ltMIbFNcXYiXQr3XjpkJiu/xhMYKLtN2yUN9
         xiYRmvq5seyKj92DcK/HvLpSRsjJBQW8oFHVv3oheYR/PclbetoChDFAgIeRgHK6+IZc
         +KTlW5dPCbbc5HSGjvSkv9U4xKmrzoy7A65mvkpt0AE5XT5lqvpt/f99PkehvPMCO+mp
         JH6Q==
X-Gm-Message-State: AOJu0YxRvYG7dhadlab/99I/TM6KD0l1OIhzfuKNU5pTnM6xpTJUkgD4
	tyu0XTEidD4Qe4Y3YkRrhNYpFg3ajuleX+N/V4d9nyrtIjLlHtUUaJbeRJ/N
X-Google-Smtp-Source: AGHT+IGQhBj0/vZKeDLja/qFooAeE9BRme6iskuqmtEcG8UmUih+LrVCq8mb2vqEH9Xyw9PtPAys9g==
X-Received: by 2002:a05:6808:1209:b0:3c3:b392:4b87 with SMTP id a9-20020a056808120900b003c3b3924b87mr9100054oil.53.1711389101079;
        Mon, 25 Mar 2024 10:51:41 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u17-20020a056808151100b003c3d3fc607csm212505oiw.26.2024.03.25.10.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:51:40 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] User Requested Fixes for Powkiddy RK3566 Devices
Date: Mon, 25 Mar 2024 12:51:29 -0500
Message-Id: <20240325175133.19393-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_105146_832292_F041C2F6 
X-CRM114-Status: GOOD (  10.99  )
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

Users have requested fixes for Powkiddy devices to help with some
intermittent WiFi issues by adding additional properties to the
SDMMC2 node. They have also requested that the model name be
represented consistently with both the manufacturer name and model
name. Lastly, there exists a second configuration of the RGB30 with
a slightly different regulator layout we need to describe.

I have added the new/additional property of "chasis-type" as well.

Chris Morgan (4):
  dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
  arm64: dts: rockchip: Update sdmmc node for wifi on powkiddy rk3566
  arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
  arm64: dts: rockchip: Describe Alternate Regulator Config on RGB30

 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 30 ++++++++++++++++++-
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  6 +++-
 .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  |  4 +++
 .../boot/dts/rockchip/rk3566-powkiddy-x55.dts |  4 +++
 4 files changed, 42 insertions(+), 2 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

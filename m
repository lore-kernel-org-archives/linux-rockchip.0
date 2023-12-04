Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DCF5C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 15:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K8n2Z639sxVomjmsoLvpqcBdeS4wpOMm33KhYjpUD7M=; b=l7D41XL00jgAjp
	t35gWEjVJ2T+Y9K91Ty60ISpjO3foAfn3qIuQGWJtOiGtGQvjw/2n43t0le3SRMgxwyHsCrll0xkc
	QkWQrbjKjxxETmmex5xCHXAvnjNXXrcDy8nZv48aMtJ8eiUXbmCUdvNRH60M80iGdJBmQShvRRLnC
	i1ILnIQ3+h45IUxiJbiVCfknFRJkweOYU2GCBE7g7a/QX7yMd/8fQ80flYJCdOMBdtt0YbXmHv3Y2
	ewSW4F54uFEY/G8LOlpB9cA4svCeAefNQdGIomiRpe0QXyMxET5CawNUqFUELfjBWRg3x5n+gG9uK
	vaz//L7Db9lb+AAy0Lrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAzL-004yPv-0e;
	Mon, 04 Dec 2023 15:36:03 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAzG-004yNq-22;
	Mon, 04 Dec 2023 15:35:59 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50be3611794so2861521e87.0;
        Mon, 04 Dec 2023 07:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701704155; x=1702308955; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xqmn56t4S0FY+90Mo/LoUaieX3Kd58AJtohExc/I0y0=;
        b=nj/jku59WYOJt1y/QVPv0Lyogoikyvzv68Q72QlwhDjVNAocHXgJg+Ap/Qo568LY9l
         ATHKc3Kf6y89kjAwvD9VPtSLYADyV7yrtQnBoaeYnjIqSmsKI978qefUiAulP5nRcjU2
         xUS6dIkdIQa9Le3O9UV5+pt+rHIcKvZUA00/Gr8yNpBSrHD7BPIPVCRwWlHnLBZdKwr/
         HXuPb1roBQTLfEXRlYVunkOoZdUhe0JEyA717a+RkmFAxda/1o9lAeHWTtqA0FM71tdl
         MNRd6DKnH+8wPiMVft4PgmV4gZ+vIYxFKUsJcGKKwQpboOM/8KmywhspFQc5s2GoVAal
         Gjiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701704155; x=1702308955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xqmn56t4S0FY+90Mo/LoUaieX3Kd58AJtohExc/I0y0=;
        b=EoPcO5DftkGP7mZEgq/E3mxquP4V6tq0NUK5Ouq9OhD7PK+EmAJp0b7Y1+uJTdSSmC
         UkKTLrSMEBIuaWjSTKzVPdDLvODLoml2WZ3uomLL4VHI1rlCtmMrNBZbn7TxwChx1JX4
         UINKqSDkjDYziaNPRPJlCuezwzXaUGOKGoyrdvZ38badhCH36TcRd5fbFbivycvocbsu
         7rM0UVnU8ouVV9yYrSiB8r+DmKmR2p8z4KqUcGzHeUwBtQFwbLigEY4rVvRT0midnjWD
         +ELL/Ql1T5L7UMXwsYrwXGnjTG1y7Ofy6iiZVgnRJ2rr3phN2ljFpanJBB+ihrN3+e/a
         lRUg==
X-Gm-Message-State: AOJu0YzA0SiD9K6J4iG1iJGteVWw6PzaZEO5LU7hTdAZyypPDTif7tAL
	AZ70u1smhIKNJbp4C9pHKw==
X-Google-Smtp-Source: AGHT+IGBhLtxslcjLGRyx0hVDNS9dk7oEruIspupZ8AqpVd6HTktgYB9nKcGugo2+u7VfHcL6JP/qg==
X-Received: by 2002:a05:6512:2fc:b0:50b:e3ee:5433 with SMTP id m28-20020a05651202fc00b0050be3ee5433mr1534642lfq.24.1701704154631;
        Mon, 04 Dec 2023 07:35:54 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:55ff:210b:5393:c9d7])
        by smtp.gmail.com with ESMTPSA id h20-20020a05640250d400b0054c77ac01f4sm693194edb.51.2023.12.04.07.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 07:35:54 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 0/3] Add power-controller and gpu for RK3128
Date: Mon,  4 Dec 2023 16:35:44 +0100
Message-ID: <20231204153547.97877-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_073558_689762_1E44D4F5 
X-CRM114-Status: GOOD (  10.85  )
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

This series adds the power-controller and the gpu to RK3128's SoC
devicetree - both are already supported by the respective drivers.
Patch 3 enables the gpu for XPI-3128 board.

changes in v3:
 - dropped patches for not-yet needed power domains
 - dropped dt-bindings patches which was already merged

Alex Bee (3):
  ARM: dts: rockchip: Add power-controller for RK3128
  ARM: dts: rockchip: Add GPU node for RK3128
  ARM: dts: rockchip: Enable GPU for XPI-3128

 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts |   5 +
 arch/arm/boot/dts/rockchip/rk3128.dtsi        | 132 ++++++++++++++++++
 2 files changed, 137 insertions(+)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

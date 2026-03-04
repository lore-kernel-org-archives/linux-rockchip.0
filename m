Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22976EDEBFF
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 02:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fgLrc6cVRX2Psv3Wb/RbwQXj7RpDK46Uk30oIq7DB1c=; b=HCGxGXHanhlWpt
	YFucWkA/0LBhspZYM2LLkt0YWstovXqcP9u3dAjn8XIWgjNvElUKOJy3C6x9HvWhGTfg9BAyxxLJB
	nQ0dgMYOvD08D+8NVjL/kalCn/Q4B6SDAjBH4+lh1MF/lTdz/TQyerlIQKqa4khOazwfKKaLFJcvZ
	b/oIUeD43+mTGQESvxWvp6tIzd9/z6R0T5xlMmrbs9y8Sjxe6enA43w8MDXDF9ZPuBGWx+DkJsYaY
	Fe9Enj3/hMzYkftXV4xNgYrlIhL57OCG7EjD0innW4kgAmMh3G68krJnOw6K1LfPmnuLuDDZMkeeD
	Sz1ucRwh6HKE+x9lsYkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxcOd-0000000GKaK-3xAz;
	Wed, 04 Mar 2026 02:55:35 +0000
Received: from mail-pg1-x563.google.com ([2607:f8b0:4864:20::563])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxcOW-0000000GKXY-2cB2
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 02:55:35 +0000
Received: by mail-pg1-x563.google.com with SMTP id 41be03b00d2f7-c737d3a51bdso12922a12.3
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Mar 2026 18:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772592927; x=1773197727; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DugOzDqbwinV7rPcwrpaaCcBBfm3VhhJmZ52z51QrV8=;
        b=FxndjjUj/bZLq1nJS9nTgL6bsGi2y11v5F19UjAW18+wQdGKx/8d+0IiDwtR+1+Vm5
         YmMpvsdF0y1wouTOaAciXZ5FIe/4qhpIdPSH1rA497kxnAToNs7i5ZRGOc7x7f95AP4S
         ECDR7CjyzXQMRbK82e4+5bwHWQil4LlDsTNCA3esHK7bEhD0iljl0wuo7HcTb7ar+MV5
         SRUVTz4vRmbu5T8m1COyO/+Bn82iPWujZZdt2YrHWn2NqabRxE9r60ztIfG3td8KWBUc
         nqZuu2nht7Ck73S+15L2eVVo96LEzmEoDqU6evqewQ9vLlFWv4TjO1N9YZXhRuIZN344
         Epuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772592927; x=1773197727;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DugOzDqbwinV7rPcwrpaaCcBBfm3VhhJmZ52z51QrV8=;
        b=bFD1tqFyiO+IyWLmU3+A09GjIr92QXuIdXDFSDwLfvu5UrwWfAQSd3hTrEH5AYej0M
         8w7TSWdKsdZYr/MNUzDyIQUBILRq0wYo0yuaVGO4kIbZKrdal+RR8mC1GDUCQ1qYYXs3
         Z10UxiQxXM07Kl3yrze251VX+ctcmXp+zleG+0VPKjCcVJ+ZhTk/pOOPjaWG2WGChf8Q
         qMTEDTgHSArMA8ZbuF44x/p7HCusE45u7vOZ0dfFcEd1GwaoUfk6LSVnAtv0kvopxjUn
         iYXr0VGILcxn0S+TytFxT0U+WkBriCbBFTk+mUrGz76cHVOxa6IdSoOQIzfYJMbCsKZ9
         uixA==
X-Forwarded-Encrypted: i=1; AJvYcCXwogLvGD3ICiHrqy1CBC+gLE1Sy8gLb8bTjtQkP+3mv4UD/HUWURKhmy0lK3CY/nXYYMsXVj1DmgYp34FooQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyzX1cNe2JsuW0hDMGuOggn9wyluLZXcRb/B4j0ViiKNTR48upG
	Q9GuZA/J2P/cT7MMheSd44IH2T0EmJaYqQ4ahVZUa+TDgCdhoGMt7UAuARJuR0IVm/z6X3dEZwl
	+Nr2YDeL/BrUtTk7mPipnzN+qCVwIHf7rYFuJ
X-Gm-Gg: ATEYQzyEhL0svhOWc113zUuZ6vV+/oM2og1Nuzl9pdVZ5GsJ8B+ahrjloSKqdj4h08V
	H0SqsdEs2Vp2KxTvd3x9qAO2670ipkikVzaMKsvaQ81mhyx9oZNNd08gfXNi1+Q2um/Xz5FO3gp
	e9pS8KpvjbDbKCf4CmXXJeXHMAcfpMz/xpVVsJQm0GqmZkXdGmM+vAzRucTcvCTpaL+DoBhju7O
	2yoQ2EKoSCn0lhcK7/o29LLjSpDZ2uu7/6SYIUdHi9Qv7PgZDi6nY+JdyXWa4rcyUgP3t3PNYi8
	AzZZjTPFmB13zz0mEzzRCugD8Xql/tmC6v/7u880ZcfNwAZPyij3AjGQA/Fq5LBZar04wZnZwzK
	PRKHxBW/4jF7TgKLbv+idUP16g/JP/pJpox1pWG0bPsja
X-Received: by 2002:a17:90b:1b0d:b0:359:8dc0:428d with SMTP id 98e67ed59e1d1-359a6a531acmr599029a91.25.1772592926872;
        Tue, 03 Mar 2026 18:55:26 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 41be03b00d2f7-c70fa7d59b3sm1374096a12.7.2026.03.03.18.55.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 18:55:26 -0800 (PST)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH V2 0/3] Add support for Orange Pi 5 Pro
Date: Tue,  3 Mar 2026 20:55:17 -0600
Message-ID: <20260304025521.210377-1-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_185528_655867_AB152526 
X-CRM114-Status: UNSURE (   9.86  )
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

From: Dennis Gilmore <dennis@ausil.us>

This series adds initial support for Orange Pi 5 Pro. The network
driver was just added. The only thing missing is the second HDMI port
that is connected via a DP to HDMI adaptor


The series was tested against Linux 7.0-rc2

Please take a look.

Thank you,

Dennis Gilmore

Changes in v2:
- moved items not shared by orangepi 5/5b/5 Pro from dtsi to 5 and 5b
  dts files
- removed all the comments and deleted properties from 5 Pro dts
- Link to v1 https://lore.kernel.org/linux-devicetree/20260228205418.2944620-1-dennis@ausil.us/

Dennis Gilmore (3):
  dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
  arm64: dts: rockchip: refactor items from Orange Pi 5/b to prep for
    Pro
  arm64: dts: rockchip: Add Orange Pi 5 Pro board support

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 376 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 184 +++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 202 +---------
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts | 181 +++++++++
 6 files changed, 756 insertions(+), 189 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

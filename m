Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FC7AC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Nov 2022 16:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m4LeGDjzTjxmKoTYA3zMHRRPOYkl5z6hUXkEQFV3BQY=; b=CPfoBLzkpPUBNH
	lX9WYthR3Ctq+wBPaOQ+0aQXmXupEXSyzeHzsBcyOER021k9zLzB1SCzXc8FTvmQ9t/PULckBT6iz
	gcXgZ1fWV3Xj2tGt9dyxRFLGHRIOC8cPT9T3/MWiDRQUS4Gh3M3+5NM6QMDpQGMrdaTdaIq6JoOBB
	yYI9iTT4RqK1pHlG5N+uYYifKzL2WkgiBCx34qGNjiTf3TTE7UJG6R0Cm8UIUGnvx0UB1hXNiY5Dh
	1NRc664U+x3/zv7deZwqXlWgid4fo6rLhRyEHa1EU2MMMCLZf3ELaupUiPBefUSKUKIwA+j1kWJPP
	WkwfS3POg5Kv17FzMVXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAaF-007E6e-9l; Thu, 10 Nov 2022 16:39:19 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAa2-007Dvv-Vb; Thu, 10 Nov 2022 16:39:08 +0000
Received: by mail-wm1-x32e.google.com with SMTP id r203-20020a1c44d4000000b003cfa97c05cdso2118062wma.4;
        Thu, 10 Nov 2022 08:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JPS72kHKQGCf5rLpmI57VmrB9xABKgUVDzpM2NFF7pk=;
        b=ieZkuqknPgQ1qIuwdL7tqsFx53KlGtnhpSZWz6dyzv+0AX/WN4yTshjlzEsoDn0neA
         j1cshfm7J9ra5YO7QcgFbbYZK1Qd/XoEm7USrlv7gKiTiuQdyrrEvpHPDq1g4wVNWL1T
         tmMjvhI9GCczAPBSWZcfOo9G/EgPgLunGaXWSDErpRS8RHFKafxXJS6lhRnht1wi4oV2
         1xoafM/fficGAsjqcMwQlPQMpM2RHDgSpj5OjhyrliRaCbs3qYn4QM9MEl2g4HWLlrwD
         muIABmKwgDELkyPb57QWLmXVeWK8eepYw9GSr9aqQ85xm7mTsPmyVnc5PqihjVtwGhM5
         lHpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JPS72kHKQGCf5rLpmI57VmrB9xABKgUVDzpM2NFF7pk=;
        b=dWo7kC/zyC8QShYevAIUTQy/yHEBtL+MXbHBmbroOwYKMGTqyP3+6B0sB721Pf55aw
         BJ5Glbp8K6ZznTPWdPBxx2IJNAU46UBxMwFNWqKuuphayDXa7CZ/qBHhSvvex0I0WOSb
         w/AzdJAbkBZZFB7SljfdLstn3RxXolTEJopf+LdlvxpBt1x4TQNQ1i+DNu6pD3A4DfA4
         cNeYN1hgKSq85H029iPYgkgqo8bWQ+dfoXUnsWLSKA0M89f3WG4pEpwHxLxd90Xafs8N
         KrU+uuX8+KhpqR+pCT4slejNLQgKyljjzvlq9MDKwr1IThVnbJfQKYH+vDR86gNqbayU
         RtFg==
X-Gm-Message-State: ACrzQf1hBrL+k1K/KNImrmaTLNrT3/i+h0ZcZNSUHlnFYLGRl+UlrizK
	XtTL7ek1ZQ00I6iNkD7b3BM=
X-Google-Smtp-Source: AMsMyM4kWjP3Ps1lpVM2FnwvJjVD0UIUXoLYdRV7LJzafR4tqCx3dJxXZx4aVFIcbfv9CiCM85nmSw==
X-Received: by 2002:a7b:cb49:0:b0:3b4:b08a:89b with SMTP id v9-20020a7bcb49000000b003b4b08a089bmr43457111wmj.173.1668098340528;
        Thu, 10 Nov 2022 08:39:00 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id f24-20020a1cc918000000b003b4935f04a4sm128730wmb.5.2022.11.10.08.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 08:39:00 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Misc SOQuartz Enablement
Date: Thu, 10 Nov 2022 17:38:41 +0100
Message-Id: <20221110163845.42309-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_083907_081157_A873A8C4 
X-CRM114-Status: UNSURE (   9.33  )
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

This series enables the following functionality on the SOQuartz CM4
module, specifically when paired with the CM4IO board:

 * GPU (patch 1)
 * Video output (patch 2)
 * HDMI (also patch 2)
 * HDMI audio (patch 3)
 * PCIe2 (patch 4), CM4IO board only

The last patch needs specific enablement per carrier board due to the
power regulator the PCIe slot feeds on (3.3V specifically).

Nicolas Frattaroli (4):
  arm64: dts: rockchip: Enable GPU on SOQuartz CM4
  arm64: dts: rockchip: Enable video output and HDMI on SOQuartz
  arm64: dts: rockchip: Enable HDMI sound on SOQuartz
  arm64: dts: rockchip: Enable PCIe 2 on SOQuartz CM4IO

 .../boot/dts/rockchip/rk3566-soquartz-cm4.dts | 10 +++
 .../boot/dts/rockchip/rk3566-soquartz.dtsi    | 72 +++++++++++++++++++
 2 files changed, 82 insertions(+)

-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

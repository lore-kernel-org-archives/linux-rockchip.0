Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04389C77B6C
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Apr 2023 18:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6Bi9HAUjExWfhXjxELJ4wALcpVKhJkfgECjGs2IgNK4=; b=D0ZgH/9hW7X8iI
	+/Fddi83XG1yGl6IIfHIVpx/mHGioyohuDFyyrEV/fERjo5o6ZevsewJ3uBQihyd4Po+eGULy7z5C
	CJLDFKGSOjdrDTXtODuqcN0WmXohk4ysXKN3j+XMzWg17FcY1SR7Aibpb/Xaunf1P1RmeE4H5xnTg
	UiL7vhmTvGWLNKsgVAo3kGMaGyF+VvutjwjnIMIS23Rj4t4cHjDSVri9xz9JNcixxcSttWPMr/YjX
	19uOubmNs6Y8PLnH9+/lEbwD0X7IODN4jCQD6yeK2x58TtYMMp2FrtwYcApMGhC9hkWT2q1iZmhz5
	3/KeiBaz1mpQmvXp24Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkUDT-008EZo-1Z;
	Thu, 06 Apr 2023 18:20:11 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkUDQ-008EYh-10;
	Thu, 06 Apr 2023 18:20:09 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 43FE566031CA;
	Thu,  6 Apr 2023 19:20:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680805204;
	bh=omSz48l0UybTV+HHA8qPpKFIFsAzs4QaGW3QYcwvn5Q=;
	h=From:To:Cc:Subject:Date:From;
	b=UoafeL73oyawyImCqQVOUR+Oz7Bv29BuAR+GZIRkRzHLnog1gAQ8ubMLPLjsiiCL3
	 WyPrhAQxiSwW+kM/no+IX22d1usTnGL+JgqTXuItFXHlIvgpzBik/Ko+anxomjV/k3
	 0+iA1eQ8t77i+ZOwBCGgFJ74278gn/Ulyh4K1w20CLYV+mgKTGfIYVNe0TfYTJIb6t
	 FDjngyE6JCIA7tpHt5PxtBSLlj3c8SCP2Itbwpkd6sKGL7488RwN399WweTc4uXtL3
	 NdM0Jfbe9EuESNwsjKD4f+EvkOjvsya9O+GqYcGcbYsAyy8vOXmJRXxmofTAJDGXxw
	 nSrLzlSMDoJGg==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v3 0/1] Add PWM fan support to Rock 5B board
Date: Thu,  6 Apr 2023 21:19:59 +0300
Message-Id: <20230406182000.956275-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_112008_584492_FFFF3362 
X-CRM114-Status: UNSURE (   9.85  )
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

This patch series enables support for the PWM controlled heat sink fan 
on the Rock 5B SBC and, additionally, converts the hwmon PWM fan bindings 
to DT schema format.

Changes in v3:
 - Rebased on top of next-20230406 and dropped PATCH v2 2/2 already
   merged by Heiko
 - Updated PATCH v2 1/2 per Rob's review
 - v2: https://lore.kernel.org/lkml/20230404173807.490520-1-cristian.ciocaltea@collabora.com/

Changes in v2:
 - Updated PATCH 1/2 according to Rob's review
 - Added Reviewed-by from Christopher to PATCH 2/2
 - v1: https://lore.kernel.org/lkml/20230403105052.426135-1-cristian.ciocaltea@collabora.com/

Cristian Ciocaltea (1):
  dt-bindings: hwmon: pwm-fan: Convert to DT schema

 .../devicetree/bindings/hwmon/pwm-fan.txt     | 68 +------------
 .../devicetree/bindings/hwmon/pwm-fan.yaml    | 97 +++++++++++++++++++
 2 files changed, 98 insertions(+), 67 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/pwm-fan.yaml

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

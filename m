Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20D67C44507
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AP8A+QEjAF/xzbrsiA16itaTX1CutNznNgdml5sRr60=; b=DYnlTlY2bhOyqj
	qo2vf04G8l7qurraLUTuQAdT5cNPK9NsZVdIV912qv0ZkRDoiV0CYybe1OLkprSEDlkkpjoIC36WL
	dG01Ka4omUWLNOYILx/BVy5mKBEiD47QjYOIobqF31EdRDGxHvDg+NylHx17nMBdSyF33vbrk/ZX2
	gYiTbnNMGYlAj+fdAUrEMD5gcVLn6slcJ6hw1nwKYOJrqelMHY+W71q4/mW+W1elKY7FbJ3XdxXCV
	m+aq9DWLbt2JMDY3pYurEmC45g8vHAlZw0qAOB/Pl7lS1ilOi3PunwRwZnyEeQepNfJUHkR0VlB3c
	8vUtK2FyY5t2yuXlsplA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjilO-0000000D2Uy-3QNm;
	Tue, 14 Jul 2026 19:25:54 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjilM-0000000D2UB-1AJP
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:25:53 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-43cce34c881so744933fac.2
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784057151; x=1784661951; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BfB31hq6nij2zrbqGroJKSVeDBtuN7UhhDZLTpuuWH4=;
        b=bc0RTU29TtWHfXaiSfgzDvf/QiecyVo6CFqb6dvBP+e9frqSWYnTaP77Cdn/M93dnW
         eJ7iVZgj//7+X8NNbDHxOERW+KBuNvLBTmBSC01Iou6wOmUcySbz3ZvbjLSfVQWn2+VZ
         zIMvSLXwIW1wJCi10nB0lQlYNpgP2C2UqnQTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784057151; x=1784661951;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BfB31hq6nij2zrbqGroJKSVeDBtuN7UhhDZLTpuuWH4=;
        b=szInJfZ4ILw0vuEL4e/yLdpOd+5IUuIPabKOJAbmdnqotmFxxDQ4Yh1xsTbWGnTpOS
         I0xuVP18H89V0tpjJv92BKB+W758z6Rj7E94E81+ia5+nrOY4SKZOoERJukj80s0Yo4U
         nu6YPUzywtO0gpUsRNFibai36r+sDQ9H3xWeg1WtVjzSpdK6Tb+cy8dtBriHkZXM2YLV
         DEDYwmrgOIvPJnlJ2H6aQ9E6AnpBr/LgmctlH0lHCHx4EIz16b/tl8NVssSn3OMzhxAc
         zxqrBEOcl1iZ6DbeN7ojAp0CU34H5YBMb2xvxiZFas+5guiyIUbb+FbBbyt2porRNOF5
         yHBg==
X-Forwarded-Encrypted: i=1; AFNElJ90AXP3EPBao2dCJgnh+ymzZGQhYy6WpXY079dU6pAJwCuXla1ZWyNmocFB8DQ4R9HeEzgVVQ3FA640VJemRg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6jsuU7GWnQ02dL7lCKXsqn1g0pKULDRsQADwGGQDRCGk9sSDr
	Xa+LkVz0YuHXnOnK7z8KLI+ZkE1mHnnwTkIS06bAPD99YbjJcekD8bn2utY1cV9yMA==
X-Gm-Gg: AfdE7cmFz14rRHt8jQ6GI33WXDzpXw5r7fP/6PtMh0bZbhTYbkBR2RVjxSQZz2PBEO/
	LeXHnqe5/Pzs+pIfgNaavVPO5kfBO27kG/UVD7UrCncF8ACy3eL4ZSuHGjIAwrkakjS5qCdOPi4
	9G1VXT2DV65wzDx8FG388WLU8tRrlJwHwv0QZBR0gmfAEeqXcrtdi/IRleKDTPe5tzbhtZhr9gE
	9v9ONmq42vyvyRrKbQvMvZX2uZOBTVLfoYnWwakYSO5qYTitWou+KTMGNFT6LhDKaFAjMlN0td+
	kSYp4ZEHQQZv8eavU6tsLE73d2QXQ7uEfea0EgCCsBWPxSqGWEHwGxdTvm8afdcgI9pYxWKeq+6
	imZvLX6g7/q11zyIKfi7iZtNYSau5gRxp/ChN4VpDlkLj2gjDf5UP6GKm/yqyZP9XYQfCPb7Xgp
	Z/c8+HPcY=
X-Received: by 2002:a05:6870:1793:b0:417:4888:328b with SMTP id 586e51a60fabf-451f13ced10mr7772617fac.20.1784057150898;
        Tue, 14 Jul 2026 12:25:50 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4519d89f7desm15759043fac.7.2026.07.14.12.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:25:50 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Simon Glass <sjg@chromium.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] pinctrl: Add support for the Rockchip RV1106
Date: Tue, 14 Jul 2026 13:25:28 -0600
Message-ID: <20260714192535.2082729-1-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_122552_320926_1CD41482 
X-CRM114-Status: GOOD (  11.92  )
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

This series adds pinctrl support for the Rockchip RV1106 and its
RV1103 package variant, split out from the initial RV1106 enablement
series [1] following feedback to submit per subsystem.

On this SoC each GPIO bank has a dedicated IO control (IOC) register
block, unlike earlier Rockchip designs where the registers of all
banks share a GRF region. Following Jonas's review of v1, each bank
node now references the syscon for its own IOC block through a
rockchip,grf phandle and the driver uses a separate regmap per bank,
so no regmap crosses a block boundary.

This v2 is tested on a Luckfox Pico Mini B (RV1103): pinctrl and the
four GPIO banks probe, and the sdmmc pinctrl state is applied through
the per-bank IOC regmaps, with the SD card working.

The corresponding devicetree changes are part of the main RV1106
series, which goes through the Rockchip tree.

[1] https://patchwork.kernel.org/project/linux-rockchip/list/?series=1122658

Changes in v2:
- Add new patch for the per-bank IOC reference
- Use a separate IOC regmap per bank, taken from the rockchip,grf
  phandle of each bank node and identified by the gpio alias, with
  block-relative register offsets
- Reject drive-strength requests for GPIO0 pins above 6, which have no
  drive-strength registers
- Specify only the first iomux offset for each bank, letting the driver
  calculate the increments

Simon Glass (3):
  dt-bindings: gpio: rockchip,gpio-bank: Add rockchip,grf property
  dt-bindings: pinctrl: rockchip: Add RV1106 compatible
  pinctrl: rockchip: Add RV1106 pinctrl support

 .../bindings/gpio/rockchip,gpio-bank.yaml     |   7 +
 .../bindings/pinctrl/rockchip,pinctrl.yaml    |   1 +
 drivers/pinctrl/pinctrl-rockchip.c            | 168 ++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h            |   4 +
 4 files changed, 180 insertions(+)

---
base-commit: 3b029c035b34bbc693405ddf759f0e9b920c27f1
branch: rv1106b2

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

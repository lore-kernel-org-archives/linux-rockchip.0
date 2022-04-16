Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91E5AC43219
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 10:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5D2+J//jdTxr2Yvj/5ZlVwZA7HmtKvrCu634tyqBImM=; b=xOWXp52CZQdQvl
	8/1vRsMxoULkkGeD38n259bJmeegn/86DDh0yRk+vaBmJqKR/9THXk26urOR5cq1zDJmeNFmMHtHJ
	gXBtgX3IuYPGC26omEnQgBfISVJwvpxAG/8FtM314OzNAAxSsq4si8gae5UfUqmyfK9DRMMiijC66
	kcBtQrn1B2FdJNm5hepHDID1Nk1ACDxinnxodUSPYCvKowBw4WZOZ9aU8n26n3QoyCXAhSXaZjQs6
	uNhax3tpQXpMmxOHXJm8MsBJdZZWDp6OlpahpvaTSevemc0Rm2mQywJvuQkfacCLTD3c4bYMKiLH+
	WfdAzQSIINDwPOVTeNmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nffIk-00Ch9x-Kg; Sat, 16 Apr 2022 10:05:10 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nffIh-00Ch8f-2o; Sat, 16 Apr 2022 10:05:08 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id i14so7856642qvk.13;
 Sat, 16 Apr 2022 03:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9inUHyr7AVny3gVU/R/BmEEniU0IUQKkRf4Taim41vo=;
 b=oz8yhF/l7j1i3yf68XRg4ud62SqOkn8htE+H9ziSk1rAhv5GyTKVc8pFmf4VYjx/AX
 Ji1o//6Rf/NldsfRT1M3o5Qmtpq0tLG3TOeNNKcvIj2kcm0ZRMcb1a+klWpJS3oAfs5c
 wRg/gTQorlnqoHo4u3eOgaFo6xmRJeqzxnYa4B+dD8Trsl8aL+fEoX/0Wq4Ie9CAvNxt
 8awKgxKKxc3aGknhg5V8UTdwwnqF8K+eu2BeWY8BYB8A2jGQ0YRfyvPgO936DPbAm8/s
 3y2VAfXIVtwfu2i3VmRsQSDvsW7EK+rVnHPK4N61ySy9I5+IqOFZwYCoudHUr7Mp1cGI
 hV3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9inUHyr7AVny3gVU/R/BmEEniU0IUQKkRf4Taim41vo=;
 b=XIC0rFkGXfDX+ABV+sf4rqluT8ZRbopMfzeNNExjAyZwzqswcUunbP36joTbkqA/yT
 DJCo7xO0YyxWsJ1BtHtnz7KoaFAocA7xCoy/en4WPM1u4mSlfJECxT/WC1ZxZc5FMgMa
 0eTIovtz8/cKObwyrvI/Lp1da22gij0WytCwgiTWxBWABtJEpWiwgdEwFKOJ86GbHTqy
 jxKEJ99CHhq6fqHik+m7vujwnKBQ8fCjCB7SoeE46icwlj4/OQRsxu3kehEtXtCoNjE1
 +Fae7HTwYjQjOqxu8tI67gnM1+JNdJOGeAdnQ0iyS0JIWrqkA1MFJ5uyEQjtommLHS+9
 YliA==
X-Gm-Message-State: AOAM533+tn0p6KXFx9xCZwsSx0TH8T82aLSukWJ64Y7ZLdUUAQAPTi6r
 M56XCNRCg6lpPQUkZaIKHL2Ofc+JWAWEtodj
X-Google-Smtp-Source: ABdhPJxyGGm3YWc8XeHJDwE2KHJ9f7JmSVfLYhpJc6jV3R5ze4PEDKB6ReplabXTD6qTJCjdkBfYgg==
X-Received: by 2002:ad4:5caa:0:b0:446:e39:a117 with SMTP id
 q10-20020ad45caa000000b004460e39a117mr2154748qvh.1.1650103504465; 
 Sat, 16 Apr 2022 03:05:04 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 n22-20020ac85b56000000b002f1d7a2867dsm4263188qtw.67.2022.04.16.03.05.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 03:05:04 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/4] Enable rk356x PCIe controller
Date: Sat, 16 Apr 2022 06:04:58 -0400
Message-Id: <20220416100502.627289-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_030507_178608_5E77AF04 
X-CRM114-Status: GOOD (  11.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This series enables the DesignWare based PCIe controller on the rk356x
series of chips.
We drop the fallback to the core driver due to compatibility issues.
We add support for legacy interrupts for cards that lack MSI support
(which is partially broken currently).
We then add the device tree nodes to enable PCIe on the Quartz64 Model
A.

Patch 1 drops the snps,dw,pcie fallback from the dt-binding
Patch 2 adds legacy interrupt support to the driver
Patch 3 adds the device tree binding to the rk356x.dtsi
Patch 4 enables the PCIe controller on the Quartz64-A

Changelog:
v6:
- fix a ranges issue
- point to gic instead of its

v5:
- fix incorrect series (apologies for the v4 spam)

v4:
- drop the ITS modification, poor compatibility is better than
  completely broken

v3:
- drop select node from dt-binding
- convert to for_each_set_bit
- convert to generic_handle_domain_irq
- drop unncessary dev_err
- reorder irq_chip items
- change to level_irq
- install the handler after initializing the domain

v2:
- Define PCIE_CLIENT_INTR_STATUS_LEGACY
- Fix PCIE_LEGACY_INT_ENABLE to only enable the RC interrupts
- Add legacy interrupt enable/disable support

Peter Geis (4):
  dt-bindings: pci: remove fallback from Rockchip DesignWare binding
  PCI: dwc: rockchip: add legacy interrupt support
  arm64: dts: rockchip: add rk3568 pcie2x1 controller
  arm64: dts: rockchip: enable pcie controller on quartz64-a

 .../bindings/pci/rockchip-dw-pcie.yaml        |  12 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  34 ++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  55 +++++++++
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 112 +++++++++++++++++-
 4 files changed, 200 insertions(+), 13 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

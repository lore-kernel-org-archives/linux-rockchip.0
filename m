Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30360C369D1
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 11:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MirQ/1yPKLPQoxz1xY1PldPin2FtbJCG92zCNdhs/ns=; b=wVTGCwdYbQkXOe
	VDtfqh36yb33UmfYKY1xNseITYdwlcGFQ5f9QjRCqiBrIJMmjuHuK/s5y3jJa0s8bKjodlXIQdgrz
	MdiQq1Hm940qaLsdEgpX9Zakcsf7zKZoTjnXm16ACI1623bpjJvEcNNIx6vjTvK4fMq+cv+7Q+QYy
	PyO3+U+/vkdCSN+CSa66GH2QUoP5OtmW5VurREa+eCWNZMs/nLvOjyN7A80aiaimYux2XHhzIXsgb
	3zBIAKlvQ+13Yio2TIfOQLjtxgUaFBlquQFpWLhl8ZbM4J5hKy4sGWl3xLxYLk8wRyh7aTNLEljuB
	Px/BgCLUpWvl2wNfMJcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8H67-0000000Gw22-3Wz6;
	Fri, 25 Apr 2025 11:19:59 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Fp5-0000000Gdfr-28hy;
	Fri, 25 Apr 2025 09:58:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=t0GMs
	iX+PNcYUNByUhlt8Q1u2Zb69tZfn2IGuli2hOE=; b=HeJAnu+CBywael0uJdlqO
	vgZ/eUMwqpnVS6oiP+aShhCWnV5VPMNYvvC48R8yHZ9oN0TsJTCqbz9gTO8SGxGJ
	nW/nHcyJjCfZ50vVLXDL9Wl5J+p0RPxPhXVtCqA1/ip8w/BdBEI0FWK09p8KuSJE
	eCHhHgSMYqvFrP2NXhBPHY=
Received: from localhost.localdomain (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgAnfJt2XAtowU4iAw--.17018S2;
	Fri, 25 Apr 2025 17:57:12 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: lpieralisi@kernel.org,
	kw@linux.com,
	bhelgaas@google.com,
	heiko@sntech.de,
	thomas.petazzoni@bootlin.com,
	manivannan.sadhasivam@linaro.org,
	yue.wang@Amlogic.com
Cc: pali@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	jingoohan1@gmail.com,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Hans Zhang <18255117159@163.com>
Subject: [PATCH v2 0/2] PCI: Configure max payload size on pci_host_probe
Date: Fri, 25 Apr 2025 17:57:06 +0800
Message-Id: <20250425095708.32662-1-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: PigvCgAnfJt2XAtowU4iAw--.17018S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKrW8Xw4rCF13Jw1fKryrXrb_yoW3Jrb_uF
	WI9a4DAw4UCFy0yFyrKF4IqryYva1kXFyjv3WvqFW5AasFqr15Wrn7uFWjgF1UWF4rAFs0
	9ryDZrs5Ar1xAjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xR_dcTDUUUUU==
X-Originating-IP: [222.71.101.198]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiWxc6o2gLWsg4PgAAsi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_025819_856373_4A8930AB 
X-CRM114-Status: UNSURE (   4.62  )
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

1. PCI: Configure root port MPS to hardware maximum during host probing.
2. PCI: Remove redundant MPS configuration.

---
Changes for v2:
- According to the Maintainer's suggestion, limit the setting of MPS
  changes to platforms with controller drivers.
- Delete the MPS code set by the SOC manufacturer.
---

Hans Zhang (2):
  PCI: Configure root port MPS to hardware maximum during host probing
  PCI: Remove redundant MPS configuration

 drivers/pci/controller/dwc/pci-meson.c | 17 -----------------
 drivers/pci/controller/pci-aardvark.c  |  2 --
 drivers/pci/probe.c                    | 12 ++++++++++++
 3 files changed, 12 insertions(+), 19 deletions(-)


base-commit: 9d7a0577c9db35c4cc52db90bc415ea248446472
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

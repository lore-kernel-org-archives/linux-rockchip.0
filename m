Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C421BC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 13:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eETfOygJiIN/rYlvxvClvlSanxofv6Cat5q8bS8jSDc=; b=xKV/ud2rmhziYD
	fHVvFxtyPZXyqPwFHn3r04rvg1JnI+UQplmb/ZM+CIUq0wRtrpTFlqulYGsmI8gj413QZkDRuk6xD
	kll16/aHpWaGVwtk//7TqbU12ENLMRKPjEeLb3eRgjAmUd5ifY+SN/ZCfL08LtfCQOzBMjZ5XyI5A
	coexCiPrS31rsv9TvQ7QPLHQQqDrK3PGMoDr6HeC6cE2VCMtKhqK3aPUnjUnTcuS/+MrR2B15ovhs
	k7CLkKjZVq/r87J0dS2WMsOlmFRKdPoFfJDOFrQf/wMt4IxjedOBBS2oOQkp57ubO90i+rOi4OmdR
	uR/7NruMaoFm6XWniT1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc58N-00AMl0-2K;
	Tue, 14 Mar 2023 13:56:11 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc58D-00AMgg-2L;
	Tue, 14 Mar 2023 13:56:06 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2B8C16603089;
	Tue, 14 Mar 2023 13:55:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678802159;
	bh=6DQmp7EOc/vZBH7Agp0m4MGPepgjsuaiBjh47b5ACbc=;
	h=From:To:Cc:Subject:Date:From;
	b=KFeu9bmgQCCt7vY17t9enfuXXo172EBdEpRc3cgQxMbZZM8OqdV7NsT2SzFUZWUul
	 40mttmj1eCPqRUDLqu5oENEtn5xJS/eWk7CtmtnqBdr5Uj8yQ2QVqOi03zTm4UbDcl
	 binjMFjerBQHYMUgxSkbzXRkUJnSx/yCsW2kFv3xj8dF9vugAAvqYoa8NMiLDrNHOG
	 +xHUCWR034ujStkdwDIrcYnGLrTM6K/nGdxlSgaOVUlbhQng9aINSkrO0rf37qbueE
	 XXjCHza1TJiIfzV7u1ZMcU9q2oGCRJ29YA/YlT07xW6LBiSU1OIB7O2X7cvbgrYk26
	 cnTTZ+XO8aGkQ==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 0/3] Add PCIe2 driver support for Rockchip
Date: Tue, 14 Mar 2023 13:55:52 +0000
Message-Id: <20230314135555.44162-1-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_065601_942908_978501B9 
X-CRM114-Status: UNSURE (   8.07  )
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

I am assisting with PCIe and networking bring-up for Rock Pi 5B (RK3588).
We sent this series a few days ago:
https://lore.kernel.org/all/20230310080518.78054-1-lucas.tanure@collabora.com/

From that conversation we decided to send patches for Rockchip that don't
require GIC/ITS implementation. We will send that in a separed series.
Making easier for reviews and unblocking patches that don't require
GIC/ITS implementation.

This is work based on prior work from XiaoDong Huang and
Peter Geis fixing this issue specifically for Rockchip 356x.
Plus comments of Robin Murphy about Non-Coherent properties.

Since v1:
 - Don't add compatible string to PCIe driver, only to DT Bindings
 - Improve commit message for "Add rk3588 compatible"

Lucas Tanure (3):
  dt-bindings: PCI: dwc: Add rk3588 compatible
  dt-bindings: phy: rockchip: Add rk3588 compatible
  phy: rockchip: Add naneng combo phy support for RK3588

 .../bindings/pci/rockchip-dw-pcie.yaml        |   6 +-
 .../phy/phy-rockchip-naneng-combphy.yaml      |   1 +
 .../rockchip/phy-rockchip-naneng-combphy.c    | 184 ++++++++++++++++++
 3 files changed, 190 insertions(+), 1 deletion(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

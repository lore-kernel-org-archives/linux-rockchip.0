Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D033C6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 15:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=up1REaxoT+/cpK06gV56yDJxVezUlepWOnWhv9xtCjY=; b=IEqp30VzccrYJ0
	TS6xqt0m7cLID19XM6cLbhLFZyRO4lzqMvzeDex4Yat+7vNBQyvOXxCZ4aZy/I+K55jfFORmgk8il
	GBnJRCLnqtT/oe+IVyFsY36FhP4UbTGQQmatn6Tk758e2w4OGJxr8IlRcMxu3F/+b4n0z+UlrUQMP
	zoIrOGc+PikjKQbAdvKaHhaghbwwIwyS9ypTRdJ8en/Yn2csRjNh+UTQFt64n+D3/ygnuJzFklUxb
	qhgGa7qLIW7qRXfsED/6LXplPAiYCLbKBQTZaxfq5uPVXxDBb4Vy/jJYOTvxIfEQNo0rIxPiyNvpB
	5ZVWVenR+03L1lSfDwvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbkIP-006S40-At; Mon, 13 Mar 2023 15:41:09 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbkHJ-006RWN-BI; Mon, 13 Mar 2023 15:40:04 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C78D46602179;
	Mon, 13 Mar 2023 15:39:56 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678721997;
	bh=eJniK8rCzpUyXvy4JnDVP5rtDR3ZlqisZg1RKZ1F/6Y=;
	h=From:To:Cc:Subject:Date:From;
	b=W/YJmEwosez2cINBjV3QmWBmH4uS8xXbIVB7QRpOHShkbOJg+83K7Cf5Jv8b8ce6E
	 A7iDwfE6f9x5a1E3E55GGLva3wFebYuMsDUvfbYbXvjz0LUf+SOBIWsrWjvGUdk1sg
	 +6V/FQieN0IH7Jr78TnnSDnYhjXGrOv5YbmPdlJGtzmK23Jw4A32SnZJepAjybSqjY
	 qFMHT9fZsoenZtTpwo7f+K0eNRa7LZrrtg9zGRWAM9UWU0oytJxzaMeROA8bLbJCXa
	 6R1DhyJHEvK3HZXy6GgAgJnGDibrULQHQ3k4XcYs22GkkBDIJkbENtHzGwUBCvCeXV
	 kSxRbO9qNYWkw==
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
Subject: [PATCH 0/4] Add PCIe2 driver support for Rockchip
Date: Mon, 13 Mar 2023 15:39:49 +0000
Message-Id: <20230313153953.422375-1-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_084001_593919_BA02DA53 
X-CRM114-Status: UNSURE (   7.49  )
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

Lucas Tanure (4):
  dt-bindings: PCI: dwc: Add rk3588 compatible line
  PCI: rockchip-dwc: Add rk3588 compatible line
  dt-bindings: phy: rockchip: Add rk3588 compatible line
  phy: rockchip: Add naneng combo phy support for RK3588

 .../bindings/pci/rockchip-dw-pcie.yaml        |   1 +
 .../phy/phy-rockchip-naneng-combphy.yaml      |   1 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c |   1 +
 .../rockchip/phy-rockchip-naneng-combphy.c    | 184 ++++++++++++++++++
 4 files changed, 187 insertions(+)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

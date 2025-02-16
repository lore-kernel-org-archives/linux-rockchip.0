Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CC1CC021A4
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Feb 2025 22:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9gdcADKmj6Rne8Plw+jwb+m/rYBsuhmdnr1fAHMEql0=; b=y5i8xlNK4DBabG
	m9JIPZHsTa102kx9/l5s2cHImhKSTBl63q8K8UvfwejPiAlf9uOVRFRAz/HZGPSxPpRMwPVAsAPn8
	w1XFPTW8tMAxm0cbieuZPCGGa/tTk3PGhIcW6GVxnXwqzyf4a5nHOBIy0QdK63X8Qa0pGUTyZhd+s
	g8VRiIx1JBPjgDlD+eYKNXDLhU40z4At5wj7byTWbwoVky2KgPJwi3AD1Am+gTAfBg4AGw9LU/C8U
	8jI78IVqez8oVMvqX4QdanHhcuEu/32hv+1Qdw3CBrXz+k5sNNcBt+OLL68CHnwuEwB28U0bsj8Rv
	J3WP8akn/rCS7cWANwvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjmxl-00000002hCa-23ly;
	Sun, 16 Feb 2025 22:18:09 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjmxj-00000002hBz-1KeL
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Feb 2025 22:18:08 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739744261; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=cjI1qX5rKD2Zjd20T7ze3hGakn5kKhIB0o6VZ+kacmLQQknY6m5HK/Z2kPAI8S7Ic8kLO7v9dRTz66ffqNKhx+s17tg8ZXt9XkvnuoRka8xzQhXa2+0dtBgeoEOrSiFbQNpZ3SX0Qsj4r3ksCEjnBzrl4EoH3jd6T+sVcM/TCO0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739744261; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=2uXMZuqioGZ1TWUtUfrDpKK3F04ilgq6QgvYzApfTE0=; 
	b=GNuYeyVCaqibMqrL9uJLNkYcJxiVKYbyDfAym4RTQH4oyEIHR7wygKFwNbeqjpUq/Ukk1YFZXFFo7h+zlgXyoOf2WwCb7Zg0H5bEK99Hrxp4j35pzq+omGtjSbGlaCjF1h3+VEyoS7mJMpgvoToWn32x/O858e3ypXZUrGSnbVU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739744261;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=2uXMZuqioGZ1TWUtUfrDpKK3F04ilgq6QgvYzApfTE0=;
	b=TUjKT8sVz4Q7MKk9pzKkq+2ImEWDG810ozJpX2eI8IPJ9nz1IM8iX9hn1ExHEFYp
	pVdMqD71PdwbaV4MUug4DTPEcKuYoVhoR8vlRPtgqzAy/e9AvuwLEW9Tb+3FX5L/d80
	XhxOIsg5wddLEjwm8KlnN1h4zCqsx5J/TcPk7V98=
Received: by mx.zohomail.com with SMTPS id 1739744258146392.05421080390477;
	Sun, 16 Feb 2025 14:17:38 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Marc Zyngier <maz@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	kernel@collabora.com
Subject: [PATCH v2 0/3] Add Rockchip 3568001/2 errata workarounds and enable ITS on RK356x
Date: Mon, 17 Feb 2025 01:16:31 +0300
Message-ID: <20250216221634.364158-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_141807_415023_3D230141 
X-CRM114-Status: UNSURE (   7.66  )
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

Enable GIC ITS support on Rockchip RK3566/RK3568 SoCs by adding
necessary GIC erratum workarounds and moving RK356x PCIe MSI to use
ITS instead of MBI.

Changelog:

v2: - Changed Kconfig and commit descriptions of the GIC driver patch,
      as was requested by Marc Zyngier.

    - Added ack from Marc Zyngier to the GIC driver patch.

    - Squashed DT patch that added dma-noncoherent property to GIC node
      into the patch that adds MSI controller node, as was suggested by
      Marc Zyngier.

Dmitry Osipenko (3):
  irqchip/gic-v3: Add Rockchip 3568002 erratum workaround
  arm64: dts: rockchip: rk356x: Add MSI controller node
  arm64: dts: rockchip: rk356x: Move PCIe MSI to use GIC ITS instead of
    MBI

 Documentation/arch/arm64/silicon-errata.rst   |  2 ++
 arch/arm64/Kconfig                            |  9 ++++++++
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 14 ++++++++++-
 drivers/irqchip/irq-gic-v3-its.c              | 23 ++++++++++++++++++-
 4 files changed, 46 insertions(+), 2 deletions(-)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

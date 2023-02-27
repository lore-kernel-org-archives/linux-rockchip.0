Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49792C64ED8
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Feb 2023 15:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XGpWxSkFhaMJTcyVuZxQ/jaj4qX4P8L57NU8REHNNzo=; b=3TAf09oek/nYeK
	R3Sc9uCkS/8xEoFtt0IhFsVb16NDHiOWxa5+/5h1yCKFAF0q3V1rTHX7I6tC6KhKaU6Dv8xziA1r7
	LLedXicupfi1jfidxFSE1crsHBp1WEosoRoGeHWin5UCBdpRg/muY4O/mP1YbC3SCOslyqMOnjqEs
	iQVHNTTD3tOXElpfTZtvrQ334fmdUn/gRhClcxQ/SanRV5Aq7Hrcb/XjGIhe4ZMWxUO9nnvxePDUZ
	yNj3H2FGWeumIWh2DeNwYrfL5AjqLhlu9+GKJ8NpfjTEbAaJpzzsVIH9z1+brdUqAEyHoU30KjGXf
	WDbcOyBTgAOIQ8fJX4aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWfHa-00ABEY-7y; Mon, 27 Feb 2023 15:19:18 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWfHG-00AB7w-Iq; Mon, 27 Feb 2023 15:19:00 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A65066602F93;
	Mon, 27 Feb 2023 15:18:52 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1677511132;
	bh=BZOWK6rfvJBAo+rrMVEDVF17jJpwJrzKHXdauB9aZYk=;
	h=From:To:Cc:Subject:Date:From;
	b=FLOuFAjKJJn75VH3nEocm2Y6f/4TvswwOCgM37zBwcffv5yVIhQm55MWEPaFQohqX
	 SLkEBSApFi8kdGawyMbK+2YSUPAbjyv2ZOI6beS3ru5czOB7ThDkuCmEkWCF/awiUB
	 ppzkDL+cTPFQdRFcX1c9CpHCcMqOEf/JN4IyZ1a3yGgEUarO1qKWhLK9rAx3hG79+v
	 3XoXyOmvPYPbHOe2wlPgyDLQqX9YQx7pB6Bzjw9ySaV6gUX7p5LNKUf1L4hVSfWIgo
	 e03Yp9eHAYA8apM6bdrS7D9nLaCaMhHaLJ65ru0fA4G0LttRlCwNDf29ag+kr8UpqH
	 a63NjUIu43F6A==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Peter Geis <pgwipeout@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com
Subject: [RFC 0/1] ITS fails to allocate on rk3588
Date: Mon, 27 Feb 2023 15:18:46 +0000
Message-Id: <20230227151847.207922-1-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_071858_887737_EEA1045A 
X-CRM114-Status: GOOD (  10.26  )
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
This chip uses the same GICv3 as RK356X but has fixed the previous
limitation of GIC only supporting 32-bit addresses.

But the implementation decision for shareability in GICR and GITS is
still the same.

I read the previous thread about this topic:
https://lore.kernel.org/lkml/2791594e-db60-e1d0-88e5-7e5bbd98ae4d@rock-chips.com/T/#m5dbc70ff308d81e98dd0d797e23d3fbf9c353245

From my understanding, the errata numbers Marc Zyngier is referring to
are found in Arm errata documents at developer.arm.com/documentation.
But I could not find Cavium or Broadcom pages for errata with those
numbers in Documentation/arm64/silicon-errata.rst

I could not find an errata document about this shareability issue,
and by what Kever said in the previous thread this could be a
RockChip design decision.

Marc, as I could only find ARM errata numbers, is the errata number
you were expecting generated by ARM only, or RockChip should issue
a document like Arm to detail the issue?

Can this shareability issue be seen as a quirk without an
errata number?

The following patch is based on the work of Peter Geis for the
Quartz64 board and the previous thread feedback.

Lucas Tanure (1):
  irqchip/gic-v3: Add RK3588 GICR and GITS no share workaround

 Documentation/arm64/silicon-errata.rst |  4 +++
 arch/arm64/Kconfig                     | 13 ++++++++
 drivers/irqchip/irq-gic-v3-its.c       | 42 ++++++++++++++++++++++++++
 3 files changed, 59 insertions(+)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

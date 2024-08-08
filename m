Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09AC5C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 16:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gLD1fSm5ybEqfFjowMuFP5H41ru5k9oT4hmaRnLV18E=; b=GpseX7FL4ETeop
	MSlLgebcMExDX8SDaqES8tdXxrO+jU6HYFdivMw20zWcaY8DGuZ+VC8pxRBxPcQZkfDj3HRVZPCHG
	0JFlHEI16HMib+g4FAYJ6/pYX97vSbfPZ1wmx81/qgM/LhYqedm5baG0MLm5UwOlYloA6Ggcu9a1g
	XaV/QbeBLSd6MSqspAxIPDmLZSJQEoLEeTS7kwNrhE2dSie3BwQCyNzQv+xddg0YVs/0AYbPIChJd
	vTIzNgbG7GliEdHxThu0fTHYNC2vdy0h/e9jiVq64oAefkr+3NpWJ6DrQcvEL3GHVAHR2HoqxZ/7P
	q4PV5T0TFhXIVqYwRzbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Iu-00000008ziN-3QCT;
	Thu, 08 Aug 2024 16:47:57 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Ir-00000008zhM-0kqf;
	Thu, 08 Aug 2024 16:47:54 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723135666; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=T4CheQP98x1J/GRIK4TVxWW7ISh+nqFhR5HbccTenGP+4+gxyzk5x509DIoaZGG4p39rkYWggev+8ljv8FP32JMKycTH8qX8Xe2IWA6tcyvliu6BEnIEoe4j5Iy3zDTAP4TaT/jsP7S8fEHyrkvuuQo+pmDzf8U8MK6UhVeFJ5g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723135666; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ZwmA6pYY7lb1UZC0zMf+XG75uOTiFKSeg5YeTK0yBSM=; 
	b=IIcJUgHqx2e53e5wNkzRlSRN9aksWSaxYCLNJ+RzorbWmlNrPHk1PEC0ppCFzXc3piX6Hm6xF7doUXgGrg5r6qTJijTIUQM1PpBQYag+lWbMHKuIiAWVF2Nr749CXpnG5qgeBOW6wfZy45f8XQJuTOG/7XHeOX8GbT4XnFoUCwg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723135666;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ZwmA6pYY7lb1UZC0zMf+XG75uOTiFKSeg5YeTK0yBSM=;
	b=fhNcmvx8xApl/RsaHpwA5L2ZzJjDfOX2FWVSwJtmUBNipDR5hV0uEHgKq05kTsdb
	+91n2EmJvHxloxwaKw/1tblAYwiVomzzgV4SD0B/YQAPeSfH50di4LkR3OMRm4jpoCb
	Lj0Ct9rx6NvILd13gNjRg5wBpRg0cQVNv+b75If4=
Received: by mx.zohomail.com with SMTPS id 1723135664294528.0946501054501;
	Thu, 8 Aug 2024 09:47:44 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v2 0/3] Add dw_mmc support for rk3576
Date: Thu,  8 Aug 2024 12:47:14 -0400
Message-ID: <20240808164900.81871-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_094753_309552_07628526 
X-CRM114-Status: GOOD (  10.46  )
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

The SD card controller on the rk3576 SoC uses a new tuning version that is
capable of using pre-boot tuning information.

Also, it stores the phase settings into the dw_mmc controller, so the code
has to be adapted to implement that.

Changes since v1:
- Renamed use-v2-tuning to v2-tuning
- Rewrite v2-tuning description as the hardware feature

Detlev Casanova (1):
  dt-bindings: mmc: Add support for rk3576 dw-mshc

Shawn Lin (2):
  mmc: dw_mmc-rockchip: Add v2 tuning support
  mmc: dw_mmc-rockchip: Add internal phase support

 .../bindings/mmc/rockchip-dw-mshc.yaml        |   7 +
 drivers/mmc/host/dw_mmc-rockchip.c            | 223 +++++++++++++++++-
 2 files changed, 221 insertions(+), 9 deletions(-)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B0A2C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 22:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gN7btbVc2wyUc4bjtvjJ7oN2wxAP8krKetq/Tse9yrc=; b=aFRAk3LKU62UEZ
	yaak6FA/+gznuV/ytHdw1TRBqWEQnaSv7UVUjodPmV6MoEUBfazNCOzqb33fiChD6X5KZs4l71Haw
	hwcFqQoHabpmDxNfHIBBqacjk0rb2XjGrPBMfeeOrWA/lYxErSorGHHmCuURf9rXLGngmMsdp909S
	U2CD7XiovGZlGmzjzvLSLqAsEq4XUctwTRc9idhDnsjFYQcYvyMtnRymxkEwZ0DC0VijceZp1f+xV
	hMDE5XPm9fGBUTti249HuCe5kbp9kKnhVrRCCGMD+NMQskkxqMkqJDZf2cgz56H5m6actaI35usW1
	yIJQMoIo5wL5KHccM8Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMZn-00000008TAW-2ZpQ;
	Wed, 14 Aug 2024 22:34:43 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMZh-00000008T9O-0gYC;
	Wed, 14 Aug 2024 22:34:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723674871; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=B3igkjGkFCiG8ZRPLd/sYczbZe6udIzJg4Q+svlG0zeqr4NrDw2Plh3y92QAulVAcpgbzFvrG1dfR6dOMqojIden11YWeH6oldXgkM0xzVV/vtp3UXyycV5tizcDg9Ld/uc7pPh4iRW38G3iOceCfm/9MJMa/YFZu8BRKouhUfY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723674871; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=T5j2mX2K8VlgWP3DiWylg5b8+GjtR3qTPMyXZoH4GN0=; 
	b=Vs4iW/qnSSCaS3fpY4xixfk9GcQ7tcgvzuAQWf90sWOOyHx3/OnLGvuJtl5GdWeSlESwKox1gkXWQEikk4w0ssVrO8z8D9TBx40L4rKt1nHDPIeBoO4/VUugp+LVdVaRaBjVSiHiM8LH6uQBFCqsZrTRlutcOFT2HPvFd/eB74Q=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723674871;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=T5j2mX2K8VlgWP3DiWylg5b8+GjtR3qTPMyXZoH4GN0=;
	b=jJwyKaEwXbpELnu9eEcJQGNyfkcFblT79sKAnL6CXAWORFHABM83coIwp8XfPG+s
	Y6oGbNClmevH0Qju4cPIifAi6y2IHcZGR7p6TH4hMH2v22Geg10Dg4jIQRHCeTp2lIl
	vyl2EZ4QFhRbbe9FdqJxZVJwcUFGmuvpEYfG5McM=
Received: by mx.zohomail.com with SMTPS id 172367486998921.762079577096642;
	Wed, 14 Aug 2024 15:34:29 -0700 (PDT)
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
Subject: [PATCH v3 0/3] Add dw_mmc support for rk3576
Date: Wed, 14 Aug 2024 18:33:59 -0400
Message-ID: <20240814223555.3695-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_153437_248195_D1D6AC08 
X-CRM114-Status: GOOD (  10.81  )
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

Changes since v2:
- Drop rockchip,v2-tuning and use compatible-based detection
- Fix coding style

Changes since v1:
- Renamed use-v2-tuning to v2-tuning
- Rewrite v2-tuning description as the hardware feature

Detlev.

Detlev Casanova (1):
  dt-bindings: mmc: Add support for rk3576 dw-mshc

Shawn Lin (2):
  mmc: dw_mmc-rockchip: Add v2 tuning support
  mmc: dw_mmc-rockchip: Add internal phase support

 .../bindings/mmc/rockchip-dw-mshc.yaml        |   1 +
 drivers/mmc/host/dw_mmc-rockchip.c            | 227 +++++++++++++++++-
 2 files changed, 217 insertions(+), 11 deletions(-)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

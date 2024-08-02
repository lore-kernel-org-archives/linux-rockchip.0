Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A09D1C52D6F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 15:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yUDIZ8DKgGVGsxJhh1A6ybzu/26is6/If0a5QjirrVY=; b=NE8IRz2SG8MHsA
	APHKD765iMvHJTjfPeVyrh1NPNrgLRGaORA/tjQU3eQAdRzSJB6SH3kVqXSqZKV+LhqzejMfyJdl4
	FOrfomsJLHGR5DD8XpAFA0Wzu+gKVPJv5VT2XifTzMNnC1qYrj+EL6hu8IV35XARdqMuPhAQ49K/9
	FtyYtGhgvsloWizrV5YXDcn1ksrNoUedTONFu3qGaemVYQdWoLQ6QVXHNWCx9AVxqot3b+aer7EMU
	H9K2geCmZoTB0F3hOiKmEzUtDE1K3M9PYZdClVGicQgf8pGiBQelwE4EAVox1GXfmZ605mx4lHzGq
	mS127WtrXhdk88j2nWvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZuJg-00000009Id2-0MN8;
	Fri, 02 Aug 2024 15:35:40 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZuJA-00000009ITV-0hol;
	Fri, 02 Aug 2024 15:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722612904;
	bh=k5rIFuap9u09uK4DFf3V6w/o37SuG4BJxHIP00dzT/o=;
	h=From:To:Cc:Subject:Date:From;
	b=15wWidehvvP1d0fUCgwMWS5h4SN6RPQUX90ZDvRIaSEhKdErdn8heH8glxWkbYSWA
	 WdamB47lPsOz2Ze+lvi2mV/lm8b3ywNWUiLRPI+iWoHuG/uYjZvxj4qRKLUAr3AFwd
	 +of/UK1AaZ8agJgWpiQWPpTchQcGA/h99F6bjsTPFX8OfoVxjfB/OJYmTWCQIBFS8h
	 u3qIe5NNJByDhxzgJbEPhvEA/DVr4D+ysR39ESExInRVeb1Mpz/q3SAMEKUWI2JKfF
	 guKr7AKPwW9JWHfhMup4IseDQ+r+hI0N9N4VWMe5BUB8+5vEfNmzS8UbcwFUkHltJK
	 UVTUhaJCHL4Yg==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0D4BC3782212;
	Fri,  2 Aug 2024 15:35:02 +0000 (UTC)
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
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 0/3] Add dw_mmc support for rk3576
Date: Fri,  2 Aug 2024 11:31:26 -0400
Message-ID: <20240802153609.296197-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_083508_366421_852E4A9E 
X-CRM114-Status: GOOD (  10.15  )
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

Detlev Casanova (1):
  dt-bindings: pinctrl: Add rk3576 dw-mshc bindings

Shawn Lin (2):
  mmc: dw_mmc-rockchip: Add v2 tuning support
  mmc: dw_mmc-rockchip: Add internal phase support

 .../bindings/mmc/rockchip-dw-mshc.yaml        |  11 +
 drivers/mmc/host/dw_mmc-rockchip.c            | 224 +++++++++++++++++-
 2 files changed, 226 insertions(+), 9 deletions(-)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

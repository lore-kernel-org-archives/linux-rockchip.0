Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7388C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:54:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A7CBC6108E
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:54:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A7CBC6108E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e9zBwuxUDP3rRZILrJJgO1EWeDyEvBNpHEQ7gnagW8o=; b=jYh5uIUIXK2SRb
	QsxBJCKemsagsUQR8n3SfnyW66fjWkgbbaOLtuznZQy6ZOZwT2LxW9gNowP51iZzf+/FmmXt3wMMr
	x+vDW76yTSdj/iolr+gXnvPC4TXR35BO7zljHcti2OGYEA5DbnTbj3ryamfA8FJiGqXXheGU6Jfrb
	PG7p3pTf6XismuVC937KUwPmHA6Wg2oHWRaFt/q1CkWRxsIqhaRR46qLALe9mZbqCkDvcAMMj4Zm3
	ctLIJH2zVDs8S2WtqwsHD3rXzktFRkQ8tbZhyX2L68m0MHPhCDemgkbbOYTEBoEqNogJ2Difd3i73
	mnpvw+714Kuzc66zkERA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbhKa-00AOqs-1C; Sat, 16 Oct 2021 10:54:24 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbhKX-00AOpo-8X; Sat, 16 Oct 2021 10:54:22 +0000
Received: by mail-lf1-x135.google.com with SMTP id x27so52834110lfa.9;
 Sat, 16 Oct 2021 03:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1nXEEQOI2UyvJFPHSDiyUoFnaQvmSXlf0s7F8x76wlc=;
 b=l/7qp0MVktj3pxcjYP9oXhD8My/pkVceyXH3oedix5GS9BxwMQjo7JAd2GUyEpLgFJ
 6A3jHx9ICFXkVdu49qN0hEKmZrz2ZEhlTdvdmse34ktf0ATlExTZ3OMVZu32xnbqJW2P
 FDxZAHo9raJeXntES+2CUbL1k0Ay4WGatGyhMlmjXlTTBLjbACCTP2AdAj1spaQXMZVO
 5lD3PoaKhStIqLiTf/+T+GH2ACtOO/3folt0bgzpwcCp/jolrhr64pEViAd1HVdYa5lH
 VG6/fFrRSBy+fuIPUTC8+vbdCVoec4GuTn2lbS5SElm+OCp1q+t72Rg40uIFVSVr6ps7
 0a6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1nXEEQOI2UyvJFPHSDiyUoFnaQvmSXlf0s7F8x76wlc=;
 b=xe2OqLETxnlyFiLiZl6VtSel6Q3jLfGxMl6XO1fuhQFT+dNIKdjEQ145CLIVtVX9oC
 1sF1EW0qeiPjYEENDL6ozlLO5mDC/U9KgolCvhFbMCq5DOH/WUacAuhM+C2ugCH4dadg
 a/5pTzcu/YES/O7u/MTgd1Ulc8RHJJfStc5zNLk5nuPuz6saf4N9fAinjEbjoINmIx5p
 a3p90WqX6ImBYcLornEo5HTVicZuCpMtYAsTXRET/eXdForzkbN+nDXUom1Qzqz7uLzX
 YbzRUINf+wSjoRQlIfMLdo7A6sfXKJWCnCRwA8QgBj2uSXiCxTtyDbb2TTyOkl4Oispz
 uY3w==
X-Gm-Message-State: AOAM533hh3PQ6MwJQcy1BrN1tY9w6xpD6huPdzkR5jYU3/uDEb6mRGfW
 77A1GRu0HDKNeGfRYvP0g+E=
X-Google-Smtp-Source: ABdhPJy71ErVHEZBd5Yxc8l9Ddc4qLHPXpX6v/GjX9j4ndPss0lcNvuXGDEW7DzF5dJ7R5zXECcltg==
X-Received: by 2002:a05:651c:2121:: with SMTP id
 a33mr6782437ljq.490.1634381657633; 
 Sat, 16 Oct 2021 03:54:17 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id r3sm814224lfc.131.2021.10.16.03.54.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Oct 2021 03:54:17 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: 
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Getting rid of the reset controller in i2s-tdm
Date: Sat, 16 Oct 2021 12:53:49 +0200
Message-Id: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_035421_339346_7E9EF3D0 
X-CRM114-Status: GOOD (  18.37  )
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

Hello,

after some discussion with Heiko on IRC, he has admitted to me
that the rockchip,cru property, and its corresponding half a reset
controller in the driver, is weighing heavily on his mind.

The background is that if the lrck only uses one clock for both rx
and tx direction, then according to the downstream driver, the rx
and tx resets should be asserted at roughly the same time to keep
things in sync.

Since there is no existing kernel way of doing this, the driver
would manually write to the CRU's registers to achieve this,
violating abstractions.

We've agreed that an atomic bulk reset API would be the best way to
achieve what it does in a clean fashion. The details of such an API
have yet to be worked out by me, but as it turns out, this is not
a pressing need.

During my investigation, I noticed that I can simply drop the
synchronised reset for now and assert the two resets manually one
after the other, and deassert them in the same manner.

For the case I care about, which is audio playback, this seems to
work just fine. Should someone actually find a case where this
causes a problem, it should be fixed with an atomic bulk reset API.

Patch 1 removes the direct CRU writing stuff from the i2s-tdm driver.

Patch 2 drops the rockchip,cru property from the bindings; they have
not yet been in a kernel release, so as far as I know, we can still
change them with no regard for backwards compatibility.

Patch 3 adds the rk356x i2s1 node without the rockchip,cru property.

Patch 4 adds the analog audio output on Quartz64, included here for
Heiko's convenience.

Regards,
Nicolas Frattaroli

Nicolas Frattaroli (4):
  ASoC: rockchip: i2s-tdm: Strip out direct CRU use
  ASoC: dt-bindings: rockchip: i2s-tdm: Drop rockchip,cru property
  arm64: dts: rockchip: Add i2s1 on rk356x
  arm64: dts: rockchip: Add analog audio on Quartz64

 .../bindings/sound/rockchip,i2s-tdm.yaml      |  16 ---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  31 ++++-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  25 ++++
 sound/soc/rockchip/rockchip_i2s_tdm.c         | 126 +++---------------
 4 files changed, 76 insertions(+), 122 deletions(-)

-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

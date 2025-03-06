Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70B47C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 07:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MzN3djEKwaE+KYWHOEpcw58sJgmFTZwdsrwkr5ifLzE=; b=qbnMLJRlQS2yUW
	Wo2tmU7n77qFhOC0MJYhRVKQeA4GiNUxqUEjLxzqkTgx2VxMQrLYHTTHZ6Xy5dRqJ+iFqEg49fcuT
	3/a45moIvjoUd+QdL1WMqyCqrZbBf5PI+tJ2RF/P2TbySvqIG1OEtnzmdEAM7dD+rTbHar2Lq7yor
	UyRKvRjPR7/t+Ns5fUIbKMC2s5vZpHJ1y7yqAYrVMMVU9oRZ2RVRv7ojmz59qEGXN6JheE9SUUFF2
	TfCXcUY+opxOzsMGPxkXm6P434q8nUMXCeCaGlB0hSF20hRIXMyi4pcH7mTxGydRwvh4Q/MGcg7mj
	GeCBQGzhWqdh3p1WQKEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq5fR-0000000AD2E-3Ax4;
	Thu, 06 Mar 2025 07:29:17 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq5fP-0000000AD1u-2PIB
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 07:29:16 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741246143; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=c/yQTHOLv4qWM64Fk26TKWzOfJ/16BqZ0lTRGc0kVMHAL3eVYX2PRPkIEELh8j48un+5A5L8xYCoowD5QtBdq9RdPpfKjkH5RWRTbQhRsAKWCdJbkdN4bG6WiBmTsNDoDv5logL2j+frfZn6uc/MpaMmxsoKoUxyiHuRpUELqmw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741246143; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Q5GzDG7AmYcYGiYR79yXGNLNOCQIbUs0T12AgbvzwoY=; 
	b=HcDfXu3nMO6JF7g2nkP6iyRPct4PDNiLw7GF71RU+Ds0Fdwj+nW6v+RQVm5ddWMEH7ARJttpu/0oUqNAite8Lo8oEQSVvRIaQ8fOyF4D0M5El80cthX5F3uxCe1US2lhujNerjf/sCdmkpfYF6pmld6XWwh+3VoOi8PDPqfh+AQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741246143;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Q5GzDG7AmYcYGiYR79yXGNLNOCQIbUs0T12AgbvzwoY=;
	b=DxA1Rxkz37IjAc9PReY8ChI6Q9UeQv5KlZiJ2YXRCKHzn5/J/hZCEFMz7gRmClZ+
	qYUmJrjwIAlD2wDKiKZeq9Kfdgqt8s3fXJJEDqcdguP32VTzoo76rActamK77RWA8I+
	k2zPgNpLWo5EEbKI8MGjqKqOK/Wuda0caSWKOX64=
Received: by mx.zohomail.com with SMTPS id 1741246140957278.66045443101154;
	Wed, 5 Mar 2025 23:29:00 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Tim Surber <me@timsurber.de>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v14 0/3] Enable HDMI RX controller on RK3588
Date: Thu,  6 Mar 2025 10:28:39 +0300
Message-ID: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_232915_678961_5E4E6E87 
X-CRM114-Status: UNSURE (   9.51  )
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

Hello Heiko,

This is a follow up to the v13 of HDMI RX patches [1]. Hans queued the
driver into the media tree. Now the DT patches are left to apply, could
you please take care of this series if it's good to you? Thanks

[1] https://lore.kernel.org/linux-media/20250304085819.108067-1-dmitry.osipenko@collabora.com/

Changelog:

v14: - Re-enabled LOAD_DEFAULT_EDID=y option in the defconfig and
       added ack from Hans Verkuil fot that patch.

Sebastian Reichel (2):
  arm64: dts: rockchip: Enable HDMI receiver on rock-5b
  arm64: defconfig: Enable Synopsys HDMI receiver

Shreeya Patel (1):
  arm64: dts: rockchip: Add device tree support for HDMI RX Controller

 .../dts/rockchip/rk3588-base-pinctrl.dtsi     | 14 +++++
 .../arm64/boot/dts/rockchip/rk3588-extra.dtsi | 57 +++++++++++++++++++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 18 ++++++
 arch/arm64/configs/defconfig                  |  2 +
 4 files changed, 91 insertions(+)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

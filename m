Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE49C606A331
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 08:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U2s16ydc;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=FU/uU0Pn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=MnfKorXDqe0teuIKX4klZl/QjlyMJwS9Lq8KtH7RAhQ=; b=U2s16ydc2vSxldxuaQUHP4GBmV
	SgFaLx/rqSTCKYicts5+Gy0C1zNo5qOeHCOGnBbgTE58JJtFOJFL6r1kydrJDiavI00yDtcqqCS7C
	IGju17MWw4Gfs2UBU8MmCtjpNbZo6D1nZOzD1LdYpwNnou3KdSvHFiCB3C84HpPK8W4Y5SgHN/2+O
	CNiOxDqZL1L8gG2frhVVl1i2PBBRIVYLuEi9jYVjMe2ud9ur/+C0W9FXzKSeJHSbi9xTTr81vA/TW
	5esd+qBAgI1ys/elNT1jKCRZWM3/ZaMHPRhvZYJexNaIxhG2KQFooMz4KYiOSY7L2X0tOd5QKQ/o4
	LJejSNsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVUS-0000000HDZo-0oQR;
	Sun, 15 Nov 2026 08:21:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVUP-0000000HDZ5-43uw;
	Sun, 15 Nov 2026 08:21:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A9194385A;
	Sun, 15 Nov 2026 08:21:29 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794730889;
	b=cbOnCvyby97a17fJt8vioEGQ9L2fTzeCwx0LGcNDsdpjXXfM/gaZaJWV9DglxLOVZSUJ
	 ubF0Wd9e6rIB1Gz+hJqKTT3TnpddcrLYkqwS2Z7lnfTWpeznr4/UApnz3oKceNjID2ScC
	 MbzHDNFh41zgwCyeSASCcOYi3u4SyDYBz4Z1kh6gLkdwooSBnj7tPAqbnjqOhgorqC3eY
	 UI6Q1/Tpafh91xmo9EfspRMG/dLtD6YAtX4GzEOkBp3mkOSkxugcaTHgDIEV8RsTOPrN5
	 cGkRlJNkCXBLl/kG36sRmfcEnKdYB6HMricyfiPsNnGqcBS3ceOiPSCPRZLsF1HhS3Q==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794730889;
	h=DKIM-Signature:Received:From:Subject:Date:Message-Id:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:X-B4-Tracking:X-Change-ID:To:
	 Cc:X-Mailer:X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To;
	bh=2Gm1niHwn94JPZGn5PVHkH3FZDaWwSEi7IqQ6yWaOZU=;
	b=RXzRCSwG9VHByTIe3mbr/ObY404lTRiktIgZo5qFb0KoFQ7UpKKbS/LKDEtDRTjWqTLY
	 S9KW+Gpp65KfSqJPB2bA1mlGjRG+VCIyokUxRI6O0y93o7N4YriQhHzPPLgixAsaQInHn
	 /aEb/66FGlHo3dYBAaGrMrW9tU9TmSn0ti8vFQj5haGp5LHHjuwrY4NlmuOTYpDBiB0ok
	 r77IDsb0NbT9keYYtklNMMzND9w2I2m187kY+No9tjtWcdlE+pwjq1bkjh8j3aEsH1D7S
	 TJE480Y4/6HR43nVBQ+QEFdgP9N9fxIGyY/O6iKI/4l1rLZpOQf7QoaDiDxUMLTfUDA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id B50CE1F000C4;
	Sun, 15 Nov 2026 08:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794730889;
	bh=2Gm1niHwn94JPZGn5PVHkH3FZDaWwSEi7IqQ6yWaOZU=;
	h=From:Subject:Date:To:Cc:Reply-To;
	b=FU/uU0Pnjc5CleEYBEa46Fym4G1kTC4QrQ9ag3U9TyliL2muCNBmvfGipOukpjpmS
	 2bHLHtjGy5VcqcYgWBlXaxfwN367iItBHLIkxr8fPu5/HHgpt24KcHSgospPf/OsRv
	 Z5koIfvJdejZO2fe+xIfxXWzpKL7z9cICsKaA+95UYBpxdf8yjIcOiY8uM5euf0CyT
	 vSns0xZXKjlNrDZQ6HhWietwg3ui+dVUfhNrc5lbJBCPg0EMmI0qoKIp5Q3x/sOIvg
	 uc3FqgPKkkA5EdKK2Uqnkx0efRA9ZfkOssPzVAwqcxaGvqfd7X3olr/pXbasdPkFRC
	 E+yT60tvtRQmw==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 1543F49FDE;
	Sun, 15 Nov 2026 08:21:28 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Subject: [PATCH 0/2] media: rkvdec: Stop VDPU381 and VDPU383 cores on
 timeout
Date: Sun, 15 Nov 2026 08:21:27 +0000
Message-Id: <20261115-rkvdec-wdt-stop-v1-0-59e687c6cc63@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/y2OzW7DIBAGX8XiXCwWcMBWVfU9ohzwsrTUsp0CT
 tpGefeSn+NI387shWVKkTIbmgtLdIo5rksFeGkYfrrlg3j0lZkUcgcAmqfp5An52Reey3rk2Cs
 re6OhR2T16pgoxJ+7cX94cN7GL8Jy0zwXib63miqPGZspZ3dPDc3rs6RASN3tWg1dJ5XhwF07u
 b+45On3PdYX1jZtbzff6DJxXOc5lqHRNlDnjFUaEYSwYK3xZkTfhyCcRudRBWeRHa7Xf5WFBgj
 9AAAA
X-Change-ID: 20261114-rkvdec-wdt-stop-c938297419cc
To: Detlev Casanova <detlev.casanova@collabora.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alex Kazinsky <a.kazinsky@ideco.ru>, stable@vger.kernel.org, 
 Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794730887; l=1762;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=vXWQKYqD65FGosSnp3CAGgFjhJ+XWPam2Tye34T89dI=;
 b=2i2GBE9TZ5786AIiy27G0vx6e0j71HcTkOrGbu5PMhpK7IEv5Spj9aGfiDYZzqjRYpmkN0l+8
 EgZ+OjQtN7LBMlRglqt/sq4LBCzBbMkZ33U6J9qr9fEs03gBunTosVQ
X-Developer-Key: i=aiyengar1990@gmail.com; a=ed25519;
 pk=zXpRgUTrhaFe6jLyPqbBy3ccfkj04w0g2690Wv3mg+0=
X-Endpoint-Received: by B4 Relay for aiyengar1990@gmail.com/20261110 with
 auth_id=1480
X-Original-From: Arun Iyengar <aiyengar1990@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: aiyengar1990@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The rkvdec watchdog writes an RK3399 register on VDPU381 and VDPU383,
so a timed-out core keeps running after its IOMMU and power domain are
suspended. On RK3588 this corrupts memory and panics.

1/2 fixes VDPU381 and is board-tested. 2/2 fixes VDPU383 and is
compile-tested only.

The series applies on top of Alex Kazinsky's "media: rkvdec: Handle
interrupts without a current context" v3 [1], which touches the same
lines. For stable this needs [1] first.

Tested on an Orange Pi 5 (RK3588S) with KASAN, my pending
rockchip-iommu fixes [2] and the watchdog cut to a few ms: unpatched
panics within 8 s; patched, 5955 timeouts with no KASAN, IOMMU or WARN
report, fluster H.264/H.265 unchanged.

Developed with Claude (Anthropic), which wrote the code and the commit
messages. I reviewed every change.

[1] https://lore.kernel.org/linux-media/20261113102456.4155237-1-a.kazinsky@ideco.ru/
[2] https://patch.msgid.link/20261110-iommu-rockchip-faults-v1-0-b1dda574dbb8@gmail.com

---
Arun Iyengar (2):
      media: rkvdec: Stop the VDPU381 core on timeout
      media: rkvdec: Stop the VDPU383 core on timeout

 .../platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h |  4 ++
 .../platform/rockchip/rkvdec/rkvdec-vdpu383-regs.h |  4 ++
 drivers/media/platform/rockchip/rkvdec/rkvdec.c    | 82 +++++++++++++++++++++-
 drivers/media/platform/rockchip/rkvdec/rkvdec.h    |  3 +
 4 files changed, 92 insertions(+), 1 deletion(-)
---
base-commit: 48fe5a7834cc10081887d7bcd9ff0a4cadc3fa8c
change-id: 20261114-rkvdec-wdt-stop-c938297419cc
prerequisite-message-id: <20261113102456.4155237-1-a.kazinsky@ideco.ru>
prerequisite-patch-id: 4199405920f24e49b3993996a6bd951136e52e92

Best regards,
--  
Arun Iyengar <aiyengar1990@gmail.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

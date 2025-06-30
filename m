Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DA4BC8302D
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 10:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Message-Id:Date:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nVZihBLK8onx8iAnYe8NrxePZmIv3z9qATrf3NQm5e8=; b=SJq900q8FpkueT
	Fr5bRgxZiEjnvHCyCm3nfN35tqEOcv6d7CAEn6N0nhXJAb5M7Iq+4jb4cO4DJLQuAjHZYkOu8I1nu
	2HyjT+3qgXyaJKV0lNzY2du4QR7e5G/SjwIJGM+iMqGVVUOdN123kHcVQp5TE+9AzjSkKlHshiuYx
	FmfoCvTq+dxUYHccjfYUP16LRIGUI6wconckmwMpsY8Kttt/sBMWHvvUntCoa0FQ1V6vg2DiLXHbT
	ALlIagmcY6rYhFrhUHneBRraOfxoYjDvVTJHStF+OVikLU+/7yApxJivdVYea0D5XJb9XM0DRhpRT
	szxnND3AwxDqsMRCdLWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWBrq-00000001uBU-0Z92;
	Mon, 30 Jun 2025 10:36:06 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWBc1-00000001rqV-1j9C;
	Mon, 30 Jun 2025 10:19:47 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1751278772; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=nTcNtKcloDdymRlkpRP4fB7sHusL8piBZ4H5npQMqp1sE22KmQFYNcbjTb3JhME1X1R/aZlDrRf7x+2Hd+5LIKVZOE4qY96t9g0BIdQMOyMKfsAl9E8FjnxTf2uLuNEUOZzuntkpg/F3Sd6r9Uq7Z7ndrApTdUalNlbgLpX1c+I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1751278772; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=RMvPmaezlA9RzKU+IRM+ug9qE/4EpGSw9P74OlSc7q8=; 
	b=lBCg8mzKxBS0SrxPrZ9MyVjKA8SnenrW339VkAwnxtJksvbyyvFfvGM8Qv9535OMXrnf55gIlYzAS7xN/EL34hus317MD3abVhCnyylELQMF4YPzfGzEB7IPwI1+xE5orMTeM88VJ3aT8WVOlyK9OQ8Ch14aAxRS17+LDZFe6dc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1751278772;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=RMvPmaezlA9RzKU+IRM+ug9qE/4EpGSw9P74OlSc7q8=;
	b=eTDWlGHF8nmux7M5jX1nzOEksXOzPGXQkUseQKNpOJrgD1+wOKjSgulK96eSciJ7
	hmYNaCy9Y/Ddpb1XLW9EXjL+4wIevgRKoShtwIWq3J/OD7151KVEKcK4SCexUCi+mjC
	6JkhLjzqOwUs16dqR1f7jkzKbmKezxb21vkbSv38=
Received: by mx.zohomail.com with SMTPS id 1751278771100466.1546626645253;
	Mon, 30 Jun 2025 03:19:31 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: [PATCH 0/4] ROCK 4D audio enablement
Date: Mon, 30 Jun 2025 12:19:23 +0200
Message-Id: <20250630-rock4d-audio-v1-0-0b3c8e8fda9c@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKtkYmgC/yXMQQrCMBCF4auEWTuQRm1LryJdxGSigzTRSSqF0
 rsbzPJ/8L4dMglThkntIPTlzCnW6E4K3NPGByH72mC0uereDCjJvS4e7eo5oQtOD6HrR6tHqJe
 3UODtz93m1kKftaqljXC3mdClZeEyqUhbwSafNczH8QPJdBh9jwAAAA==
X-Change-ID: 20250627-rock4d-audio-cfc07f168a08
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_031945_521348_0ACF7FCF 
X-CRM114-Status: GOOD (  13.63  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The ROCK 4D uses an ADC input to distinguish between a headphone (i.e.,
no mic) and a headset (i.e., with mic). After some searching, it appears
that the closest we can get to modelling this is by sending a particular
switch input event.

So this series modifies the adc-keys bindings, extends the adc-keys
driver to allow sending other input types as well, and then adds the
analog and HDMI audio nodes to ROCK 4D's device tree.

It should be noted that analog capture from the TRRS jack currently
results in completely digitally silent audio for me, i.e. no data other
than 0xFF. There's a few reasons why this could happen, chief among them
that my SAI driver is broken or that the ES8328 codec driver is once
again broken. The DAPM routes when graphed out look fine though. So the
DTS part is correct, and I can fix the broken capture in a separate
follow-up patch that doesn't have to include DT people.

Another possibility is that my phone headset, despite being 4 rings and
having a little pin hole at the back of the volume doodad, does not
actually have a microphone, but in that case I'd still expect some noise
in the PCM. Maybe it's just shy.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
Nicolas Frattaroli (4):
      dt-bindings: input: adc-keys: allow linux,input-type property
      Input: adc-keys - support types that aren't just keyboard keys
      arm64: dts: rockchip: add analog audio to ROCK 4D
      arm64: dts: rockchip: add HDMI audio on ROCK 4D

 .../devicetree/bindings/input/adc-keys.yaml        |  3 +
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts    | 98 ++++++++++++++++++++++
 drivers/input/keyboard/adc-keys.c                  | 16 +++-
 3 files changed, 113 insertions(+), 4 deletions(-)
---
base-commit: c6a68d8f7b81a6ce8962885408cc2d0c1f8b9470
change-id: 20250627-rock4d-audio-cfc07f168a08

Best regards,
-- 
Nicolas Frattaroli <nicolas.frattaroli@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

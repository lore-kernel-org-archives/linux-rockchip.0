Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EF4AC982DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2CObSdRRlNo0JdDZKPL4CzUbEM/Ph8NH6+QUSq0/4c=; b=rQ7i2w4EzJs/rj
	8ucxl76X8e89OwhxiLfWSZBSbQcvfB6dTTsnTViPj/5787Lyv18AgMnJ5boBzKwTvoMggCkAfQEMD
	NCPA7NlPtIpU6hNIoEaO2irq4PbRHykJxLLEuAxHEpgm4QC4d/oL+lQK833dm3QE+SsL4vQgbh5ci
	G7NoVUW2IkUzsCwbDkXVSeDsjkb+lZq30+OI1Yq8Igro1JlN+s9A1cL20c3jGNXZauq1hulHbeIbJ
	kRUsm+AFQn27rdUSRjSTPN4f1b8BzRvBQ1d2+CDDlsqaCDfe5GNhkG8kcTx64WZe6eNdlpgIxyKFD
	RNwfWFM9/HK/tP3TZ7+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EC5-0000000Bi1U-3K17;
	Thu, 17 Sep 2026 15:38:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EC4-0000000Bhzp-1QAz;
	Thu, 17 Sep 2026 15:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+ZwHurz3qFcCVqb+Po4Y9Ihna8FWaKNv9CmUUvvsfgU=; b=JsB4rJfO7RtUIp3mDH6eem7lit
	NCoTxzhU1WscyASWnpqsvFJV5A+4O5mARzNDz3tkeW/LOgVsFNnye5qUvoadM6Y7bQD5aunH2tuec
	rq/EWcHy0FhxzfQFcsfDb9TbRPlJIXBVYvFyzEVBh1PWX4khAXAldt79n+mYrNnDy3ojqJSgR5l9Q
	c6r/w6k1IiAXdzM2f+8ltOQan5eDVN23K7cMDj21LoWxjtghQQwDzSTNjy8Uy7jeEQZSBCGELM5S7
	cueEowP+8dA0SFvlykLkvHNyMIkJt/0YKYJhjZxES/Ybv4LRWQNc0Mz678Fjvd+B/p9q2XMLDZ4rZ
	Gby69Xig==;
Received: from mail.fris.de ([116.203.77.234])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x7EC1-0000000904H-1R5F;
	Thu, 17 Sep 2026 15:38:35 +0000
From: Frieder Schrempf <frieder@fris.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=mail;
	t=1789659510;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+ZwHurz3qFcCVqb+Po4Y9Ihna8FWaKNv9CmUUvvsfgU=;
	b=yTWxLlYw1KqUHOP5FcIkQPRUYyLClpMooyMYFjHeTr9ZApu9jZrr2J4LkSH2rIWiGugFZc
	s58U4d/dTKkB0uANlthpON4LpCTf65fAdV3oLnZ68EQpGJCbzB35zXjK/lYwnVivhJztns
	FiQemcCx89E9Z7u9y8L5bI2L+PWyaNMM3vzX8ZXhD5+nKmfrIZFVf5OiREhYfyi0VoG8V5
	KMlLkGczxO5ldu2OPhgG6AynJ6ucozkcPIkpwRMqZ9c8whqwPDy5JdHYPfRoUcL00iuTL0
	2jUZdB497MXZwjqjy3YzLxNj0HQxY2oswi+QvxAcIOybihZHGE1T+ztutmx0lQ==
Date: Thu, 17 Sep 2026 17:37:37 +0200
Subject: [PATCH 3/3] spi: dw: Use the rx-sample-delay-ns value parsed by
 the core
MIME-Version: 1.0
Message-Id: <20260917-spi-sample-delay-cleanup-v1-3-0e4eddbfb1ce@kontron.de>
References: <20260917-spi-sample-delay-cleanup-v1-0-0e4eddbfb1ce@kontron.de>
In-Reply-To: <20260917-spi-sample-delay-cleanup-v1-0-0e4eddbfb1ce@kontron.de>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Frieder Schrempf <frieder.schrempf@kontron.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1983;
 i=frieder.schrempf@kontron.de; h=from:subject:message-id;
 bh=dNE9qYNVl7I4xsD6/HfPBsDDqC3FezGj/mUMdwpPGY0=;
 b=owGbwMvMwCWWWSatKlDTJMZ4Wi2JIWsNZ2n38cNpBqmnf871Cvpyc+LkRdM0tEI1V/7dt/Nrz
 YTo2jv6HaUsDGJcDLJiiixS/Bavbc1ifeSPVUfBzGFlAhnCwMUpABMJNWH4n/jzkvLpB5Zqr6w/
 K7fE702Rle0XZ5pnmP0n4+mfQ07zZRgZjocbPvq0dSF/julNJZdDFblbuK06knonCSzdmrOwwVG
 LFQA=
X-Developer-Key: i=frieder.schrempf@kontron.de; a=openpgp;
 fpr=1A0F38EB3D365D4C1FC67B5A69761B25107C8216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_163833_600135_CAB3B7D5 
X-CRM114-Status: GOOD (  14.56  )
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

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The core now parses the "rx-sample-delay-ns" peripheral property into
spi_device.rx_sample_delay_ns, so drop the private copy of that parsing.

The controller-wide default is deliberately left alone. It is read from
the *controller* node into dws->def_rx_sample_dly_ns, which is a
different node and none of the core's business when it parses properties
of a peripheral.

One corner case changes: the peripheral value is now treated as unset
when it is zero, whereas before an absent property could be told apart
from an explicit "rx-sample-delay-ns = <0>", the latter overriding a
non-zero controller default with no delay at all. There are two users of
the property in the whole tree and neither does this, and zero means the
same as unset for every other user of the new field.

Assisted-by: Claude:claude-opus-5
Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 drivers/spi/spi-dw-core.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-dw-core.c b/drivers/spi/spi-dw-core.c
index 206d3f9dd83d..b86b607cc817 100644
--- a/drivers/spi/spi-dw-core.c
+++ b/drivers/spi/spi-dw-core.c
@@ -1104,12 +1104,13 @@ static int dw_spi_setup(struct spi_device *spi)
 		if (!chip)
 			return -ENOMEM;
 		spi_set_ctldata(spi, chip);
-		/* Get specific / default rx-sample-delay */
-		if (device_property_read_u32(&spi->dev,
-					     "rx-sample-delay-ns",
-					     &rx_sample_dly_ns) != 0)
-			/* Use default controller value */
-			rx_sample_dly_ns = dws->def_rx_sample_dly_ns;
+		/*
+		 * Use the per-device value the core parsed from the peripheral
+		 * node, and fall back to the controller-wide default when the
+		 * device does not ask for a delay of its own.
+		 */
+		rx_sample_dly_ns = spi->rx_sample_delay_ns ?:
+				   dws->def_rx_sample_dly_ns;
 		chip->rx_sample_dly = DIV_ROUND_CLOSEST(rx_sample_dly_ns,
 							NSEC_PER_SEC /
 							dws->max_freq);

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

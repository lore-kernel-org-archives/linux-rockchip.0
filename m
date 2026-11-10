Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B762F606A331
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 07:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Zq/Gtxzm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=MUo6AlYA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IrAoXRSwfSHDNzU0Ilc52gbpH4pRvw4+FTlzY4oDMXM=; b=Zq/Gtxzm3JL06JKO3j0qYEIKv9
	lMZZfucDgXJ6YxNE30aC22I6M1FBBAon5TqVVD63vCtQLEHgH2Cl37vfJaj7MjsE+sCOMeOthRoFy
	aG7KEt1Z0aQtRO2G6qEJyLpeWYCOx0INOgdZyABYIBNG552m0Oqs7Y5R6RA8lZbxfRQajfiABkNTH
	5O6noMJBWatlbRs9glpdBOR22+mN4oZ1xv2M3h5z5JxNAwaPJ2Ei8PyQxN9QaDGubR0kOjIQwSHN4
	k4iz09b3CmItoiM7FhTGzKItx6EIA6BkZN5WTb6Exr5Cz2b1Ya/KA6ZoGVRP+8eqvTfBO72KGiHha
	rZkB5cMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQg6N-00000002oX5-2bPL;
	Tue, 10 Nov 2026 07:17:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQg6H-00000002oRT-2eD6;
	Tue, 10 Nov 2026 07:17:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6784463799;
	Tue, 10 Nov 2026 07:17:00 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794295020;
	b=vrbrI/rHDQ1T7krxW0O5ExyBptna2MLxZ/v7DRoOK73UZCrs62abC87i3fQBji2HrLMl
	 bacVl6j66lJdjlGUpSuoZc4of85Yoc9RtmjIyOxplkxg6bjDKrg86DlYFKR6hfAorSBGf
	 /g+mFzkyynKo+Xbsx0jC/lRPKU+iL7Ck6NTzLtHoA1cGneRbbE75SUExNa8BP3947m9u+
	 HbwmBGzAZhfUD3mS3iFPTHS9XcHqOGgKD5L+HpHgz0lKUq0oRobUgIpIakyyVGTjARnKi
	 ui62MQeMemHW1hC2J32s9MHG8PS3Zk+nRTAVlKdiB+LJW3U1gJbD+kdm9CPTzFHZxaw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794295020;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=Xm/hDezALdKgLZC6Xh1IsOS0PUBPGaKTPc3nHwBJQ/4=;
	b=V/WwnkTC7vQwCT3y21GHDMtQV541zJMestfOvsQJibDkg5s7fk5gHtPGuqRJc8wotMM1
	 EsFJDv96qkC/jLsw3yKD/78QsFbiYHcdRPW9irOfk0sNccrRyWfl+eLkABYgKv4Ul69P8
	 SqjBKmiz48ZuEj136anhPgihMZief7FP7CKtA+2yX+21JaIvpxWMqZXvHtK65SUWizp40
	 tM7bwF5GWJIoItgSQBd2ogSMdLO9d3lAQUdLBMyuLHwEpQUvnx+rpMKUx5G/IhuttaETG
	 RJ/pHUENEYxUXE8VlK2JCu83vScQm55dmT7DmcYO2EM/AZHfUwrGxl5v/dk6s8bf18g==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id E2D001F008A4;
	Tue, 10 Nov 2026 07:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794295020;
	bh=Xm/hDezALdKgLZC6Xh1IsOS0PUBPGaKTPc3nHwBJQ/4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=MUo6AlYAI+MyxMt8KCEB4MD4bflYgACIs06smMQeCtcrOsGQJqsCb7YvCI36F7K3p
	 SBT3H0dsc5kfe0Ybxb9bj67PzQIzgZa9X4YLD4Ys47R1TOJaaxInOrpqd70HLcUIsy
	 OVKSL/ku65KAoAs8B2r5XTQrcXhwUfHhmxSDPmfm0oZFALgA6296tJTVZQO+lqjE0Q
	 k2a7qjxHLZ/KNHTri8LLup2UebaybPCAHjnKBgS3F5UNQlfIUVoVzH60rbEsMYOy8b
	 f9lWQq0nSfVQkxYnYOqueb01N86ensMf9jMrWmvArjxycvjgvTG/B6GHEvm4dOrttj
	 qGCQu6NRpDtsw==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 74BBC4896C;
	Tue, 10 Nov 2026 07:16:58 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Tue, 10 Nov 2026 07:16:59 +0000
Subject: [PATCH 2/2] ASoC: rockchip: i2s-tdm: add the reset value of XFER
 to the regmap defaults
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261110-asoc-rockchip-i2s-tdm-v1-2-f32951b3c527@gmail.com>
References: <20261110-asoc-rockchip-i2s-tdm-v1-0-f32951b3c527@gmail.com>
In-Reply-To: <20261110-asoc-rockchip-i2s-tdm-v1-0-f32951b3c527@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794295018; l=1378;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=tfT+jEvZfGZPAFf1LpE7sgBjWqRXKwyeQFTfBhDpaGw=;
 b=YA1G5nxGLOCp90pxzz2hYjwcZlCjhLKo+suxmsn7T/GVXpGZfLXsiynDfnogWAhXP0lSCYmGE
 t0A4QEnH8I6A19D8HzUVF2nvpDc/Trndk0VEaZToOuTFuXSLZQMgCw+
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
X-Spam-Status: No, score=-14.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Arun Iyengar <aiyengar1990@gmail.com>

I2S_XFER (0x1c) is writeable and not volatile, so it is cached, but it
has no entry in rockchip_i2s_tdm_reg_defaults[]. The flat cache then
treats it as uninitialised, and the first cached access of it -- the
regmap_update_bits() in the trigger and stop paths, or regcache_sync()
after a runtime suspend -- warns

  rockchip-i2s-tdm fddf0000.i2s: using zero-initialized flat cache, this may cause unexpected behavior

It is the only cached register without a default: TXFIFOLR, INTSR, CLR,
TXDR, RXDR and RXFIFOLR are volatile and all other registers have one.

Add XFER with its reset value of 0 (TX and RX stopped), which is also
what the zero-initialised cache assumed so far, so no register value
written to the hardware changes.

Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 0abd200a4268..63ef7f676a75 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -926,6 +926,7 @@ static const struct reg_default rockchip_i2s_tdm_reg_defaults[] = {
 	{0x08, 0x00001f1f},
 	{0x10, 0x001f0000},
 	{0x14, 0x01f00000},
+	{0x1c, 0x00000000},
 	{0x30, 0x00003eff},
 	{0x34, 0x00003eff},
 	{0x38, 0x00000707},

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

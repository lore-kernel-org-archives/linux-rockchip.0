Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE14606D80F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 23:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=V+Ek5BoO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=rLV8emy3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=4Fj4qKuuokcGmkkKDny6TMgoGIurUX/o4mEfFjXTuBE=; b=V+Ek5BoO033BiuaDaGumwaThUm
	BAJj4PZxi3IucLWyye+WzWejwbaIoAdQKbBFMsoxQ7FLTrW52JQsws6lL7gyOkV9DT9fkaToopC4F
	w9jjVHHF3UJeWJv8QO0ECSI0cav1fNZxn2NyrwMEteLAGbb5B97ltJPrjRpzM+9uiuNeWqBMnnryZ
	wSwi1jeqry2X9Wlz1cG6TmbSQ9G/OQif9nykQTMhq/VseZtI5ovB3ljuy6DnzPIa29Jwp7F4IoSdk
	ObDNC14HGhF8RHHwMYB8bOtnV6g0qCJQ0Acgr6JgZcIYXpd9hasGheH/gw6KsjPpAflIFhD+E7rmA
	cP5VFLmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP6nz-0000000ArSQ-14Dm;
	Thu, 05 Nov 2026 23:23:39 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP6nv-0000000ArRE-3IoC
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 23:23:38 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-3b09cc7ed1aso17896a91.2
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 15:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793921014; x=1794525814; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=++VDHdPlpTNkCnA4mn1+LWZP5PXeiA0pzKCa5Fy4gJ4=;
        b=rLV8emy3gLOR5LFW5bcajQiw+ePUQC2tWpPzEo2mRgVs6AxJEGiQnpc+Ds/tAB8de7
         hKtl8yVdWKw0FnSL/t+i+rD3f82t8ln6KHosQcilGupkv9+g4YCRy7p71CaFhBryKg1y
         ZQV0E3OnHhgdfZoqfC7YcLBo668rVXpABgGuKuAiFkKX/sjcPM87pE3+bI7/a2EPBrCe
         ERNj7LJlvxoD5e77tj1jwtvgfhTNcMJuGNq1F75nwbuzzB8JV7Moe720UOTM0UvCr2GG
         YLV1zMelAev0q/M93xxzS3u86HlpFVFsqm+hY4+yXtojS/ekMQgQebZpxFfdwPISbBL3
         39lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793921014; x=1794525814;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=++VDHdPlpTNkCnA4mn1+LWZP5PXeiA0pzKCa5Fy4gJ4=;
        b=laYL/aQELQNvnuu3Wosf0EVnYZrpVmSm7B3pXDnHTw9hPWN1BWGIs1NZpZJHTCIHH8
         wWYexFiGdBVJqIyW39rrW26dTKKIhnDAcKZK0esGeIpx3NNKxAUYV9BgRZuK0QIUXx2D
         bdKM+G6Mr7UY3M2lDwdnfdcO4SBoIdlltd8rXDeb+JQEfC8rRfjjXTT0fUNW8HDKu4kZ
         1HFg6XDCArqYDmuVDSaaNc42mpyigrfDt32HRjmKrmWFyhFBXym+jzkG4uWVwzztIFaA
         IQEQtMrGtHhew4kh2F+zYkrTX8IowNUi5aQ0t3AvhzbpERYWXe9mMi39yUrUCIzaE7hj
         fYsg==
X-Forwarded-Encrypted: i=1; AKwUvByfiXqOq++WIDyIRUW0pcsEiPnet3NzWrJtIJ5FyiiPHnYC61yxvfs7qmT1h31Yoh4Rx8Gc5EGBjVo0me13hQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/HdVwBtpyGcJX/j3pwz+JiXBhUj0FRITgbbKrS5v6ptHiQTlWo
	TWkiQqgodbhcBMqDgFs22w4Qt+7kdPgyPCY/SGxWEFSkbz9ZQtEfqEBxElIaQWfE
X-Gm-Gg: AYBFou1O0G5QWloZYmZJ4UsSRnzh7wwOtUp73+knLtM3x1gxABcDZrxbBUEkEsxA2F/
	aiZZjFNJcYQF7I9lGj7SQjM/JOMhqpGhJFPe1WCdjeCGIr/gjhgkHzycrMNYABz52c9T/riK0J7
	tFxlNMPuXPX3emo1hfqXthfaJjteVO42/yQdDHB9p1GAxNGzXHS6Fsmapsn+gI/p3nwHqgvwRh3
	94VJZxO220URKW+ech3o729uuwq4KKL2zJRhQTpxxi0JYTC09yMoZ1UaXeNiCVyVC1p7qONv/lo
	B/L2aS5GEeRq6gYilb/gvWav4WqT6xpgAeZN3UT2mZn242KEgeFOQjE+L8T3WkZwH+j0bIJJZgs
	ozt7zvJB1Jf7mzNSGEuJqk/H/eZO6eI+KKSjRMCGYC8n7RhsgER5vAyeRgUbUOsqPxAC1ZBCEX1
	0c3AmqGN8rdYfq8JHqp4XXo12xgwz0rkGhbASoQBGvO8wui6pz+QKuzxbqYC2kQe7m7rEa++5jM
	nUK+vEVBrqTbS3i2bC13kKzEdB8jzAy31CkgJdHKKvKWV4dT+wqAZ8OTPrgd8/FRcuq43oAWo3q
	l56G0zCsLP4E0zm/8deU1zHnnADCWM6oqgQ7ukCsot4B/wrdcEkzYEqvdfZSjQoS6gEoJ6Q7kDb
	0KA1MBF8=
X-Received: by 2002:a17:90b:2590:b0:3a0:c1b1:45fb with SMTP id 98e67ed59e1d1-3b0db014274mr896768a91.0.1793921014532;
        Thu, 05 Nov 2026 15:23:34 -0800 (PST)
Received: from FAIZEL-KB.. ([2001:569:5b64:e100:f564:53e0:ae9d:9600])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3b0b323cd3csm5317297a91.3.2026.11.05.15.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 15:23:33 -0800 (PST)
From: Faizel K B <faizel.kb@gmail.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>,
	Michael Riesch <michael.riesch@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	libcamera-devel@lists.libcamera.org,
	Robert Mader <robert.mader@collabora.com>,
	Faizel K B <faizel.kb@gmail.com>
Subject: [PATCH 0/2] media: rockchip: rkcif: ENUM_FMT and bytesperline fixes
Date: Thu,  5 Nov 2026 16:23:08 -0700
Message-ID: <20261105232310.385463-1-faizel.kb@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_152335_825972_A547E7C2 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series fixes two issues in the rkcif MIPI capture path, found while
using the libcamera simple pipeline handler with a Sony IMX415 on a
Radxa ROCK 5B+ (RK3588).

Patch 1 makes VIDIOC_ENUM_FMT honour the mbus_code field, as required
for V4L2_CAP_IO_MC devices. Without it, userspace can select a pixel
format that doesn't match the media bus format, e.g. a different Bayer
order, and the captured images have wrong colours.

Patch 2 aligns bytesperline to 8 bytes, as required by the MIPI DMA,
and honours a larger value requested by userspace. This allows the
capture buffers to be imported as DMA-BUFs by the libcamera GPU
software ISP on Panfrost, which needs a 64-byte stride alignment,
instead of copying every frame.

Tested on ROCK 5B+ with IMX415 (SGBRG10, 3864x2192): correct colours
without any userspace workaround, and a stride of 7936 bytes accepted
and used for zero-copy import. The corresponding libcamera change is
under review at:
https://patchwork.libcamera.org/patch/28662/

Faizel K B (2):
  media: rockchip: rkcif: Filter enumerated formats by media bus code
  media: rockchip: rkcif: Honour the requested bytesperline on MIPI

 .../platform/rockchip/rkcif/rkcif-stream.c    | 37 ++++++++++++++++---
 1 file changed, 32 insertions(+), 5 deletions(-)


base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

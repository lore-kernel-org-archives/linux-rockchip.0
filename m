Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48C31C54F54
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 14:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4T+QiGN7PaBfSzcLJ47L6EcY+UFFzePnhQnbVFjg/h0=; b=kRkteKBEz7QC/Z
	K6ldY/ws4/2Mn8PsI0k3QniyauKUBepsY1qJAzgIBJ2KPYWrL6D1ERHCqlrss80VXP4Swr1VQxful
	vxx05Takhknw255WHYwN6mHYEmiUKfQrg/dFYaA2ExGTxoJSIVcn+nFsyP77JONn9SecCm49hOMp/
	FBSTS+pF9Gvjx7gIymEi5RykitEGws/ikqlMfNv6u16OT/zedXJRmjicLNCBRg0eV8TbsDxiEKxUp
	t0C3T6abfRSXVxUek5C+phZzHZpKTekKmIYtMGdUPNuQnoXO5PuOw00++BOD9nhLgb/UPwPYBZyss
	hlkrTjX88d8DO8wqLCVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpnw4-0000000Cfd9-1gmv;
	Fri, 31 Jul 2026 14:10:04 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpnw1-0000000Cfch-346l
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Jul 2026 14:10:03 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-84eb992a881so933271b3a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 31 Jul 2026 07:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785507001; x=1786111801; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=DMmR98zYdJ3/hNNg4PWjtIFCt0ZaQpb0CEXhOAdim3c=;
        b=NRMaoWpoUlBRLXBxfob8mJEXoThZ5Rr1mzyp/QjBfg9I0wpDUt2d2/GOyAIt4tGIZ+
         m7pMyfP+QC0rWyXaKeXpkQnTVxVoS4h1kvsI1lm7DVmjq8gOryYZWyyf/gr7JEpvliFi
         rgHsnJDeZaAyt53MSSQh9fm9fwj/P97ZYYWz8lF5Hc04pNaAFc007DleqczuN3IobQgD
         AmOlVb/Uw2q+VpAJpZK64l9AGbuYk5+MMa2IrPCaZwKmtv3xTYoplkRQDeTevt6SKuTU
         h2G8jsi6y9f9GjKH3q3f3x8dFeKN1zXY/cSsj2aaQ0ltjOt86K1UwI0StCoiwl0HPQ7j
         B+GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785507001; x=1786111801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DMmR98zYdJ3/hNNg4PWjtIFCt0ZaQpb0CEXhOAdim3c=;
        b=S6d3rDBIaiE/nouVEjcFoQbk/eQRKEZvxHMQ77Ijv+WPwPWpvCQXBMRW0FBBoUUPFP
         Zz5Je9fGKR1iBgmeFkw8tmaxwvxDVK/VGmmaP6nDkD0GHEotHJ0VbuCPj2irrpJ2ve73
         m3wl1g7sejmzBPL9J96bvsdYNAgn/XP6Zej38CyrAl00aNzPG0/QHzfPtvnBCcJT7B6n
         BAYZjjSZejzJRMzwb8GF1VO6IjSiQC3TFNfqBpI/JUzJd6YOrQa4+k6I0VERkOIYTZd5
         2sqSvUdmeGs7wGoJ3A358R1YyITYEUVLfV/UohBoCbac8GCt4g3hlDbt9z+Po4/5k17H
         llmw==
X-Forwarded-Encrypted: i=1; AHgh+Rov1MbJUG4xvmLvYGryV418WL5bz1Z915f1oABKSb8zQ6cGFXxgF1XSrJSjur47WPiJRRrb+HcWn2wM7MYWGQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzwchhV0Qx46FLtLXjFSXHBhbXO08RcpiXTgQ+LXl+Tr5K0un7W
	AWC4uYOxvC/is+QauQexTet0oAM4EHLeB4ncu0Z+HLF1iz2hozhiuRkH
X-Gm-Gg: AR+sD13sXg0K3Ofk+XDFhgIwbpIDXpqPMWKYljbe0TpYOWyTTmz7iIOEI/k2WuPtGAz
	e7yO2rjOQG1hUJfXI2MG+Z+av+GK6q59S7BcNbbszsp61DFdoGD8djgHoOUVObtGFXXqW7QyK5C
	HczsNv3IlfAvb32zra+2DGHlNRO8ZLEJbFza2IvMRze1Cps1Ea3V7IGyvyLCBtKeDEaDO34oawr
	OpgAVVnjIF/UzrKE7lDPTQuHTtUXJz8EbvreOgZa7vioyG40TFCRYLA32nHRuD0d+CxwBxixWgf
	vrs4lkOyiEuLLNwivaaEcmslrSkOTG0SeIMKLxo0TQ7WyOeIqyZuhBmrq1eu5cVrFvJBcdHdhxQ
	cB7B8UxipMzFmaHmKX7IedsIfXPvXS5J812956RnLl7ZA2LeOmLX3N0JttBNr1Bxc/MV7DT0/Vu
	JS8SEJ5CWaLtg0eA6dV1yS3nlLN/Xpj+l3hOcBs1vy/3yg7bxKQs8IpO0NUttMbXbhrXSBStzmW
	7TJQIRpeeJ6vvZ5kXLt9NgdxDC0xM6jeT3bD2g8BgAZ8w6fqMbLdgGhsHN8ZRk=
X-Received: by 2002:a05:6a00:8997:b0:847:8b11:596d with SMTP id d2e1a72fcca58-84ed726695amr1276807b3a.41.1785507000538;
        Fri, 31 Jul 2026 07:10:00 -0700 (PDT)
Received: from debian-rockchip-rock5b-rk3588.. ([2405:9800:b670:b64b:1c6e:95da:41c0:e7b6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84edc29ebbcsm506071b3a.34.2026.07.31.07.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2026 07:10:00 -0700 (PDT)
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-media@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	me@brighamcampbell.com,
	jkoolstra@xs4all.nl,
	Tharit Tangkijwanichakul <tharitt97@gmail.com>
Subject: [PATCH] media: hantro: Harden MPEG-2 control access against NULL
Date: Fri, 31 Jul 2026 14:07:51 +0000
Message-ID: <20260731140751.1183-1-tharitt97@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_071001_777809_B0E2E4F2 
X-CRM114-Status: UNSURE (   9.01  )
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

The MPEG-2 sequence and picture controls are validated
before a job is queued, so hantro_get_ctrl() is not expected to return
NULL in hantro_g1_mpeg2_dec_run(). The controls are nonetheless
dereferenced unconditionally.

Harden the invariant by checking the sequence and picture controls with
WARN_ON().

Found by code inspection.

Fixes: f329e21e9dad ("media: uapi: mpeg2: Split sequence and picture parameters")
Signed-off-by: Tharit Tangkijwanichakul <tharitt97@gmail.com>
---
Tested on a Rockchip RK3588 (Rock 5B) board with Fluster:
  MPEG-2 (MPEG2_VIDEO-MAIN): 23/43, unchanged

 drivers/media/platform/verisilicon/hantro_g1_mpeg2_dec.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_g1_mpeg2_dec.c b/drivers/media/platform/verisilicon/hantro_g1_mpeg2_dec.c
index e0d6bd0a6e44..6a942f4b8a2d 100644
--- a/drivers/media/platform/verisilicon/hantro_g1_mpeg2_dec.c
+++ b/drivers/media/platform/verisilicon/hantro_g1_mpeg2_dec.c
@@ -161,8 +161,13 @@ int hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
 
 	seq = hantro_get_ctrl(ctx,
 			      V4L2_CID_STATELESS_MPEG2_SEQUENCE);
+	if (WARN_ON(!seq))
+		return -EINVAL;
+
 	pic = hantro_get_ctrl(ctx,
 			      V4L2_CID_STATELESS_MPEG2_PICTURE);
+	if (WARN_ON(!pic))
+		return -EINVAL;
 
 	reg = G1_REG_DEC_AXI_RD_ID(0) |
 	      G1_REG_DEC_TIMEOUT_E(1) |
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

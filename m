Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B73CC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLsqjnpwgmzBWLkZw2KbuXARXtWghK33hJNZGRt/sLM=; b=aA3CT0fM9+p6Cx
	r860XyDqJxD2d8XDyb+3XmTIFZRhN8OPKo1qY6wmfnNSXNQjUFAnKCXJt56YH3cdqWOZrDHQ3VGh1
	WZrk6wpdMaccOMxmy/Hdo0+oYp85rLZZJ5+S1OPK1hKwAZWoPfbQeIRa0QZsme3L2QiMFQzur7QiQ
	Jn3M32Ctwz8DTkXV4op7a33asdGy3hSkuCxUj77ES4TOyBTcvzxEDOs3Gb1x0/Sd9Ineh7Ruvqppr
	mdBwTc51L7ce/BIQl6jc4KuI+d2GN1JhIBn0ykzhaNUeCfrlIoKC1cNkn3RHUjJL6Ss+iycfBJ8tG
	dhpT6G/xmrt+gK5o4eLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJj8c-00H6lR-HM; Mon, 14 Feb 2022 21:44:02 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJiuJ-00H1GZ-7W
 for Linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:29:16 +0000
Received: by mail-lj1-x230.google.com with SMTP id n24so21378273ljj.10
 for <Linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bvEyQB/PyceZSKFICAgr4rX9IZccsdLqr5cSBDPK0TQ=;
 b=O5Fkn+9175Dg1Xv2y/9nuCaofeltao86wRESQBPZvQaxnAEumWfk1up4sKPnZzbbGF
 HmXYHjl/VDP5dbsl88sX60+gWWkzAIMuWCVi3rgsqGUzH2YchfSzptpswWG0JLGtXz8s
 QGKDiUkR4PsSXU1eym0MLb3J2z4de6GpHnzbWdzFvphcHyZ9vyR5vAAnelAIWdOI3Ct0
 PCMB97eI/Cp2ovH06CZxQuz5FE+TWA2MNMbZ/N8+kiuDZ+A7jKy4xS2WTJMP56WV4OMJ
 4ONgDuRxhz0ClqAzeqFBoefEVAaFWd2xN8vGMhNXqvlMH6ZFFtkK1EvknD+MQQG1rrkT
 nd9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bvEyQB/PyceZSKFICAgr4rX9IZccsdLqr5cSBDPK0TQ=;
 b=t2UBU/crJ9Ct525WhTeYZdGGx1LdnbAtZ7sxWv9rKMfSoO5e2EhYbsLKtTznHNHPLI
 kV5w9jLqslYTn2GSSGa9/Lv/KmBm9Sog3IL1MHsG1nbTWzmc9gg9hXv2l/gtYOzLyXd0
 oxJGt7N6jAajUn2vOrXlEBvyGZMC4UhVl8Z58AkKWMAntjOLsfE5najExdT2GTW/HBRR
 PPWcEEilC62GmtWW6ib/tZFyHoE9MXSb9bOdXs3FN9MxfPM/L7rNH4o+pn/uH8uhmRR7
 Fhv1RaYZz26m3QYIoLb/ApoAFWvJGhlhNh3UHJJ431+W7Zwr7W66jSBS7HnvpeWWZQE/
 gH3w==
X-Gm-Message-State: AOAM530IdFae1KIDSOs8uOIkZlRasU3nCWJogjDtaUBDnERntHQUrnt0
 C5y0wGrAr2zGJhGcXqa+ywE=
X-Google-Smtp-Source: ABdhPJzidgUExYWazrcpL9i5bTa8JzEUMlW9InrSyLoYH8ESjXXhHMSlks8Qiy/MSB62O/rwQxe/aA==
X-Received: by 2002:a05:651c:178e:: with SMTP id
 bn14mr473681ljb.12.1644874153832; 
 Mon, 14 Feb 2022 13:29:13 -0800 (PST)
Received: from localhost (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id
 s2sm868363lfr.126.2022.02.14.13.29.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Feb 2022 13:29:13 -0800 (PST)
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
To: linux-media@vger.kernel.org,
	Linux-rockchip@lists.infradead.org
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: [PATCH v2 3/3] dt-bindings: media: rockchip-vpu: Add RK3568 compatible
Date: Mon, 14 Feb 2022 22:29:55 +0100
Message-Id: <20220214212955.1178947-3-piotr.oniszczuk@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
References: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132915_332045_37E53B61 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
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

From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>

RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
video formats.

This patch adds RK3568 compatible in rockchip-vpu dt-bindings.

Tested on [1] with FFmpeg v4l2_request code taken from [2]
with MPEG2, H.642 and VP8 samples with results [3].

[1] https://github.com/warpme/minimyth2
[2] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
[3] https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt

Signed-off-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index bacb60a34989..6cc4d3e5a61d 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -23,6 +23,7 @@ properties:
           - rockchip,rk3328-vpu
           - rockchip,rk3399-vpu
           - rockchip,px30-vpu
+          - rockchip,rk3568-vpu
       - items:
           - const: rockchip,rk3188-vpu
           - const: rockchip,rk3066-vpu
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

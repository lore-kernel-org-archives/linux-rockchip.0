Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27243C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Feb 2022 19:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHTp2VU4evLs7WCYn0eZ9kyrjdjAF25d6wfBRG4J+W8=; b=fNdXagnWUjEzJ6
	UYxD2/grsj8eM/hRARVrDG7+NGBwEh+yecC4wNilBHtc4qGhQ4SYiDLX54aGISewSINBJsPNSga7D
	B1qqp2jYPvNF2GrFCOVnMF6X5JRYHyC1Q+CLc8kUM6SCWPL671T6rBkJ0339GrHn44C7aA2oDzOen
	aqqlqo27Rm6O+Oyx7u3u2qzJZvRoKBiuf6v60TfSAkoUvs1ZHPtXXdAEHnJ6vXMOAq1vxrbulAqNN
	Qg24Mf4vfBbpMj5gZgxhthCsvYYrJZUhJWqjFgCIjZSoxBspLQGmtr9agLP1vVq2ErdEtf5PUVgXH
	K6mxZCXFFqdRAeJUJesg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJKvu-00COdg-6e; Sun, 13 Feb 2022 19:53:18 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJKvr-00COby-Aq
 for Linux-rockchip@lists.infradead.org; Sun, 13 Feb 2022 19:53:16 +0000
Received: by mail-lf1-x130.google.com with SMTP id g39so3493098lfv.10
 for <Linux-rockchip@lists.infradead.org>; Sun, 13 Feb 2022 11:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OsBhtQ98iI4ZnCfMYm1kTl/BmFgQLnIwAw++GaYjsQw=;
 b=MhCxjGsXoN56zt0gtOvinJkvlVklbXeA82E71sUioIWuDbHe5MIHCIwOzAZb6Sb/3W
 HBw1WcmfwkLU5u70yt5+xbNZNq/61XIp+uYUXlzqmUZae2JTuFcsbwnq1svh+RhbZu5/
 Su2YfGCk2RTJHknCIKVJNFyZGGFnnEeQqjj90dX6OJ1BiuNfAsPxrIqV8dtuB0bVH42L
 u/Q2zEizXTc5jhckntNRZfpfWE74EIYgwqmQTsRU+XCkhz4gJ7IJNacmX5xQ+TqOdBBL
 LEm/vk1EkQxFofdLNTdBbxm8r6hZ+XhzAWyb6wkBkKtRBn/Sw91DEbYwnO/yu54Fn/z2
 MZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OsBhtQ98iI4ZnCfMYm1kTl/BmFgQLnIwAw++GaYjsQw=;
 b=u74AiR57zYpQlV1xTjVA+dm8OsFtzSNSzz4pnxQ9bXIxZ7rXJGX53JVMblBdcxlfhK
 pALc1aantQFB2axeo/iWbQzos+aKBZK3OcufvPTVxO4PXy64mjLdXVx1403BNhP1ojgm
 +k0E0KfCDKNCB/u4gfwVHdE8EGM3DFqFbH3PR8VRFiwa5+iBqaiBjQA/haBh0jMpKBN1
 wwdiMX+54/3X4UVhFAnszLkMmNqt/OuXbuCru53sfetuz4Ol3Dnot19iYA0Hwc0tnGYg
 leLYu8BfuS8h8p/22pyZ/nqPVKLaCpaL0iStaLERHZlk9hr9E4IZzftgSOWalDLRVotr
 u6VQ==
X-Gm-Message-State: AOAM532LilEmKj5bIbrObO/GBdP5PwRRX29dGkR/Ea4d2fLM709kIOyZ
 YfQL5L7nBgwkJ8ZadFiBnMcDAvX68Eb7Mg==
X-Google-Smtp-Source: ABdhPJwm0Z+S0vlGv65yF0+vTZiosWPEy83nGnvtClOUqeduFJsSmq8avH32dPP8DUgwfj3sO4bFqw==
X-Received: by 2002:a05:6512:1394:: with SMTP id
 p20mr8133068lfa.395.1644781993594; 
 Sun, 13 Feb 2022 11:53:13 -0800 (PST)
Received: from localhost (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id
 v6sm1051282lfo.139.2022.02.13.11.53.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 13 Feb 2022 11:53:13 -0800 (PST)
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
To: Linux-rockchip@lists.infradead.org
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: [PATCH v1 03/03]: dt-bindings: media: rockchip-vpu: Add RK3568
 compatible
Date: Sun, 13 Feb 2022 20:53:19 +0100
Message-Id: <20220213195316.4149106-3-piotr.oniszczuk@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20220213195316.4149106-1-piotr.oniszczuk@gmail.com>
References: <20220213195316.4149106-1-piotr.oniszczuk@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_115315_380393_5E06A44C 
X-CRM114-Status: UNSURE (   7.59  )
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

        RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP9
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

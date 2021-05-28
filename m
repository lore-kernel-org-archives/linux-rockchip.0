Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D5ECC2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:25:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 498FC611AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:25:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 498FC611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GX2IZxRgDp47C0iT2zpDzSv54Bwt/SgEie8L6EkBnAw=; b=JLLdTCZwOrZlC+
	4odsXPNe8mJxvISZU7iMyqiNWzaOFoe+crmK+c0DLUNjc8Ivz7KRbFgoYaGZnqBcpnZEesLBkJnGS
	A6NnLHLsq3k+GSJbGSPEmq2ZythgnIM1A2CSZALw8FECesKug5P6EmdwoTmO0YSnByUhygRyocLOJ
	98BP33wQZp4KXtTGrIYnwQIeNjt6fxiP7HVGwUX25wkaJvXg9SiUG19jLMu0V61iaiUR0GbJAWwaU
	1xc8R0KoDB65YEQC5PtKj01jZYm1Y2jZtsI1Yz6WxCMxmTr86gkOKAPA0PbaukQpThliCMLljqqc0
	nfjgmImsCAMmVJwVInVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmcUQ-00Fl2a-Ni; Fri, 28 May 2021 13:25:26 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmcBw-00FdHj-B8; Fri, 28 May 2021 13:06:25 +0000
Received: by mail-ej1-x629.google.com with SMTP id z12so5365499ejw.0;
 Fri, 28 May 2021 06:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hXF0Ts56dwHAndcdIXFBR1E/2W75Wukvn1BbkoOuP3s=;
 b=GIzRpEPP+mEiI+M7ckcQ/slkmUTYqGmhOGTej6PmDuhSzka2kqH41IB1DFJenbMi1c
 08ibSUvl0mnhV5YWffgTXeQY/b0mHGuEu9whZc1J8WyOhUjtY2A53tENr4RfRImNGeOq
 2yL9aS0/uLvlnXr360MhMjytDsjv2kx3XiDZyE0BbjV8SfSGEei9HI7z6TzuDZjdPFz9
 QaHGCreUCG2Ux1fw/Rw9V3FnaHFjh2tXXm4HpAX+lyYSiwqwbby+gKK0vbxl4YYkW8+2
 k0HLuqj+NOf746VAW2+sOEsWj2t7Udi/sgeFq1XS3ZMQQSsQtb64NL7bpGRV9vzQ5ZTq
 0kNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hXF0Ts56dwHAndcdIXFBR1E/2W75Wukvn1BbkoOuP3s=;
 b=fFCygxxfM6RT0ZaD8tzm4RxlszxQB5/4hEIh/hKN7hD7SMBQ9xI2ZVvvFvZqYr5l4Q
 K31x8IGShIBgTUD2SwEff7fIVuffNyIqZX4AlY+HI3FhlFEbGPOAi78yqgcnDDuNQF7n
 hvgvn4ml2E+hbXa9Go4SbU7nmx/O0vSm9/K+iuqfmsL4XLEHQoFEwYJ55M31yuMPYpoc
 Ur/H8cidWc4BiRKX+DctA9tpOGcy2+Yu8BhUWmIDvUEU/Kulvzt1TABEfc/7b33WCW+7
 E4wL78bZzbzxaiYWQ4Xsipy3s/wTkJGIoa8Hf6HXARXxeOuGvMjKMQwQcxLH9w4klV4i
 0R2w==
X-Gm-Message-State: AOAM531UdIZ0jDJqimNbGHPmEU0xenHDIxhsUpRpiqsKLcu5pcJd6YKV
 BU6MSMhALfHgDeztGsiLaA==
X-Google-Smtp-Source: ABdhPJybEOzv6Dmyb9n/L+ylVeUxGip+f0N75LsX5IiJGN1MgjT0EIL2I29E+yM3bVVb6uPrQgTgeQ==
X-Received: by 2002:a17:906:1796:: with SMTP id
 t22mr3529966eje.304.1622207178511; 
 Fri, 28 May 2021 06:06:18 -0700 (PDT)
Received: from localhost.localdomain (ip4d17b4b8.dynamic.kabel-deutschland.de.
 [77.23.180.184])
 by smtp.googlemail.com with ESMTPSA id u21sm2322778ejg.50.2021.05.28.06.06.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 May 2021 06:06:17 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 5/5] drm: rockchip: set alpha_en to 0 if it is not used
Date: Fri, 28 May 2021 15:05:54 +0200
Message-Id: <20210528130554.72191-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210528130554.72191-1-knaerzche@gmail.com>
References: <20210528130554.72191-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_060620_417242_8AF0B9B9 
X-CRM114-Status: GOOD (  12.56  )
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

alpha_en should be set to 0 if it is not used, i.e. to disable alpha
blending if it was enabled before and should be disabled now.

Fixes: 2aae8ed1f390 ("drm/rockchip: Add per-pixel alpha support for the PX30 VOP")

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - capitalize "F" of "Fixes" in the commit message

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 64469439ddf2..f5b9028a16a3 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1022,6 +1022,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 		VOP_WIN_SET(vop, win, alpha_en, 1);
 	} else {
 		VOP_WIN_SET(vop, win, src_alpha_ctl, SRC_ALPHA_EN(0));
+		VOP_WIN_SET(vop, win, alpha_en, 0);
 	}
 
 	VOP_WIN_SET(vop, win, enable, 1);
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

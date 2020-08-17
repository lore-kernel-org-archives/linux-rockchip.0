Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55F6C433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:10:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 94BDB207FF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 08:10:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jwxYumjd";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cZbyBUTi"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 94BDB207FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DXhk3cy8wRsaylGOcrgAFZBSoP6QaRm1R8SbonBMMI4=; b=jwxYumjdaKsyfxFityzETfnhB/
	Izfv5bUbqQCIV3RVmzeJ40DnqceHt05WqINng/8eBgu8zP5FmEBVRe0U7sGFhlS9WbgrpdYSDanBB
	Zn2BTBkMlVJVewqxZX7mBzGxin/sVY4fzPkUWM3faqUUDeauh0exNqnMchDrhqqx2V+EC3g9wREr+
	PNPN7AX5PQCtKAKpGzz+UUtyIp3mFSPRP6y9/v52IpJoSX6Cc7rb7qd8JIJlbFt6ZluvVojIOSkQx
	9+lA3msdrtOebR7lFcO4kE8YShYW5Zap1rpfl+BsdqJctZcCj4dVUKN5zaeKALIrRx1CJbxGFXFJq
	//2FeeHg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7aDY-0002f9-59; Mon, 17 Aug 2020 08:10:08 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aDS-0002cg-IG; Mon, 17 Aug 2020 08:10:03 +0000
Received: by mail-pl1-x644.google.com with SMTP id bh1so7108821plb.12;
 Mon, 17 Aug 2020 01:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=EojiRZ5+4e1OiKZvQRD8rgmqPXQOnvlyW/BPDKlZsTU=;
 b=cZbyBUTiXCBC9eNlYLxDdYHv38L/LCNlTa5Isf7D//qmjXpcpY68wjeZoLSVgkGSXc
 DJjY2i2Hw8Tg66vPO15GMNfMyWxHhg0W7UrFs3E87jglSZYLT6XH/Dj/5tgqXB7YnWG2
 yE0I9pl53Hi4OSgCPn5ZZTd5bdkkR7/FJpM6nUpuKGglowi+kte1Cy3u9nJn77prwhH/
 WAkg4pW4CxjK+vAn+OqtW+p4FwkCmLTRS8E8sfEDtIWLAnxK1mmDcrMvLmZXCe1lzd4g
 a8zmcrDPfQ/na4G10ngvmmArdlR9bWvCT6Bi51Tud7922+yCZATbQ/fO2P4FQTehqOgP
 yCcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EojiRZ5+4e1OiKZvQRD8rgmqPXQOnvlyW/BPDKlZsTU=;
 b=cMHYAzTCbapPebDCHEP1nFgTvtfA7aSt7mgWWWA8G/DEY9phaXwrDjWJLhWCpbd2k4
 imX4/Vw+kTHctgJZx3N2/UZAQua4+JSaNN3Ng/62MmLxghoXE5O3GyxR6Yv3KoIrNbg8
 TZu+3G/9Cbjsfg8nhBtPE3Pvm/CyDVmx8cilOWTVOhqYXrV2lxVU1XUVyklyI7p+fsM7
 fappGVqCbLIRireYt1Nbq+o6RVAVi6f2X9Gn8Vd8RVNDUjPBSip3E/2FJGVVHxzbwknS
 eY5R2aTM7OKv/wyhkZip3O3yPFsGsvU9J8EObSsLAA5M18HDBs5BEbYqCWtBgIdvjMVT
 6Fyw==
X-Gm-Message-State: AOAM532TcoFn1QuRz89KSQRmnHS9YhhlS5N+FlakYYIzr/jVs8+hezzf
 N/OBNbcjx3OBpI6oGe+C6VM=
X-Google-Smtp-Source: ABdhPJzb1eOL7XxY4hQRviqeJAVUmK7Vet9UOM7DsTcG5epb+w06wW64GaVl1K39Y0V+l8Gzgdh6lw==
X-Received: by 2002:a17:90a:cc14:: with SMTP id
 b20mr11136070pju.1.1597651798829; 
 Mon, 17 Aug 2020 01:09:58 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id 77sm18499751pfx.85.2020.08.17.01.09.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 01:09:58 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com, heiko@sntech.de, matthias.bgg@gmail.com
Subject: [PATCH 00/19] crypto: convert tasklets to use new tasklet_setup()
Date: Mon, 17 Aug 2020 13:39:22 +0530
Message-Id: <20200817080941.19227-1-allen.lkml@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_041002_617887_164A4E2E 
X-CRM114-Status: GOOD (  11.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: keescook@chromium.org, Allen Pais <allen.lkml@gmail.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 inux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

 Commit 12cc923f1ccc ("tasklet: Introduce new initialization API")'
introduced a new tasklet initialization API. This series converts 
all the crypto modules to use the new tasklet_setup() API


Allen Pais (19):
  crypto: amcc: convert tasklets to use new tasklet_setup() API
  crypto: atmel: convert tasklets to use new tasklet_setup() API
  crypto: axis: convert tasklets to use new tasklet_setup() API
  crypto: caam: convert tasklets to use new tasklet_setup() API
  crypto: cavium: convert tasklets to use new tasklet_setup() API
  crypto: ccp: convert tasklets to use new tasklet_setup() API
  crypto: ccree: convert tasklets to use new tasklet_setup() API
  crypto: hifn_795x: convert tasklets to use new tasklet_setup() API
  crypto: img-hash: convert tasklets to use new tasklet_setup() API
  crypto: ixp4xx: convert tasklets to use new tasklet_setup() API
  crypto: mediatek: convert tasklets to use new tasklet_setup() API
  crypto: omap: convert tasklets to use new tasklet_setup() API
  crypto: picoxcell: convert tasklets to use new tasklet_setup() API
  crypto: qat: convert tasklets to use new tasklet_setup() API
  crypto: qce: convert tasklets to use new tasklet_setup() API
  crypto: rockchip: convert tasklets to use new tasklet_setup() API
  crypto: s5p: convert tasklets to use new tasklet_setup() API
  crypto: talitos: convert tasklets to use new tasklet_setup() API
  crypto: octeontx: convert tasklets to use new tasklet_setup() API

 drivers/crypto/amcc/crypto4xx_core.c          |  7 ++--
 drivers/crypto/atmel-aes.c                    | 14 +++----
 drivers/crypto/atmel-sha.c                    | 14 +++----
 drivers/crypto/atmel-tdes.c                   | 14 +++----
 drivers/crypto/axis/artpec6_crypto.c          |  7 ++--
 drivers/crypto/caam/jr.c                      |  7 ++--
 drivers/crypto/cavium/cpt/cptvf_main.c        |  9 ++--
 drivers/crypto/cavium/nitrox/nitrox_common.h  |  2 +-
 drivers/crypto/cavium/nitrox/nitrox_isr.c     | 13 +++---
 drivers/crypto/cavium/nitrox/nitrox_reqmgr.c  |  4 +-
 drivers/crypto/ccp/ccp-dev-v3.c               |  9 ++--
 drivers/crypto/ccp/ccp-dev-v5.c               |  9 ++--
 drivers/crypto/ccp/ccp-dmaengine.c            |  7 ++--
 drivers/crypto/ccree/cc_fips.c                |  6 +--
 drivers/crypto/ccree/cc_request_mgr.c         | 12 +++---
 drivers/crypto/hifn_795x.c                    |  6 +--
 drivers/crypto/img-hash.c                     | 12 +++---
 drivers/crypto/ixp4xx_crypto.c                |  4 +-
 .../crypto/marvell/octeontx/otx_cptvf_main.c  | 12 +++---
 drivers/crypto/mediatek/mtk-aes.c             | 14 +++----
 drivers/crypto/mediatek/mtk-sha.c             | 14 +++----
 drivers/crypto/omap-aes.c                     |  6 +--
 drivers/crypto/omap-des.c                     |  6 +--
 drivers/crypto/omap-sham.c                    |  6 +--
 drivers/crypto/picoxcell_crypto.c             |  7 ++--
 drivers/crypto/qat/qat_common/adf_isr.c       |  5 +--
 drivers/crypto/qat/qat_common/adf_sriov.c     | 10 ++---
 drivers/crypto/qat/qat_common/adf_transport.c |  4 +-
 .../qat/qat_common/adf_transport_internal.h   |  2 +-
 drivers/crypto/qat/qat_common/adf_vf_isr.c    | 11 +++--
 drivers/crypto/qce/core.c                     |  7 ++--
 drivers/crypto/rockchip/rk3288_crypto.c       | 14 +++----
 drivers/crypto/s5p-sss.c                      | 13 +++---
 drivers/crypto/talitos.c                      | 42 +++++++++----------
 34 files changed, 149 insertions(+), 180 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

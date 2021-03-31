Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F945C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E4AB61041
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0E4AB61041
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RsXBa+551brJaRL2eSGK+WuljoURDD0kSw1K5f46RAc=; b=o9SDOex9BJJgGVWMU/q/ZZpys/
	F6kIKF24Q4y4YQMQLPUPbcDkKevB5UBgHQJJwhgp1S0Q6c5HDN4AMxs7To5PkjziNkwJoPbx6GhIV
	/9sULiViIJvXaYdgk3X/9uoIq+1H2K8EgHisT4gf30F4jX2Uf1/dOkywVRgoHMU63BpTcD/EpAbxI
	qFuia9Xlqob1O/1AyXjRQKZMV7T7ajH4WIkEjjGmFtCFnYEHgYmegnTWs4fdgQ/cPrsOAMoOn/P7v
	5/0Fj4hnrTZkp++NNlW3hpaMTpBUK6kmzaUdtmsBJW0xkxIftFRtK94njD1nMXPCY+riwKpnQoSRL
	of3cwpEw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRekd-007CVt-O3; Wed, 31 Mar 2021 17:35:31 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lReka-007CUd-Ie
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:35:30 +0000
Received: by mail-wr1-x435.google.com with SMTP id b9so20463822wrt.8
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TAPXDo2+mkNk79YuRIAXULFMjD5KTMr/lWvkWqA4+1E=;
 b=stvE07WNFpemIRbE4Ip0VoK5Xx9dVP/funJZN4jEAm/Xtt3WCaDgS/GLrY4RicIVYZ
 BSm2N+Ovv+6vGyC+ivaQ6qp+BoVeOK+XHwk2epo5ddaT1BzXAAcLIDzBziVq4OB84IiS
 6o3fv/NQICkRcg/d3ibHz/CE27qREKNTqak/IWn9R8Vv/0G3u3E/EGOAaDV8/y6JUPtk
 8aZ8+xIVMn5fZ3kZ90vFl4FjYOeI1aTnUw0LFr38g37vAP8X2oVQTrVGsBtQd/dtlX1u
 AjZxdTDYMT7HflZk+ydnEVhyqjpINB8e1kXgOGG8MLIft8C7mAtwW3MUpgHRn7ww2/8B
 jXiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TAPXDo2+mkNk79YuRIAXULFMjD5KTMr/lWvkWqA4+1E=;
 b=nxbOa0jRAgSlDRRNqd/VyeP0QzgrEGn3U5yRQmrxeDQrz7kJDT4GylWeADQ1yUJpwj
 wEzslI58DzSZIKx9bjHlTZT9EivZ9LxXlil3eB2oFeHvMY8s+oXnq/eflRKY7NiB+8gn
 5vqQ2z1NyI0J+1ENEYdJbIIYeWgmPX1DIgOW9kCDITtsT6jJiO7A9lo65l6CNtJMahFJ
 vJYNSaWR3GDNUN0W9LfYEHh8PWW1Vpx1Y8H6XxK3eICZFpmP+GHGrbaOC1sXF1lWhBSJ
 Kb+pDLudyIFU7KPjLOoV56X+DdLdSxi+YdaJNOj29VRyH9c9TbKAe3F7u9coQJa2ytnz
 oxZg==
X-Gm-Message-State: AOAM532dj8ykA6ZAPeP2oZWj7ri0vsaaj3XDDfGJbpVGaI4AjG8vTZB1
 8p2nyHi2+feScyXceHreZnY=
X-Google-Smtp-Source: ABdhPJw98G3oWdvzMzNi24NxWbWQqvC2WBZMAqARfpo293f38WxSz4rf5owNvmb3WiqoP+KrPaGmnQ==
X-Received: by 2002:a5d:4532:: with SMTP id j18mr4893655wra.239.1617212126955; 
 Wed, 31 Mar 2021 10:35:26 -0700 (PDT)
Received: from arch-x1c3.. ([2a00:5f00:102:0:6e1d:cfb9:fb12:552d])
 by smtp.gmail.com with ESMTPSA id 12sm4714200wmw.43.2021.03.31.10.35.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 10:35:26 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v3 0/9] Microchip SAMA5D4 VPU support et al
Date: Wed, 31 Mar 2021 18:35:11 +0100
Message-Id: <20210331173520.184191-1-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_183528_744176_F4FAD751 
X-CRM114-Status: GOOD (  10.75  )
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

Hi all,

This is hopefully the final revision, adding support for the Microchip
SAMA5D4 VPU, which it based on the Hantro G1.

For more details, please see the v2 cover letter.
https://lore.kernel.org/linux-media/20210311154055.3496076-1-emil.l.velikov@gmail.com

Changes since v2:
 - Added RB (thanks Eze)
 - Added AB (thanks Nicolas)
 - Reworked Hantro driver to support modules lacking irq/clk name
   (thanks RobH and Eze)
 - Dropped defconfig patches - merged separatelly (thanks Nicolas)

Note: patches 6/9, 7/9 and 9/9 need reviews. Everything else has been
covered already.

Thanks
Emil

Emil Velikov (9):
  media: hantro: use G1_REG_INTERRUPT directly for the mpeg2
  media: hantro: imx: reuse MB_DIM define
  media: hantro: imx: remove duplicate dec_base init
  media: hantro: imx: remove unused include
  media: hantro: introduce hantro_g1.c for common API
  media: hantro: add fallback handling for single irq/clk
  media: dt-bindings: Document SAMA5D4 VDEC bindings
  media: hantro: add initial SAMA5D4 support
  ARM: dts: sama5d4: enable Hantro G1 VDEC

 .../media/microchip,sama5d4-vdec.yaml         |  59 +++++++++
 arch/arm/boot/dts/sama5d4.dtsi                |   7 ++
 drivers/staging/media/hantro/Kconfig          |  10 +-
 drivers/staging/media/hantro/Makefile         |   4 +
 drivers/staging/media/hantro/hantro_drv.c     |  27 +++-
 drivers/staging/media/hantro/hantro_g1.c      |  39 ++++++
 .../media/hantro/hantro_g1_mpeg2_dec.c        |   5 +-
 drivers/staging/media/hantro/hantro_hw.h      |   4 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  27 +---
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  36 +-----
 .../staging/media/hantro/sama5d4_vdec_hw.c    | 117 ++++++++++++++++++
 11 files changed, 273 insertions(+), 62 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
 create mode 100644 drivers/staging/media/hantro/hantro_g1.c
 create mode 100644 drivers/staging/media/hantro/sama5d4_vdec_hw.c

-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

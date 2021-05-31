Return-Path: <SRS0=B2S1=K2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A47CC47082
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 22:11:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB6726128A
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 22:11:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BB6726128A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iKsHZxiYb5BcOkPWtbcSlRbCzr79dFh+oK4rBCbe4VE=; b=V1Fl+6VBgbM1rB
	OiCAlBUgWg/USn0kiFRjXKy9pqoN2paFQAkKeVxXw7jJc435Oa81Iq7+8icEpHwlhv2KS3z9G5SRo
	XMyEahHlk++YV/6u//e0Shoz8Q9XM3XtQ1WY6EC6GCba5Frlua+0axbDA/fFerBarYn+J10KRRJMv
	OKSB4ydU+GkiK7+ikY3DJkp04J09MzZn9tri/C31Rq4b/VMw5880I71ai1djxXGQ1j52B/pIl4MYp
	aTu5yftVemF6PWYAnIscQN+zoDIUONuuQ13ssWogxy1/Yys5wF57zsbKnfP1nQgeIZEBqlfvqY8aI
	DDFHFRWJptoE0ZQF7gDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnq86-00DaM9-JE; Mon, 31 May 2021 22:11:26 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnq83-00DaHf-65; Mon, 31 May 2021 22:11:24 +0000
Received: by mail-pf1-x42b.google.com with SMTP id g18so9896161pfr.2;
 Mon, 31 May 2021 15:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YwgdEN02tOTM3X9OahYK6izrepiauXF6ean9NRJUvFU=;
 b=ImlKs4q89z++GK7D1FezbQBQVbzOxx2eaVQsAJuL8sJHrslfItAQbRkHnNIdR0jPaw
 PeIIRFxbvV7mudYl2wqY8m0GxsGtNCREMrSvjKIOFQa/GMCoiISMLlmdoB5fGjxVsqd7
 LTtrNnWsJ+pblv1avcl08iSiwfxyqZ1e49vlctQl2veMHHZZOUQF+CJedjgYfR1OSskY
 H2rVONyI4jM6NTD40/NfHdr7rhZlUx8nZyL82bnEAXyg7dgtfCOukuJDM+s5tCOC8nG2
 hrS0bQbGYkRtoTGTKwoh+N2bbtPkI8RQF9UXb7B6EcpLmQtXU9oAyuhuYlB758twf7FP
 5vkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YwgdEN02tOTM3X9OahYK6izrepiauXF6ean9NRJUvFU=;
 b=IfhbJOAU0ZyKCGuTS0wEsX1rud/AWm7M8Mdlx0fXjNm5tIxeMYUivVVQYIXt93ixI+
 ieqF0LY1IzQtBzK+mhg5wiPDtI9h2ctGvpZOdduTNX5FVG7zV9mActB5bzxgQAbiEcub
 eT9n2bAWCjUewrJ74R/NsiDsPuthJFcn2dofJx9a0Ucc5Xk5YvRxUXAiyFujSzSwEe/G
 lgkV+E0T/UGJ2ek6A7XOyWiLjqqRgQSllFJC4yDZWo6lw7ABcDWv8fg0nRaOKDXQjzuF
 DjLwhaOrj2s9LBNUdNOSYEDYxg6xWujjeslNhDjmJ/6ny0jeNDeGF/QelS4aj8DnGujF
 K7Xw==
X-Gm-Message-State: AOAM531zSvwXp0RfiDarQpE4+aX5ieA1OHVphoO5BvpemIVtUTOtPD7H
 K3Mk7upA14Va4Ec3Rz0OBVcDNWSRlYelqA==
X-Google-Smtp-Source: ABdhPJzQJkV1Ji5I/M9r8VcmSuxcaAidH2Lua6PmnQXIKhhEdgC+6TPnF+a4bUGMaY5BTrQgb/uzXQ==
X-Received: by 2002:a63:fc20:: with SMTP id j32mr24780120pgi.8.1622499078504; 
 Mon, 31 May 2021 15:11:18 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id 25sm11358267pfh.39.2021.05.31.15.11.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 May 2021 15:11:17 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 alexandru.elisei@arm.com, wqu@suse.com, robin.murphy@arm.com,
 pgwipeout@gmail.com, ardb@kernel.org, briannorris@chromium.org,
 shawn.lin@rock-chips.com, helgaas@kernel.org, robh+dt@kernel.org
Subject: [PATCH v2 0/4] PCI: of: Improvements to handle 64-bit attribute for
 non-prefetchable ranges
Date: Tue,  1 Jun 2021 07:10:53 +0900
Message-Id: <20210531221057.3406958-1-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_151123_247171_A46AF81C 
X-CRM114-Status: GOOD (  11.52  )
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

Hi,

Here's an updated version of changes to improve handling of the 64-bit
attribute on non-prefetchable host bridge ranges. Previous version can
be found at [0].

The series addresses Rob and Bjorn's comments on the previous version
and updates the checks for 32-bit non-prefetchable window size to only
apply to non 64-bit ranges.

Thanks,
Punit

Changes:
v2:
* Check ranges PCI / bus addresses rather than CPU addresses
* (new) Restrict 32-bit size warnings on ranges that don't have the 64-bit attribute set
* Refactor the 32-bit size warning to the range parsing loop. This
  change also prints the warnings right after the window mappings are
  logged.


[0] https://lore.kernel.org/linux-arm-kernel/20210527150541.3130505-1-punitagrawal@gmail.com/

Punit Agrawal (4):
  PCI: of: Override 64-bit flag for non-prefetchable memory below 4GB
  PCI: of: Relax the condition for warning about non-prefetchable memory
    aperture size
  PCI: of: Refactor the check for non-prefetchable 32-bit window
  arm64: dts: rockchip: Update PCI host bridge window to 32-bit address
    memory

 arch/arm64/boot/dts/rockchip/rk3399.dtsi |  2 +-
 drivers/pci/of.c                         | 17 ++++++++++++-----
 2 files changed, 13 insertions(+), 6 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

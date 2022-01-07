Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0D79C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 02:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IuRhYpRiCiWefWaHlxleg6Kfb9HyB88z3RXxVRG98eI=; b=S9ykrXaP3PUl41
	k5o2bvblJdqwTpdVy/n0lw3CPimnBvHjYv7R5g3yRsSSiS2sf57Je5MnycNoQog7q50VWOaZGJ5nY
	RagUIBju5RkaE4XVyKmCLtNaAuH3ffyzGgM/kCr6yTBa6LAL8BQAFcWCpoSFHUXqh12HN6deA9e6S
	U4/HZDsjlvzHqYbCAATlw3ZFRU/AjN85dZdM4QQ1Tuuq3IdJI7Gdg4mwyGn3qG4OGgEyh9s8ghlcF
	xwc4skloMOYkegOCjODe6XeY0ocWui7qvy9xGzctsVMd/ZUNYsZf/7JkyPPDqIbzZWmkzDKK+/ADn
	ggr/f1XA4L7PW+O0SoXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5eaM-001sEh-3q; Fri, 07 Jan 2022 02:02:30 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5eaA-001sBu-Ah; Fri, 07 Jan 2022 02:02:19 +0000
Received: by mail-qk1-x72b.google.com with SMTP id i187so4575575qkf.5;
 Thu, 06 Jan 2022 18:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Li/jQ4nlT3gPpvd1NyTQnIxzc9JA+p42BI5110gVryI=;
 b=D48pMHDKbceVDw3lQnRewim5ayodaSN8T49QKqKck52RgM8Mk1qDNvXzqQZTnFoxUT
 cwf++gs/8Oewu2oZnv8+2UTTs7QjqQsCOUDMLb0NapFC1w3DOCVRufqCim/OZ4C9dUnd
 +oFMPFlkmFwfvmJkbdujiDwc5O++ZtZBcOkcjZZr3S53UF7oR3YhsJXqyoY14X2DverP
 Xcr+jZjlMins+iJLvn1DvIBZOpTRisZoI2kgWnfl8q0elZmlT2h63bzyNpNF+n5BWqPE
 OU4hOI1VfzBTi4rMdyRztgoAn4DZL0e1MMRPnNtUXCBRL4xOzpTOasUJgChGwtosRfzR
 uiVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Li/jQ4nlT3gPpvd1NyTQnIxzc9JA+p42BI5110gVryI=;
 b=2+rGkudP34hyXmNt7iUKRyYRtAw+xYMa3HFQc5dBO/FJOO5MBcmhgbV1wsnXhkM21k
 p7XR+DoEAO+cJaF2pj5WfyBzi8cSbd3TgaJXhiymeBBd89z0jJqaZpiYDsZJ5KJffegV
 W7ABuBVpBcB/vBul9347cxrpD1Fpt6bQ+HKKdXa01ZXKLaisCBgqJEfKP3hD8tepwuml
 JW/U2USv+0W04p+sDEfXAFxbe5Q6yo4SDfrjt32tSGExOhTq8oYFmctycWRrDijbFSAS
 0E0oOKV3vKB5DnuApRm0S54k548GW5FEmI5ZdtNexljKgM779WSmwc59dbWjdp3PiI3G
 n28g==
X-Gm-Message-State: AOAM532CVABRdXV/FAUFS5z10fb1R/PqBIs/GhMPAwSg3IisFv20+Wip
 1/VjdmBeogRc69v2whH1z14=
X-Google-Smtp-Source: ABdhPJyFLUnXGpl/Ej//ERbkZnC0lZ7GVhRcnFLH5j/9dsaix5WLKtzn9XSDUBszz5HWPfy/+38YFw==
X-Received: by 2002:a37:34c:: with SMTP id 73mr44285797qkd.726.1641520936215; 
 Thu, 06 Jan 2022 18:02:16 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id m20sm2960331qtx.39.2022.01.06.18.02.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Jan 2022 18:02:15 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: Peter Geis <pgwipeout@gmail.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 0/4] add pine64 touch panel support to rockpro64
Date: Thu,  6 Jan 2022 20:22:06 -0500
Message-Id: <20220107012207.3779449-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_180218_393550_2FDFCE6A 
X-CRM114-Status: GOOD (  11.85  )
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

This patch series adds support for the Pine64 touch panel to the
rockpro64 single board computer.
This panel attaches to the dsi port and includes an i2c touch screen.

The first two patches involve making the reset pin to the Feiyang
fy07024di26a30d panel optional. On the rockpro64 and quartz64-a this pin
is tied to dvdd and automatically comes high when power is applied.
The third patch adds the device tree nodes to rockpro64 to permit the
panel to be used.
The fourth patch is an example patch to enable this support, tagged do
not merge as this is something for the end user to enable only when they
have the panel attached.

Peter Geis (4):
  dt-bindings: display: panel: feiyang,fy07024di26a30d: make reset gpio
    optional
  drm/panel: feiyang-fy07024di26a30d: make reset gpio optional
  arm64: dts: rockchip: add pine64 touch panel display to rockpro64
  arm64: dts: rockchip: enable the pine64 touch screen on rockpro64

 .../panel/feiyang,fy07024di26a30d.yaml        |  1 -
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 80 ++++++++++++++++++-
 .../drm/panel/panel-feiyang-fy07024di26a30d.c | 11 ++-
 3 files changed, 83 insertions(+), 9 deletions(-)

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

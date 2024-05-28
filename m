Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47135C27C43
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 23:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QpJuNEa7o+gSTpIxkif/yqHVqqZ6Om7KRCdQJ5ew/rw=; b=LmvsTQ7JFmXaB2
	3PNPBvfe/8KQscICPluHfjsgrpE12tOENdK+tAAzHHlXkszeqZ6TifQQGcXUUiNL0oNR3X0rU0BIw
	A0JXzamG0tixHC980o7scwhIt+5Gz+Q/1QPqePiuF5CtBHF1lZLz8jhY1oAXrSKvJ9mCUdfsAMMX/
	YoZRRcbXsMNwB/yoJ86j9/KgxF1D2nV6DbtYEy1J058p32vmdIcKrUjCDFpTCoQX/BKG5qgefLwJn
	xUu9corIyN3Mvgrj+Nm/hYWSY/hY/yGwjZah67Ya7/L11Lq/xf04mh0/MijIIohu7RbyR51RNHJdm
	qCFIu6rtbs53Lj+fMd5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC6cs-00000002Ldh-10Ti;
	Tue, 28 May 2024 23:53:06 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC6cm-00000002Lax-3XWp
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 23:53:02 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-529b4011070so1819009e87.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2024 16:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716940376; x=1717545176; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UHZNDUUbr3q7e6NPW2DwrC8X2CnNixkR9Oi+CBBYDV0=;
        b=FDiTa61Ut000nr0sDSmV5oh0Lh/wmSlZO0G4vJx8LXbDVZCEXoQqqPpRr/sPlwM8Kq
         ZxjXKZJFeXIx98wPt8hIHTPqexdkWVfGCfAeNoW6OF3BOdv8n6m04QBS0jSQdZx9z53B
         ehNLs4bEwxC3tXWP8HsXCkCZpgVMY9ve1ad6oCTJaa6qKO8jfRccRxqzdPDgi6bKMpMZ
         aMOH2nj7aNdtTT/Rg8zRcXCziqf1YJsjOWyHZG+sLOBPLA2NaJj7x3BKCFcFPveideWm
         5qnZaMDe1l4phs2LyCqdERRmxJpGv+noUZ7lVizJLb4wjSQDIs2OdoZd44KBZl9Zxq6H
         Qc0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716940376; x=1717545176;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UHZNDUUbr3q7e6NPW2DwrC8X2CnNixkR9Oi+CBBYDV0=;
        b=J4EsU3krzm1wZfyEBPGV3mTitzITov6q521qaG+PmMycWU7SQcuXsP8qrtY8Noh5r5
         pslEBnPSe++0l0yw3G/aghU+f69IYQa/o0hiekA6Q2nJawbbitxYOTf8P1eQ/YsPK/x6
         ZCByYdKSTlr1avZY7rr/ZknsgykLS63jakeVWfmW/W0YtG1oWdi9VYgBhML94ianm9xC
         zOmpXToytKIXHRM3o3WzRZC0u9oAnDfFUdkJCcSxedCVVt0o2oBadfbaSf1HR6a4xMGs
         Hg5j9L3taEDNK1VgLY+w0X8CpGvmi9rYtZpjm27bsmUZe3drVkltbIiPIIoZdHrW+U/E
         GX8w==
X-Forwarded-Encrypted: i=1; AJvYcCUqHLJbJcw7P6DoksdeufRfnGbCzhJkeh6YytQm5rvbiNTiEoolrhtBEi06399QzE7OIbAtThLgzoMHUpzuDCWB8AKJetrq27t8zjistrDdlV/a
X-Gm-Message-State: AOJu0YxYuD78sLfI1AdtZOCvjq9gQ4Xdm7Y67+TYalJioFix03Er5hmr
	obTgpL1kTyUpq7m24Hj54hmzoGLiaTrG1W47ObaxxFn1BNhu0rsSydKT8uhSKtw=
X-Google-Smtp-Source: AGHT+IGqLAv4OZyUcAM8naoZFj20K0vlp1pzotZb6OElrE2WNXGbtTQKAWxUzgWmE+4EwKspTa0x6g==
X-Received: by 2002:a05:6512:3f03:b0:529:b717:2a18 with SMTP id 2adb3069b0e04-529b7172fc6mr3374561e87.47.1716940375739;
        Tue, 28 May 2024 16:52:55 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066bd0bsm1099869e87.165.2024.05.28.16.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 16:52:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
Date: Wed, 29 May 2024 02:52:53 +0300
Message-Id: <20240529-edp-panel-drop-v2-0-fcfc457fc8dd@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFVuVmYC/3XMQQqDMBCF4avIrDsliUawq96juIhmqgOShEkJL
 eLdm7rv8n/wvh0yCVOGW7ODUOHMMdQwlwbm1YWFkH1tMMp0ypoWySdMLtCGXmJCpZwz7TC1cz9
 BPSWhJ79P8DHWXjm/onxOv+jf+pcqGjWqzvreWK29Gu4bByfxGmWB8TiOL/RuDAatAAAA
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1711;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=zhBAUb36pf48/N0Xpw1fsuiV05YaoZWCcFJTlPimKO4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVm5Wc00pr7mhb8XYoTjTxYcuglgy5D4WYfsxu
 Exxp3CTvNCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlZuVgAKCRCLPIo+Aiko
 1VkOB/0RzePb01tIc+8MNPG8I8IItb4ymjg3U/xVHeE3+VeY/roCzspzKY5EMESQQJix/QZ9B6s
 vEnDGqxakmpkq6IrhIq1BapWaN9pQ/u2noeLdQDV/kCHn9uMIeU8/4NxnQ+hiIYkI03V79VSGuL
 qysgRYWrHj3quiJuG8OBnpbw2Hi4h/a3shraRnZhBOTocXAiHY6H3pHdrkC9ScUHoSSQFx+mBAT
 +SBMVYXuCKwgmrlVnDqnWsf0cT9g+Py+kpe8BF+p8HhdSO0TRudREkan+re9J7dv9YgpusN3Wa3
 kA0xNPSJIlGlba0JZgAGAh1Ws5DhKPDx6d0Gruavnt83GXDi
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_165300_953350_A657FE2D 
X-CRM114-Status: GOOD (  12.35  )
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

There are two ways to describe an eDP panel in device tree. The
recommended way is to add a device on the AUX bus, ideally using the
edp-panel compatible. The legacy way is to define a top-level platform
device for the panel.

Document that adding support for eDP panels in a legacy way is strongly
discouraged (if not forbidden at all).

While we are at it, also drop legacy compatible strings and bindings for
five panels. These compatible strings were never used by a DT file
present in Linux kernel and most likely were never used with the
upstream Linux kernel.

The following compatibles were never used by the devices supported by
the upstream kernel and are a subject to possible removal:

- lg,lp097qx1-spa1
- samsung,lsn122dl01-c01
- sharp,ld-d5116z01b

I'm considering dropping them later, unless there is a good reason not
to do so.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Actually drop support for five panels acked by Doug Andersson
- Link to v1: https://lore.kernel.org/r/20240523-edp-panel-drop-v1-1-045d62511d09@linaro.org

---
Dmitry Baryshkov (3):
      drm/panel-edp: add fat warning against adding new panel compatibles
      dt-bindings: display: panel-simple: drop several eDP panels
      drm/panel-edp: drop several legacy panels

 .../bindings/display/panel/panel-simple.yaml       |  10 --
 drivers/gpu/drm/panel/panel-edp.c                  | 191 +++------------------
 2 files changed, 24 insertions(+), 177 deletions(-)
---
base-commit: 6dc544b66971c7f9909ff038b62149105272d26a
change-id: 20240523-edp-panel-drop-00aa239b3c6b

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

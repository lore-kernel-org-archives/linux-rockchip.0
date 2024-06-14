Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B18DDC27C7B
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 00:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ve9LmrOBJ2M/GQoNQvrIiqMNaIgP5shdbQ+PgihZR9o=; b=PKbXyKPvT1SHOG
	MG9pzrmWILxvW7E+/LRT8pLItuqfGTUfEOIQL0Ts8Xu+LYj1w+fJIqix0AO/ZFKiwikefnW+Zt0Yg
	E2w1igC77oEIjb3/CWKqarV9MdrpCyLwIa0WanzF6jOrEx7/jDMGKiwM2nqyRy7i0usFE947i7T0t
	IEOEZNs2ZkC4p2dpuCQ43/7Hzqm9LDfF+WdgSUqW4RS5mDk+3obfnnKsrduyntmyPFISks9nNrVnT
	ZOEkMWpAWPHgch7JQ3GRqwEM0re5sayJP222ToF3nrlu1s+uw0vE2xaPRLhiwWkydG2x/BM3GlRDQ
	ceUYMxne8PDLQhVYlFUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHuOo-00000000qbg-154g;
	Fri, 14 Jun 2024 00:02:34 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHuOj-00000000qa5-3ReR
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 00:02:32 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-52bd48cf36bso1979851e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2024 17:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718323348; x=1718928148; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QW5kIhlLtmN+LhKlOvCDBjLYeT1B6YXu1fF/8F3k3UE=;
        b=DHKLEAjSI8eeqSem10jLHb0KG9foVvqU65c6L5QTcWqDY9D1NR6w4uS1txDYYefPM3
         Mfu8FMbUcH7/LXbJvJHIJvaIOlW/iVZb4bDQhlcFbN7/PNvSKO6qzMY057hJE1tJ5ARV
         VFosVNzSX/gbB/N6fy+GMcrUr6L3PJrzlMMPrCLSUAjFsx/IkyCBHDZvUOMfVj8PZwqX
         Yai5fhAJu4CRRn7Z9yIzrwCEC0+pDzJsSyqgShLnsO4yBS0e9IpTL1EcDOFbwMbzqXPv
         kve6QbqVnR7+TOE+3ONyVo4n0bEcgHnV7BG8cE36WxcqH6baINIMCYsQkAuVc0lBa6l6
         6gdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718323348; x=1718928148;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QW5kIhlLtmN+LhKlOvCDBjLYeT1B6YXu1fF/8F3k3UE=;
        b=vrAh8+P6xrAv/9OITCxq7aO3ezracCLU+iyF8NwUwGWkyH0GYNAe8nZ+dUqNxEkf11
         L0qepBh7RbQ3cUe7bJlMWECuDFfLOAtRYO3u2f1hdETo2Pg7zaHsTW+85Dqg1dK9reg9
         r6oUnFbA85lD4LztpFxVtFhgWDcOdVDKA6sCFTDzsN5/9c3hDoPtVNP87m6krTEpjfqM
         n7M/fk65vZqf3j4M17myM4KT+nwlvpKuiUXBb+FuIizdfdAbyFsm4hYtRsZ6hiT8tMMO
         PBC+E30T0K4poB2FAo8gaTwZ5HuEY6BjvgyjQjsLMaU6feUtWcfMfcWNMxZ4Jyf2c+x4
         UXrw==
X-Forwarded-Encrypted: i=1; AJvYcCUCrV+DNxWZzldrYFEwn7bs1ICeBs5LY6Y99KxWB0Hs0oY3WDcGTQdoKWa3pL8gK7z0w1TdMbPBF2vMu9Aoe9CogF2MlNPut9pVF/bW3YyNNYKr
X-Gm-Message-State: AOJu0Yy6ygY226OONXYg0o6zWmwK2Ffk2iVmx8Mdt1wfBxPMFPI5YnGI
	3K295nX6m5hW+/axfFqZSAMHwAwlcAeVimBwXEPVPmgDWON87yjRLicNBIWr9Xs=
X-Google-Smtp-Source: AGHT+IGQH4BW4y0WPnlc1Nl7pxTM2sMPBBUkuGMWSdcd4CZu8tjjNu987+DcRlYaZvTaev4pZRs+dQ==
X-Received: by 2002:ac2:5a4b:0:b0:52c:884f:5a31 with SMTP id 2adb3069b0e04-52ca6e6dc0fmr757866e87.30.1718323347843;
        Thu, 13 Jun 2024 17:02:27 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca288804dsm374797e87.262.2024.06.13.17.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 17:02:26 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v4 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
Date: Fri, 14 Jun 2024 03:02:19 +0300
Message-Id: <20240614-edp-panel-drop-v4-0-4e0a112eec46@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIuIa2YC/3XMSwrCMBSF4a2UjL2SZzWO3Ic4yLMNlKSkEpTSv
 Zt2VCkOz4Hvn9HkcnATujUzyq6EKaRYBz81yPQqdg6CrRtRTDkWlIGzI4wqugFsTiNgrBRlUjP
 TalTRmJ0P7y34eNbdh+mV8mfrF7K+f1OFAAHMhW2pIMRieR9CVDmdU+7Q2ip07+XBU8DgjTdcX
 Ly5WnvwbOcZOXhWPTfyqqmWwjH145dl+QKrLBKBLQEAAA==
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>, devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2848;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=exeXDKeS5xI4dB9WYztmnec8kaBCqKApV9iGGnDjUeE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBma4iR8cQ2xeXd5K2/fhbfYL/Xxzbh7W+evYq1e
 9/805a2cw2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmuIkQAKCRCLPIo+Aiko
 1WJECACy1Ogxdb/xLNEZk8RuzOmtxuBRF0sxevXZGZRGVis66bQoD2iWRfrVXrkWVh1lcLv5x4q
 uluGvNZ9O59OlSxWI8gvA6rUXbhT4v3ED+qH34ZrCdqWL1gWUWP95Slzh1ZxczjJao1jYHhLzjh
 c7VDu3zsm4u/R2R17xvdkzMUCDCt/u+/eGQiRoFJdFw5ZvvZdbQoIupCEYec2awpR3JrtqAq5pA
 eQnMH27+zXQXwzLyr+QdSZz9xXyz3q1OJJYLiorjcvghtKNITwo2yFbAiVQK+C7WD4GqCfsiDTX
 9gqk8AmBFWr0Ke/UPEK6MyA7mQNWoonPtOknG8IMFzIM+nlH
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_170230_069670_6A2F4A79 
X-CRM114-Status: GOOD (  13.76  )
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

To: Douglas Anderson <dianders@chromium.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>
To: Sam Ravnborg <sam@ravnborg.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
To: David Airlie <airlied@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Changes in v4:
- Rebased on top of drm-misc-next
- Added devicetree maintainers to cc list, missed them for v2/v3
- Link to v3: https://lore.kernel.org/r/20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org

Changes in v3:
- Rephrased the warning comment, following some of Doug's suggestions.
- Link to v2: https://lore.kernel.org/r/20240529-edp-panel-drop-v2-0-fcfc457fc8dd@linaro.org

Changes in v2:
- Actually drop support for five panels acked by Doug Andersson
- Link to v1: https://lore.kernel.org/r/20240523-edp-panel-drop-v1-1-045d62511d09@linaro.org

---
Dmitry Baryshkov (3):
      drm/panel-edp: add fat warning against adding new panel compatibles
      dt-bindings: display: panel-edp-legacy: drop several eDP panels
      drm/panel-edp: drop several legacy panels

 .../bindings/display/panel/panel-edp-legacy.yaml   |  10 --
 drivers/gpu/drm/panel/panel-edp.c                  | 192 +++------------------
 2 files changed, 25 insertions(+), 177 deletions(-)
---
base-commit: 9324410846e13595d453b7f34508b1f6b15fb1a7
change-id: 20240523-edp-panel-drop-00aa239b3c6b

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

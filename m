Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 916CAC27C44
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 23:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bMiQyGuVbsJMi9k7ROn2q4MhwEHYPAViDMGi1IClWN4=; b=LVMSvN6OX1ZbqE
	Lbj97AthyNTCbgzVqrMoCXXJ4U/T5gmiZ1Ri4bItUAJHtNsvF8mursCkIFCQKmAK6NqR7H5IgfS+c
	QC+qlh6Yxu7MGWf76R0VxoEb8mhCX2ARiSMSuuThCHz5m6BH+zZISjm5VkxSxcdCL/JvawqazzNSx
	E0CC8i/UpRoN/A/T1NPxV9ESFbceDyV29reA86B50wfU+3clw5j1Sjbz0KxiTR9E0zh9ULyJLZIK5
	eOtbHSv3Ot5EKHcKi7JrfuLcGzBpkUokGSipGSg8dayNawCI4mJ6Zcbk5wGlenBKgS+MjeAn+8c3o
	1ElMpACfmH6SPF/rIoGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCoxD-00000008fCB-3cEn;
	Thu, 30 May 2024 23:13:03 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCoxA-00000008f8x-0tn4
	for linux-rockchip@lists.infradead.org;
	Thu, 30 May 2024 23:13:02 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5295eb47b48so1638333e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 16:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717110777; x=1717715577; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BxC+zkRQtnEbqEOZ0TSkFRxCG7VsNA8jgi0zgdIyDnk=;
        b=CjS9nxXPrKNZJ76q+8v+VBdNyq6IIPG3q/G8TcHvGCIEpOm47pEyvX23VKfeZCFetF
         EB+w7SQeslBEFL72KZIF7/VcZ5Eo947USo4rzv/s96sJphZQge/zpBzmTEX3tfv+0zAx
         ABQe6QEtLlxpBreEc8rqN9xF4MSBLsA83ZmsF//bG77jBZYisPE8lVD6nKiUgTf96wI3
         jHU0kCOsLGa6bvLBrbFlVOr52iS3neKI8Q/4s0JODRjH8HnEH0cZGMFi3zP8phzh0ULW
         vpD3xetgHm8p7yFwcYmmJ7Xy1YKTCOCeyLU9+YuKJs1P+5ZnfDs7xMMerYpHINivoHJy
         O0Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717110777; x=1717715577;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BxC+zkRQtnEbqEOZ0TSkFRxCG7VsNA8jgi0zgdIyDnk=;
        b=k4OBH8GyfaEL6gHZp4O1Z3GEaVP4/nzh9Essh35PISCeG7VmUSS6kF6DBkIiFgU+u+
         qFQinJYLbGTMXOydFuBP4qUV0i7LonML07jmomqN1OXQixp0W2BVKWzDJs4q2cgaD7kY
         0C0c1mR8l8AncqhCzQ1QvAW0awp+PJvsXvwiF+9GvVzZC0gFZ6aTVi9dACQw5YmehIpV
         nMtQMSHofezynLEUf/GHEPiZ45vsQrnGsbnVvX9zIQcmAWJNS0yKLCPqo1n1tvzjiigN
         EcIy/KEUHUP4YVJwZ0uyodPmczIANXOIb1WEzIvDTcUvw29CKCMFydFbehgYpHq80rPO
         +MEg==
X-Forwarded-Encrypted: i=1; AJvYcCWPfz4X1iBCi079oBDoENMW91/efjhjFaTK/0pl8cIPrm1cM3SBaWM9XEaa9/kpg6iGef/bknc2xcDPTfV54g0UuCKL0PpNbZ3kSlAcFSrIHm+U
X-Gm-Message-State: AOJu0YyquHzHMY7MisVqZPogzHywLPG4dCgfhZ4M31krTnS7M6O4SAb2
	b1aOKZI0qhT+3nF0gmOSm2kjaTtCxDM0zOJXFn1WzEyHolDi8ON7CfUr0uZk/8E=
X-Google-Smtp-Source: AGHT+IGGLsAMHbk6z9ggkIBZMdQMqoAHVm39g6bHGA+HdZAGC5BH/XBCKbp32FpXhgClt94lctQK5g==
X-Received: by 2002:a05:6512:2085:b0:529:bc99:1cd8 with SMTP id 2adb3069b0e04-52b896d917bmr39787e87.59.1717110777383;
        Thu, 30 May 2024 16:12:57 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d75d96sm119005e87.120.2024.05.30.16.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 16:12:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v3 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
Date: Fri, 31 May 2024 02:12:54 +0300
Message-Id: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPYHWWYC/3WMSwrCMBQAr1Ky9kk+TbWuvIe4SPNpH5QkJBKU0
 rubdqWIyxmYWUi2CW0ml2YhyRbMGHwFcWiInpQfLaCpTDjlLZVcgDURovJ2BpNCBEqV4qIfhO4
 GUqOYrMPnPrzdK0+YHyG99n9hm/27KgwY0FaajkvGDO2vM3qVwjGkkWyvwj/7/qfnQMFpp1t5c
 vpszFe/rusbZq2K++0AAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1895;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=VvftgDyvPN2Jo+dzgQt64qBzdF1Q5SyfOzczZqaDLmk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmWQf4bgvbfxFD+03kBTAzGeWGmj39F9t7kiqCY
 mEAskW2zLeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlkH+AAKCRCLPIo+Aiko
 1b/LB/9dVqU653u3o+awrMXOsZ2xSPBHZpil6qLXw6GtARRG1dtdPHMwF2rxdPdl6v62vVz/zgt
 xEA0N8hJPiquSjd22b4m+xShUbX4PMurjMqHnhxDX4+M1tWGeri67i4SkB1AZHxqTcb1076jJcq
 Y46FhaBvHYCToEdZnSJDXBKCcaYqw5DBL0hBpv5BjT4wRlsIW1HldEBHV+g2JGcVDoUu3C2j6P9
 ZfM/vgWE/UatGfLdjV6As/gGbDOV72Ts+LOPl0/wb/zp3Cob6JKWrM9sywDlM2fSzf6oOf76BF5
 FJlGkS4BpBJHSzoa+fmoJVUKLBGHOYSLNw4OMLrnsG924fo5
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_161300_534184_9A2629A1 
X-CRM114-Status: GOOD (  11.94  )
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
Changes in v3:
- Rephrased the warning comment, following some of Doug's suggestions.
- Link to v2: https://lore.kernel.org/r/20240529-edp-panel-drop-v2-0-fcfc457fc8dd@linaro.org

Changes in v2:
- Actually drop support for five panels acked by Doug Andersson
- Link to v1: https://lore.kernel.org/r/20240523-edp-panel-drop-v1-1-045d62511d09@linaro.org

---
Dmitry Baryshkov (3):
      drm/panel-edp: add fat warning against adding new panel compatibles
      dt-bindings: display: panel-simple: drop several eDP panels
      drm/panel-edp: drop several legacy panels

 .../bindings/display/panel/panel-simple.yaml       |  10 --
 drivers/gpu/drm/panel/panel-edp.c                  | 192 +++------------------
 2 files changed, 25 insertions(+), 177 deletions(-)
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

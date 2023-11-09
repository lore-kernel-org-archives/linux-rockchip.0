Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50E1EC4167D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 21:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3PvMcG9cl8N0uVMsW7j94W/fhUxOfR3XWzoIHqNgARc=; b=dV2b4yVO4in47b
	56/PHAR4ClEzMvRkGmf/266bjGpRo4WnNebJgOclRGlFVXqbAmjmF5iHNFOKnnRAxTVSb5rz6+C/6
	Hgl8ot22j/i2UaG5nnLcqE3o7D2oq99OI/vV3q3FC0rq71orUn7m3tB6XXWdZetH6X1Yn6c6c7h5y
	eSW0HM5T/zcQ+6eQ6sEnXmjHsojlOQvXiOYiQcQLLPvZigBwnrRDdb4B1y97iINMhgBq8nvu+snh0
	YS/TAMG5Hc36e4QaUliJrGloaIIUUbWQn+2kNIUcegSboCqkcqsjuYQkEa3oblr6bgNOEUr0zge1v
	n0AiU24RoM9jmZ00WUKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Cuq-007I2z-1k;
	Thu, 09 Nov 2023 21:50:20 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Cum-007I1U-2H
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 21:50:18 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6d2de704f53so782495a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Nov 2023 13:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699566615; x=1700171415; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KHWtDVUYZSf0Guk+L6n4AjbYj4AnCFaIY1Xxcyv3l2c=;
        b=HzcNyAwMc8t2OIVsYmO7P3Ac7CtJvOwGpGJ8nbRM7SUAehrD/rb3v0qKMoQr5wlQV1
         9nqjVMEZD7GtFidOkvD7K8UFsfD9ZAU8MUDs1O0YOy7MuAMMurIAdXzmJHw6iFBIe+Il
         LR3LUK7ZjrnMkhHD+feXmO9Z3q8uLuGMoMin8DyuBwnH/LwsSgt0nox9/onL5hyJf3VC
         OtUCLeYhw+QnGaB2yiDz134JWHte4wQPUsAODV2TJ4Wb/1meRybmzKobeXGQ+9AtuFGn
         yKPn52wJggYOri4hLdpPdWFqBFipj2FdM/6urA6JyUBdXuBE3uMUdH//cuPzQwKK9wYE
         PiTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699566615; x=1700171415;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KHWtDVUYZSf0Guk+L6n4AjbYj4AnCFaIY1Xxcyv3l2c=;
        b=UZBGZA8tRlvd6tFeQOr1zL/OPGnmXzez1m3KO10/RkP++U0bRxChMTg8QzXAUtV3gn
         C1BnsgX213m4CHgV8PPilgBa6KXCoIYGyesyaAni6y0USlt513sC5kP7XGFwbcpaBoLZ
         ZLHOeL5bqOy3Xy/DVQJ11x1M3n2dlKDR6dOfSFiceCaCzm5bAf7GfNCl3yCoRLWF1Bzt
         dsndXl88RP9lOZcfhtJGNhIb4UUNKzGxKYByZX1Qukwh77CFNU0gfmHV4iMAVQkDNaZp
         6KSojonhM6ffv+rujqAbp+rGwkRqpgTo8k4hZtIeqrOy5uRM4wM8ZQHmjWdUvETyMr7a
         xnsw==
X-Gm-Message-State: AOJu0YxdIm7+vgWjEog6OHbQy2fZ8YMavzoZFY7d1LXYWT/7A9QYgp2T
	VN7tH22mpIpFUkaFH1+rnk2JJ1zPSZQ=
X-Google-Smtp-Source: AGHT+IG1tUCieKLhfvTf/RY4xeb9CnluV/OI/K5u8iVdMN1jloug13hPXlZ6R1USTMrKbhXhGYgFWw==
X-Received: by 2002:a05:6871:723:b0:1ea:fd4:58fb with SMTP id f35-20020a056871072300b001ea0fd458fbmr6987340oap.52.1699566614875;
        Thu, 09 Nov 2023 13:50:14 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id tp22-20020a0568718b9600b001d4d8efa7f9sm864003oab.4.2023.11.09.13.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:50:14 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/4] rockchip: Add Powkiddy RK2023
Date: Thu,  9 Nov 2023 15:50:03 -0600
Message-Id: <20231109215007.66826-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_135016_782863_30F42748 
X-CRM114-Status: GOOD (  10.41  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RK2023, which is extremely similar to
existing devices from Anbernic.

Changes since V1:
 - Necessary clock changes have been accepted to mainline, so removed
   from this series.
   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=f1db0865b4628d5e2e85347350c077a71f0629d2
 - Combined Powkiddy RK3566 devices in devicetree documentation.
   Dropped ack from binding as this change is vastly different than
   the previous update.
 - Updated panel driver to hold panel in reset status after unprepare.

Chris Morgan (4):
  dt-bindings: display: panel: Update NewVision NV3051D compatibles
  nv3051d: Add Powkiddy RK2023 Panel Support
  dt-bindings: arm: rockchip: Add Powkiddy RK2023
  arm64: dts: rockchip: add Powkiddy RK2023

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 .../display/panel/newvision,nv3051d.yaml      |   2 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   | 161 ++++++++++++++++++
 .../gpu/drm/panel/panel-newvision-nv3051d.c   |  57 +++++--
 5 files changed, 213 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

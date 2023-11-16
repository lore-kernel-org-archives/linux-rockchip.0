Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 776E5C2BB3F
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 00:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8jaZ6HB3oUBhtEy8JSCZ6rwixqbgCLibNNHjqdXrdtg=; b=tvs+qtQitMLImY
	hCSyDn/PeFWX/dwEfQ9sWfU2qH7HEWF5PAe/W1bw5uaUZVSXcOX+3ADeEGCLTEFLauogEVRR1mhqo
	19jnDu2Eud7MtWdOZsibR10A4kgPeIBRPe1jiFkoTLJO9wMSby6e2a3miQDTSVbZVvloygfUI8NX8
	DM7dYLSADLf4Oig1B8Os11GMDmAGtlIeFmFA+vu4qfFLrhI+wd6R9AKOjsT2lFz89BR03EZ8CGYbg
	6+U2LUKB28cTL3OReN3EN4boXXHxIiF67wiNLh8lt2p3fw3n8VIc181I3NKp8b9hZeXHJ1XCIDdYf
	D72HgBG8ER0EOzeRiRrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Q4w-0023bo-2R;
	Thu, 16 Nov 2023 00:17:54 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Q4s-0023Ye-03
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Nov 2023 00:17:51 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6ce2988d62eso126921a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Nov 2023 16:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700093868; x=1700698668; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+T640iabDcn94YPGyLAPy5TpEuHJTBSfofResuK41VQ=;
        b=HczKXUJTuIn7/Divb2mann5Cu5NT4peVvc7ceVZEtHMrUlK1x1n9rukwhqnFK97toD
         sTagWPdh2tVA2VVOsJwbYP9YPlciFfEnguBAylQrH9nUm5Wb3UBy2of9uF/OhSR1pGHc
         n7shaKmjlQeyLyFQ8kIKP8/3IwKHgvd/o9gZeWjWvap3F+HwRhv73zQoqIF9psWngy/J
         7lTUjL0kobRfW8SutC3/44Zcd35VCOJWHTzdjhZqhPKSEIrMf49XnSahSLaZSoCsSmYr
         /fuRjQXfabA1zSRXvL9paRK+1tlWf8peo+CUDwBYbWwCt0MWhLUeSI9cqqr8rnPxLKFX
         qqSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700093868; x=1700698668;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+T640iabDcn94YPGyLAPy5TpEuHJTBSfofResuK41VQ=;
        b=EkKtx9TBbedcWV4NIBYJNHfNHkyvT0nFlrTRYV3IAwH57ShpSHjkCJUZ8yRqCtS/by
         /ix9//wNHrKb85T25o/eMEwafQMATcL51Jcxjodqn1Hnoe5LrGHkdxBOhCUSPioVA+pr
         XJL0dJwnRB79zZbcTtCc+dnHsCRBZ7KO30mhBQBm9FANgGD/3YP8bjT2iMxpwztD/f2u
         9SmhFONaYOQBGZNUfbqGmZTnsW7Svc0+S7DjymkdrlDSz3ZxkrcKmBoxJE1jNrKL5Ezk
         JAOUmu/s8QLqflvU4v0tJXsbSaq+IlUk6nbGCsF8kRpoX+TBIuBWKcTRCCpwtlmomjhV
         q+9g==
X-Gm-Message-State: AOJu0Yytfl/IxVRAnupn9Ld1iiDTLEFpXOb/3cmHQuFhhLVEM8DKh/v6
	8fb+41jHSIXIA8hZhq1EwEFMq5mpN4Y=
X-Google-Smtp-Source: AGHT+IFKl9kDcNbmofepMGj1Dnht7Xf1P87GcxVSLTppZx4COKkoDcBO4GGyvMHqiBZZYKfstb4zwA==
X-Received: by 2002:a9d:62d3:0:b0:6bc:fab5:e996 with SMTP id z19-20020a9d62d3000000b006bcfab5e996mr6517974otk.31.1700093867763;
        Wed, 15 Nov 2023 16:17:47 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j18-20020a9d7d92000000b006c619f17669sm727117otn.74.2023.11.15.16.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 16:17:47 -0800 (PST)
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
Subject: [PATCH V3 0/6] rockchip: Add Powkiddy RK2023
Date: Wed, 15 Nov 2023 18:17:36 -0600
Message-Id: <20231116001742.2340646-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_161750_061319_2E0D3676 
X-CRM114-Status: GOOD (  13.20  )
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
existing Powkiddy RGB30 device.

Changes since V2:
 - Split "hold panel in reset" to a separate patch for the NV3051D.
 - Changed replaced common include to a new Powkiddy specific include
   to better reflect the similarity of these two devices (and so as
   to not have to delete so many nodes).

Changes since V1:
 - Necessary clock changes have been accepted to mainline, so removed
   from this series.
   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=f1db0865b4628d5e2e85347350c077a71f0629d2
 - Combined Powkiddy RK3566 devices in devicetree documentation.
   Dropped ack from binding as this change is vastly different than
   the previous update.
 - Updated panel driver to hold panel in reset status after unprepare.

Chris Morgan (6):
  dt-bindings: display: panel: Update NewVision NV3051D  compatibles
  drm/panel: nv3051d: Hold panel in reset for unprepare
  nv3051d: Add Powkiddy RK2023 Panel Support
  dt-bindings: arm: rockchip: Add Powkiddy RK2023
  arm64: dts: rockchip: Update powkiddy,rgb30 include to rk2023 DTSI
  dt-bindings: arm: rockchip: Add Powkiddy RK2023

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 .../display/panel/newvision,nv3051d.yaml      |   2 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 154 +--
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  38 +
 .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  | 875 ++++++++++++++++++
 .../gpu/drm/panel/panel-newvision-nv3051d.c   |  57 +-
 7 files changed, 981 insertions(+), 152 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44BBAC76195
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Mar 2023 07:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eWEogXuDjLITY/qky0jO8IVKSiwHLl+fEepvbtLOi3g=; b=aUhPX68ELemt1l
	O2WkFPHNFAFBu2QmBKAua7lW2bCzuZISmXXWjimC9pI+Lb7MZnWHAPK7fTgSLZCrk3iALPDSQbL0V
	ndmjzTbphOK0M+DfU+sEVT9z3k20Z2BnKlTGNkpUiJ+kYcFgr4tHVSUhCT9OcJEsJ+BTuGG+GepU2
	PORfrITNQGVCXps7k9iGNJwhfHGB8CWMe4ObiqnCLlVAZTpg/Q+yG1n2rvtB1n0frPpIbgLWxRBRh
	xnKfnvc66TC/NE56UTECZkqNFY14PZv14ajSQ1tWjmvXGUmCXZ6DohHSZZwHs/uN7vs0GM/d3G4kj
	Rcei3Y6ga/O+h1xGNYDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3pb-00DSHP-1W;
	Tue, 28 Mar 2023 07:33:23 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3pX-00DSEX-1o
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Mar 2023 07:33:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679988798;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RbISS+/27S6jW4bDHr8lk+wvnbdcYB3f6YGIVizM/3Y=;
	b=Ik0bt+BCMtNh4bBB9xzBPgz6f28Vf9vvWOu+pIYaOe1x97dnPMrLgIVIRJXVeDnn4DvGEf
	oKqkM0E5awRoOTjRTfLkHhfFmy8sLbI6bfyk+PVslKgXxntzvinOouQXT2dXKQpiywtPSK
	gkfiHTryeZFpYPPzVWx9BAWlnhFbmew=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-536-n8XcsWOiNk2Tvg68AzneyQ-1; Tue, 28 Mar 2023 03:33:16 -0400
X-MC-Unique: n8XcsWOiNk2Tvg68AzneyQ-1
Received: by mail-wm1-f70.google.com with SMTP id m7-20020a05600c4f4700b003ee7e120bdfso5837948wmq.6
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Mar 2023 00:33:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679988795;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RbISS+/27S6jW4bDHr8lk+wvnbdcYB3f6YGIVizM/3Y=;
        b=yAfTsj/qAf2cAX7U8i/w/3tzcMLgXKnZzs4YTkSEbtohdqhN9CDSMNDTLZUTafiDuu
         crlnIjLwXoVerzG2SHQzRVdbUUXDcIfnpMU7OUohZz0k5lyR6yS9xBlkl/DdOhmRacDp
         z6/BYfQr1XasEEy2G/3cfwadI8FkzUTJGInvZQibWozk69Ufjhn3yCZadnpIfY+xJ+wE
         uWGtJiVYgpX1QfAFB2/L3VtLQSSjzPmRjGUCYvmA1jvcG92kCyyqi9ofrmfukICjKhw/
         M5uxMUicFjHnOWaLUako95cKTkmUPUEBR61v3lO3Ya7MWZacElDLv5eBlGFc7WUWGvt/
         X2Lw==
X-Gm-Message-State: AO0yUKWOacnBSgjzfY3zjy1rWgMBOVUHADfVmZzuagMaTJh8PPC0WaTd
	uYqOsJayxP5b1lxTRFIlCrOO2DO4ug5nAF4t4N+P6JwLbVWpR7SDIwYmF4QN2FQgTxcGrXtdglG
	pmdy4urn+rRfxGiH/sQWmjoiq3Pm4KTBY
X-Received: by 2002:a7b:c5c8:0:b0:3eb:2de8:b739 with SMTP id n8-20020a7bc5c8000000b003eb2de8b739mr11276043wmk.37.1679988795169;
        Tue, 28 Mar 2023 00:33:15 -0700 (PDT)
X-Google-Smtp-Source: AK7set8lfOmpR2nW3HTghmY7jK4kUsb4kpoMtbF8MSqpuG8HfIm5O5jbiNwx/SnjQsKsrFOF8ZJmmQ==
X-Received: by 2002:a7b:c5c8:0:b0:3eb:2de8:b739 with SMTP id n8-20020a7bc5c8000000b003eb2de8b739mr11276026wmk.37.1679988794856;
        Tue, 28 Mar 2023 00:33:14 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j6-20020a05600c190600b003ef6bc71cccsm7527075wmq.27.2023.03.28.00.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 00:33:14 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>,
	Tom <tom@tom-fitzhenry.me.uk>,
	Robert Mader <robert.mader@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Martijn Braam <martijn@brixit.nl>,
	Ondrej Jirman <megi@xff.cz>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 0/2] arm64: dts: rk3399-pinephone-pro: Add display and touchscreen support
Date: Tue, 28 Mar 2023 09:33:07 +0200
Message-Id: <20230328073309.1743112-1-javierm@redhat.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_003319_688085_F9E74946 
X-CRM114-Status: GOOD (  11.69  )
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

Hello,

This series adds support for the display and touchscreen found in the
PinePhone Pro. It's a third version that addresses issues pointed out
by Ondrej Jirman in v2:

http://lists.infradead.org/pipermail/linux-rockchip/2023-March/037889.html

Best regards,
Javier

Changes in v3:
- Fix some ./scripts/checkpatch.pl --strict warnings.
- Add Ondrej Jirman Tested-by tag.
- Change PWM period to 50000 since 20 kHz is recommended (Ondrej Jirman).
- Remove useless comments for the panel regulators (Ondrej Jirman).
- Drop unneeded pinctrl pull down conf for pins that either already have
  a pull-down resistor or are already driven by the SoC (Ondrej Jirman).
- Remove "pwm-delay-us" property not supported in mainline (Ondrej Jirman).
- Use the correct "goodix,gt1158" compatible string (Ondrej Jirman).
- Remove "poweroff-in-suspend" not supported in mainline (Ondrej Jirman).

Changes in v2:
- Drop touchscreen node because used the wrong compatible (Ondrej Jirman).
- Fix assigned-clock-parents in vopb node (Ondrej Jirman).
- Add vopl and vopl nodes.

Martijn Braam (2):
  arm64: dts: rk3399-pinephone-pro: Add internal display support
  arm64: dts: rk3399-pinephone-pro: Add touchscreen support

 .../dts/rockchip/rk3399-pinephone-pro.dts     | 114 ++++++++++++++++++
 1 file changed, 114 insertions(+)


base-commit: 3a93e40326c8f470e71d20b4c42d36767450f38f
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

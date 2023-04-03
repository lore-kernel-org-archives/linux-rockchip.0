Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0EE3C76188
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 18:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BQlBY3fER5PlFi1C9YaZ1/QXZC6k2M1Pa0QcIIOLMY4=; b=yEbD1NugK0tRS3
	KkY1XgesacRx99OzvjRbq1KjeZFCaDOyiMFJynaeVRnWDJSPaAVbY7Q/VnGWeTiGHxQ3TwQpSbfqK
	H4rl4581LOYhE9ANc3yL945a/gBwsnMK6NkxKlZXC2ZQ8WJ3WEzBU1oxGubc7nRBs9FrfCIq+rvI4
	9v8mDz88QN+VaJrT0yiPTJk8mI7VipLORm03fYS5k5JGceaxusMq3qgw2si5XIFrOUDvxVaPwKLLS
	pyW9pNNZX5CY9rMWv0cyNJD+crdckvLQad5USK6GhW+eL5dAXV0vpRjmB8ANq2g0NQgX9XZsFpVup
	kXIQIA5TmoeG8FMlCbng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjOTD-00G8JL-19;
	Mon, 03 Apr 2023 17:59:55 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjOTA-00G8IF-16
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Apr 2023 17:59:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680544790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WlvpCHWMmiZdlbkC384yczmvM52H5PXcaJ7qF3TTD/w=;
	b=T1DSd/YCBZSJKaY3x9rMawr717KzNbCg0IUW5TsMjRHc4g75yy4gbyA8siQSJljNgcoSHc
	gg1r9JAaZ7bLm0Gl+yJg5zypvS2xg/eBq3jC25zZpvqFAiKDBtgq/ztuTsx3yHTUg4ChIa
	rInxtgMu6a+RNfhZwtqSDxHO3fPs6+c=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-118-bqZMu9ktMVGZUsywogxPhw-1; Mon, 03 Apr 2023 13:59:49 -0400
X-MC-Unique: bqZMu9ktMVGZUsywogxPhw-1
Received: by mail-wm1-f70.google.com with SMTP id ay37-20020a05600c1e2500b003ee69edec16so16515934wmb.5
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Apr 2023 10:59:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680544788;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WlvpCHWMmiZdlbkC384yczmvM52H5PXcaJ7qF3TTD/w=;
        b=UdlOWxJKLd4uw7J4UMagWMNwBU3rddEZCQJTok4IQ2kOc1lUC3krkRTdpF/WRInQVt
         AyiTuO3ge+7plJxNdRoyZrCMIUh0f1UUzGPH4O8pzbGvqefTw1GxHU+7KGV2tdI+PZsu
         WAsas5hsGE8XvH9Clq/VivtciIqed9PKf4UPzLsCsSsSa9Dp8jpLPWt3FnlaXTWcMrLO
         YLpFYrzj/nr6+6eQbNlm/h+j4mzETwxBBa3oYjxpZjpvWBAGjt6HK86waN9RKg8Z7cuO
         4fu0akXxt963MJwzkEUxCRJIbjg/LZxyB9sPMaJT8Og4PXa+I/0H8Dx0VY7ial2WWs6/
         LsNQ==
X-Gm-Message-State: AAQBX9deAxspDPdQBzlWzzWl6hOwAR6uwHxTgWHocm6fxdw63xK20hy2
	K2Z/KR7wWHEVsbNfpvFlgr7K2K99WvbItfG4/HU5EUQZedDrh4YWlge6NHSAt6cGAGqsR17bR6r
	WiJ3OQhoI5X/uNli7Re1PnqSpJiocbrj1
X-Received: by 2002:a05:6000:6:b0:2d4:a1c1:d1a2 with SMTP id h6-20020a056000000600b002d4a1c1d1a2mr28010974wrx.63.1680544788103;
        Mon, 03 Apr 2023 10:59:48 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZVhLfsp00dFS4OanJ+69SLvb6/rmvbMxDG1wlE2yhnABSUEGPFBZ+MotkgKKbOd+iYsvqjyw==
X-Received: by 2002:a05:6000:6:b0:2d4:a1c1:d1a2 with SMTP id h6-20020a056000000600b002d4a1c1d1a2mr28010964wrx.63.1680544787794;
        Mon, 03 Apr 2023 10:59:47 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id e11-20020a5d4e8b000000b002cde626cd96sm10222763wru.65.2023.04.03.10.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 10:59:47 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Martijn Braam <martijn@brixit.nl>,
	Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Change serial baud rate for Pinephone Pro to 1.5 MB
Date: Mon,  3 Apr 2023 19:59:37 +0200
Message-Id: <20230403175937.2842085-1-javierm@redhat.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_105952_471726_D5B5076B 
X-CRM114-Status: GOOD (  14.52  )
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

This baud rate is set for the device by mainline u-boot and is also what
is set in the Pinebook Pro Device Tree, which is a device similar to the
PinePhone Pro but with a different form factor.

Otherwise, the baud rate of the firmware and Linux don't match by default
and a 'console=ttyS2,1500000n8' kernel command line parameter is required
to have proper output for both.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

I tried to instead get rid of the baud rate altogether, as suggested by
Peter Robinson. AFAIU that should just pick whatever bad rate has been
using by the early console.

But neither using 'stdout-path = "serial2" nor 'stdout-path = &uart2'
worked for me.

In both cases I didn't have any output unless setting a baud rate using
the 'console='param.

 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index a0795a2b1cb1..6bbe65bd5bd4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -26,7 +26,7 @@ aliases {
 	};
 
 	chosen {
-		stdout-path = "serial2:115200n8";
+		stdout-path = "serial2:1500000n8";
 	};
 
 	gpio-keys {

base-commit: 3adf89324a2b2a9dbc2c12d8895021e7e34e3346
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

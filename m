Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2FA4CA1003
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 15:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nY4j20sQLzR8eR0730awsKp+Bb3IGs9NRDBVB8dQ/9s=; b=y+JDHNSw01T0xu
	gwJuL54h6pGUm4MfsDMxQtwcb+sE5pEljxcxeZmWByOBTVs+qX3ndp7h2Y685b1aagaTeRzG3dvmZ
	gqFXB/RcpMkXF/F1P+CjiM5/RYRuJL9iEBgtODiAg89SY6sU06IPejHgCTmtN46SboRTVWA9UOpiv
	MifkC2IMT/CvsHrJuxPTAA7vPFf+flgCDrmm8UKX4MiMS9nulXBWQ5Q30e23VeADOgoUXtSwaLsoM
	yovQUE98RxSfEjf0//072SJpGEROCGkyJ4loZs0SipKZu7JKYaDNdxS/8rudrWbxh+NykljZ4UkVl
	xkMnOiLC/Ru5yeUuljag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3aq-00000006ocz-04EB;
	Fri, 30 Aug 2024 15:31:20 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3YV-00000006nkE-0488;
	Fri, 30 Aug 2024 15:28:56 +0000
Received: by mail-io1-xd33.google.com with SMTP id ca18e2360f4ac-82a151ac96eso73369439f.2;
        Fri, 30 Aug 2024 08:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725031734; x=1725636534; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vah8cjhzLMApjKYb++BW5rUOqQaxePVKAdvzAWnfOaM=;
        b=Nu8+anP2L7uaGAV1VkJeZ8IDgo4jaOnArkNdeahRG6ILdn0ZHsqqftAKWOhf/Fx1LT
         XsvYq6OeRGF/qg/vgtmkdVCc3GzhnK85sJsJY8uaLKrSVnT5gLUv6LXF0Dmpd735uQZ0
         nfW00WAebgg0rFxaDgBmE+N3eSC6uxXt9UQopZTJmnqOQSSfEsdEcPEtJ8ajxchv9svy
         JdQqUnWaNWWtzdRJXrur/F4FLkrP+v1j2NyFlcL4Bmr7mjU3f7oVS6BUcLr7fcGeimSi
         lJC/A0B0H4pQPWxVdWXNEaGjJp2LtGzy5mv3uzlGfMmu75WK1zJq4B6GiqFDehJvKyZw
         h08g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725031734; x=1725636534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vah8cjhzLMApjKYb++BW5rUOqQaxePVKAdvzAWnfOaM=;
        b=gTo+tUzVJGQqJmxYTqUEJb66jdNGjzpSTsFKKhOIRyfhvQY+8ULvUHpBCRxCoUGOcU
         jQZHW/zbpIt6vnYbkA6rC1oNk74rGJK9LcycRPIyyhg2GtqKbXzNnEg/YTunFrE1+2CU
         XBmwtFPGVuU+/wsylEsxK+c3a6gJ9vp2PxGLz2UodMCYUp65Lrz1sLc+3GTAUevchUda
         Z/Y8p2M5wwtDg0YLKZ/F5yHgrBHxKUfodydJgdc2ukjZesg3Dn0JGO3t/f2rQSlxtBOe
         7ndzFjNqbS1ED6OjPrx+D+OYLT9OC7LtH8tD3U9wFxHlBZBNcWcpsWNwHa/XJj+Vz63B
         BPzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVm5Dsk5NR4lgs0Ys3W+2NQG9/mDj4yd3MJlA8GmdYJ+ZYgSDIX7CtdxbbCLXmvjo0QTep4zDRqO4L8/ZP5mtE=@lists.infradead.org, AJvYcCW/iTz3bg2mIsUzc8O3vXQ/HnBd/U3y+ApkIHyfkas3sruZ1PgrSGTM9OZM/gyZrLR4BkB21os4tYKx+u/G/T+H@lists.infradead.org
X-Gm-Message-State: AOJu0YzQTsplzJ2tmMh06/NB28ps4mOB3Ayqa2QmKyhnCPV83DTpHyd7
	70+HiNEGNWWPmUnwlsNwN5GFAYrrQ3jqEGoPn7pY9M0NHTfpZT/H
X-Google-Smtp-Source: AGHT+IEWeczUbduYfRfvJRK9CAJqdyCgkYF3aIwmFNEUPRqq3T8PgrzJvl3ssCccXEstFDKzoix0cA==
X-Received: by 2002:a05:6e02:1645:b0:39d:2c94:45e0 with SMTP id e9e14a558f8ab-39f379b2934mr77207365ab.26.1725031734314;
        Fri, 30 Aug 2024 08:28:54 -0700 (PDT)
Received: from localhost.localdomain (174-20-195-90.mpls.qwest.net. [174.20.195.90])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3b040474sm8870925ab.59.2024.08.30.08.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 08:28:53 -0700 (PDT)
From: Shimrra Shai <shimrrashai@gmail.com>
To: shimrrashai@gmail.com
Subject: [PATCH v5? 4/6] dt-bindings: soc: rockchip: Document VO0/1 GRF compatible string changes
Date: Fri, 30 Aug 2024 10:28:40 -0500
Message-ID: <20240830152840.9066-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240830152132.8894-1-shimrrashai@gmail.com>
References: <20240830152132.8894-1-shimrrashai@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_082855_076702_B9423866 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
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
Cc: algea.cao@rock-chips.com, heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, robh@kernel.org, rfoss@kernel.org, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, ldearquer@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, s.hauer@pengutronix.de, aarnoud@me.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, markyao0591@gmail.com, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, daniel@ffwll.ch, andy.yan@rock-chips.com, krzk+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 78c6d5b64..8fd539125 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -31,7 +31,8 @@ properties:
               - rockchip,rk3588-pcie3-pipe-grf
               - rockchip,rk3588-usb-grf
               - rockchip,rk3588-usbdpphy-grf
-              - rockchip,rk3588-vo-grf
+              - rockchip,rk3588-vo0-grf
+              - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
@@ -261,7 +262,8 @@ allOf:
         compatible:
           contains:
             enum:
-              - rockchip,rk3588-vo-grf
+              - rockchip,rk3588-vo0-grf
+              - rockchip,rk3588-vo1-grf

     then:
       required:

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

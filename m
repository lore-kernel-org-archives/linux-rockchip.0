Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57609C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 11:47:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D6FD61027
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 11:47:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D6FD61027
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CAhXB8RVro2wC3q2Djks4dRdD/BaAjC1aH8lWdPRdsI=; b=baMQ3hL6FKWauSMwPPIbG/z6py
	DltkE4AhoOxKq+UQvT9BNFGuSqLb6pDoGf+Z9Z1cfsSTQ2unRwR/ILXaMbTlS8KcUS30DX3kE1IZS
	Fvl5SCNPD/i61mCywlIWa5g6IVTZEsH9roy+4oWW838itFyzmM8qRNvpAdbF8jZ8hYYgP7zoFArBm
	s3VaxiZ6o/GiD3blkPXzMQgSOmNipSBevh7WOI8RzWRjTRzV9JCTUVFFIyVlWb+YO9RD8icUB2br0
	fZnzWNdB+ugLOdhvemgo3SbgOQwMkb4hUqEzZrcPAYeTThh1kSiYrdejqoV3rzVyl27BL/wM2oD3N
	1vMhsTiw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lazhr-007WYG-OK; Mon, 26 Apr 2021 11:47:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lazhg-007WXC-6y; Mon, 26 Apr 2021 11:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=7CWCSDgIxEP9nExMiQ8gtfxRiziS98W5A2zeK4MEZOs=; b=p7KmxLZkJOYslN6EYpTZTz+w5Q
 t3HCtQ6cD+f5JH7sbSLhsA12sRLWJIj8ZshXLKekkEznAe76fM2WrMDCpllb5yF9ymBxe0JppuLtT
 PKoRLA+35EM8CH6t4sniYorCzsbUe0BRc67n5DbeMV6C/h6aDtINviTNxF9D/hKEsT/aNG2ZgS8mC
 BCkXODbwRshOltOeTpSsS2IdghvXmQpeckXYJ9BCQ9LXsiOTKSF2i11DEfm1dfTmZI+S5YRlq1Roe
 LCMjSEX3dsMMkfenBonzAtJflRN8WR9CUO4Gg37ysYxhvwbZim6FPJ4edsBGFncu3DK07gRdxIIuT
 9CnLesGg==;
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lazhd-00Fvua-LB; Mon, 26 Apr 2021 11:47:02 +0000
Received: by mail-io1-xd2a.google.com with SMTP id a11so3254487ioo.0;
 Mon, 26 Apr 2021 04:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7CWCSDgIxEP9nExMiQ8gtfxRiziS98W5A2zeK4MEZOs=;
 b=pVZIz4mrDyFn0QNuqWuNexCDE2SY1Rw0FX/KJdpqIqdOTY5W4Dup3WIh8WY0pXJc/k
 IRevNbLm4DPVXDu04hk/iaS/QFIj8Kya1syrimkagRU0VXHMGsm3hHbDQXWh1qJodik1
 Q32ZA/G1ATDYDg/f81Fb5uMBDQaOvmTsT4Ua9Q8VP4+KodhqtVOarxM6oGdfWez9R8uZ
 DBGQCqKK/IUhaBYqZEflDVtZv5dt0REsm6LxAXCW30dNBf17eSuIJxFXA+52tuWnlF9a
 LcNTp7957suwSeF51TKiwrGiQ/MA4FmYmSq4QJNyZBIILsXdYqyB9fC0FowkWNjn6XsU
 x2Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7CWCSDgIxEP9nExMiQ8gtfxRiziS98W5A2zeK4MEZOs=;
 b=X+ICsM4fuoYwTnGhC9miLQIZ9O4PKvVayjGaZPlWE8AiNoNVKM/sKF2EXjiy73UVtQ
 jaFtceDDa9wRm4FPDH36iOGX5PnodFKuZX7m4gAyQ1Q0QQDXbAw7oud4qFWnfjgqaaJY
 4VQbOsplxEc+M9KpoVHi7b2Ho/lFBFMHjw9eUaWjA4htDItDsIQVv+lvWhbwaf9A30/6
 +wyV1j+cIRnratU8K1F3OnoIYapzQ0Wn+AFNkcMKt2kgCrOu1QSO863XaDwdYz7RXL6c
 8XVl0IsCboSf0iC6njfK+BJMsQKQdVITnmq+YnpcaW07/6zhypsqkrBurMVssf5qkXVt
 Kk1A==
X-Gm-Message-State: AOAM530bfb8cVe0kHwry624jfi2bWa7MJ32CwJ4S8HvCgvwOFK2JrDW9
 FXGoxt98dh7+w8u/MTJ/3eI=
X-Google-Smtp-Source: ABdhPJxPkh2qqZZagWe0I5W6/yGxbOpR4Ir0nBSVpx85yhUqGmF97W9sxcamUQ+Ot1bMFhE7tpH1pQ==
X-Received: by 2002:a05:6638:443:: with SMTP id
 r3mr15578383jap.43.1619437620683; 
 Mon, 26 Apr 2021 04:47:00 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id y19sm6969683ili.51.2021.04.26.04.46.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 04:47:00 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Pavel Machek <pavel@ucw.cz>, Johan Jonker <jbx6244@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Marty Jones <mj8263788@gmail.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rename LED label for NanoPi R4S
Date: Mon, 26 Apr 2021 19:46:52 +0800
Message-Id: <20210426114652.29542-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_044701_753824_C2172B25 
X-CRM114-Status: GOOD (  12.86  )
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

However "sys" is not a valid function, and it is always on.
Let's keep existing functions.

Fixes: db792e9adbf85f ("rockchip: rk3399: Add support for FriendlyARM NanoPi R4S")

Suggested-by: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
index fa5809887643..cef4d18b599d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
@@ -33,7 +33,7 @@
 
 		sys_led: led-sys {
 			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
-			label = "red:sys";
+			label = "red:power";
 			default-state = "on";
 		};
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

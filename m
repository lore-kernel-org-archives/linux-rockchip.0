Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31A88C44536
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 13:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bP//4cpdke7RFKT00KGetpb+lC1LSOP0Y2sNLCcYh2E=; b=ciRLcVTEvrJnzY
	XUE8+cEGTlqY6vV0VDUmYShQw6K/zpcqUxyGri1xG4rZs8RKdaWYBQsAmyZeFLHbpuHKLOHR/eOvE
	0LthzSC6im/t/tR84d1jIiHUX2TqedBlsaCgNqYJTvwQb5wSrLBpFCQJTEyq9ZG1L9uA8N43lwom2
	Hr78rUUSt3ttR7236y516C3gW4H7fA5hfYzES5Ye37dSxBAgxidibe7a/FMPjt6bXLYJ5s9AtodRg
	IM7wnWnGYH2sKK0vh1Zb0tSeie1NCa342atOZUJPaeSrQ5jhHjJT3qlLqRgCPZnb1f/5RlRH3cDDB
	15eyeb+z2ky1f32Oq1Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAcJ-00000009Xoa-2RpD;
	Tue, 21 Jul 2026 13:34:39 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAbz-00000009XUR-45oh
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 13:34:24 +0000
Received: by mail-ua1-x930.google.com with SMTP id a1e0cc1a2514c-973b676e5f5so1706390241.1
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 06:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784640858; x=1785245658; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=hcW6qgiAPvU9a2XpLnaGi3h4k0DnWRZ/LjtvgA0+3fI=;
        b=F+zIEhtGJ4+9z17Oy7rUYFJ/aEJmg64v2U3oUow268vimuf+pLKtDAkGnDNe707T3W
         uMpZei3da8WFDKJ5gNCO8tSpBiABSldyHpM+D1mjljBuPQwGzqM5/YOMqcMRELvpYS+Y
         XotXIZl07bYJPNcMYgq96b0113tZY54SenTRfGfNS9ZklvouenEkgjEl5oG3NEtH59jh
         pGE3oBUZQM8u0GR5jXUUGFUZ8c0dRYEe489zac0PoMiToqJRIw0TaW9MMjcSqehVLfck
         ZGCJWQkM62mTrBh4aqTN60l/4KNERCioEpYekQMnUNvXieS+49HvUqx3tmYeAT9IVOCr
         ZGuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784640858; x=1785245658;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hcW6qgiAPvU9a2XpLnaGi3h4k0DnWRZ/LjtvgA0+3fI=;
        b=q+AMHN6uK19cSm5J0x2rn54PlcpRZxrdahmnq/HzoVBSHkDypDXOhjIHWCjgMTJo+m
         LIe3yrQHiJOUKeuxlh17WYRAV+ofJkRK8FYYnoP9eJp3vK6F7y1iTiIgSem8KySdtz96
         zsxy09/2cNBqo8MxjeSiJFy8FUksKmxrQv/n+jd6Hw43YkVCniHleCSgEpd57KswLuiE
         H+yfU1LvMETetQTLetX7dF/2gNPS60t0v9XmcnpK+VBXnYtQc27Yk+vlycSctT8LPOiC
         R1pKR4aiGuuiw01L+XBGgGM4AETlzA2F95ilzOs5vWocMLqckBcxPF3sSuxIVbuHljIQ
         iP7w==
X-Forwarded-Encrypted: i=1; AHgh+Rp1sF4Ci58bRIrxqVSXdPySdm/rhqFd9ISXEFRkTnpQMqvA/NduHupEASo79Axnck7lt19tfxvyv6wU6NUUUA==@lists.infradead.org
X-Gm-Message-State: AOJu0YytjRX4tUzFHIeN0r8rjXIXVIn0AxCB6zYHBTYfU6acYC5wu0Gh
	hYJWImeLsUxFDAYLZm3InTnZWucgVa13RHPh/QwO5CJfJrv8KlhUyDVd
X-Gm-Gg: AR+sD13y/UVUcjbj9iiyimSdXh2sFypJ0jF0Pqe/nATve7OFYAqGlhXSbTtq50N/r8v
	QIbkBAhQ8IUj/c1cf3j/k35PLpa7NGbC4zetylnLc7Z/NwZjyYl9gFo2cuJvItCumSr5JOlGYEi
	YxZHpVeTGQsrvIRbmPNsGxzIlzQgvqzmX6rbp+g5e9/S/SdS7nlKc4RzaGS5Ge6vkzAfviFU77j
	AZuVNWjaqFhY4V4itm5xAlQ97TZYFr9AgXeD/eApNavBlb2JosQ6rou/EBIBTRI3DKddXGh213T
	POjzzNds3cCC/tOE2KjiTXeQD0yh0+WZUwYdvC8dHbkrQ7T8fpYPZqfomo5PjdVaW/deU+i85sl
	1UVDmjjf7sKwLjaxV6ygdoTJZlIKwJ4f97DwKLrh9g1sUsNLA5wj4nTFWZtpBqmdmDf6mOyXK5t
	qPfpB4IR78PVvkWmt35b1pcXKB18/zPY1muXs4Kb8TF21nNecDqQ==
X-Received: by 2002:a05:6102:4422:b0:726:cd42:d039 with SMTP id ada2fe7eead31-7475374f766mr6094327137.24.1784640858518;
        Tue, 21 Jul 2026 06:34:18 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:a24:fdfe:648c:2808:d17c])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-74757c8048csm11903908137.0.2026.07.21.06.34.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 06:34:18 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Remove invalid rk3566-bigtreetech-cb2 property
Date: Tue, 21 Jul 2026 10:34:08 -0300
Message-ID: <20260721133408.44240-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_063420_065962_CE137774 
X-CRM114-Status: UNSURE (   9.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Remove the 'ti,rt-thr' property because it is not used nor documented
anywhere.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index b6cf03a7ba66..542269c338da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -569,7 +569,6 @@ tft_tp: touchscreen@48 {
 		reg = <0x48>;
 		status = "okay";
 		ti,x-plate-ohms = <660>;
-		ti,rt-thr = <3000>;
 		ti,fuzzx = <32>;
 		ti,fuzzy = <16>;
 	};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

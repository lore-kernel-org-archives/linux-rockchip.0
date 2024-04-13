Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54C2DC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 03:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsHgw704KtAltkV57QYA/USruGBUepo9e0FLR+j2ycc=; b=Ephnhot3GrYELO
	Ib7nb6BPBv/fK1URFaOdvw2hdl+wtIGHybDj+XoDtpIrEv5NsMZ4Wssp35+NEJJ4P+4ukhKARSTCr
	qFHRC0xczOjZU5hhK9kqcB4bytXslN5PcHMRGuohMn43uyziB91PG3VyfNhYHMDZSRcMcr91ocLuy
	dTs6Q8HuIsmwyEVmWbt8ogghDvkT/iLT6RwY0oYcvjtks+s+rzZjbTvEpJnfPfQH/pY74bylPuexn
	a7kYXF5s+P1urmxARbDpMEKoYaVI9PbIbmrfXWX1QEikkYTwHZ246pRgvPvmzR6PmNJdHpyWichuS
	fiwMJOB6BCwxltVkpM8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvU06-00000002BFg-0xQO;
	Sat, 13 Apr 2024 03:24:22 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvTzy-00000002B9y-0oBE;
	Sat, 13 Apr 2024 03:24:15 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1e0bec01232so12965935ad.3;
        Fri, 12 Apr 2024 20:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712978648; x=1713583448; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ozBxyBBJq7OruyWEYEy28rKSNAILt5L1T1wiMSJY9pw=;
        b=GR9ZWsbaCANmOq8x0SMcRaOICF9LJUcHoZ+wl7bWNQ40dY3qDCYSPucsTQv9uYdBSU
         j8eZvpXA+05JdQDNHCHbg0vIhe+QirBwZ51aM43vMPUWQfBbV+1hDP8+dax3tBPg1d2+
         /FP/hrY9n/JQhNNZiPBCjXfR0WiAG8MhQ0Y3otGJrB3UsEfVnO270v9NrJg6XPxAAZ5X
         5VfH3V0Nc12EMGEYv3Bv2qBgf+f4m1Eblh/021WuS9oLktKCvoMUyOrXLMJRBv+s+aN5
         imneWeYfwp2Q8PzRFfTNHz6XAaBmnefkDeiIJXdT3qLPIFerXxKXyASXWJhP9rF53CHG
         gR0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712978648; x=1713583448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ozBxyBBJq7OruyWEYEy28rKSNAILt5L1T1wiMSJY9pw=;
        b=FiVuhmKA37zSuqi28aZn/QM0S9xJ0tlgaUINXNPOEuLyzC14YJEEjQIlZRq9UzFTyO
         EmB1d2++l3NKxKgMfgB3H0FvZOOklMzNdYhf4cjeG7v+scmxtXNmjx1yStdRvhtzY8Y8
         7So88jikd9oZv8WUnSgr+vxZ1MyIIdKVTRulm05uq7zPjHnKygZ3Ymfz1IcWbtvPCppV
         fagqpKHMK/xhPgzqYM3u/LZyQW6F4Q0qBHEpwbP8TmAarWvRFHTDPPB2EkjBjQWcTaYD
         M0hByG9aTVlLeHofu1Y8WIx14M7usqDVtO1UYaUxDdGXROk/oF5KQqUw6S7mIx8BkMVv
         9B0w==
X-Forwarded-Encrypted: i=1; AJvYcCX6vIg8P7euE6mvzHzyr624RF+OrT2TmmXa2C+kwcIV006DCBdaEZ74LCV7yzR/eJk93xlBPLG0+VFFdwPxgMH7gjGws6DX4OfSGgh5kmB28sJrDQNNtRWDKn4JstyfYUcSrwaTBqT4KDORVu793QChP1YG/Q025dQ=
X-Gm-Message-State: AOJu0Yw1U8TiZGluKO9yMHf4mhZiAsyejt0Lv5EVyRoi2QUQATKivE3q
	Ny1f4QItpSBxBhDut50t4UVUVow67C0cfP28PExV5bBZk2P12HfXFsihGz+1faZVig==
X-Google-Smtp-Source: AGHT+IH856FdYYPdkLOQ9SECQJqOA+QjP0te72n0rh7fTdw+S0+pdJaJwyUTZVs2XiKg4yJWj2MdHg==
X-Received: by 2002:a17:902:8a8c:b0:1e4:469c:8791 with SMTP id p12-20020a1709028a8c00b001e4469c8791mr4180759plo.25.1712978648249;
        Fri, 12 Apr 2024 20:24:08 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id t13-20020a170902e84d00b001dde004b31bsm3714183plg.166.2024.04.12.20.24.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 20:24:07 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com
Subject: [PATCH 2/2] Add devicetree binding for ArmSoM Sige7 board
Date: Sat, 13 Apr 2024 11:23:28 +0800
Message-Id: <20240413032328.784142-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240413032328.784142-1-liujianfeng1994@gmail.com>
References: <20240413032328.784142-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_202414_518917_7E22162F 
X-CRM114-Status: UNSURE (   7.92  )
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

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4bd033ade..fd644e32c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -49,6 +49,11 @@ properties:
               - anbernic,rg-arc-s
           - const: rockchip,rk3566

+      - description: ArmSoM Sige7 board
+        items:
+          - const: armsom,sige7
+          - const: rockchip,rk3588
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

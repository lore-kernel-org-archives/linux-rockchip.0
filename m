Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C961FC38142
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 07:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKj9B++nSadDe1YKqEgWbXB7hcLqYutTi/B83cXpLM4=; b=KXZIcron0NTciQ
	FrbQzldcjdoCD6Uf7X/i841rIc8m94eRJj3CQOlDSV7PYNToxspZbN5igvmOe32ie1Bz4V1bOiEQG
	TeRcaoHIK8XR5eQx+3AIiDHV8J3CYwxaOV0w0mVvZWoXY+ZN6ZtIwscQwgbivYCguGSEf8FggCHlR
	wtDxFLef5x3m7Al505hWUBoJ8qIoahefQBYrypkhv/ZpV/2TOHdZWgZnmrA7YbDuedSuWXJi6NIkh
	YGZyN1TTKDFf5HvsUdirMywvcklIeBC+L4blY7x9ulv9QVoJxKil6CM52fZsNpsKXLpZVLNHUymQo
	BNtNe/lWXU0xBHEcpmdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJr67-00GBIe-5J; Mon, 23 Jan 2023 07:18:31 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJr5J-00GAyk-2S
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 07:17:42 +0000
Received: by mail-pj1-x1033.google.com with SMTP id z1-20020a17090a66c100b00226f05b9595so10255038pjl.0
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Jan 2023 23:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d2YGakH9pYkYD73KfKfwouPB9cCWa0mtmcn+X4PJ1qI=;
        b=rKOwd5XzvsFOgekLFnlLwsvEiUCrNhSlvpUvRYxSIohtqmWAvIsJgJGOV7e3BEWDcw
         VYZjE4nIQjYuOrnUxUllf/dXlseQY8xfX8YsKvpEDRhjYSX8cDjvQgt0Rtg8s4Ji+2Wi
         2H/3vlt9dZEQ/XT0ypBjM3bROlf5v+iNQvfio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d2YGakH9pYkYD73KfKfwouPB9cCWa0mtmcn+X4PJ1qI=;
        b=sWdUK7Xcogqs0o0QB/BBG61TxX4g9EwzDVtXr3LyhWI+wTHIc4o3sriOWqDp7X6W0r
         mqnPV4+HVmCNl4zfXlCBx2mIiXW3Qolgusi2r1K87Dcz5EG6bCcXpWJ48HdJEJ22acKu
         xkXeB0DGhbQkuluUGhA1IhK/j+wa8dOOtqk9Lk5uLXMqrA3qjY391t7tCdJ+VYF/inz4
         Lj3IRRh05V78SCcjyULB4Z87kpvACn7TihUC4b4KPkCb1VFUlk+1fybfBbXIqcTKD9B8
         LIG1k5TQuqxAFsqJCtrZIxJINnPvKkQu6DUOMXvVfykMiMPZnlIAJpeYgbH6JxVFFIlq
         H9NA==
X-Gm-Message-State: AFqh2kqVNXqS9kJ7ezFVo10TYeyUq9XZFSh5OBKNSqXaUNY70mSx00ZM
	6bzuIGrwZR26ltNxjkbbJ2VVpg==
X-Google-Smtp-Source: AMrXdXviTJZzXMOc8OKmyBpNavbXFCp4YfwA3oQupaeAFEbtlVRcNlIe4OclPoA1jLQng7UdgTEO3w==
X-Received: by 2002:a05:6a20:4d91:b0:b9:7a34:a78d with SMTP id gj17-20020a056a204d9100b000b97a34a78dmr9923977pzb.9.1674458260089;
        Sun, 22 Jan 2023 23:17:40 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:3847:3e45:1d7:787c])
        by smtp.gmail.com with ESMTPSA id e3-20020a17090301c300b00172cb8b97a8sm17742091plh.5.2023.01.22.23.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 23:17:39 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Correct the model name for Radxa E25
Date: Mon, 23 Jan 2023 12:46:53 +0530
Message-Id: <20230123071654.73139-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123071654.73139-1-jagan@amarulasolutions.com>
References: <20230123071654.73139-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_231741_152397_379FC105 
X-CRM114-Status: GOOD (  12.40  )
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

Radxa E25 is a Carrier board, so update the model name for Radxa E25
as suggested by the Radxa website.

Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
Cc: Chukun Pan <amadeus@jmu.edu.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- update commit message add Fixes tag

 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 9fc9459505bd..63c4bd873188 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -4,7 +4,7 @@
 #include "rk3568-radxa-cm3i.dtsi"
 
 / {
-	model = "Radxa E25";
+	model = "Radxa E25 Carrier Board";
 	compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
 
 	aliases {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

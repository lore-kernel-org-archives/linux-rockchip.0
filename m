Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 435AACA5FFC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MsCPYuxl+vBjxpfToBVXC4po5oMnW/A6Ism1q09KhGY=; b=u+a391Is0Yele5
	8McOgbFE4Icz3ggF4pbeftnBSoDhL6siamveEqBoc6rheEqp/Nn8/18KOaeipmLNYUsx0JgfAGV7z
	n0v5NgpSyZCFY6+1GfbSnhPL2w/Q1Ym/jUtK+UJsocZuGRH86Mz4hrA0YVkTL1GA48ie4IgzzMU4X
	pyrB5PLNACVpOQd+M24zfwC7RejmFduVT9A9Go+ax/HdeLauP/7J35E9cYn9VfaSchUm4Xo+ANo8P
	4vARMK+wYn1uaIFp079RQBD2WWaNHIX9Updh0YEkf8vuBrzu4qXpuqiBY8ZZ7TvIJaxK3KLGq25Lp
	UusSDryNX4Ec2O3uiiiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7dA-0000000167X-3UvM;
	Tue, 06 Oct 2026 16:03:04 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7d7-0000000163V-2RJK
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 16:03:03 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4a018dc1f98so8617275e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 09:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1791302577; x=1791907377; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zIRsrxbOMOkK9iDXr4aj3ra7y2Ob9j8yNJXopYjS6eU=;
        b=57+2c67pX0wwU84vYqNHAFsU2QnFyONEYD28HsoKWBL+U1g9z/Qa6/DatbHIs4nvEo
         iu0CKT7ZyQZn7akqn8SRINMkT+AOwBT3FFHo3jGx2Mt2U2igS3X1UjAqkoJFI9xaYm4p
         w6rXJ0udw/qnq+ahvPbm1pzocjVrvXf3I0TitrUwCaVJYXZRSvrlU213DvrR2qt9e/q2
         O0TPmMpibKdqETTHHCKbi6dTuo/ZNnDeBN0tqjGAcG59EjRYuWKumiZXKWtaj5z4h53t
         O4nGBW5ztbURTHV8AsRwRYFcwjDefJ8JxZFHqOYcCqjCfW5lWuLcpTnKYNgjNOHhToRb
         DYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791302577; x=1791907377;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zIRsrxbOMOkK9iDXr4aj3ra7y2Ob9j8yNJXopYjS6eU=;
        b=xgoe6floM143RdWrRzQBOFWGe1uiQbj8PY3iwseC0vpMxIjQjHVNGsqOutFMgR+jV2
         ETAhonjj74ErTcZLKVJEYye9dAVlQ0N7V77yolqLLCrYW7KkqcUhnDU4iIhUMBv2K4if
         DxFnAV7t+MT8YLMNMHLONORhbATFlcaUdxqm0zAkAoqdshr+CfbnKDOEraYrIX2vWn96
         kTae6lwW2zpFeXC6w+gBQ6pIBaZVakl+mbkJwFTXBTuYF+oVr9+5AEPJTyRK7+XzHsPQ
         oc3dZ9E1BUTYiI3Vfv0ZTg35YFNjMak0jQaXBzF5kbZl2jLtd/d0oz9dkHkwlIk/dQTZ
         oheg==
X-Forwarded-Encrypted: i=1; AKwUvByspp9B5GIYcR+oRuaeVsIroQ5o7GcuUzSU/G2FQAM8lUjDPXYWN3lQrM8H9dA/i4Sjsy4jLDopQrMeJJLzYw==@lists.infradead.org
X-Gm-Message-State: AFuF++kfJAJ2nrfpV+2rwhR2BjEg/mD/b9IRAxNQamhzyl0t12Bs0+T7
	Hxp3TEwGoeVjUZxmII/Le2GD7TxzGnDENj74iB7uYTbKa9EJglCBPZ8cfA3SIm95CaI=
X-Gm-Gg: AYBFou3voiSCm3AEe4EWXifl5ym3r5CI/7Ri2S/nu7fFwIsl+YxQzFeVof6+8LZaSPQ
	KwbCQD7oWuUHGDms7V3OL6DSiWIcnQayQIhzUVzhG6p/c4hP+XxUQnYWq0uuZ2d3EDij45hElpD
	9s+0dZEXFVSevY/H7uJzq7cjdQtKGmUzTiLpefshWaD/9CKceoFHZCITLr1kDNVmONibrCJSd7g
	0VpDEdP027oKihwN+D/ruFO0zVvNhYzzNajsOITFRDHCMpy7jMocIrIDaHerVig7a68wQ78lJaO
	/tbY7ldXxVUOuqR6MsYmdImsZrG27VDrEWaWRjWyKFC5ibrvdxLOpYDGtFLkDAG9oK+X8PkfjHe
	LNcExlf4H/act9tJv+chfV2Dksj4tmrRtD4jYOZDVjstbFIqhrvwzDyHaylavCz8on5+DLeXOD3
	i59aeRYIr6GJNTQFwStradSDErhkLJ5LXoeWhqeEehxm7/aDzcdscMdTrMd6VGIVbOiKr5yWq1U
	KDOz84LaIoy2+QrYop/Pmxh25zXSQ==
X-Received: by 2002:a05:600c:5617:b0:4a1:78dd:dd28 with SMTP id 5b1f17b1804b1-4a17b55428bmr21165335e9.27.1791302577573;
        Tue, 06 Oct 2026 09:02:57 -0700 (PDT)
Received: from alchark-surface.localdomain ([193.85.242.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48c71d2014asm369641f8f.38.2026.10.06.09.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 09:02:57 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 06 Oct 2026 20:02:39 +0400
Subject: [PATCH v3 1/5] dt-bindings: soc: rockchip: add boot ROM download
 boot mode
MIME-Version: 1.0
Message-Id: <20261006-b4-rk3576-reboot-mode-v3-1-6edba064693b@flipper.net>
References: <20261006-b4-rk3576-reboot-mode-v3-0-6edba064693b@flipper.net>
In-Reply-To: <20261006-b4-rk3576-reboot-mode-v3-0-6edba064693b@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: Alexey Charkov <alchark@flipper.net>, 
 Shawn Lin <shawn.lin@rock-chips.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=915; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Ft5tajPF6rdyfGUW0BWFsN32iOQqo1FkzC57Z7wFY/o=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQdlV79Nion2T8ozWixZ/6da5aiGbrB0uVbZLWDY+xuT
 90xjzmiYyILgxgXg6WYIsvcb0tspxrxzdrl4fEVZg4rE8gQaZEGBiBgYeDLTcwrNdIx0jPVNtQz
 NNIx1jFi4OIUgKk+sYCR4av2HxfXQ6l3JgmdT1Hc82R+Kv/C/vWRT4MbQ7YwVHyyq2X4Z854eqJ
 ndfnFiB6vAtOdWaY3355/PzPo79LmjUveR88/xQcA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_090301_750504_52381758 
X-CRM114-Status: UNSURE (   9.71  )
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

Rockchip boot ROMs enter USB download mode, commonly known as maskrom,
when they find 0xef08a53c in the register they take the boot mode from.
Add the magic under the name U-Boot already uses for it, so that boards
able to request it can do so symbolically.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 include/dt-bindings/soc/rockchip,boot-mode.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/soc/rockchip,boot-mode.h b/include/dt-bindings/soc/rockchip,boot-mode.h
index 4b0914c0989d..88684f4184df 100644
--- a/include/dt-bindings/soc/rockchip,boot-mode.h
+++ b/include/dt-bindings/soc/rockchip,boot-mode.h
@@ -12,5 +12,7 @@
 #define BOOT_RECOVERY		(REBOOT_FLAG + 3)
  /* enter fastboot mode */
 #define BOOT_FASTBOOT		(REBOOT_FLAG + 9)
+/* enter boot ROM usb download (maskrom) mode */
+#define BOOT_BROM_DOWNLOAD	0xEF08A53C
 
 #endif

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

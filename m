Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A17DEE6B49
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 18:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mkm5XGBAsW1qDLGeqjDQB9wKdlcMJuY0fgSmYO3TJg=; b=SSj3UfZgSxtwtt
	RQ6yRrqxgbZ2yXuTXHMg4LrctXyKiVk3TA/sIas1iP1+ptRejnjNqPaM/QQgrFpmzEpefUvCA0+Pr
	p7n3fpywmkzCk2jgWsj+4CE3rD/D+b6jlmQgayWyMmIsiFbEo93B81V2rHw0fPpG4oNu1dBH3T0hC
	WU7CyIXDMFhmUZHwMxBMOJQYUe7Ci1NL4Ndm7tqmPfMSDypskgSWKj1uy/feow+IvoXksgY71HTw+
	8l3FhVIYH5V70moLGRBJLPkZLjXuDQ/R+yxloWh5AxnpzyxVnBYOpQcNnBr5bngNFfj1NzA8JYTvA
	BDXX8NB5FI+/nTiPiN3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQKm-0000000BesV-48kn;
	Fri, 06 Feb 2026 18:13:36 +0000
Received: from mail-dy1-x132e.google.com ([2607:f8b0:4864:20::132e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQKk-0000000Beno-0A3n
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 18:13:35 +0000
Received: by mail-dy1-x132e.google.com with SMTP id 5a478bee46e88-2b4520f6b32so3625208eec.0
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 10:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401613; x=1771006413; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/NTx5jVt3nnO6451xdzF23y8UlccdoPc3a8t65hXHOs=;
        b=cWVFEpBVKTeZNHCtiSmx+SqsDl636XyEs9gR6TmuHVMzZru35zbE4mjB3GMijDBFcW
         Iw4L+mcFeUvPTuP1LZlM+AJIZC/7UeKAhDu9SGrT+77f2oCJB6tIyXFT8eAvcPemQCDc
         tBo5jKhx2Q0yyIPtqaDrnQwhQ8tvAy/FIUUUxT1Owv2s/5axTVA0+qXq0md/LFJEU3TL
         nzfK47Wojf++9eXQZzkzG3UJtc7V+VwN7IztlhXQpa9373mHqx+xsBO52cVE0Qj0f8eF
         HgED7J1tdVrK7T6rlxjCfyS20Fk9rzdC/x/BWUN+oFjBZKcVeNS0krsrYumfDAKUAVqS
         THiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401613; x=1771006413;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/NTx5jVt3nnO6451xdzF23y8UlccdoPc3a8t65hXHOs=;
        b=VfOhipgxz/elu3w/tpv87A8l6fTG09i7SEH4/6IOWv4JGTT8u0JiQMtWagw6lCVtrO
         OLqTyMXEGAKwWOIPNw6ygJAjr+pCvYPwLEqJZvWQxy13lCSaNhdUbjHgT54pz+04Zi6q
         ZRSyZtetPA4vFaBzaUkbWv4eB8V/K9bDfnYl2LjZcCnAOsqwi2H3pIVw/A6uNvQWKiJO
         sx9pyLVqh816ADL+PRuO+8GE/Z0EyYPLJ3s5Qv9pA7hOtgmbjD5EENuOPN9CkGff+JqA
         Ckx7My6siZzrLLqbB+9NcjCehsE8PX5J1L2GcPCiNWd0TzxF6piLrGOnNff+UOjMsGP6
         hV/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUKT8aTZysgI7omblSlCP/m29tagSCO8wJ1nJQIGyywIwmfoHRuKrI9bgTISGFcS2IgGkiSonz/tpf09CgiWA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyqDgf0q9ti5pOFZSdlXPlnZUVrx7JgnHcelctr2KTcU7+FlPaK
	j/xH9LRr+m7FwzibmNgiLkESlXtDmt1w1gkBRouPeYYgKUebqsJ5dq1U
X-Gm-Gg: AZuq6aI8jVrETawltW2qReBO6Y5TDXEAHxEbk9G4wB1CJzDox2ATT3vRq985R6V0ht8
	1/ILUBorEFoyWPKHVl7+BppIrpdNnARUbAQ2mQlzjeyHVf5kukGw85lkFb9/IlxxHa08Nv1dULG
	2+Xl07/0sPBQ8eveKgNfuvNgOxT4AJcXgrEMV5OMdA81AzccY6cETWeHxGFHW6bvwF/ZzmmObu/
	BnnOLPZXjO9mufBICiikchs80QqzkQRWHPvByQPZkHhbfA2TU54MvP94pahh1/s5f5cem1UNNrC
	29soUymdFEX2PmUe3XYzJ2q2d4N+DgaGwZsjtT5JLfQG50RrH019uM9Qyu5PqE4A5vufTbzf96c
	bi90SEiKPyA1F0O/x6u8kqcHbYeF7UFEGxj/FAfrxyG1vo7xa+gaQqyaBXSv7SXmTxBNMykveIW
	NKJ0UeUMAKe7XxwppmHHf8hXdA
X-Received: by 2002:a05:7300:f602:b0:2b8:209d:596c with SMTP id 5a478bee46e88-2b85683104amr1413189eec.29.1770401613072;
        Fri, 06 Feb 2026 10:13:33 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:32 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>,
	Linus Walleij <linusw@kernel.org>,
	linux-gpio@vger.kernel.org
Subject: [PATCH 04/11] dt-bindings: pinctrl: Add RV1103B pinctrl support
Date: Fri,  6 Feb 2026 15:13:02 -0300
Message-Id: <20260206181309.2696095-5-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_101334_087912_2A571656 
X-CRM114-Status: UNSURE (   7.86  )
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

From: Fabio Estevam <festevam@nabladev.com>

Document the compatible string for the RV1103B SoC.

Cc: Linus Walleij <linusw@kernel.org>
Cc: linux-gpio@vger.kernel.org
Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 76e607281716..9b3cbeb54fed 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -50,6 +50,7 @@ properties:
       - rockchip,rk3568-pinctrl
       - rockchip,rk3576-pinctrl
       - rockchip,rk3588-pinctrl
+      - rockchip,rv1103b-pinctrl
       - rockchip,rv1108-pinctrl
       - rockchip,rv1126-pinctrl
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

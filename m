Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 002F0CA5FA5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 10:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmtEJH/e6ZM7pRoywafq/GYrX4SLwPgxC9R6Qi9sGMM=; b=mwHDSKrKbg+vhC
	zOdhuVEsxH8eYaEktuXxIDpPdBBWjcYNEVyhLQWb0HxeWjqQ/6+5+oolWrK3EeVmTZ5jHW8ScZqc2
	KrnR3UQjQUv53BlyDNbF4Xuq/WqI8vQCW4DlZW14410vX41tvNA4mfE5ryALFbolOVRAg7x8mS9gM
	pt/fiKqgPuHWez5VwaOSAFeOCSj+O1+BEUDhDbTsqyoWYlfZBA6Z01N+WYBZRUpFB4HEzRtaoXMDd
	Q3P0GRLdL+cBGA5MsMQ+A6ziIwn3KByCU2gMaC+54afjN5NRrCKMSTGmUbGTJOhIRvQWZjXEy7HDL
	jEI5Rc7qExXAmr3A5PxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBV50-00000003AH8-33Um;
	Tue, 29 Sep 2026 10:28:58 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBV4p-00000003A3E-13Nj
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 10:28:48 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49ffde3cec6so14225465e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 03:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790677726; x=1791282526; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BSZ/gXDOHxG9VvtIRs2yHB3ZSsRLqGiGUtuNcgzCuxo=;
        b=p7dSRkL/GY+Vb5JcljHi0eQIILkTaR3VdRMQhdKruT4wp7e0FG0E2Phdo7n2viEsVX
         7jO+7RJo5Uh51DSpP38p/Yf+g+0Im/za6ZVIzJDCr8j0hwdhXs3+yVAJUKpCDiCxCuCo
         nW64fWoyGzTrYKiS0VF3SZTa7sHMTsbvgaZBaZ9zKYS1ThOgVGRA+fQwXP8NuT74viCa
         fDp/KmipRyo+EUZtXCvGnRnSLCdfKqTL0khXWihCBPKxoW4wQKVWq+G/OmnBQYxJ9+jL
         G+sgTwJG40APp0DY4uw3j9bY3PPCB6rqI5AFMnU63/JUJnZ2CmsWmPN14iQUmVRqSlPs
         xujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790677726; x=1791282526;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BSZ/gXDOHxG9VvtIRs2yHB3ZSsRLqGiGUtuNcgzCuxo=;
        b=d3/Y0bseE2GYEGvyoZ4JjJwzb8WziDr0N+DxZ7rwWPVwb2PNLMkYgWdd3xs64mDjgc
         LuxsGyhI1b/W3abBOz7GF/pxUTMYt3cy6OKEv9K7rvZXsMWFs1VkOYIKVFPWhAvtQLlw
         1jQtdA5LYczT8Cxx39p49uB+b5XVWhKXVoAUmVVApC0+RRkgjLyMribJMMe1Ev9i4pU7
         2L7nHymhNm000bzY9hXD2Ks8stFc2swxu2fUlUSCSV7SHgSM8+A2TTor9gpe4TPb83Di
         DR5TVWmnEgc/8UuxXtAoMGU97il/kAltRqXkEuaHdk7OFRqwUXmZt0aiUc34OrpJ2T4M
         yCzA==
X-Forwarded-Encrypted: i=1; AKwUvBx0//AnUhp2nXhTQgAoRMYaJYsd1h9GF42R08VL/6O3IgXLeHGIUnV6WALcF1EaxxF+yhNxjN0hLkDxfpvRnw==@lists.infradead.org
X-Gm-Message-State: AFuF++kuH8OMUeHMx9eVCEc32LIhAkCs8t8xN/GlFupPjeJio2xw0iE+
	FJQ1eDhFtxZOh0cQCGfo2ioUb3Na2Qv8jalmaY9On6yQkpoOiQUgAtlE/w9RxBhIuGo=
X-Gm-Gg: AYBFou1pG+0wJ0NqFPZIJ2G2L7frN+TKhUjgDAptKZrgGyMaUtolGYpV4QMO/XE9g7j
	IrICGLlmtUuBWYP3XZ3utyq2T1t4lfdjI0MRvHHT7E7L2cc1ABXHzOBpkFRPxKZ4510HV7E0Pro
	SGhCSRIC/xmBKTX4hKZa0YGJtAFx90TXZ5bPJlxkrQkicvjVhQaeyXUgplzlBa7PjuaaaOk0WLf
	laSZzcjXkyRzqBZ654/p4uwcZHdxN+zOWvqq65pdzYE4kK6B/zmZsyiayQT5ju+Mlo8LWJKd2hX
	wadsIl7RCxDhv5rJkHba9X95Etqa+FtTcMfHlcrfJEUKEmBnaMQC4+F9XnmH8ZUnvvN4b3vWLjP
	7FXvIAhlYL7HLBhzxHfRgGP+yBiFWQHL48IrHvnGNdPwDZj9dhAGNXHiQ2xIv7c7DA3ERzD/bb2
	N08I8EljugkfCIgK0maJERaYulsaYVBFa2HPi8y+Ws2pEoYf7F7/TIbzdaMjIn2vTZndn7Ic+Yg
	3zNwSGzR1MWXk8IMw==
X-Received: by 2002:a05:600c:a08:b0:49e:73e7:888c with SMTP id 5b1f17b1804b1-49fe66c8a3emr289485105e9.4.1790677716604;
        Tue, 29 Sep 2026 03:28:36 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.93.183])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a00cfb479asm66579305e9.15.2026.09.29.03.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 03:28:36 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 29 Sep 2026 14:28:18 +0400
Subject: [PATCH v2 1/5] dt-bindings: soc: rockchip: add boot ROM download
 boot mode
MIME-Version: 1.0
Message-Id: <20260929-b4-rk3576-reboot-mode-v2-1-5a34ca72065a@flipper.net>
References: <20260929-b4-rk3576-reboot-mode-v2-0-5a34ca72065a@flipper.net>
In-Reply-To: <20260929-b4-rk3576-reboot-mode-v2-0-5a34ca72065a@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: Alexey Charkov <alchark@flipper.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Shawn Lin <shawn.lin@rock-chips.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=964; i=alchark@flipper.net;
 h=from:subject:message-id; bh=q4j4QY4leyzrLjrQxisvqoEVE4/IisdbZD2H5tvHyPE=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTtnnSxWWD91pz53CYh8tEJyStOv7gqYVyyf5PzVjlrr
 Xs+ly83dUxkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hkY6xjpGDFycAjDV9v8YGQ4ZW0svarESvfuy0Ulrrcjv1b93zzsscyboaOf9B4WPDkgw/LP7XFI
 U0rP8gUaIUFOywwwtRY/Ev3F/tySWzU5YpfeglBkA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_032847_300803_D032A021 
X-CRM114-Status: GOOD (  10.26  )
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

Tested-by: Shawn Lin <shawn.lin@rock-chips.com>
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26A42CD98CF
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 15:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6UEUyuBVT4HL5fzJ2O8Of5WvagdNa7RcxgJcqURiXWs=; b=WQvCJkc/spd+Pc
	t1oOSnaR7/Lyb9Wj6L1H3VInUwrwrZavzqTS36Pu7GrlYVUTuvGy2aZqNfn7nfUATmoSBVDQ1ZYgt
	wGSMB/Fvko/8PeN536UwhekObR7w7LuPoXqx5p0sSbxliECWzjs0wNEGnz3+IUh8rSJCWEzIQSZqN
	SskB/0PITgrIBIU90+/6t1fERJmqYaCW190zUvQEoKNWBF7+vL8bWPEBpvDoH25OwtXlhXKggfRjc
	syKbEn6l/d3ZlYKUBXpGmzRNmG4JP5HrtaI7XpQv4AZSor34iakMfEcFJhUXI75kISuc9uT9XQbp+
	cBtt5EWj88n9pYovxl4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY3tu-0000000B9lU-13Mu;
	Fri, 12 Jun 2026 15:34:30 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY3tq-0000000B9kE-49AH
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jun 2026 15:34:28 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-45ef5146b56so1431636f8f.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 08:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1781278464; x=1781883264; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wLR5ceLyn2LWx78PSXIyJ/Cdj4UA0nZ2YxlclNxvI8g=;
        b=v0ti/JPuDIayfIR4Whh+FQ2ipaK/D0L+5eVnwkmUY0BrZ/yXQmyl9332QuhImaqh2V
         4Oq3rYgLk/iNxKCVIlxrXqYlo0XMhHToKmVqqwQxypyChSuBiBp9gDOdlBhrs+lieTNP
         /vmxW8EZDLrYi2G58ydlG63qwIK+2EMBd8FkFUySJlC5a80JvK5JOYt85dmn5Y7KAMn7
         cknwGeBTuOwAYSlLw7G8GuXyAkM8c9iMIkoIb5hBr9TqamDxSMjVmW3dKbm7+3YJhV3C
         XFEjniGiR3h5U7ckLP1gn36wI7nM41c+NSjm9SlGa8lG2PZ7tuII8S/EtyaDkG8kK259
         XzDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781278464; x=1781883264;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wLR5ceLyn2LWx78PSXIyJ/Cdj4UA0nZ2YxlclNxvI8g=;
        b=FpTA4D6gMU1he3w8POZcP4YEkeecTpIY6e9l1INO7wrW/rkY/0CSIDRsX5h8OouEjY
         IX1EuLpQ2rcwo2AFq2l1rD7+ujIx4F86lhJoOJHKiEkZbEhLRU+SPsD0KiLZXk88bBJQ
         JbLR69N2CfPKieW5Tt+3ZAjVLLb7zjhIhVwLk5k4s6T8g3SAdKJgbLyN6My7m6ns4Ncz
         17TdwGvkHb9nyZ8VkcIm3SiiAXxjrBF3OQgmSy1qtXL1Awsu7cnm89U0KuxbQPA9aAcg
         euTxpbxL71jLZLVVBGyj3abLR0z+ci/a3FCZtztOmf+ZvM0r2P4s9nvqcldVjLdvgkDf
         Kh5Q==
X-Forwarded-Encrypted: i=1; AFNElJ8P+JNlPDgw82n9YKNsSJvkYuM8RQFj1aPQPLXvZjVpilOVlc76k/T0DRWB4f+ARWlh0ptSuUWJmNIaE+O8+A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzpXIZ29jjzPDFR18UlmBE30uP98yKa6KvnBt8cTXVaADak6PEK
	U4d4DUnxzGd6K+86ql6d+ymA1Mf1NZvZyd0A2rwIgFQ3yVX9RB6Syf0PtMYIqBS73T+/+mupwlE
	YzcRxZmk=
X-Gm-Gg: Acq92OEto+J6Ej1M2MSi2bm98JUlb9UDtqWmwPCo49ygw9DRovxCsh4AoJDTdtUpCMw
	GdFS0aET/MeCd+KK2Zjxm2SoXdrTb6+Qq09LHeoT6dvycERRg0SDSts+SJ14xvCGtWllHms6tql
	NUsp5nPuDnGl81BP8n3ARwT3FLZNJgJobHj4iS5DdEyRWAfjlK9X8T0wQcDUKSNyKZKRpcyecmF
	kcsSTdMd6pFwRZp/93aiuUb1gHbh4mSHCQcg4VDWPUxG6tMwPXoyUL2QWwoXtML/zM+7YBnlQPd
	cIN8T4NKlVow4xmOvExdxje0Pk4LwMXCDY7xbHhk+BFYqrhRUxT+r0hlDEyfQss3/95jq4BUiyy
	gU/n4vJ4VVPLGScbEM5bkzswMleOGUIMkHJw2p0RDZZts6YWHzzmHJnNoMNWyhEiMsjtrj8R3b8
	da4XWsk+wlmJ0k6/L/Lwa+Rx19mR8OFe9Q4cn2+PnE
X-Received: by 2002:a05:6000:41f7:b0:45e:dc0a:bcb with SMTP id ffacd0b85a97d-4606d024020mr4921301f8f.22.1781278464037;
        Fri, 12 Jun 2026 08:34:24 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.92.128])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2b0d28sm6916641f8f.20.2026.06.12.08.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 08:34:23 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH 0/4] mfd: Add support for the MCU in the UGREEN DH2300 NAS
Date: Fri, 12 Jun 2026 19:34:13 +0400
Message-Id: <20260612-dh2300-mcu-v1-0-ab8db1617bc0@flipper.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQ5AMBBA4avIrDXplFq4iljQThmJn7SIpHF3x
 fJbvBchkGcKUGcRPJ0ceF0SMM/AjN0ykGCbDEqqSlaohB1VIaWYzSF0oUuLTjvEDlKweXJ8fbO
 m/R2OfiKzvwe47wfcjLZGbgAAAA==
X-Change-ID: 20260612-dh2300-mcu-5354d1f5f11a
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2017; i=alchark@flipper.net;
 h=from:subject:message-id; bh=gtvNi33VQsDNDkHYG9DuFjrER9YXOntZMxm2KOrjFjs=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTpqP1lYhRlET4n1B2UyM+qz36ft0rIVjyhOk/10c72j
 q9t9sUdE1kYxLgYLMUUWeZ+W2I71Yhv1i4Pj68wc1iZQIZIizQwAAELA19uYl6pkY6Rnqm2oZ6h
 kY6xjhEDF6cATPXEW4wMr47Msg37u+90m55mcYB3d6rIttuMb+3yjqww4XnvoP57IyNDr/8CzVv
 Cqxs1BQ4HV8f9+9lcvWBNYj7nh07+Pw+ttCfwAgA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_083427_064020_54AA76E2 
X-CRM114-Status: GOOD (  11.81  )
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

UGREEN DH2300 is a 2-bay SATA NAS based on the Rockchip RK3576 SoC. It
includes an embedded controller connected over I2C which won't let the
drives power up without its register being poked first, which precludes
the use of the device for its main purpose.

There is no public documentation or source code available, but apparently
the MCU is also responsible for a hardware watchdog function and some type
of wake functionality, so this series implements an MFD-regulator
separation right away to allow for adding these functions properly later
on.

For now though a single-bit write to the MCU seems to be sufficient to get
the drives to work with only a board DTS addition [1] - to be submitted
separately.

[1] https://github.com/flipperdevices/flipper-linux-kernel/blob/2c1c5ee609f6ed4c77e9e5428df91e98b3f50cce/arch/arm64/boot/dts/rockchip/rk3576-nasync-dh2300.dts

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Alexey Charkov (4):
      dt-bindings: vendor-prefixes: Add Ugreen Group Limited
      dt-bindings: mfd: Add UGREEN NASync DH2300 MCU
      mfd: Add support for UGREEN NASync DH2300 MCU
      regulator: Add support for UGREEN NASync DH2300 MCU SATA power gate

 .../devicetree/bindings/mfd/ugreen,dh2300-mcu.yaml | 62 +++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml       |  2 +
 MAINTAINERS                                        |  7 ++
 drivers/mfd/Kconfig                                | 16 +++++
 drivers/mfd/Makefile                               |  1 +
 drivers/mfd/ugreen-dh2300-mcu.c                    | 60 ++++++++++++++++
 drivers/regulator/Kconfig                          | 12 ++++
 drivers/regulator/Makefile                         |  1 +
 drivers/regulator/ugreen-dh2300-mcu-regulator.c    | 80 ++++++++++++++++++++++
 9 files changed, 241 insertions(+)
---
base-commit: ec039126b7fac4e3af35ebccaa7c6f9b6875ba81
change-id: 20260612-dh2300-mcu-5354d1f5f11a

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

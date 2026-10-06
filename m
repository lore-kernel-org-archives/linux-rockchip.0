Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DDA1CA5FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bDZkD46erDACYN0Y34F+oEu4ch6JttWTGbHXDAODX9Y=; b=RC9ebE/bSsjQ8P
	jiZCufz9DaChjF1PsfYf75GZWs1FTTLWXGwxN7JVbgsWO1e3wf4eGmZcilPmbb9x8aK0LwhqlW2Yn
	JnvQ1aPKlCuwET9DNJ1lt6OBDd+beGppi5k1p6/JRmYPXXqvGarNq7oVVVQT+x0NfF7rEnGwS6IvJ
	PsvrSYje31GTrni5NWTmWXwywEU/lOoymkEmPi5u9gzteksF175tvOyV092RvSbQn7yVqjjggnVg/
	ixa8/qi1gHNG8w4Qv3SZjJqymLWjyYrHkEeh/yT0o73MsXcwgvf1lVlJEcIceG+AbnQZJaz90sy2g
	PvmmINqdZxuDpQ4KhAfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7dC-0000000168i-1v4h;
	Tue, 06 Oct 2026 16:03:06 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE7d7-0000000163D-2MLL
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 16:03:04 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4a0213948d3so6404565e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 09:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1791302576; x=1791907376; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=J8q1Zp2FdwvzE5fOrPSeuvqoT9vOFY1AG6osvW0MSLk=;
        b=PTsuQpjr4ZUSTZd+q5xR2gv1WrT6FlrOtrovBSoDZ56XyyK6WM69lx/n59+X5ULznu
         Aw80mdRLLLmbT8Jk1j9bIBmLOn07r09EXzvdA0QXRMwCtJhfpbCrxdblHEF43hD6Syd8
         uetErdIhUcLv/MCEDPVDyU0pHsfqIxDJy3B4Si8JYMQNWhSng8pa4Ua9N3UWOFYiOmOt
         C/cHNp9ChVbLJdVuXmNfop+SOlhQ3ztVCA566MhuNTxpiSNDXQt7r7QSL0LlNJy1bP9n
         cESWpjKraSjJ2M0QNPG2qpGmwWjLln+yOx5CXSFBNDi2X/b0o8xUAc9sTJ3RvWVUBPAh
         GgKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791302576; x=1791907376;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=J8q1Zp2FdwvzE5fOrPSeuvqoT9vOFY1AG6osvW0MSLk=;
        b=F7kAGcMYNOFtb6DOCeB3JACJQc7lTag+xzye2hg7jU61r7LZ9vAJutEg7o7hudiYdF
         CphGMz79T27v494m+aPhPVNbmnqpxRkS4RQW70MCMxIgEC6VPjqFuBJua+VqYKQMwGF4
         waXAAILa0PTq48Y6It+wE2GdluN42Ivfh/cTJ6Az31X/FVBSZvhJ0AaNsLeIfLP1S1wr
         6QKg+jAv3anwqKRwLNgi48z+nwcifEuOWRq6RKdTuHlECc+r1D24Xdne9mCxm79Y1MtM
         3Bf6Dnv4aZmj2GARTRxLbGAojWjKULTgRld0ifobLN95Peq1DRC5OUh2CSh7tdNH2+XC
         MUKQ==
X-Forwarded-Encrypted: i=1; AKwUvBwugyqz7aa0RagGIKe0UVxO5ezi+wEsIlBcUVFZRPFmin51RTz041dnAcBFSpLk7o/DzUgKY4aUPWUMp0Zz3A==@lists.infradead.org
X-Gm-Message-State: AFuF++nt15OTpc3OgEyrhfN+M/BcfYD6ljQqxvQgsl2QvSlc27HDi6iE
	VOHbzu+pXQHvPZ8d8XQj9TU0uQNTBbTZeAa+0LeTrF/URZhXTjI9/LEjCA4IPIAfPNs=
X-Gm-Gg: AYBFou2rEd19DYj6MuIw0uPU/+Hbq0Xz6LTXPO+MjJ/F90C73bkaMhbyb+iITEqIyuo
	jmuVcDO80Qhd2qLKdkWeVxob9JQ8Deimyj1uzOQw3g658GRZ97rkD/56iHE6iUss63TwSxZCfxX
	Hd0vlx6Hqeu3C5WC04dfRqxzby9NeRJOpFk4WqJA6+HYuqC6ZSagxHe/2+cyNf89C1C1V41MyUZ
	0lgaKRcwH1LSbqrpkq7E5jsVpkXT7TTIVX7LraTHoMV8NlnFGCoVrhmv5ZRwJv0iDbik/1KOgLp
	J0O9VtwbfWrZziqA1BzTkH1L2w07+jShjXejA/k6+/zguILaPNBNksRUXDbtiBEwv8PGf0SVO33
	f3x8rP1h4EruHDBl5MoHKPWqih8xuzpWHc04GEh8WM/xQKXaO+5Ai1oT6tMRxxxKHjn/zvGvPd/
	wnlZtCtIuwG9DwiCwaUnKNCtuAmj7IVmdHUsYe2dX2BXSRrng3yXY9j1v8eeGEsEQem9qT6xlQH
	G5R2r/8RDPAan4u2+uDE4KOc0w4
X-Received: by 2002:a05:600c:2049:b0:4a0:2644:80db with SMTP id 5b1f17b1804b1-4a17b562c6cmr22905595e9.35.1791302576578;
        Tue, 06 Oct 2026 09:02:56 -0700 (PDT)
Received: from alchark-surface.localdomain ([193.85.242.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48c71d2014asm369641f8f.38.2026.10.06.09.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 09:02:55 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH v3 0/5] power: reset: syscon-reboot-mode: Add support for
 Rockchip RK3576 reboot modes
Date: Tue, 06 Oct 2026 20:02:38 +0400
Message-Id: <20261006-b4-rk3576-reboot-mode-v3-0-6edba064693b@flipper.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WNyw6CMBQFf4V0bU3pC3DlfxgXLb1IfVDS1kZD+
 HcLbnRhXE5yzsyEAngLAe2KCXlINlg3ZGCbArW9Gk6ArcmMKKGSNLTGmmN/YaKS2IN2LuKbM4A
 NqwkH1piOcJS/o4fOPlbv4fjmcNdnaOMiWxa9DdH55xpO5bL710glJlgKXktNmDa83HdXO47gt
 wNEtFQS/fQ0vzw0e4RivFUVJVKob888zy9LK+Q7FgEAAA==
X-Change-ID: 20260928-b4-rk3576-reboot-mode-d3804e39df04
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: Alexey Charkov <alchark@flipper.net>, 
 Shawn Lin <shawn.lin@rock-chips.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2803; i=alchark@flipper.net;
 h=from:subject:message-id; bh=eFY0EL/+0X6JOgjuwcgNPswP21gloYHJF0IpxpUkDLE=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQdlV59fO6HO2LMB9oMc1MOdcTfnsIoI82R/TRb7remg
 NKX0slnOiayMIhxMViKKbLM/bbEdqoR36xdHh5fYeawMoEMkRZpYAACFga+3MS8UiMdIz1TbUM9
 QyMdYx0jBi5OAZjq9KkM/3MONbC/dohs2apfalN85pCjm2yd1pPstUdFlecfs7hx5SzDP7spJ20
 qkwzzb1f+/ZzfrO0/1yh7qSbPXtnj37NCH95w4gMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_090301_726133_5FE5F095 
X-CRM114-Status: GOOD (  13.80  )
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

Rockchip RK3576 supports reboots with a specified boot device priority
mode, allowing one to override the board-defined strapping config and the
OTP programmed priority setting.

Supporting it requires several changes though:
- The boot mode request needs to be forwarded via TF-A to the boot ROM
  (upstream since TF-A commit 2a97ba20e901 ("feat(rk3576): forward any
  boot ROM boot mode request on reset"))
- Some power supplies need to be kept active across the reboot to prevent
  early boot code from running into a synchronous abort
- The magic values for each of the supported boot modes need to be defined
  for the OS to use

This series enables the above with the RK3576 EVB1 board as the example
user. Other boards will likely need a close to identical change to make
use of this functionality, but need testing.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
Changes in v3:
- Dropped Tested-by tags from bindings patches (Krzysztof)
- Link to v2: https://patch.msgid.link/20260929-b4-rk3576-reboot-mode-v2-0-5a34ca72065a@flipper.net

Changes in v2:
- Fixed a leak of the dynamically allocated syscon_rbm->supplies (Sashiko)
- Uninitialized access to supplies[].supply (Sashiko) is fixed separately in:
  https://lore.kernel.org/all/20260929-regulator-get-all-v1-1-e887c66a47f1@flipper.net/
- Link to v1: https://patch.msgid.link/20260928-b4-rk3576-reboot-mode-v1-0-65486b03bd41@flipper.net

To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sre@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-pm@vger.kernel.org

---
Alexey Charkov (5):
      dt-bindings: soc: rockchip: add boot ROM download boot mode
      dt-bindings: power: reset: syscon-reboot-mode: allow supplies
      power: reset: syscon-reboot-mode: enable supplies for the next stage
      arm64: dts: rockchip: add reboot-mode node to RK3576
      arm64: dts: rockchip: name the reboot mode supplies on RK3576 EVB1

 .../bindings/power/reset/syscon-reboot-mode.yaml   |  8 +++++
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts   | 16 +++++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 36 +++++++++++++++++++
 drivers/power/reset/syscon-reboot-mode.c           | 41 ++++++++++++++++++++++
 include/dt-bindings/soc/rockchip,boot-mode.h       |  2 ++
 5 files changed, 103 insertions(+)
---
base-commit: eea3fef32a9cf36abcb5975a5a594e4135a6b026
change-id: 20260928-b4-rk3576-reboot-mode-d3804e39df04

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

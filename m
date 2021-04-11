Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39FA0C43470
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:31:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C222961042
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:31:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C222961042
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xQ7Q5awCHyxv66Y6X8s7auAkoef0VgqL33TpKyO8hTs=; b=q0E1Xbf0CRI9P3aka6W/TduXhI
	V/Z0nNRPZ5JHNrl48L8qJRxl3N9wW3GUNdX9H1MIDjE+8ZNQiZrt5SZ4hUAWMVUyW0L141OSq0dRz
	Y/PSLkzWxb4MsX4NT2D6/+yBtSiCfP7v3OVdWtBiOxfVRehSEVWDV4AMoF+/Mb4N6SNR+7L1Jj2zW
	vMGI+1beFkYrydqfYuL3R0ds2Sr+R0y+VlOKJKGPj/MmphDcidOoVo3501Tvuj34tMc/xaELwVThn
	KqZWKaZMOYs68jOIlVyw7loreiVvQn9RTTpRtIJLpwfUNmwDN2o2Ioy1CJRWxcjyknRpkngZLu+Zo
	6OIzGwJQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVaB0-004WJ9-Jq; Sun, 11 Apr 2021 13:30:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVaAy-004WIr-Pz
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 13:30:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=k6XFIB4STIeXtLPIKFPXYzrdbDO2OgsIOJuX+w5wyAE=; b=PgL+qiOuI2T4wet7OEZtslal/7
 FnXHMwkmGLr6xovKQHRbAn68FlWXnbcOi0JHfU6bDys5RczmY7zUaF3squcaQ/ZpZoDyQ/skddsJ6
 /IOmV3hPdH9r6brpi07YOFGNwBDSH0FmZSqDDyCqZfeGhdKLuPjEjnYsjniyB8aICYh/EB7l088cb
 4IyHzypR+3LsWYipgzTwd8ztInFNjz+4rBbWYv4/2MLSFb0/jN8kjye8MtQv6aENFmiISd13BSztM
 JZEUuMprxMiX/BeTWfghJ+ixyQwL1Ly8o1fUv7TeypJYB8AHdVtIzny87z9hNiTmI/QLrhNon1dFH
 1SHlj5+Q==;
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVaAv-005Wpt-6d
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 13:30:55 +0000
Received: by mail-qk1-x72a.google.com with SMTP id x11so10611889qkp.11
 for <linux-rockchip@lists.infradead.org>; Sun, 11 Apr 2021 06:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k6XFIB4STIeXtLPIKFPXYzrdbDO2OgsIOJuX+w5wyAE=;
 b=anclmgSV2jcPO2Cp8fkQyLx8f/b9dXBZOwQUN6QQDkiuf7TZ3WfD14EjAu9eEufzQn
 TEfZ6hI4P9PAOdyHMPqc1O7s+YQNgxzoUwbQGljDia+c6aH/pZbJC+gXIsHai4MV87L7
 OMF68r6oVcatfshSamARlMrRKTkUjtjSOmr/SLCvErXyDAlxiGff/j7HIar2d7CbiNrQ
 D/Fr3dlOf5uZrLJrryYx0sz3YYZ9OH3sqOdRHifhHCAVV/Kpz90aQ+qa5xFgPEZMhrG3
 Qzo2TClh5cUaYurrV3ga1c+XvXVQL+7krMTjb8W2GmOiqEFA3q2GJWX8FXx3mrhvJniD
 fjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k6XFIB4STIeXtLPIKFPXYzrdbDO2OgsIOJuX+w5wyAE=;
 b=p9YaHnleL/XX/xrOSw2l+Vo//46BQFgMyHliNRen9n/0From0tc5SUHgGvJqG2RPTg
 BruNTcRvta5+698qfIFp1fIvzMj+PSxtSuUB2GCcIFe7gXPh2sXYbv9UetBwvnXJQ7Bd
 SUq37OGaWu0VGQyOS6KkFWHwarjjHTLlX2ZsImFdxZE4n9v42BUzOAazyGr3Deiw+hr8
 Q8JgzmSwJynvBh57zP/NwEa93lzm0L7viMZMwgSeXAZiV3Kr2fC85mfhURNLe1oIOQ5x
 i9E/6uRLvFL9u0EcAKUBiq0OIuNEnyxjLtu65NlkrHBYmcD2F2GwzFFVyzjym9HSqptt
 8HRQ==
X-Gm-Message-State: AOAM532k0iOinJp7tqSDXFk6YMUKgtwMaUQ5tlYceG9qkF5/bNmlNfJd
 qsTQ3iY4tsTLzPws6IZ2rdo=
X-Google-Smtp-Source: ABdhPJy3fY5dm0l3x6k/JHAJaSkE66BIYn9D77v7Rq8BBYDfYP1HDeaOC5czXnZx+JZEi9RThCnGBA==
X-Received: by 2002:a37:a442:: with SMTP id n63mr10290277qke.124.1618147848135; 
 Sun, 11 Apr 2021 06:30:48 -0700 (PDT)
Received: from master-laptop.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id l17sm5734204qtk.60.2021.04.11.06.30.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Apr 2021 06:30:47 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Jianqun Xu <jay.xu@rock-chips.com>, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, linus.walleij@linaro.org, heiko@sntech.de
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v2 0/7] gpio-rockchip driver
Date: Sun, 11 Apr 2021 09:30:23 -0400
Message-Id: <20210411133030.1663936-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_063053_264832_FC83557B 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
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

Separate gpio driver from pinctrl driver, and support v2 controller.

Tested on rk3566-quartz64 prototype board.

Patch History:
V2 - Rebase to latest linux-next.

Tested-by: Peter Geis <pgwipeout@gmail.com>

Jianqun Xu (7):
  pinctrl/rockchip: separate struct rockchip_pin_bank to a head file
  pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio bank struct
  gpio: separate gpio driver from pinctrl-rockchip driver
  gpio/rockchip: use struct rockchip_gpio_regs for gpio controller
  gpio/rockchip: support next version gpio controller
  gpio/rockchip: always enable clock for gpio controller
  gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq set type

 drivers/gpio/Kconfig               |   8 +
 drivers/gpio/Makefile              |   1 +
 drivers/gpio/gpio-rockchip.c       | 758 ++++++++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.c | 911 +----------------------------
 drivers/pinctrl/pinctrl-rockchip.h | 287 +++++++++
 5 files changed, 1073 insertions(+), 892 deletions(-)
 create mode 100644 drivers/gpio/gpio-rockchip.c
 create mode 100644 drivers/pinctrl/pinctrl-rockchip.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

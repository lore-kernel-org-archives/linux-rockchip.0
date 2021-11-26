Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DD77C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 15:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+VvX5+23SE9dQ5x9CVcdB6LMJi7LZHZ9LrkW63tihgY=; b=33jvNsmWgFsDyX
	UPHubERD91zoD3wlA4VqXzCxe1R4HuLTvjUjAa8wREBxd092ADehWJ6vkBBTQUq2DiOfQlUkRCMLY
	tssAI5P49Awmti7i513XSGSdCIYphxsWLc2Guw9EytyN9g6B7GrJLt3t223bZ40dL1VBUSCgsS/Z2
	eNDTxX4gSpFSalQNLZQ0Jxdfr531cpGj/xOaLZ7bpmQFj3+0WxKVXEb1468El/Q1CVghnJPIWzTIA
	yZDk7qDiv0K5MFH2jriSPDgOJRDOA/eX38Z9gZA/axAOI9BkWLW/LNxNsXoRQ/265NT4Uik/qAf7H
	N2X/Oh9LJGwsCXtWzgCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqcyt-00AtaC-OE; Fri, 26 Nov 2021 15:17:43 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqcyq-00AtZ2-U5; Fri, 26 Nov 2021 15:17:42 +0000
Received: by mail-wr1-x434.google.com with SMTP id t9so2408975wrx.7;
 Fri, 26 Nov 2021 07:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AVVbDaYZ1nT4F8I3SSFNvTA1JC2esltgXh0RvaUMdwg=;
 b=O/Nm/AjqBAnEbO+lYmKJNG5QzD8/4slMiLelDbnJclqiyHXX7SdxoeiB0u43qQsIJZ
 VkXBBc+NdNWjthvF+m3BZwhhSIJ0q29C94FnShGm+uFubJrKaliWgQXhAwBGk3NhYu1y
 JEsLb5VH47Ba+0PvWD7CzIMYJvOUWTgP2Rj2lOyXxnVWgC2QaSMYcgvxy8hWT/cJMvrA
 06o4+qql98V2xgBNMWByoJr4Hz1uVbCExQ+DPsy/Rq3JBrTAW62iWRp+d7fdumjHbLgG
 Vd2foR7bBSI9cehOb6vrE9/xAJBNYPOlu+o0QB7D+FRVV3N76DwzQ/UqoC+fSR4u19cU
 bQ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AVVbDaYZ1nT4F8I3SSFNvTA1JC2esltgXh0RvaUMdwg=;
 b=IcW0+ZHSQ9KjyJLIXXxY322hkpFV5RUEAP1TAi3d6JcIyr5AOMrDIjQWasprM+9+Gg
 vC3xmR70vabTfGzgrY9FQltTA6ukmv1gUC13N9GsnvnAQQyFRSYchWVVWg766ioZUyKT
 B2sM9ueDsvKglBM4TLlGna9XttHfPSntffyTAxevdf0aRB8fzHJxTFEHadrv33V7lOFI
 t+c83caZoS/xfvZV6g5qWi+r1riR45XSP0yGus0uBWXvhVTC8WkXclyVUVrOc66v+0VK
 KsPKrKjpXVb+uJxGZBzEs3YkIskPoB8AokrhXE9EPSXeFEmqbxzeDqNlLbK284FqsroY
 Nplw==
X-Gm-Message-State: AOAM5310U5aEREO6wkNoQog7ohca5WBB2qlka4Hl4MZkvgzUFuO6hT7u
 hFmXpiT2DfUx9fnvwjhHuQ==
X-Google-Smtp-Source: ABdhPJyktxA6+ncorTA6vOY6WkGEHrmglR3P4RzcGudfhoOf8zZpLJ1IQAL5Bumu3LNKU8XU0+rXXg==
X-Received: by 2002:adf:e843:: with SMTP id d3mr14261459wrn.452.1637939858465; 
 Fri, 26 Nov 2021 07:17:38 -0800 (PST)
Received: from alex-ThinkPad-E480.. (ip5b435a69.dynamic.kabel-deutschland.de.
 [91.67.90.105])
 by smtp.googlemail.com with ESMTPSA id k187sm12323496wme.0.2021.11.26.07.17.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 07:17:38 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 0/4] add GPU for RK356x SoCs
Date: Fri, 26 Nov 2021 16:17:25 +0100
Message-Id: <20211126151729.1026566-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_071741_012903_D2061DE5 
X-CRM114-Status: GOOD (  16.02  )
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

This is a respin of Ezequiel's series which adds GPU for RK3568 [0]:

> I've decided to split the GPU off previous series:
>
> https://lore.kernel.org/linux-rockchip/2147216.TLkxdtWsSY@diego/
>
> This series now contains only the GPU support, as the VPU
> needs a tiny rework.
>
> This is compiled tested only, in this case. Similar patches
> have been tested on a v5.10-based kernel, so I'd say it's good
> to go.
>
> The mesa side is merged https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/10771
> and can be tested without a display, using something like weston --backend=headless-backend.so,
> which provides an environment for GL to work.

I hope to have resolved all DT-binding issues and added cooling map and trip points
which can make the GPU a cooling device.

Tested with mesa 21.3.0 on quartz64-a board.

[0] https://patchwork.kernel.org/project/linux-rockchip/list/?series=526661

Alex Bee (2):
  dt-bindings: gpu: mali-bifrost: Allow up to two clocks
  arm64: dts: rockchip: Add cooling map / trip points for RK356x' GPU

Ezequiel Garcia (2):
  arm64: dts: rockchip: Add GPU node for rk3568
  arm64: dts: rockchip: Enable the GPU on Quartz64 Model A

 .../bindings/gpu/arm,mali-bifrost.yaml        | 20 ++++-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  5 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 77 +++++++++++++++++++
 3 files changed, 101 insertions(+), 1 deletion(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

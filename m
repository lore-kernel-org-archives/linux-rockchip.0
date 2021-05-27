Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85DA7C4707F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 16:21:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5200660FF3
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 16:21:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5200660FF3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=534kcqGO4I2h4N5lASOOvPS4/Ls1BE91CJJl9GJGZeA=; b=ow64F5kGH9I7Ks
	vSE1RuV1Xubs0i8syXTmUpA5/W9vqwx4eG1bjkekiSuWRcmIyRGeNpbn0h4hbktpnSQLv5Wax5Qm+
	uM/y7wIKEGzbjOONMyig0HXIEbo3pK4aIIlkvFGyDqGUXMGGLLc/bTcidTvayCAsPEsu9vf84Dnpo
	OZkJL0e5WaG9XIhqj4w6sEZMstyZRhPrORkUCzRZc11ukK5EQNvZCrPcp401qDFYFUf9wKEAXi1de
	N/qCaynRFBX3SWxAEQwEEHr0zqfBMRAWuO3YaG4t4w/nc9AMlH1QrJFmbmm9xYNXpM1rKNzT7Q/Qk
	bmTgGCdKQs043uOlWE3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmIlL-007ZLO-Ox; Thu, 27 May 2021 16:21:35 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmHaO-00723x-0Y; Thu, 27 May 2021 15:06:13 +0000
Received: by mail-pj1-x1029.google.com with SMTP id
 ep16-20020a17090ae650b029015d00f578a8so599738pjb.2; 
 Thu, 27 May 2021 08:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D5u3AdWOIvPoclQ2OovgjLJ8e0qPUkCDjr5oI2WbCEQ=;
 b=Zp9PQk3KJj5fZGBJbkfnzUJuN4DW45iVpE5/EBaNz/Ul3xnS+49mljRqL/pFl3nzak
 EhbGO4BbiEPIr1LqU8d20TwIlNZjfA6Rk5ap8H4qcfHIAp2e8zWjLl7pf/S5dAvJISen
 z5yZYBDeD4WeyhGa3sfhjgHlbUsKACPMS15D3SXSlJs0PwYEdv0zwq4oyInlKm1ESRg1
 O+e9SCe1V10X1I6W6/Rp18ndook4LWPNOlgtYwjlQtpz9+sM95Gs75eCHQA3G7Cr5gBG
 hlOiwXtug537lu/lxbREPDueHDGhFajtDz8zzV2fcBUkf1ZJneAYvZQp1iwfcL2uM5ol
 V8cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D5u3AdWOIvPoclQ2OovgjLJ8e0qPUkCDjr5oI2WbCEQ=;
 b=T5q+8sWvtGmHJYbJ2hFf1T9xq4fPREGjYRv3amlzL8OiCbvWn8IVUY970H/s1/JztR
 wvJaUvxw/fgjicty4XvI8iUde3CaVPdg0i3ZtD1KoZGKog8kt2gceSN0YA4vix1wT4wc
 aNl6hw1Xm1JhLkMJab0n3TGcUcLeapZNBOQ85+7ooh73tizCyKidmgyi/7E+UuLRjOe+
 XvWq0VCP5Jiq3iZSlwBSxyrmGVI+TOyCN5UBoFjNLTpcP2+jCPpChQuraMIKyoA/0qCK
 eJNE5iX1phUn0oZhIsJW+c3MaBE6AU86ZtAS8JuH4zoRFRxBdVPJArPv3FmyZrlsb/1U
 mh4A==
X-Gm-Message-State: AOAM532y8vaOU8H3JiyYr95wtxz9askauvMZSesTCdq5x80XQ4LigSIV
 +cDQ7Xrgq9TVh1/NoU7c2HXk2N0CoVw/SA==
X-Google-Smtp-Source: ABdhPJwEKxIUpnd3u4aWjWgNUwVkFCCbuEJ/hQkbeh92KwMleMTYi5P6ttcqTs5ZDtYZOS3iA/c/JQ==
X-Received: by 2002:a17:90a:ab8f:: with SMTP id
 n15mr1639704pjq.83.1622127970247; 
 Thu, 27 May 2021 08:06:10 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id t19sm2277523pfg.70.2021.05.27.08.06.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:06:09 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 alexandru.elisei@arm.com, wqu@suse.com, robin.murphy@arm.com,
 pgwipeout@gmail.com, ardb@kernel.org, briannorris@chromium.org,
 shawn.lin@rock-chips.com, helgaas@kernel.org, robh+dt@kernel.org
Subject: [PATCH 0/2] Fixup non-prefetchable 64-bit host bridge windows
Date: Fri, 28 May 2021 00:05:39 +0900
Message-Id: <20210527150541.3130505-1-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_080612_128370_68F0CE97 
X-CRM114-Status: GOOD (  10.80  )
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

Hi,

The couple of patches in the set are looking to address the issue of
failure to allocate bus addresses for endpoints requiring
non-prefetchable memory range on RK3399. The issue surfaced as a
fallout of commit 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to
resource flags for 64-bit memory addresses").

The fix requires a change in the PCI ranges attributes for host bridge
windows advertised in the device tree (Patch 2) but as there are
already existing platforms out there, a device tree fix alone isn't
sufficient.

Patch 1 introduces an override to drop 64-bit attribute if a host
bridge window lies entirely in the 32bit address range. This overcomes
the limitation of PCI-to-PCI bridges that can only map
non-prefetchable windows in the 32bit address space.

The patches are based on v5.13-rc3 and have been tested on a
RockPro64.

Thanks,
Punit

[0] https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com

Punit Agrawal (2):
  PCI: of: Override 64-bit flag for non-prefetchable memory below 4GB
  arm64: dts: rockchip: Update PCI host bridge window to 32-bit address
    memory

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 drivers/pci/of.c                         | 8 ++++++--
 2 files changed, 7 insertions(+), 3 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

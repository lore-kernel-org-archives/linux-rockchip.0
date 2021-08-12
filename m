Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD82DC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:42:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 952C0610A3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:42:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 952C0610A3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ogr7Ap1sgoLfseRkICKJnmqGzM2htpjid3bLI6jLlH4=; b=Ew/fqM6482eYpG
	hfkMpldQvZo5mbef7jguYJjXRq2rHNh5IM2TEv+KrQbfiJhhTSWmWx9THXK+OKtd3j4z0i94SieqX
	ICoYi9V7JWLbQHQeHaO2S5N0OMNI2jXg3aPcAd/TBIoEKSw0GXImqGg044DB3QIJ91StxfuYsUk3h
	3AM5jgyqktHmcfvmqd/IkVS9OEwRNQ538hApCZejhwEpX4W9U5gwUMH6Z4go3/lEv3X1QMRSO1+hZ
	HjmU0w78mrWx/bLXoqE9PhLqmTSuHZNfEZvzMccNPUeXSJz864NMtiZeBKzBuWG6nO6p1+1D4sbaP
	xwwhYn2WlPa7ra3qXJrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEHX1-00BBaq-Pw; Thu, 12 Aug 2021 20:42:27 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEHWY-00BBOF-PT; Thu, 12 Aug 2021 20:42:00 +0000
Received: by mail-qt1-x831.google.com with SMTP id l3so6383798qtk.10;
 Thu, 12 Aug 2021 13:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=plMp/LjZg42NsXR6HAsNlOG32rI0PkLKt5n9XUzanC8=;
 b=SYWnentim0D4AQARu53t814wnUXhtq4Sb0aZirAUhj4I1gyQ8R4vfPoX3B3JNW203S
 9CTS6wKWKKWqBkjDelqRpK46K3F7T5tYup6ijwmPhLfA1sI4+kAAHOF8SZ+mhavdON3E
 Q7v3RWOgQit45fY92Zlhc3Z1OTmzrymJ8u26CBmwZt/QBuo1Z3yp9hrt20QuOBv7HL6i
 YTV/onyRQAq9YhIhZss1yxOF/qmZK6A5uf8HK4655djFoPcsQeZjgZg8a9kHVlU/ZLTT
 06qrfZn3Fvt/J5ZMN+C2+Kn7Tws3kqnIES0agdtr4B4ZWeRYsKZtRnlV6pOLwGS9zP1b
 4E6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=plMp/LjZg42NsXR6HAsNlOG32rI0PkLKt5n9XUzanC8=;
 b=Yu6/SmEWj0Oj7TlWtuR0WfqvuFaTFujuY/gymV+xwlOsY7RkGgFnCiXGlXHanbZp0H
 z527pH/W2i8WV366heaFCfuOzWB6u18bwGeEoIlGRCKNV7R4giKooFIF20zMUukStOZX
 /TCMgKBrsTwWxt99zF2Iy/e6NYGjpMv0Z8M+AHV/YHcAKDIYxrMdXIKvWv0qDNJWEl/r
 Y6BNAbIRVfXkMUKOD9R/ZCEYUo8a6G7aVZUHTU9XSFVA7vwrH/ONHX79AQh7CtXolWu3
 1olQewx8Dw4TbwilJX7VqNpib239oQG8nbLjPP0//DUfD4NYaYSFaudQ6Gow8eln5PT5
 Kh4Q==
X-Gm-Message-State: AOAM530mIZgPMR1a8ooH5yPhasYAeVr4dF4mUNxZeGJTDlC44R25QIWX
 RlSbxKNQAx67o4SxnsItqxeyfhDfBQoHGA==
X-Google-Smtp-Source: ABdhPJwpLDUhYhoM8cXeQua02cls7C1TE2wnIM9nGfig9WAjj7XGJuKseD4/LaDR2rvwwYfODiwZ3Q==
X-Received: by 2002:a05:622a:154:: with SMTP id
 v20mr5638983qtw.148.1628800916824; 
 Thu, 12 Aug 2021 13:41:56 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:e89f:d077:9161:1bd7])
 by smtp.gmail.com with ESMTPSA id m16sm1940361qki.19.2021.08.12.13.41.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 13:41:56 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v2 0/8] phy-rockchip-inno-usb2: support rk356x usb2phy
Date: Thu, 12 Aug 2021 16:41:08 -0400
Message-Id: <20210812204116.2303617-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_134158_874319_AB2B8185 
X-CRM114-Status: GOOD (  11.00  )
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

Good Afternoon,

This is my series to support the usb2 phy devices on the rk356x.
The rk356x phy has a single muxed interrupt and has moved the usb2phy
nodes out of the grf and into their own nodes.
The phy needs to tie back into the grf for register control, similar to
the rv1108.
By moving the phys into their own nodes, they now have full
#address_cells = 2 register addresses, but they still reside below the 32bit
mmio range.

This driver series only supports the host configuration for the rk356x.
I have have tested it on the following:
rk3566 - Pine64 Quartz64 Model A
rk3399 - Pine64 Rockpro64

Please provide feedback and comments as you see fit.

Changelog:
v2:
- correct the order of the usb2phy-grf dt-bindings patch, thanks Johan
- correct the conditional requirements of phy-rockchip-inno-usb2, thanks
  Johan
- drop increase generic-ohci clocks patch, thanks Heiko
- correct rk356x.dtsi ordering
- fix a dtbs-check callout

Peter Geis (8):
  dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
  dt-bindings: phy: phy-rockchip-inno-usb2: add rk3568 documentation
  phy: phy-rockchip-inno-usb2: support #address_cells = 2
  phy: phy-rockchip-inno-usb2: support standalone phy nodes
  phy: phy-rockchip-inno-usb2: support muxed interrupts
  phy: phy-rockchip-inno-usb2: add rk3568 support
  arm64: dts: rockchip: add usb2 nodes to rk3568 device tree
  arm64: dts: rockchip: add Quartz64-A usb2 support

 .../bindings/phy/phy-rockchip-inno-usb2.yaml  |  31 ++-
 .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  52 ++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  98 +++++++
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 259 ++++++++++++++----
 5 files changed, 383 insertions(+), 58 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

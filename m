Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6DD0C3DA45
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 04:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ILytKuh6zFtyy8ya6bhWxyMAWNEXbt4jOb4gZqhmrIE=; b=nVZ
	Dz/Lc5ktEuT9508yW2gXonlks9Ra6S3Ot4sh0/RH4uPTUZouvboaS2ZJCfkfp7gk/5/MPdbdoc7se
	JbmNBqmiHd8UYevDS/YcjM7N+78E/oci1V4vOeVskNmxOFeCV15RRJ4QwCR3k7d7ZIDOG/2Vkbf3b
	pdtXf93VBS9ATBUP6ph+rSIJQP/e8ANRxsV1Amlp9Uav9zmJ/jBm7rCfAizpOl+S4j7cW7YQCTi2s
	zM+d0KdXjx+y42SDYqF+bx5Z1KvAMZ5EM1XKzPNhAlDZfWHAYaMwoxnr/pC708puSBw1BB1r//XtK
	4rc9/wA/norT5qOuEjOS9gS1iRMnmnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR2NF-00000005qBW-3HR0;
	Tue, 09 Jul 2024 04:22:41 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR2My-00000005qAM-3MWA;
	Tue, 09 Jul 2024 04:22:26 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-e035dc23a21so4120269276.0;
        Mon, 08 Jul 2024 21:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720498943; x=1721103743; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RB9RctAU444GofA/R4s9HFO7jKxH1InoKAXmLPqHHY8=;
        b=F0CReMtajhYjoG4Hj4CwxuXfknGPJFVe95Xok1hJ+aH2RiiJs+636iThugtwCGwHam
         1A92QHwS6VLHRT2qIws0WBKE5jP3ZtSDDM4swCrYZKqeTvfiiyjSikn39c+PNA5N5atq
         LLdAwgAezhP+RtwxzZ5agoeI98h6Ko2ehjs9aUZavmPqXm7r+2hk/PIs31bohRIoG6eE
         kxhk1kligeaf2Xg74Vyd2nt4qR+8m/k8qeHXRWS5+1rq5G+2w0lx96ZIHdCgjqE5/Y4S
         TtzFcfjW9SnHnCiXm79Xw+4bfGDt/QspGhbO02jNEMLHDrTr+ctC2Eid3GcYsl57A5XP
         LvSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720498943; x=1721103743;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RB9RctAU444GofA/R4s9HFO7jKxH1InoKAXmLPqHHY8=;
        b=YCWQ5VYlsLay6XQga68psgzl/h2oejnPzsE88oubGCRvxfyUm04ZYIt1E0y6J7wP20
         tAbY9YI4qrhv56UGVCeRHsr1PPdPTaf0VXDGrbxpb+39aXZvm5rqNBSA4rEMnO6iR0pV
         ttWG8uLYZ0QmfFfxllNBefalxxFbNdqcedR6UPnrLXfbMeoSVo6hB//JMbMhy/874ERD
         cclw+v+U/VnZo8n7+PBRkuOOSpD7Ayb2kbeXpOsRYtHK5ceFg5jnzK2ICDNyJ63J0GSY
         9EXKTbZGvfbGWizo3hDnzD++2XwVVA8pTY6wDouLLQ8Uy4KOeOPCSs9orZYWVd1NINRI
         xwig==
X-Forwarded-Encrypted: i=1; AJvYcCXJEV2stZJ6v8tpikLpOWrVv++7tFweX4tQksSJwkM88dbOe5dMAtJIbZH8PueSQbYk2v+lw/D1lxH6g4d+yKKJcKpQFMXdB/bwlWXNGIksdeVm
X-Gm-Message-State: AOJu0YzzljtWOCULZ5B6qPskNUiHmPxAhm+RO85AjxKALiMyvvJkTyn/
	oQ9wS62F8mW+v8mzb5rlDLu3kO8NkhiYPKFuGdwlu0rPiy4LFNtr53JA3aNxF4h8Fa2GHeETf/I
	DVN4avV+eLPASYdFixJZBELXAnXdeq7BuXYkQ6Q==
X-Google-Smtp-Source: AGHT+IEu0Wx2YIuyJ1D8x8AaJS4Yy8DgnFYhx9eJeRDqbbvAf6X9Dwjm/ky6Y8vYpA0ORFccOwW7Gu+hGh9owVKT0Ig=
X-Received: by 2002:a0d:c8c2:0:b0:61e:a26:c1b2 with SMTP id
 00721157ae682-658eec68cc8mr16428117b3.17.1720498943355; Mon, 08 Jul 2024
 21:22:23 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Martin <dmanlfc@gmail.com>
Date: Tue, 9 Jul 2024 14:22:12 +1000
Message-ID: <CAOyTmd2GEOYQiiJjYFbb9tK1D4iAndYwvuFj82tKoTEvHRVB=Q@mail.gmail.com>
Subject: Hardkernel Odroid-M1S no USB 2.0 & Ethernet
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_212224_862604_669B18EF 
X-CRM114-Status: UNSURE (   6.52  )
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

Hi,

Currently the Odroid M1S based on the RK3568 processor is not enabling
Ethernet or the USB-A 2.0 port on the device.

Here is the output of ethernet failing.

[    0.351616] rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found
[    0.351640] rk_gmac-dwmac fe2a0000.ethernet: IRQ sfty not found
[    0.352311] rk_gmac-dwmac fe2a0000.ethernet: supply phy not found,
using dummy regulator
[    0.352467] rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (output).
[    0.352484] rk_gmac-dwmac fe2a0000.ethernet: TX delay(0x4f).
[    0.352499] rk_gmac-dwmac fe2a0000.ethernet: RX delay(0x2d).
[    0.352520] rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
[    0.357610] rk_gmac-dwmac fe2a0000.ethernet: init for RGMII
[    0.358099] rk_gmac-dwmac fe2a0000.ethernet: Version ID not available
[    0.358120] rk_gmac-dwmac fe2a0000.ethernet: DWMAC4/5
[    0.358135] rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability
register supported
[    0.358146] rk_gmac-dwmac fe2a0000.ethernet: Ring mode enabled
[    0.358174] rk_gmac-dwmac fe2a0000.ethernet: device MAC address
b6:bf:27:ec:65:d4
[    0.358191] rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
[    0.358210] rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA
host/device width
[   16.932085] rk_gmac-dwmac fe2a0000.ethernet eth0: Register
MEM_TYPE_PAGE_POOL RxQ-0
[   16.932837] rk_gmac-dwmac fe2a0000.ethernet eth0: validation of
with support 00,00000000,00000000,00006000 and advertisement
00,00000000,00000000,00000000 failed: -EINVAL
[   16.932924] rk_gmac-dwmac fe2a0000.ethernet eth0: __stmmac_open:
Cannot attach to PHY (error: -22)

The Odroid M1S uses the RTL8211F Gigabit Ethernet chipset. The phy
kernel driver is enabled - `CONFIG_REALTEK_PHY=y`.

Obviously this works with the Hardkernel 5.10 linux kernel & supporting DTS.
Let me know what further information you may need.

Kind Regards,

Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

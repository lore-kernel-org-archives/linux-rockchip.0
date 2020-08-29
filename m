Return-Path: <SRS0=/3g+=CH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01FDCC433E2
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 00:30:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B18A820838
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 00:30:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ghPI9LM+";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RU9IhDks"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B18A820838
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3Tt0x6aR1FFDBTyF6qvV2CCSI2CYk4UO6lfGXOqn/tw=; b=ghPI9LM+s1alZ1zgE+aPxrRoZr
	9+wk6Ni5wLIC66DXJsrXWAYHJZle9sbUBKQinwFi++cCilSOGjZmlt34plJFIMAPhBBxg6Chz4apE
	Bzk0U6pZ2ODuMs0E2TsnsspX0uVnYo0hVY0c46UW7CrHkE2CPZGKKgxmjBVKL4MMSekG6lnoOf2/j
	kTRmSumH9KtJbRY7/av110T7itFbEiqdcXXJvpZwZQJ5SI2Rhul4swpLNzXfx5nYchIWoVeabJbSY
	Q0V9pfXmhr7NOrQ4DKDZUKwvKZzDBHs0rkECzoIF7EwEUA7CdUqyje+UPWuUpGY+dF5G0OuHFP/pn
	Xh8dTqCg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kBolL-0001GM-FD; Sat, 29 Aug 2020 00:30:31 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBolJ-0001EA-HR
 for linux-rockchip@lists.infradead.org; Sat, 29 Aug 2020 00:30:30 +0000
Received: by mail-pg1-x535.google.com with SMTP id w186so1192045pgb.8
 for <linux-rockchip@lists.infradead.org>; Fri, 28 Aug 2020 17:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:user-agent:mime-version;
 bh=Jxyw5Vp5RpkPFFkUgTb5vWvY/xptdC4UT3IC/fL51Bs=;
 b=RU9IhDks++h6enpsQe8zLBPinYS+zBo+NgEed+Z3aXRFRmVE7kGkp+Mn7pQd8infkt
 MAzWgl03ieukDVeT3/QZkYnx+rqRXLrhAotUSX/w9xUriZ0OMUhxF2DbJtdOzyCxsz6n
 pckGos6rgUcD67DCUFLOOn2pPkxI0yhYF1qBftGZoZiXtAU4msT1hneZgjF1cyNxqInw
 KG+wW02mSJ117K5GjRDafmAdp2BD+so13UkN6/s45tkx0eixB7rt2+ymLZ8BD0BLqDGV
 jVh8zmguFRw0/3HgMsesIVhqJyqvY2+Xu7Lchh7Iyime+sMviEAoriLgF9dYPg9g5NLr
 Lbrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
 :mime-version;
 bh=Jxyw5Vp5RpkPFFkUgTb5vWvY/xptdC4UT3IC/fL51Bs=;
 b=HqiwzvCXUay7yAlWScsels0O4Cjq0252sRsB2XojhBnV7CtHxnaKmX0AHFKEhbVd1F
 OVHtLyhg3nLP9zGXHICmA/r8rJe17foo+/17FhvEcdG2VoT8qaKzmm6uE+Ewhi+n2s0L
 2eD2N62D5J+QtN4MPanv8P2oXAQfheaMfD7HfutV4/BrBIvw8BZPEZP5a0Dlu2zGXtyU
 QExtuJ6WB+dOoikK+02oiB+FHdO0BzMao3pIxgXyps4n34dgmImSagzzh78OaNGRR6aj
 fPEzr0FxEQF5AfFz6KrwOkWsfwBVu2qE2jY0D80cRZOw9qL2xE/zX/izcswA7/Yi1YiF
 fCQg==
X-Gm-Message-State: AOAM530J9q33kSTj6mG6anKSKYGS/9gJ5Yj2AQjOeFITCFQLueBzWqkh
 7sL9tEunISGmekVSZe2yAiY=
X-Google-Smtp-Source: ABdhPJxeS6RGwZ005jJ3PhqQ01dVgp9RqleyNUrlZ2U98W2Xfkc44zMbRWXFUMFAG7gzjbMDvhaMsw==
X-Received: by 2002:a63:af1d:: with SMTP id w29mr925043pge.176.1598661026036; 
 Fri, 28 Aug 2020 17:30:26 -0700 (PDT)
Received: from localhost ([2405:6580:31a1:500:a00:27ff:fe82:e36e])
 by smtp.gmail.com with ESMTPSA id e1sm603913pfn.78.2020.08.28.17.30.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Aug 2020 17:30:25 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: u-boot@lists.denx.de
Subject: NVMe boot issues on RockPro64
Date: Sat, 29 Aug 2020 09:30:24 +0900
Message-ID: <87a6yepa3j.fsf@tinker>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200828_203029_620467_72F2D8A5 
X-CRM114-Status: GOOD (  13.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: patrick@blueri.se, kever.yang@rock-chips.com, awilliams@marvell.com,
 linux-rockchip@lists.infradead.org, jagan@amarulasolutions.com,
 bmeng.cn@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

I get the following errors when booting Linux from an ADATA XPG SX8200
NVMe on a RockPro64.

[    3.705205] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
[    3.705226] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
[    3.705247] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
[    3.705331] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
[    3.705352] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
[    3.705373] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0

At which point boot hangs. Has anybody come across these errors when
using NVMe?

Using an alternate device (sd card) to load the kernel / initrd doesn't
cause the issue and the drive works fine when used as a root device in
Linux subsequently.

On digging further, I found that uboot exits with the NVME interrupt
line (PCI legacy interrupt) active when making any access to the
device. Even just running "nvme scan" leads to the active interrupt
line.

After sprinkling some prints in the uboot NVMe driver, it seems that the
interrupt goes active right at the beginning of setting up the IO queues
(nvme_setup_io_queues). This is also the first time the admin queue is
used; when issuing the command to setup the number of queues
(NVME_FEAT_NUM_QUEUES). For some reason, updating the CQ head doorbell
doesn't clear the interrupt.

The active interrupt doesn't bother uboot as it ignores the device
interrupt but causes an issue latter when linux boots.

Has anybody faced similar issues with NVMe and uboot? Any idea on how to
stop the interrupt line from triggering? Or de-activating it on exit?

Let me know if there's anything I can provide to help debug the
problem. Also, happy to try any patches or suggestions.

Thanks,
Punit

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51873C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 10:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1620o/5qbKE+t+uJtQgYTGiMZxr56J2jaut1D7ex3ew=; b=Vldg9j2j+cIimL
	L+kmz116GllNtWFziSEx5iPTYPsaty3/9YJeB2qRfL/ijaU3Xcm6wxi32yFF/vgUMSfrEVLMbbF46
	/6Zk0duUDJFol5g2wVdiMedMCUXRgX+GJjv6wEGolT68phSQQCMjTdPL2Eb2UuPZnWeUCYCqFmR6q
	Aab52xh73vtzaQUV4SzaGQRXzwyrAmSHassGY9KTNT9sDYFOTgYCHh0haQjB/HLrhHHvINL7sDITU
	hX/iwUQ2XnVyJRWUFGenq8v9/kJ4W9Sw/rcIC4ZOj6c9WlHVoKXjZP6kA1bE8bDY9gppV2UTWvRPz
	tnEh5rql7Zjoi6Hb0x4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njIir-00E0js-Vz; Tue, 26 Apr 2022 10:47:10 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njIio-00E0du-OC; Tue, 26 Apr 2022 10:47:08 +0000
Received: by mail-ej1-x62e.google.com with SMTP id l18so8568706ejc.7;
 Tue, 26 Apr 2022 03:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LQ+dR0UOrMeVo1DrEEM2SpNUL4OliZmqjspXFMm8eVs=;
 b=Xwki4XJKl1bvhU2BAHy1VLInwFSPTDMezYEKLCJfgPuozbREABcQvWUPNqN1ECccUp
 eIcXgH5K/Rzr2OufjrthDHvzz35YGOLCdrPUB2FDgW5Y2ds4iOuYDHUqRp0H/7s1LobK
 Y2BjmHgFRaOk8/Y5nkCQLIJ8+flVdFRTEKiGWq8zq5F+1uf5GWotf2lblzhms7FTkQ84
 PNgiToN0K3ihafgU6clSyjgKbPeBaqtc7rnLDajN0edrBaj5rJ4p5j/VNy9GDTuXMwWI
 5bZcbmeBGYxOkTTvstU8FZeTQTwh5c9SeH86QTXFP5I7Nm+fr8gflhwXJStRsDpUPj62
 WtXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LQ+dR0UOrMeVo1DrEEM2SpNUL4OliZmqjspXFMm8eVs=;
 b=mABiiZg08sPduQvzzSaQrn2VcvSPppNhMBTUFo4urVjWAfxCwPhAXW7Z9Ofy8YNoSK
 9c9lkx4PkloIRkYPFZbbMPUpUE79d/4uGIjLcdhK9cNqNzwlV2bfrmzlS83qu/O18k/z
 QGO94qzKB699hsDv4a5XfmbNg+Nc6qww//y0fu7JRlHrssIvXIwEszfrG4oz0Ep+1L5q
 vkSB7lpAG3PK4ahEjU1rhXV04D/eLqd8SoLNjAbwr7K6tuhSVbIVwvAuHq8T5KQmIhGY
 nBKjD24NRVnxudN2nt/GYoLRKFwCv61KbuXFNRT0Nb9C6CaUIWKMnBgt7uz3Nes0CLRh
 je5w==
X-Gm-Message-State: AOAM533RjYLC0kkpVN/s98VDiCCJLY3ctMGT7WWaJxCfnuYciTHqO6zr
 /IeHesHgjVjGK9Ym2N5BR5hh2g1BSum4CA==
X-Google-Smtp-Source: ABdhPJxdSqpjegF02exvsa0Whpl3LQ6ep+nqUMpsWopd9mkam8c4SiNfv8wV44oDB1ez54DB2XYB7Q==
X-Received: by 2002:a17:907:72d0:b0:6db:4788:66a9 with SMTP id
 du16-20020a17090772d000b006db478866a9mr21551609ejc.516.1650970018176; 
 Tue, 26 Apr 2022 03:46:58 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 h7-20020a1709060f4700b006e8d0746969sm4635074ejj.222.2022.04.26.03.46.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Apr 2022 03:46:57 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 Peter Geis <pgwipeout@gmail.com>, Marc Zyngier <maz@kernel.org>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v8 0/5] Enable rk356x PCIe controller
Date: Tue, 26 Apr 2022 12:46:56 +0200
Message-ID: <2599368.pI0oiQkSSZ@archbook>
In-Reply-To: <20220423152403.1681222-1-pgwipeout@gmail.com>
References: <20220423152403.1681222-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_034706_816353_864CBE0E 
X-CRM114-Status: GOOD (  14.65  )
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

On Samstag, 23. April 2022 17:23:58 CEST Peter Geis wrote:
> This series enables the DesignWare based PCIe controller on the rk356x
> series of chips.
> We drop the fallback to the core driver due to compatibility issues.
> We reset the PCIe controller at driver probe to prevent issues in the
> future when firmware / kexec leaves the controller in an unknown state.
> We add support for legacy interrupts for cards that lack MSI support
> (which is partially broken currently).
> We then add the device tree nodes to enable PCIe on the Quartz64 Model
> A.

Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Tested on a PINE64 Quartz64 Model A. The series was applied to 5.18-rc4,
and two devices were tested:

Device #1: ASMedia Technology Inc. ASM1142 USB 3.1 Host Controller

A USB 3.1 flash drive was plugged into the PCIe USB controller card.
Then, the block device was read. Performance was nominal, no errors
showed up in dmesg.

Device #2: NEC Corporation uPD720200 USB 3.0 Host Controller (rev 03)
behind a PLX Technology, Inc. PEX 8608 8-lane, 8-Port PCI Express Gen 2
(5.0 GT/s) Switch (rev ba) PCIe switch.

(it's a weird card I grabbed off an auction site with both USB and SATA
behind a PCIe switch, it's best not to worry about the twisted mind
that came up with it.)

A USB 3.1 flash drive was plugged into the PCIe controller card's
USB 3.0 port. Then, the block device was read. Performance was nominal,
no errors appeared in dmesg.

512 megabytes of /dev/urandom were redirected into a file. The file was
SHA1 checksummed. The file was then copied onto the mounted USB 3.1 drive
which was connected to the PCIe card. The drive was unmounted, then
re-mounted, and then a sha1sum of the file on the drive was calculated.
The checksums matched.

Based on these tests it is my understanding that this patch series is
functional for the use cases I have covered.

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

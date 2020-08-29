Return-Path: <SRS0=/3g+=CH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FBDC433E6
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 07:03:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2EC6D20738
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 07:03:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="U2q6Vb4O";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Mj+20kIY"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2EC6D20738
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hjFw+CasSA31n+R07hswtcmeE9PwQ0pq/ZN0P3cuUZQ=; b=U2q6Vb4O02qMDHPq2qBQ0gf6u
	aXOMVn/ua+78QHGSL/5J6v+6kVpx7PNcSlU6g0oP39QYuUOGvS0PlCOSw/gv+hJTfm6lBP6mbNnrQ
	oCto7iYe933ASW6AkzR/7lvbJn8qFZ3BVya1d3TbtUwUIHIaQ8Rha+kD9otfGgSIjmagBOC3RPFAk
	qGwBZ0iTWRqshYLaTyU1VR1zD35pn+hz6obKUAtHrJTFnGP7qX9KNyrPuCVUffLJDMbNMKRNCEXRB
	utiNbXpSzJhFYSi1On2FcT3IKfGCX+IpUdqISAmaUXfpZ2DUsUmgkBEy6pctJSQNI70oRmVDE7ZYO
	efk42o09w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kButV-0000tW-KH; Sat, 29 Aug 2020 07:03:21 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kButS-0000sj-Kk
 for linux-rockchip@lists.infradead.org; Sat, 29 Aug 2020 07:03:19 +0000
Received: by mail-yb1-xb41.google.com with SMTP id v78so99717ybv.5
 for <linux-rockchip@lists.infradead.org>; Sat, 29 Aug 2020 00:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WFzYdEkav7F8z5We7Cz2tIGs/pSlOJAXOTBMDWvSVZQ=;
 b=Mj+20kIYFPZrNIDPOBc65xJgtEj7ajvukEWkUTFvnet0MiSjZUGNMtTJBRaJYbRxMc
 l8w7Ehlo5eMkhRwP9Fg3q9nE4mDlvSFQ4K6soMZQ4/3GW6TSwpmVz9mAU0vg/7FM9mb0
 ov/8L+MiuGcapL+mZ04WjeqBzN/8UkI/WnALu1DsdeSQzIsAyYn0syfmMm7QVps/XFiR
 tVmEHaVWpM+/hkg59B1YhZMEm4/SeCpj+ffS6R4G6z6byBKwqH3RtFImUfzGHR0bGv01
 k911BIL3nBAgw8NXZ9Jexp2Lh0sTKRt1geN7JcicxG2xvVepPVeLCCss2V7vRNvM0C+3
 DGsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WFzYdEkav7F8z5We7Cz2tIGs/pSlOJAXOTBMDWvSVZQ=;
 b=MDl9jwXZGyKxEiX75Fqh7d140nYVvaFph8Mu0ENt6FkF4KwywTfB2Da/tlEjC6eMLz
 ojnA18jeTBuPA1teig1zgOtaAlD3gkOIqp+P/ZopFaOZkW3xmxriNJJUzCOtuX/TbquW
 wiyPai3sEJGukl+mGNhjtA1Rpc7QIP80EerUZM1bd2a/uuwb/E+YCK1Y0kTYdOISUiPj
 CnMGoS+3Ky+Y4uT7ZlBUczt8QJ1MZj7NE5gD5AT3hXStFmbe5/2kP0YBIv16PKjLkgu+
 LFhkej5S9wkAm/bPMvaSLwCraioz1JnQi2JPicYY/bMyTaR1A/fhkHTimgEd9enZaIOG
 KbgQ==
X-Gm-Message-State: AOAM533wR18DlUL9G+VwbExl+M6mFuhZhAfCBYW3lhVuRa6HyMZBsODF
 /hmChguDDRLNjoYSCDTCxdvagGP0yfRvn7cSVHM=
X-Google-Smtp-Source: ABdhPJxqLQ/5X6PQ7FSBwCsjlLyU/P7BMV67oC9qrFUsILZV/KkC1HXLjL79B21bTpPHxxQcxp0nf++gmGN7BJOUDpg=
X-Received: by 2002:a25:810a:: with SMTP id o10mr7379989ybk.239.1598684593658; 
 Sat, 29 Aug 2020 00:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <87a6yepa3j.fsf@tinker>
In-Reply-To: <87a6yepa3j.fsf@tinker>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Sat, 29 Aug 2020 15:03:02 +0800
Message-ID: <CAEUhbmV3fAa-j6-QR1Y3NvmfGRX38PmvjtVpUUtxZehuABN_yg@mail.gmail.com>
Subject: Re: NVMe boot issues on RockPro64
To: Punit Agrawal <punitagrawal@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200829_030318_715834_A95F1741 
X-CRM114-Status: GOOD (  20.98  )
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
Cc: Patrick Wildt <patrick@blueri.se>, linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, Aaron Williams <awilliams@marvell.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Punit,

On Sat, Aug 29, 2020 at 8:30 AM Punit Agrawal <punitagrawal@gmail.com> wrote:
>
> Hi,
>
> I get the following errors when booting Linux from an ADATA XPG SX8200
> NVMe on a RockPro64.
>
> [    3.705205] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
> [    3.705226] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
> [    3.705247] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
> [    3.705331] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
> [    3.705352] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
> [    3.705373] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
>
> At which point boot hangs. Has anybody come across these errors when
> using NVMe?
>
> Using an alternate device (sd card) to load the kernel / initrd doesn't
> cause the issue and the drive works fine when used as a root device in
> Linux subsequently.
>
> On digging further, I found that uboot exits with the NVME interrupt
> line (PCI legacy interrupt) active when making any access to the
> device. Even just running "nvme scan" leads to the active interrupt
> line.
>
> After sprinkling some prints in the uboot NVMe driver, it seems that the
> interrupt goes active right at the beginning of setting up the IO queues
> (nvme_setup_io_queues). This is also the first time the admin queue is
> used; when issuing the command to setup the number of queues
> (NVME_FEAT_NUM_QUEUES). For some reason, updating the CQ head doorbell
> doesn't clear the interrupt.
>
> The active interrupt doesn't bother uboot as it ignores the device
> interrupt but causes an issue latter when linux boots.
>
> Has anybody faced similar issues with NVMe and uboot? Any idea on how to
> stop the interrupt line from triggering? Or de-activating it on exit?
>
> Let me know if there's anything I can provide to help debug the
> problem. Also, happy to try any patches or suggestions.
>

Is this a specific behavior of the NVMe card you are using? Could you
please switch to another card for testing?

Regards,
Bin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

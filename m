Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AC29C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 01:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WOPBkpcHODrsqIzHQQtPy3KgNSJoYfvO4X5u/ZHtvM=; b=Mcc+C4xOlLPzL5
	ayHoJ7bECmJdOCUsLCbROmC7AQdw69/0s2e2FWd9UF4Um7y3xKzmhf0PQsOXcV3ywSLUdAMimlEN6
	kgh1zmoCH2APXAawGTrQ/c43NxJigADOx/9Aq3XdKphLooAcnNdWUv+kOIVvGGAqIRs91+raM4FEW
	ucAjLqRDO4zopEZpD+cxY/OzSn/ptBmVKA5gbn6ZSRq1b4NMl+VLHgq1K0wDM2seiuilMCTwQiGIJ
	ltxXc42CITFMArE2ngdkgRP0GJLkDni7nAOxGXgzQWR+jex7/CKA/azbmbOeku8gaum2NBU0oPHK2
	nCDD9XBBFkVeFV1G1j/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orrI6-00B2pO-Ta; Mon, 07 Nov 2022 01:51:10 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orrHw-00B2fb-PU; Mon, 07 Nov 2022 01:51:02 +0000
Received: by mail-wr1-x436.google.com with SMTP id k8so14219466wrh.1;
        Sun, 06 Nov 2022 17:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hLQ+MSxsBnw7XpWeeY2S6hYOnV9ftFLKK+K/LhDt1dU=;
        b=RXWiw2eSSIuzc6idBVzMOC/idv9/uIfeZHQDBRYKqP70Z7KH+Yz63/1gvf2sZeH3KR
         WhR8FH8b6Kvu7l/F1/o2xnmesOpjbNK8u8D1+3sprsrVD6n6nzmet0ijSONfpZjXPUIZ
         DNa+LTuXdjjAgEGkfYM+dmhIp25jGwDMi1cb6qaq9s3XdJ36O3bypJE8UM++tLtP8MA+
         EcnaCFgZJ4mRG8pYxVZrQwU+CJX3VqXhOKioIpkgsvcfbKrtlsp1vpfRSwi+xCLvf8l1
         fJkPgFzk2LE1Dt8K01VUZaBQ3nrWjgCGZNHsfwIokXoIhUlkARiyv6PbUvtpdby9l/WF
         59fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hLQ+MSxsBnw7XpWeeY2S6hYOnV9ftFLKK+K/LhDt1dU=;
        b=2iNixSpjEiOH+fNTyT70IKny86L9eHt/a2FdmZpCVnZEvJaO9MyOgB0qBdz4HB3Nd5
         XvVktxFkbScAPV5+uKEC6Tv702F2vah7IMq81BMiodza0s1NfSLhxmRMW4bVLPG/fDv2
         8T1iMn2gGZuMeIUSZ/OjOXY55lDXDk1QSkOhcRLwuV68lA3/sp87VF4C/kUg3VC8zIXu
         kibHwdO5Yt/chhXRPEhaIMabynsXNY5A7AhI75U51rogNLGuP+hrpP4Aj7GHKL4sYgym
         eEWSOJcS4dqofpRKelzv8JaKdPUwNGQtr+5mc+zVCwJZsNFHrrX8HbOAMEhOYLmHeHjS
         HrSQ==
X-Gm-Message-State: ACrzQf0CL03adGmMio4n+UjZO+FbFgrelQgTdcg80JfvqSHEYUAS4t+g
	HPNRJQxS1RLBsQkibWoc/k6F4JLhEN8p1IdQHiflbhzU
X-Google-Smtp-Source: AMsMyM7lndnfGy7HnQizAwkwrMMckj8N0io+DwmqCVfdk/ODiHzlqacKTKBDRZbnGcb+3Nyx/bxp4gzrPBgQDs4Q+tk=
X-Received: by 2002:a5d:604c:0:b0:236:6deb:6d31 with SMTP id
 j12-20020a5d604c000000b002366deb6d31mr29413383wrt.282.1667785856332; Sun, 06
 Nov 2022 17:50:56 -0800 (PST)
MIME-Version: 1.0
References: <20221106161443.4104-1-wens@kernel.org> <CAMdYzYomgwo3RiUr4pptOD=AUgUS4f6Aqtio3agQP2F-bm2WZQ@mail.gmail.com>
 <CAGb2v64vKbgZxZUyVSdTfzuukHeUdK-8ymxUVGYg=GGShY6O-g@mail.gmail.com>
In-Reply-To: <CAGb2v64vKbgZxZUyVSdTfzuukHeUdK-8ymxUVGYg=GGShY6O-g@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 6 Nov 2022 20:50:43 -0500
Message-ID: <CAMdYzYpXtMocCtCpZLU_xuWmOp2Ja_v0Aj0e6YFNRA-yV7u14g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: Add dma-names to UART
 device nodes
To: wens@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221106_175100_844934_93CBD614 
X-CRM114-Status: GOOD (  21.61  )
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

On Sun, Nov 6, 2022 at 8:28 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> On Mon, Nov 7, 2022 at 8:52 AM Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > On Sun, Nov 6, 2022 at 11:15 AM Chen-Yu Tsai <wens@kernel.org> wrote:
> > >
> > > From: Chen-Yu Tsai <wens@csie.org>
> > >
> > > At least one implementation, Linux, requires "dma-names" properties
> > > be used together with "dmas" to describe DMA resources. These are
> > > currently missing, causing DMA to not be used for UARTs.
> > >
> > > Add "dma-names" to the UART device nodes.
> > >
> > > Fixes: a3adc0b9071d ("arm64: dts: rockchip: add core dtsi for RK3568 SoC")
> > > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> >
> > Enabling dma globally can cause some interesting issues, have you
> > tested this fully?
>
> It seems to work OK with the Bluetooth controller, though I'm not running
> extensive transfers over it. Scanning both traditional and LE works, and
> does exercise the DMA controller.
>
> If your worried about the DMA controller running out of channels and
> impacting other peripherals, the DMA controller for the UARTs is only
> shared with other UARTs, SPI, and PWM (which the kernel doesn't support
> DMAing to). The UART and SPI drivers can fall back to PIO if DMA isn't
> available.

Nah, enabling it for bluetooth is fine because you have flow control.
My issues have been on channels without flow control. Without DMA it
simply drops messages or the channel hangs until you close and reopen
it. With DMA, when an overflow locks up the channel it is usually
unavailable until the board is rebooted.

It's the main reason I've stopped daisy chaining boards to each other,
when the board powers off the pinmux pulls go crazy just long enough
to lock up the other end. It sometimes happens with reboots and large
data bursts as well.

I'd only enable them on bluetooth channels for the time being because of this.

>
> So this isn't like on the RK3399 and prior chips, where it was shared with
> audio, and exhausting the DMA channels would cause audio to not probe.
>
> Regards
> ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

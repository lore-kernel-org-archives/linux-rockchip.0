Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 747E5C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Oct 2022 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3g+ukDG5lMoRQrY765Q1Cxb9IBa37c5hZEbmlNXF2k=; b=KRGarcLE+oUbhP
	b9g7GPjm6LW80pUZvTDOXs8TT7qHDrAiOYpgHpu/k73nflETeEBVclvzRk6zIKFAQGV8cilwtl1w8
	aczy4GS+pjntYerLzMZQLC7e5S8owt2pRFjoJmRvgvycRhP6NsRGj+x3bPMTR6m2aC/v00CBVqUg7
	LqDn5wXcVQ1vlSq/Pe9flGm7Ngahoz+DTwa7wC77YSuew/AtRhzlpIrYzRshdVqSeqkqZfMua2MKp
	xAPwH4tuEscsox2/vDXSo285sFUsiu2gWR0/L6Z+vaf8Mm5HIRROd1aPlYpjZtCpJKxbJO9QTQUgk
	yEwwm98M2GSQi1IQoW5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojmCx-00HRln-HG; Sat, 15 Oct 2022 18:48:27 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojmCm-00HRjt-LJ; Sat, 15 Oct 2022 18:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=udmaLLcNhRHnKTv61FxpOiYd0OSEhIFGaRKc/ocnt9s=; b=XwZJSMysrFPcABiCKKHg8P3A26
	YH7mmKg7rvv3fsw7CbSyvSC4nY5k9V9gFJ/Gvn9Ft/P2qYYq2F4Sry9idioEVKyAHx7h72UEzDjY1
	4p7Iee9kTxF1sqmEn6PKF2AuSAFDWl1wG5m21l/D183qJCw9ZzlIRIpgYvtm3+DK2OuTDFdm1laYc
	ROMPVYGhYLMCWjFjgT04fVxRI6DISLvFAjocpEnblcookK8cXfOP/kzOLs45lYvf3Ar26XIy95H7d
	Y6AXByEwGE5cXIvYkkgohBFDuFbgz707Ir/zym7q7yMi/Fv6SBP6xS2sFWPDkjvRDLJsaJd6nYybw
	ebOHnzYg==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ojmCV-007BlU-1r; Sat, 15 Oct 2022 20:47:59 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ojmCU-003lRs-1c;
	Sat, 15 Oct 2022 20:47:58 +0200
Date: Sat, 15 Oct 2022 20:47:58 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Dan Johansen <strit@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>,
	Dongjin Kim <tobetter@gmail.com>
Subject: Re: [PATCH v3 00/13] Add support for the Hardkernel ODROID-M1 board
Message-ID: <Y0sAXpecR7AVSOBI@aurel32.net>
Mail-Followup-To: Dan Johansen <strit@manjaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>,
	Dongjin Kim <tobetter@gmail.com>
References: <20220930051246.391614-1-aurelien@aurel32.net>
 <8e84786d-8ae9-0f51-3438-24fb340199c6@manjaro.org>
 <Y0GA92rYss1Wslgr@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y0GA92rYss1Wslgr@aurel32.net>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221015_114816_720616_1E1A7B16 
X-CRM114-Status: GOOD (  28.37  )
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

On 2022-10-08 15:53, Aurelien Jarno wrote:
> On 2022-10-08 14:11, Dan Johansen wrote:
> > 
> > Den 30.09.2022 kl. 07.12 skrev Aurelien Jarno:
> > > On the ODROID forum, Dongjin Kim said he is not planning to submit a new
> > > version of the patchset adding support for the Hardkernel ODROID-M1
> > > board. I therefore decided to address the issues reported during the
> > > initial review, and I also did some small fixes either because some
> > > things changed in the meantime on the kernel side or because I noticed
> > > some warning or issues when using the hardware.
> > > 
> > > I continued writing some additional patches to complete the ODROID M1
> > > DTS to almost fully support the hardware, the drivers being already
> > > present in the kernel.
> > > 
> > > This new version includes feedback from the linux-rockchip mailing list
> > > and from the Odroid forum.
> > > 
> > > Changes since v2:
> > > * Renamed "Rockchip RK3568 Hardkernel ODROID-M1" into "Hardkernel Odroid
> > >    M1" and fix the sorting.
> > > * Fix sorting of arch/arm64/boot/dts/rockchip/Makefile
> > > * Collected Acked-by and Tested-by
> > 
> > Even though I added my Tested-by to this series, it seems I didn't test it
> > on eMMC.
> > 
> > This fails to boot for me on eMMC, but works on SD card and NVMe.
> 
> Thanks for the feedback. I do not have an eMMC, so this the only part
> from the patchset that I haven't been able to test.
> 
> First of all, which version have you tested? The v2 includes fixes for
> the eMMC, there was a conflict with the NOR flash. If the problem is
> still there in the v2, could you please send the boot log or the error
> message?

Sorry I meant v3 above. Anyway in the meantime I have bought an eMMC,
and I confirm that:
- it does no work with the v2 due to a conflict with the NOR flash
  driver
- it does work with the v3

Therefore can you please retry with the v3?

Thanks
Aurelien

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B33CCC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Oct 2022 13:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikydokMlhKH2UBj1alsRGq+sSUnMttwodMTaU9r04PE=; b=B6J0rROra/XXTq
	yDVfypSMdWbccSJfha375JAJU3gvgKlOs7Mbg782N+5sRff4Mv8XlaSaHSuxGGOEeesJHs+EsXTjX
	JdHrHpZuHZBLJ6x9GujKyPJstp5QR7HHyz9MEPoDk4SoqckS6U1anAdEyuywhkvqdo0iTlxxpTwRu
	1WA//6rmCJTPWBT+hcgfv63ST57DaeybGfFbTDHnAiNUZcZj6sw0WlYqRALROpFHaZXN04nkTbCAm
	nQl6DBV0bIiCif58aQquhW3dhJeCZSxIfhna5H7xuc9B4AJML2JF9OqUQqJXHRaPttDH+7bJnPI/I
	Xy7xOVlWI3h/FseFuGpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohAHX-00DKbG-DA; Sat, 08 Oct 2022 13:54:23 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohAHL-00DKa3-OQ; Sat, 08 Oct 2022 13:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=Zs3yse/FCc/d/dZqMfl/7G2TNvLufktmf9MIa0JGpys=; b=UFvvdHiVxRouMXUh+R18sax4A7
	K/xKg4nWLVld9dBRwZatPGbocpqoozbMOIAbhonSn6953ElnavnoVuWW8oqraZtM7jBl5Sy5zCUPA
	pps9CdY4CabpcvC1IGEOYuxpP8aOBGTCb2AZ1uWlXYBuKe7q3ojlaciEh4hJ6DIOSeitCZ5cmrwh2
	fHB6fyI51TObKQgBPtMym1DRUEY1fqByGJIM02dzpyO0pWRIBCtDbwuMoUaaTB/C4oV6rrOjCvsod
	sjSEn9qP/le7yP8UDBd6Yy43zDcK2Ee5Zhs8KF7ruZdI1z9US0wI/GUUIil3yHHsnfOi7AWULYV+8
	5HUrJdag==;
Received: from aurel32 by hall.aurel32.net with local (Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ohAH9-0022Yw-9i; Sat, 08 Oct 2022 15:53:59 +0200
Date: Sat, 8 Oct 2022 15:53:59 +0200
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
Message-ID: <Y0GA92rYss1Wslgr@aurel32.net>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e84786d-8ae9-0f51-3438-24fb340199c6@manjaro.org>
User-Agent: Mutt/2.0.5 (2021-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221008_065412_551790_05BE679F 
X-CRM114-Status: GOOD (  22.75  )
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

On 2022-10-08 14:11, Dan Johansen wrote:
> 
> Den 30.09.2022 kl. 07.12 skrev Aurelien Jarno:
> > On the ODROID forum, Dongjin Kim said he is not planning to submit a new
> > version of the patchset adding support for the Hardkernel ODROID-M1
> > board. I therefore decided to address the issues reported during the
> > initial review, and I also did some small fixes either because some
> > things changed in the meantime on the kernel side or because I noticed
> > some warning or issues when using the hardware.
> > 
> > I continued writing some additional patches to complete the ODROID M1
> > DTS to almost fully support the hardware, the drivers being already
> > present in the kernel.
> > 
> > This new version includes feedback from the linux-rockchip mailing list
> > and from the Odroid forum.
> > 
> > Changes since v2:
> > * Renamed "Rockchip RK3568 Hardkernel ODROID-M1" into "Hardkernel Odroid
> >    M1" and fix the sorting.
> > * Fix sorting of arch/arm64/boot/dts/rockchip/Makefile
> > * Collected Acked-by and Tested-by
> 
> Even though I added my Tested-by to this series, it seems I didn't test it
> on eMMC.
> 
> This fails to boot for me on eMMC, but works on SD card and NVMe.

Thanks for the feedback. I do not have an eMMC, so this the only part
from the patchset that I haven't been able to test.

First of all, which version have you tested? The v2 includes fixes for
the eMMC, there was a conflict with the NOR flash. If the problem is
still there in the v2, could you please send the boot log or the error
message?

Thanks
Aurelien

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

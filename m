Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 433A9C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 10:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJevKPB2+75O6TdnI/1/o8Fnk9NhTd+9j6vF59YBmtc=; b=OpSq2lsqbbrPS8
	s70dkAx5iucmE0B/US/c5sjZnz+rinI24X1uEIoebWXMaf8i8HAhBNcd5wYOrn683bJx0ky5vqm5O
	35YJkw14yA3OMCTi35Iroi7jOWc7J0Xbdw/vjA9NXW2a0RDeve/tJDaok3OpSxG80dyx/mCYCr6yi
	rKmBOCHWBAo3V+5QVv/gmSkXILy+x82xVuLSdx1BXplp9og3x4TK0tlzNj2PciwxpPtq5albpsq+m
	cBhDhhDIVxNLDmX/VI7pgMocAtp0akxTu2SdQvEYlCBEpUcWfQsNrzRk+925u22bXSR95K0Wnqllt
	W10C/WnZNDJKv1z4BJSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd8W1-002pqC-OD; Sat, 09 Apr 2022 10:40:25 +0000
Received: from mail.manjaro.org ([116.203.91.91])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd8Vq-002plo-1B; Sat, 09 Apr 2022 10:40:15 +0000
Message-ID: <ba60121a-a120-b717-6a2f-7883685d17e6@manjaro.org>
Date: Sat, 9 Apr 2022 12:40:08 +0200
MIME-Version: 1.0
Subject: Re: Aw: Re: [PATCH] arm64: dts: rockchip: Fix clocks for rk356x usb
Content-Language: da-DK
To: Frank Wunderlich <frank-w@public-files.de>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220409075147.136187-1-linux@fw-web.de>
 <trinity-71c38625-1a00-47d7-8e23-4f33f25a997a-1649499268581@3c-app-gmx-bap35>
 <9183927.T7Z3S40VBb@phil>
 <trinity-8384790e-d2aa-4041-b4e9-aba1130d8577-1649500371045@3c-app-gmx-bap35>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <trinity-8384790e-d2aa-4041-b4e9-aba1130d8577-1649500371045@3c-app-gmx-bap35>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_034014_300363_652F1638 
X-CRM114-Status: GOOD (  13.89  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Den 09.04.2022 kl. 12.32 skrev Frank Wunderlich:
>> Gesendet: Samstag, 09. April 2022 um 12:23 Uhr
>> Von: "Heiko Stuebner" <heiko@sntech.de>
>
>> ok, so do you want to send a v2 including that change?
>> Alternatively I can also add this change when applying.
> imho the best way will be that peter includes my patch in his
>
> "arm64: dts: rockchip: add rk356x dwc3 usb3 nodes"
>
> https://patchwork.kernel.org/project/linux-rockchip/patch/20220408151237.3165046-4-pgwipeout@gmail.com/
>
> i just posted the fix for those who want to test his series on 5.18 including himself.
So the issue is only with usb 3 ports, not usb 2 ports?
>
> but of course if this is not the right way, i post a v2.
>
>> Also for educational purposes, the format for referencing a commit
>> you're fixing would be
>>
>> Fixes: 33fb697ec7e5 ("usb: dwc3: Get clocks individually")
>> Signed-off-by: ....
> as the patch not really broke current mainline state, i thought Fixes-tag is not right.
> Imho only the rk356x-usb-patch is not compatible with 5.18 due to this change, but this is not applied yet.
>
> regards Frank
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

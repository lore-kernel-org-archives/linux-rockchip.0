Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4087CCD5BAE
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 11:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WGF9Dp6CB6btkjfyNBfRDPz0Du3TINoA9M2pbr7Qs20=; b=r8ZlsS/XIkJs2gZkTCIzYsath6
	KZuX6v+sKxtV3t38oQwfuj+3QrcWPsr+8iH3GlRGCt1vibE00GbsoaciCmXAMqmlXpBfcGcjKH/Xi
	eE2jr2WqrjXZcBsK1Yn9geBh1Zg5/ejrM/eV7wnmTL+QbbHZyVxeQf+fYoTsYTq9xEkqLY1d5aXw4
	qcePfpnjFVKmawvcf3Nb1PbCw1EVS+WncJUx8RFnbt9KLuoU7B5Go8Mwh2we8eRAwTXDnmWLfspfy
	hA2GFbT7QgE2asS9XGn1GDmKswZZnBosvdXqeW2N9ABhscFnfVI+AIEejyD2ZB7BzEETEOdbPETku
	kvffRfpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smB6A-00000008Czi-1l6t;
	Thu, 05 Sep 2024 11:56:26 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smB56-00000008Ckb-3XpR;
	Thu, 05 Sep 2024 11:55:22 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1725537318;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7lrJXO1W4YN3/zquz/ykgMmTRr2bRbz5txPQeyarbwQ=;
	b=d6cDH/VFE0XpvelPCCctGpR1Id/Tm9O/1zoppYApE8HNE0MplV0/rqsvTKtUeOW8V6ifuY
	8WQ5GYyIdQzlHL/A+rOGeSZ8m2GsHaSNszHvndNPRiceSfuRCVMFWTrkcgbweGGgzqrpLq
	xvJGuk2omZC7HYsxuxD54TxNclRTfW5/aJ4KoSncyw8VU9Y1ocwlmPGp2UmN5eEzdF2EMB
	mGeD4CMA8a99v2qp+IfYaL//3L0gPOSl+ZRf+9jOT8nC1KXqAuwrCKHzjF/vFpA7XIUxBu
	EuLj0G55GGxt8dtVjBQr+nbrZ7q2DGk7fEVjRoPu2lMRL0MYR6vLVAa4Liqvsg==
Date: Thu, 05 Sep 2024 13:55:18 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add a few aliases to the PineTab2
 dtsi
In-Reply-To: <6b51f810-438c-42fe-92c2-87966906b534@kernel.org>
References: <987e68d1c5e9a0cc56d730aec87246aa5ab8ea14.1725535770.git.dsimic@manjaro.org>
 <c820085c-a4f4-4d03-9df8-733a79e911c0@kernel.org>
 <946b8248f5b282a8532c8532a3eda98e@manjaro.org>
 <6b51f810-438c-42fe-92c2-87966906b534@kernel.org>
Message-ID: <48e02d2d4d50892e8ea32975b2017195@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_045521_213309_1A348449 
X-CRM114-Status: GOOD (  14.67  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024-09-05 13:48, Krzysztof Kozlowski wrote:
> On 05/09/2024 13:43, Dragan Simic wrote:
>> Hello Krzysztof,
>> 
>> On 2024-09-05 13:39, Krzysztof Kozlowski wrote:
>>> On 05/09/2024 13:32, Dragan Simic wrote:
>>>> Sprinkle a few commonly used aliases onto the PineTab2 dtsi file, to
>>>> improve
>>>> its readability a bit, to make it easier to refer to the actual 
>>>> nodes
>>>> later,
>>>> if needed, and to add a bit more detail to some of the labels.
>>>> 
>>>> No functional changes are introduced, which was validated by
>>>> decompiling and
>>>> comparing all affected board dtb files before and after these 
>>>> changes.
>>>>  When
>>>> compared with the decompiled original dtb files, some of the 
>>>> phandles
>>>> in the
>>>> updated dtb files have different values, and the updated dtb files
>>>> contain
>>>> some additional phandles and additional symbols that come from the
>>>> introduced
>>>> aliases, but they still effectively remain the same as the 
>>>> originals.
>>>> 
>>>> Suggested-by: Diederik de Haas <didi.debian@cknow.org>
>>>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>>>> ---
>>> 
>>> Unused aliases do not improve readability, so for me this change is
>>> making code worse without valid reason.
>> 
>> Then why do we already have, for example, unused "rk817_charger:
>> charger"
>> aliases in quite a few board dts(i) files?  If those are actually seen
> 
> Ask contributors...

That would be a lot of work for next to nothing.  Actually, I believe
those aliases were simply copied and pasted, at least when it comes to
the "rk817_*" aliases that are unused without doubt.

>> as
>> redundant, we should remove all of them.
> 
> They are already there, so dropping them is close to unnecessary churn.
> And quite a lot of work to investigate the reason behind EACH label.

Hmm, it's true that a lot of work would be needed.  On the other hand,
how about adding these aliases to the PineTab2 dtsi for the sake of
consistency with the other similar board dts(i) files?  For example,
grepping for "rk817_charger", which is used as an alias in all other
dts(i) files for boards that use RK817, currently omits the PineTab2
dtsi.  I see that as a downside that this patch attempts to improve.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

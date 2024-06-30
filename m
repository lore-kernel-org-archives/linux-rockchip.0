Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59028C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 12:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7+ZnAT++a0LRXPCFEeBRU++4UGMSh4AULohPxBRoF2s=; b=FZGwAuRh+HHrOCnTkkCkYIwmoy
	qvKYkdGt4V9j7/LeKYy4M4cCmsANPoJ1X1DZfloFZ8mz9av05w1aCNGkJLswpBMMWoVgvYurqD6Ne
	48wBVtC5gR/JNhul0c9/y3PkAOuNqstVN7woOR8FGsYQD/8k4dWWgo+MRmrxV9sRUeOJMyWZRhDZ2
	s2KYzh0xj5jYVUiTX9oL/3se2WY3P111BpMnHjdQ2Xb6CqBWVMYL8nuHRKxB0bOZXFUJpAmEfXfnn
	uePEUXfRosuVY5dROI1QfgwPYptZcoK2ltxPINVdIUfaFIFsC621enTXuWP21TYjhdQobbtzkkADJ
	GOaCHlKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNtIo-00000000LoL-2Ip8;
	Sun, 30 Jun 2024 12:05:06 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNtId-00000000Ln3-0Iet;
	Sun, 30 Jun 2024 12:04:57 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719749090;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DFDAT09nN49Spp46jcoBUcRUG83635qOZGI6QRXikpo=;
	b=xijdSS3akntF2fpE3PdMZh3GNMO6DX61vCUYCAoN0tFC89r1D3dgt9kEdGGe9tFjf98yKq
	7hnO+UNGmTIhU9ANjl14VBsd0uf6d8CjMQqIQksul6YiX89oX1LvnjrimgWEdGrfIKEDSf
	yvwFRYyy+2OIA+FbxIrkMxKiB43i9WFn0U49sAUBbupGm3z4C5iVmbVUHCc2LHictkLJm5
	VjPKeXK+yhZl7Ksg9TrXb0EKnSiXMexw0z1m+QJyKG9DqvoCOp9z6ui+1B0ZbWuy1vjpKn
	5HqDVetACiLsE2pWWIlJmTt8flFvcQlQSrNVzqQYt7Wh3DXeqcUU9gSp0vxzEQ==
Date: Sun, 30 Jun 2024 14:04:50 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add GPU OPP voltage ranges to
 RK356x SoC dtsi
In-Reply-To: <2442162.AJoTavkB1d@bagend>
References: <bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org>
 <2442162.AJoTavkB1d@bagend>
Message-ID: <b8951ac4e29184fa35919c6ab85b8f87@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_050455_746524_7FFE8651 
X-CRM114-Status: GOOD (  33.94  )
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

Hello Diederik,

On 2024-06-30 00:01, Diederik de Haas wrote:
> On Saturday, 29 June 2024 18:39:02 CEST Dragan Simic wrote:
>> Add support for voltage ranges to the GPU OPPs defined in the SoC dtsi 
>> for
>> RK356x.  These voltage ranges are useful for RK356x-based boards that 
>> are
>> designed to use the same power supply for the GPU and NPU portions of 
>> the
>> SoC, which is described further in the following documents:
>> 
>>   - Rockchip RK3566 Hardware Design Guide, version 1.1.0, page 37
>>   - Rockchip RK3568 Hardware Design Guide, version 1.2, page 78
> 
> That was interesting to read, thanks.
> Now I understand the difference between rk809(-5) and rk817(-5).

I'm glad it was useful. :)

> But AFAIUI the above description described why there were separate 
> tables for
> rk809 and rk817 in v1. But that was dropped in v2. So it seems to me 
> the
> (commit) message should be updated accordingly?

I also thought about removing that description in the v2, but it 
actually
doesn't hurt to provide an example of what the GPU OPP voltage ranges 
are
useful for.

> I also expected that (for v1) there would be a similar construct as was
> recently added for rk3588. But I should interpret Heiko's comments as 
> that
> strategy should not be applied to rk356x?

The trouble with applying the same strategy, which was the initial plan
for the v1, is that the need for voltage ranges depends on one of the 
board
features, i.e. the GPU and NPU voltage regulators.  As such, it still 
has
to affect the RK356x SoC dtsi, which may warrant separate 
rk356x-gpu-range.dtsi,
for example, but the troubles would arise later if we had another 
similar
dtsi variant, because we'd then have to split the SoC dtsi into four 
variants,
which would hardly be warranted or sustainable.

That's why the v1 went with a macro instead.  However, there are already
numerous unresolved examples of what that macro tries to solve in the 
RK3399
SoC dtsi files, so the conclusion was that we need a more systemic 
solution,
which will be the upcoming debugging facilities in the OPP handling.  
Those
facilities will allow us to detect possible issues with the 
misconfigured
DT voltages on all SoCs and boards, which the v1 macro would have solved 
in
another way, but only for the RK356x.

>> The values for the exact GPU OPP voltages and the lower limits for the 
>> GPU
>> OPP voltage ranges differ from the values found in the vendor kernel 
>> source
>> (cf. downstream commit f8b9431ee38e ("arm64: dts: rockchip: rk3568: 
>> support
>> adjust opp-table by otp")). [1][2]
> 
> Why? In their latest update Rockchip changed it to the values as 
> specified in
> the links. My assumption is that based on extensive testing they did 
> and/or
> the feedback they got from the client/customers, they felt the need to 
> change
> it to the values they did.
> 
> I think we should follow their values unless we have an explicit and 
> very good
> reason to deviate from that.

There's a rather good reason, which was provided in the patch 
description
right below, but I can see you've already disagreed with it. :)

>> However, our values have served us well so far, so let's keep them for 
>> now,
> 
> And I don't think that qualifies as a (very) good reason.
> I think it's reasonable to assume that far more (stress) testing has 
> been done
> with the downstream code, then has happened with the upstream code.
> Hopefully that'll change in the future, but I don't think we're there 
> yet.

They key in the patch description is "for now". :)  I'd much rather 
leave
the exact voltages unchanged for now, and get that covered a bit later, 
either
in a separate follow-up patch (or in the v3 that would be a two-patch 
series,
as the patch 2/2), which would be good for possibly doing any regression
tracking later, or do it later as part of supporting the CPU and GPU 
binning.

> When we/upstream adds npu support, I think we should also follow 
> downstream's
> OPP values, unless we have a very good reason to deviate from that.

That would make sense, especially because we haven't had the NPU 
supported
before in the mainline.

>> until we actually start supporting the CPU and GPU binning, together 
>> with
>> the related voltage adjustments.
> 
> I may not fully understand what you mean by that, but I think it's 
> (again)
> reasonable to assume that Rockchip has far more insight into this then 
> we do.

Basically, I meant that (my) plan is to work on supporting the CPU and 
GPU
binning, at which point the voltages would also be adjusted according to
the downstream.

>> [1] 
>> https://github.com/rockchip-linux/kernel/commit/f8b9431ee38ed561650be7092ab
>> 93f564598daa9
>> [2] 
>> https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650
>> be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FE11C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 20:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oP8MhrMAt5f8UmNclm/nTsH44dJSf5aaXO8KOeYPs5c=; b=2yNzvXXRAo/bN+7jVoeEzdIOqh
	AJro6MwmKAqKYyncWT5i5oB+0SuIN6wXLD8wXpmbm7AiEopN81MhwuSFEbsD9jiS/dtSwC5QjOObF
	k7h+lRI6mw3crfB1Cu/PjAykjVsoA+ebGmYCF+dBX+Ulq065SMUhrh461CfaPpmgs/UM5C6KYrCVV
	0+VvgMLYB8keC3Ao6WNTeruFAg4GY349lUM3Ws+BD9IsqJq0pzcrgKzOzsfPVwLWRtcvuACZ/RtNT
	8/zSM6iegFK3A6jVujcS42MFDHwQ4nR2WLNdz2EOnexJ7aGEdFYwMqq3SFg6Wi3tjQ78nmIbbGrEv
	I3eD5t0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpZt5-0000000B0wF-0rkI;
	Wed, 27 Mar 2024 20:28:43 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpZsz-0000000B0sL-3COD;
	Wed, 27 Mar 2024 20:28:40 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711571312;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rgWZAPKKvj7qqanrCLdSrwL14cWosCAVk9cs/TL+9RM=;
	b=C0WAxq46JpAfxaOMiH1lQSZjMLfUsJvBZwddwICZ9V3X0zmkEkjZTFkT1srbZelkod2ruy
	1iX6hkuwF3Nw6nlHDhEjN2cu7Xn/b2rKNH7NtzmGqNBz9t1E+Z2I4lKln8831sxu079Qh4
	JssB7tAb8ioAEn/VRq+1o28BmlCldrahd6evNu6Hw311O1RPiXod+9OC/JUSs0QmkZfJ28
	8ScY1OTJrrNVDgHIZhN/HYo435dKepgYT4awwm898z3IBLxHJwRYslFMzEGd95Q+qsPPPA
	Elz3zBIGhcxMUMY7cxY3618LH7eOEwwD9qa935u/rzSbFkYOfHn4P0mSfhsPJA==
Date: Wed, 27 Mar 2024 21:28:31 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 boris.brezillon@collabora.com, linux-kernel@vger.kernel.org,
 kernel@collabora.com, sebastian.reichel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: quartzpro64: Enable the GPU
In-Reply-To: <6007945.alqRGMn8q6@diego>
References: <0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org>
 <6007945.alqRGMn8q6@diego>
Message-ID: <e6cb0dea9ea79f989d5a502b5ea6366e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_132838_281462_C404A871 
X-CRM114-Status: GOOD (  12.47  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTAzLTI3IDExOjI5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBNb250YWcsIDI1LiBNw6RyeiAyMDI0LCAxNzoxOTowNCBDRVQgc2NocmllYiBEcmFnYW4g
U2ltaWM6Cj4+IEZvbGxvd2luZyB0aGUgYXBwcm9hY2ggdXNlZCB0byBlbmFibGUgdGhlIE1hbGkg
R1BVIG9uIHRoZSByazM1ODgtZXZiMSwgCj4+IFsxXQo+PiBkbyB0aGUgc2FtZSBmb3IgdGhlIFBp
bmU2NCBRdWFydHpQcm82NCwgd2hpY2ggdXNlcyBuZWFybHkgaWRlbnRpY2FsIAo+PiBoYXJkd2Fy
ZQo+PiBkZXNpZ24gYXMgdGhlIFJLMzU4OCBFVkIxLgo+PiAKPj4gVGhlIHNsaWdodCBkaXNhZHZh
bnRhZ2UgaXMgdGhhdCB0aGUgcmVndWxhdG9yIGNvdXBsaW5nIGxvZ2ljIHJlcXVpcmVzIAo+PiB0
aGUKPj4gcmVndWxhdG9ycyB0byBiZSBhbHdheXMgb24sIHdoaWNoIGlzIGFsc28gbm90ZWQgaW4g
dGhlIGNvbW1lbnRzLiAgVGhpcyAKPj4gaXMKPj4gb2J2aW91c2x5IHNvbWV0aGluZyB0byBiZSBp
bXByb3ZlZCBhdCBzb21lIHBvaW50IGluIHRoZSBmdXR1cmUsIGJ1dCAKPj4gc2hvdWxkCj4+IGJl
IGZpbmUgZm9yIG5vdywgZXNwZWNpYWxseSBiZWNhdXNlIHRoZSBRdWFydHpQcm82NCBpc24ndCBh
IAo+PiBiYXR0ZXJ5LXBvd2VyZWQKPj4gYm9hcmQsIHNvIGxvdyBwb3dlciBjb25zdW1wdGlvbiBp
c24ndCBwYXJhbW91bnQuCj4+IAo+PiBbMV0gCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LXJvY2tjaGlwLzIwMjQwMzI1MTUzODUwLjE4OTEyOC01LXNlYmFzdGlhbi5yZWljaGVsQGNv
bGxhYm9yYS5jb20vCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4KPiAKPiBhcyBsb3JlLmtlcm5lbC5vcmcgYW5kIHRoZXJlZm9yZSBiNCBzZWVt
cyB0byBiZSBvbiB2YWNhdGlvbiB0b2RheSwgeW91Cj4gZ2V0IGEgdmVyeSBwZXJzb25hbCAiYXBw
bGllZCIgbWVzc2FnZSA7LSkgLgo+IAo+IFNvLCBhcHBsaWVkIGZvciA2LjEwIGFmdGVyIHRoZSBj
b3JlIHJrMzU4OC1ncHUtc2VyaWVzIGZyb20gU2ViYXN0aWFuLgoKT2gsIHRoYW5rIHlvdSB2ZXJ5
IG11Y2ggZm9yIHRoaXMgc3BlY2lhbCBtZXNzYWdlLiA6KQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

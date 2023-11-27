Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 303EFC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 09:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EecymjPGTE5c2fYG5XgAEWmfxDRpK78QHr0A4qO5Tds=; b=EC49dNt7TyVbdV
	A1u0FK7cAaNmhu5sHoMj/vhpPBHTRwhcZafFeV4Mo4toyTX/73I3Fz3B+GBMbNSpLn6y/kNPRcpdZ
	McsFtXbB+EJFIJjT1G56FfdF3cWLTcczmX2nDAcW1HRQlkixW36i7c/NwmryR2qJv1k9miJgkWIPW
	4ZK1PTJj/ZaHU7vWA/eJjcA51gOLW1fTbUC4athqbq22i87rkGM05ddlsajenyXizukXQujD4krub
	Kps7SWiHfNfthS8mhmcRt4Vnvbwyglp2Y4j//GaFCkqgJdvaNhRRt25i8/5d5vwqWjLhMfQP1A1Ke
	gQbaqHB4qZc/eXKeuNVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7YOi-0021Ci-13;
	Mon, 27 Nov 2023 09:59:24 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7YOc-0021BA-0n;
	Mon, 27 Nov 2023 09:59:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BE6D42F4;
	Mon, 27 Nov 2023 02:00:03 -0800 (PST)
Received: from [10.57.4.90] (unknown [10.57.4.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE4BE3F73F;
	Mon, 27 Nov 2023 01:59:14 -0800 (PST)
Message-ID: <8aa2592d-5fc7-4ae2-a355-fcf46bb076de@arm.com>
Date: Mon, 27 Nov 2023 10:00:15 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to
 rk3399 GPU
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, daniel.lezcano@linaro.org
References: <20231127081511.1911706-1-lukasz.luba@arm.com>
 <14787054.VsHLxoZxqI@diego>
From: Lukasz Luba <lukasz.luba@arm.com>
In-Reply-To: <14787054.VsHLxoZxqI@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_015918_333265_B9377A86 
X-CRM114-Status: GOOD (  12.85  )
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

SGkgSGVpa28sCgpPbiAxMS8yNy8yMyAwOTo0MiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkg
THVrYXN6LAo+IAo+IEFtIE1vbnRhZywgMjcuIE5vdmVtYmVyIDIwMjMsIDA5OjE1OjExIENFVCBz
Y2hyaWViIEx1a2FzeiBMdWJhOgo+PiBBZGQgZHluYW1pYy1wb3dlci1jb2VmZmljaWVudCB0byB0
aGUgR1BVIG5vZGUuIFRoYXQgd2lsbCBjcmVhdGUgRW5lcmd5Cj4+IE1vZGVsIGZvciB0aGUgR1BV
IGJhc2VkIG9uIHRoZSBjb2VmZmljaWVudCBhbmQgT1BQIHRhYmxlIGluZm9ybWF0aW9uLgo+PiBJ
dCB3aWxsIGVuYWJsZSBtZWNoYW5pc20gc3VjaCBhcyBEVE1QIG9yIElQQSB0byB3b3JrIHdpdGgg
dGhlIEdQVSBEVkZTLgo+PiBJbiBzaW1pbGFyIHdheSB0aGUgRW5lcmd5IE1vZGVsIGZvciBDUFVz
IGluIHJrMzM5OSBpcyBjcmVhdGVkLCBzbyBib3RoCj4+IGFyZSBhbGlnbmVkIGluIHBvd2VyIHNj
YWxlLiBUaGUgbWF4aW11bSBwb3dlciB1c2VkIGZyb20gdGhpcyBjb2VmZmljaWVudAo+PiBpcyAx
LjVXIGF0IDYwME1Iei4KPiAKPiAyNjQwIGlzIGEgcHJldHR5IGFyYml0YXJ5IHZhbHVlLCBzbyBp
dCB3b3VsZCBiZSByZWFsbHkgaGVscGZ1bCB0byBkZXNjcmliZQo+IGluIHRoZSBjb21taXQgbWVz
c2FnZSwgaG93IHlvdSBhcnJpdmVkIHdpdGggdGhhdCBzcGVjaWZpYyB2YWx1ZS4KCkl0J3MgaW4g
dGhlIGFib3ZlIHBhdGNoIGhlYWRlci4gVGhlIHBvd2VyIGF0IDYwME1IeiBpcyB+MS41V2F0dHMs
IHNvIGZvcgptYXggZnJlcSBhbmQgbWF4IHZvbHRhZ2UgeW91IGdldCB0aGUgY29lZmZpY2llbnQu
IFRoZSBEVCBzY2hlbWEKZGVzY3JpYmVzIHF1aXRlIHdlbGwgaG93IHRoZSBjb2VmZmljaWVudCBp
cyBjYWxjdWxhdGVkLiBJTU8sIHRoZXJlIGlzIG5vCm5lZWQgdG8gZHVwbGljYXRlIHRoYXQgZGVz
Y3JpcHRpb24gaGVyZSBbMV0uCgpIYXZlIHlvdSBjaGVja2VkIHRoYXQgZG9jdW1lbnRhdGlvbj8g
SXMgdGhlcmUgc3RpbGwgYW55dGhpbmcgdW5jbGVhcj8KSSBtaWdodCBlbGFib3JhdGUgYSBiaXQg
bW9yZSB3aHkgaXQncyBpbXBvcnRhbnQgZm9yIEdQVSB0byB0YWtlIHRoZSB0b3AKT1BQIGZvciBj
b25zaWRlcmF0aW9ucyAoZHVlIHRvIHRoZXJtYWwgb3BlcmF0aW5nIG1vc3RseSBvbiB0b3AtaGFs
ZgpPUFBzLCBidXQgdGhlIGN1cnZlIGlzIGEgYml0IGNvbnN0cmFpbmluZykuIFVuZm9ydHVuYXRl
bHksIHRoaXMgc2ltcGxlCm1vZGVsIGRvZXNuJ3QgYWxsb3cgdG8gcmVmbGVjdCB0aGUgbGVha2Fn
ZSBpbXBhY3Qgb3ZlciB0aW1lLiBJdCBkb2Vzbid0CmFsc28gYWRkcmVzcyB0aGUgY2hpcCBiaW5u
aW5nIGxvdHRlcnkuIEFsdGhvdWdoLCBpdCB3aWxsIGJlIHBvc3NpYmxlIGluCm5lYXIgZnV0dXJl
IHRvIGFkZHJlc3MgdGhvc2UgWzJdLgoKUmVnYXJkcywKTHVrYXN6CgpbMV0gCmh0dHBzOi8vZWxp
eGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2dwdS9hcm0sbWFsaS1taWRnYXJkLnlhbWwjTDk0ClsyXSAKaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGttbC8yMDIzMDkyNTA4MTEzOS4xMzA1NzY2LTEtbHVrYXN6Lmx1YmFA
YXJtLmNvbS8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

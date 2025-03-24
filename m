Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D74DC36008
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Mar 2025 09:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EoNsXSNehQu7M2ZN3ZS8t+1+w2ZTxoOMj1ZQT4bpVaI=; b=nyR+sZH4lqwsRZa1cKJAgafcNe
	7NQQ/NiQE78n1Jhai7hGqeyWxHXSCNkhuCz+8nmprkaemXeLjl/AWfHQj8OP6KjdLDdNRxgkLCo1U
	GknAQHP+QZJmLo2oysbydoaueJLUxbUcesZLOou6GdpE1wjLnW9GN3d2E7jU4HlXjpLukT3q0LCeo
	X4/gB58JbxpXJUKw2CZ7jFcxyjN+7Z5h19cUgeGmhaSzhGZi/sX+J9LcGq1qe9/6O8iNx77BahPMb
	KEGSv/dfT6xQyq/SyQsrNcnNefP9FicortpGZnAdDJrVLO2gjvmRkAjopEHEPo33laUvb47ycD88+
	h9UguG5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tweLr-00000002kZ9-2DFV;
	Mon, 24 Mar 2025 09:44:11 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tweEs-00000002jXI-0Cn3;
	Mon, 24 Mar 2025 09:36:59 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1742809015;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kFNrF1+QCqXJYQ2BxaXDZ6u0WsATr1kvUb16OTMEuz4=;
	b=EvPCPcEvEphlFm4vzCrED3mmJuyz5P3exj1vtXKjA5BDHBcTewltFvy66o4BOPEX8mz0kY
	rhEnfkbWToQg4L6QoDMvFRXwoTUGWwFn3deRY3BC2HrRqSzWS/u0M8ihvbzaM83vloTDjl
	+JfonB2rs1O5tFvPmSfj+u9sakL0xAzFBFWbLjeXqS9dnjSCDI1zzr2iBoUBnMiUxsIyYv
	SH3ITh28J/6HXzUkm3kEbDjz7JXTjKN3ENv4wf/cHFv5ptAyFgvQvDgHa7iYHJrSxCei5s
	aqFPjayZCyGU+6SsUlQox67BonrIV7Vwoa3eO0ZKvuaO+7aFoJl63rn68lV3Fg==
Date: Mon, 24 Mar 2025 10:36:54 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, stable@vger.kernel.org, Alexey Charkov
 <alchark@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Remove overdrive-mode OPPs from
 RK3588J SoC dtsi
In-Reply-To: <960c038ad9f7b83fe14d0ded388b42f7@manjaro.org>
References: <f929da061de35925ea591c969f985430e23c4a7e.1742526811.git.dsimic@manjaro.org>
 <71b7c81b-6a4e-442b-a661-04d63639962a@cherry.de>
 <960c038ad9f7b83fe14d0ded388b42f7@manjaro.org>
Message-ID: <460503eb831485ede9a49dcf226aef1b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_023658_321319_E6E36257 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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

SGVsbG8gUXVlbnRpbiwKCk9uIDIwMjUtMDMtMjMgMTE6MTksIERyYWdhbiBTaW1pYyB3cm90ZToK
PiBPbiAyMDI1LTAzLTIxIDEwOjUzLCBRdWVudGluIFNjaHVseiB3cm90ZToKPj4gT24gMy8yMS8y
NSA0OjI4IEFNLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+PiBUaGUgZGlmZmVyZW5jZXMgaW4gdGhl
IHZlbmRvci1hcHByb3ZlZCBDUFUgYW5kIEdQVSBPUFBzIGZvciB0aGUgCj4+PiBzdGFuZGFyZAo+
Pj4gUm9ja2NoaXAgUkszNTg4IHZhcmlhbnQgWzFdIGFuZCB0aGUgaW5kdXN0cmlhbCBSb2NrY2hp
cCBSSzM1ODhKIAo+Pj4gdmFyaWFudCBbMl0KPj4+IGNvbWUgZnJvbSB0aGUgbGF0dGVyLCBwcmVz
dW1hYmx5LCBzdXBwb3J0aW5nIGFuIGV4dGVuZGVkIHRlbXBlcmF0dXJlIAo+Pj4gcmFuZ2UKPj4+
IHRoYXQncyB1c3VhbGx5IGFzc29jaWF0ZWQgd2l0aCBpbmR1c3RyaWFsIGFwcGxpY2F0aW9ucywg
ZGVzcGl0ZSB0aGUgCj4+PiB0d28gU29DCj4+PiB2YXJpYW50IGRhdGFzaGVldHMgc3BlY2lmeWlu
ZyB0aGUgc2FtZSB1cHBlciBsaW1pdCBmb3IgdGhlIGFsbG93ZWQgCj4+PiBhbWJpZW50Cj4+PiB0
ZW1wZXJhdHVyZSBmb3IgYm90aCB2YXJpYW50cy4gIEhvd2V2ZXIsIHRoZSBsb3dlciB0ZW1wZXJh
dHVyZSBsaW1pdCAKPj4+IGlzCj4+IAo+PiBSSzM1ODggaXMgcmF0ZWQgZm9yIDAtODDCsEMsIFJL
MzU4OEogZm9yIC00MC04NcKwQywgYy5mLiBSZWNvbW1lbmRlZAo+PiBPcGVyYXRpbmcgQ29uZGl0
aW9ucywgVGFibGUgMy0yLCBBbWJpZW50IE9wZXJhdGluZyBUZW1wZXJhdHVyZS4KPiAKPiBJbmRl
ZWQsIHdoaWNoIGlzIHdoeSBJIHNwZWNpZmljYWxseSB3cm90ZSAic3BlY2lmeWluZyB0aGUgc2Ft
ZSB1cHBlcgo+IGxpbWl0IiwgYmVjYXVzZSBoYXZpbmcgYSBsb3dlciBuZWdhdGl2ZSB0ZW1wZXJh
dHVyZSBsaW1pdCBjb3VsZCBoYXJkbHkKPiBwdXQgdGhlIFJLMzU4OEogaW4gZGFuZ2VyIG9mIG92
ZXJoZWF0aW5nIG9yIHJ1bm5pbmcgaG90dGVyLiA6KQoKT2gsIG5vdyBJIHNlZSB3aGF0IHlvdSBh
Y3R1YWxseSB3cm90ZSBhYm92ZSwgd2hpY2ggSSBtaXNyZWFkIGEgYml0CmluaXRpYWxseS4uLiAg
SW4gZmFjdCwgdGhlIHVwcGVyIGFtYmllbnQgdGVtcGVyYXR1cmUgbGltaXQgaXMgdGhlCnNhbWUg
Zm9yIGJvdGggUkszNTg4SiBhbmQgUkszNTg4LCBhY2NvcmRpbmcgdG8gdGhlIGRhdGFzaGVldHM7
ICBpdCdzCmp1c3QgdGhhdCB0aGUgbG93ZXIgdGVtcGVyYXR1cmUgbGltaXQgaXMgbXVjaCBsb3dl
ciBmb3IgdGhlIFJLMzU4OEosCndoaWNoIHRoZSBwYXRjaCBkZXNjcmlwdGlvbiBzYXlzLgoKSSdt
IG5vdCBzdXJlIHdoZXJlIGRpZCB5b3UgZmluZCB0aGUgODAgdnMuIDg1IG9DIGRpZmZlcmVuY2U7
ICBwbGVhc2UsCnNlZSBhIGNvdXBsZSBvZiBzY3JlZW5zaG90cyBmcm9tIHRoZSBkYXRhc2hlZXRz
LCBsaW5rZWQgYmVsb3c6CgotIFJLMzU4OCBkYXRhc2hlZXQgdjEuNiAodjEuNyBpcyB0aGUgc2Ft
ZSk6IGh0dHBzOi8vMHgwLnN0LzhqMWEucG5nCi0gUkszNTg4SiBkYXRhc2hlZXQgdjEuMTogaHR0
cHM6Ly8weDAuc3QvOGoxbS5wbmcKClRoZSB2MiBvZiB0aGUgcGF0Y2ggaXMgY29taW5nIHNvb24s
IHdpdGggdGhlIHBhdGNoIGRlc2NyaXB0aW9uIGltcHJvdmVkCmFjY29yZGluZyB0byB5b3VyIHN1
Z2dlc3Rpb25zLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

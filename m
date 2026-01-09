Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 537EED26D8F
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 19:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCRnZz6KAXUe8MmSGCqMgaB5btiDt1C2UjF6ouME0x8=; b=2hCvYUWusf0pGr
	7jVzR6DzST6R0uRfavj2skWRr8XvHu0S5paCb7UqFFkeMobA/Yy2N6sm0EOYKc8825RQ+xwhp5TSg
	aw6jUO2eEaKYQsrzPGaqMYbigpL/egTl+EPd8u+USJdFTBjpJ0O+YM46JtUPWWtbCBffwr9kfGax0
	StOdezO5aN2m+Ft9QpnFdHwcTlYeOCWTY/5sZlv0LWWgyDY8t6ss79e40EG28Tq6MivrSiIBsYIqD
	9T29bJUVyaZCRNRsH8yy9B90uXXKPWfSTMFF+p/ozfnHvuITYCmImqghlpN8D/11sqU5PT0fF807T
	f+GW44wWcBjhPLaSvOrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veHjS-00000002ufA-2jo9;
	Fri, 09 Jan 2026 19:01:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veHjP-00000002udw-3rZT;
	Fri, 09 Jan 2026 19:01:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dh/vK8xe3zPatuuQ1IGcsu4BM9M6sSODFR2WoCbzXDw=; b=B+SZyvIallOxPNX4D2N6YceP71
	3Bv1hSnZPUWr1GE7gI19FizzWtp/F0XC37W/vwwfYmH0qeiSKQkNXnAzHq+nuAlRnqiIvGgA0Ex9H
	s48rNPkrsGMTLcUs5mg4PF99Ek5CrYaoDN9CoZWP6k3jUndng8QmBiECXSfzBwe9ccT1Dg3XkHtma
	8V03lF1CrYhe4kHKh55iybAcRQQr9qS9bxN2axEzeqBjyZBowP7XccL77aCNN5cRP+zvA1YgV4GzG
	nvPV2s8BzIucclxVPLoyVBvdjzAgBWK2x/nDjoFFcJOtOP+TgfwrELIykIGouBLg5xAU+l3+T9a2U
	UTfddRdQ==;
Received: from [192.76.154.238] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veHjN-001fbn-80; Fri, 09 Jan 2026 20:01:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: rockchip-spdif: Allow "port" node
Date: Fri, 09 Jan 2026 20:01:05 +0100
Message-ID: <4963354.V25eIC5XRa@phil>
In-Reply-To: <20260108224938.1320809-1-robh@kernel.org>
References: <20260108224938.1320809-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_110108_089386_A9F0AE1E 
X-CRM114-Status: GOOD (  14.22  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRG9ubmVyc3RhZywgOC4gSmFudWFyIDIwMjYsIDIzOjQ5OjM2IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgUm9iIEhlcnJpbmcgKEFybSk6Cj4gQWRkIGEgInBvcnQiIG5v
ZGUgZW50cnkgZm9yIFJvY2tjaGlwIFMvUERJRiBiaW5kaW5nLiBJdCdzIGFscmVhZHkgaW4gdXNl
Cj4gYW5kIGEgY29tbW9uIHByb3BlcnR5IGZvciBEQUlzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJv
YiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1
ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9zb3VuZC9yb2NrY2hpcC1zcGRpZi55YW1sIHwgMyArKysKPiAgMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3Mvc291bmQvcm9ja2NoaXAtc3BkaWYueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9yb2NrY2hpcC1zcGRpZi55YW1sCj4gaW5kZXgg
MzJkZWE3MzkyZThkLi41NmM3NTVjMjI5NDUgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL3JvY2tjaGlwLXNwZGlmLnlhbWwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvcm9ja2NoaXAtc3BkaWYueWFtbAo+
IEBAIC03MCw2ICs3MCw5IEBAIHByb3BlcnRpZXM6Cj4gICAgIiNzb3VuZC1kYWktY2VsbHMiOgo+
ICAgICAgY29uc3Q6IDAKPiAgCj4gKyAgcG9ydDoKPiArICAgICRyZWY6IC9zY2hlbWFzL2dyYXBo
LnlhbWwjL3Byb3BlcnRpZXMvcG9ydAo+ICsKPiAgcmVxdWlyZWQ6Cj4gICAgLSBjb21wYXRpYmxl
Cj4gICAgLSByZWcKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

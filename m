Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65C0DC77B7C
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jul 2025 20:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+BZMwbQs6k4Au+xVvK711v+y5uVcsw56Seof2ouy80=; b=jav1/da5JNEOcG
	BcmpcIVY11QCInnUznsULQH1gzBpiqmh3ZV0JUtR1sr6MV7jmP65uyVblLCJu1nUJjmaqJD7nTpoh
	DmAR5rof/yHwSMweKKOEsSHd/+bKI4NeDCtNPHUQ29QLpkj3VzAGNvZZAjqunkwCNQM2rrtn0RykH
	rdmPFs/Eo+7evia9B7aebGRiB3r68p/MK0Bs4q3M7jnJeTIFCgid3JDM69mgVvCnWqorUE/+BOCps
	LDItG3f5gPR40VyA67QsUU9aL6cbqo4cD4Bda1XM1S0xuViZtbfLZsyrYyGZAxTLO77k9LNm5mdz1
	dcfGLWrBShNhA+3GRX1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uX4GK-00000009X4r-1Dr4;
	Wed, 02 Jul 2025 20:41:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uX4GH-00000009X4U-43YV
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Jul 2025 20:40:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5B00D5C6432;
	Wed,  2 Jul 2025 20:40:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 814D0C4CEE7;
	Wed,  2 Jul 2025 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751488857;
	bh=hwwJv6iwQxx/+YBO40xNmcGnv/fZIAiYjW9TpAbks+U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PwPZbBY70um8QiEwJQThZIiRhlGlRKZDtiZZYcb/Fm+ZkuPe8pQiV+coeW2XL6QOr
	 j/pKDBKe0HC5Yndixit6vKSZbwRPKo175SIc5EAMwZDee6DQmjCNJ+dpa7RxxAWqUD
	 vb2ra0RCVh5PvZjc2PcpXHFQlaBrpMc70ne7oYfp3uARyKZo1Tx1YyGXn+aKLfICAI
	 TGuECNCR/hcfSeYVACCElUAj1SIF8LdtffRDjFwVcT4fQeHVmkj+wVInXfoVXFG95L
	 1nJ95aV5pQ+/yAZRRprHdX/9gArexABeMuhKHTFgK4iQZQq4benHGUzvRM5uAaG5h+
	 cenxbbPwkZYZA==
Message-ID: <15fb5256-b0ab-49f9-9ec0-e681a9412fde@kernel.org>
Date: Wed, 2 Jul 2025 22:40:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 1/5] dt-bindings: mfd: ti,bq25703a: Add TI BQ25703A
 Charger
To: Christopher Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>, "sre@kernel.org"
 <sre@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "robh@kernel.org"
 <robh@kernel.org>, "lee@kernel.org" <lee@kernel.org>
References: <20250626195343.54653-1-macroalpha82@gmail.com>
 <20250626195343.54653-2-macroalpha82@gmail.com>
 <20250627-lurking-amorphous-elephant-e14c7f@krzk-bin>
 <SN6PR1901MB4654D8420C9F65C8BE2D10ECA546A@SN6PR1901MB4654.namprd19.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <SN6PR1901MB4654D8420C9F65C8BE2D10ECA546A@SN6PR1901MB4654.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_134058_092558_28703887 
X-CRM114-Status: GOOD (  11.11  )
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

T24gMzAvMDYvMjAyNSAxNjozMywgQ2hyaXN0b3BoZXIgTW9yZ2FuIHdyb3RlOgo+IAo+IAo+PiBP
biBKdW4gMjcsIDIwMjUsIGF0IDE6NTjigK9BTSwgS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0Br
ZXJuZWwub3JnPiB3cm90ZToKPj4KPj4g77u/T24gVGh1LCBKdW4gMjYsIDIwMjUgYXQgMDI6NTM6
MzlQTSAtMDUwMCwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgo+Pj4gRnJvbTogQ2hyaXMgTW9yZ2FuIDxt
YWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPj4+Cj4+PiBEb2N1bWVudCB0aGUgVGV4YXMgaW5zdHJ1
bWVudHMgQlEyNTcwM0Egc2VyaWVzIG9mIGNoYXJnZXIgbWFuYWdlcnMvCj4+PiBidWNrL2Jvb3N0
IHJlZ3VsYXRvcnMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21v
cmdhbkBob3RtYWlsLmNvbT4KPj4KPj4gRGlkbid0IHlvdSByZWNlaXZlIHRhZz8KPiAKPiBJIGRp
ZCwgSeKAmW0gc29ycnkgYnV0IEkgdGhvdWdodCB0aGUgY2hhbmdlcyBzdWdnZXN0ZWQgd2VyZSBz
dWJzdGFudGl2ZSBlbm91Z2ggdG8gd2FycmFudCBhbm90aGVyIHJldmlldyBzbyBJIGRyb3BwZWQg
aXQuIEkgZGlkIGxlYXZlIGl0IG9uIHRoZSBvdGhlciBwYXRjaGVzIHRob3VnaC4gSWYgSSBzaG91
bGQgaGF2ZSBrZXB0IHRoZSB0YWcgSeKAmWxsIHRyeSB0byByZW1lbWJlciBuZXh0IHRpbWUuCgpX
aGljaCBjaGFuZ2VzPyBDb3ZlciBsZXR0ZXIgaXMgdmFndWUgLSBvbmx5IHNvbWUgc29ydCBvZiBj
bGVhbnVwIC0gYW5kCmFueXdheSBkcm9wcGluZyB0YWcgbmVlZHMgdG8gYmUgZXhwbGljaXQgd2l0
aCBhIHJlYXNvbi4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

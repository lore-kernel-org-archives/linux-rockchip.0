Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74589C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jan 2024 04:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ui2plOZdR097QfCk5VN7V1Dg3JdU0fzaroZ20J8mmvk=; b=TI/EiYRr1G1Frq
	zEYKxDrn+ea7SfB23wPac+vVTgenFi80AjVen4iV4uHm2Jdcb5QDWNZbjCUZ8Jrb1ZhoGeyv+cY0+
	Oiqj82I3MckdhVcHZf8xRm+ELnojhGVaJZt948FehJyfg9GW+nnMsuiR3V/5L/jqDz2d3I4KiI1xb
	ODyXZkLxHcy/7vuDkfs0K7PPR7YG9TnqcxciNX4vPKnBiZCodMwWwT/u8mcNngWXrBWMsBjYmrv7i
	O2+lRrC7S+Vrzl8stFbW4FPIylGwFY5fLu1bXCENEgAxwdPY3qIPbGoy43V+alLTmvdqteYY5/WZe
	AoJ0fx0cfJ1no4QH/eEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKsaM-009jWB-0z;
	Wed, 03 Jan 2024 04:10:30 +0000
Received: from mx0.riseup.net ([198.252.153.6])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKsaJ-009jUZ-13;
	Wed, 03 Jan 2024 04:10:28 +0000
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx0.riseup.net (Postfix) with ESMTPS id 4T4bpx2l20z9vy5;
	Wed,  3 Jan 2024 04:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1704255018; bh=Q4QSWB4lpoWhI6LvZXYA/LFlYxYL0e3ql56uc4uLsUs=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=TRxxtCGuzWmXNaAyM/tnH6YN8e4sGhtY9nP3iz88vSpD56P+4Qi2Tuvp0NK5lDUuJ
	 MkIRN4QDAyPnJK2KNAhtazIXRQFS5kuVTv01x00IeB5G7lFl6JxNF7zMyjnsUfxg1X
	 siFJKtKYGbllHXv/M9T69EGCSNLXfD9fW+12UtYw=
X-Riseup-User-ID: 405420CC388E9EF22FE493B6FCB7CB07418DA6345B23D1C17FCD1E61398A9170
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4T4bpp3Bf5zJmps;
	Wed,  3 Jan 2024 04:10:09 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
To: =?utf-8?B?T25kxZllag==?= Jirman <megi@xff.cz>,
 Manuel Traut <manut@mecka.net>, Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>,
 Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add devicetree for Pine64 PineTab2
Date: Wed, 03 Jan 2024 04:09:55 +0000
Message-ID: <4814116.aeNJFYEL58@melttower>
In-Reply-To: <775vjfucu2g2s6zzeutj7f7tapx3q2geccpxvv4ppcms4hxbq7@cbrdmlu2ryzp>
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
 <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
 <775vjfucu2g2s6zzeutj7f7tapx3q2geccpxvv4ppcms4hxbq7@cbrdmlu2ryzp>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_201027_396388_EC363B17 
X-CRM114-Status: GOOD (  12.36  )
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

T24gVHVlc2RheSwgSmFudWFyeSAyLCAyMDI0IDY6MDc6NTYgUE0gVVRDIE9uZMWZZWogSmlybWFu
IHdyb3RlOgo+IE9uIFR1ZSwgSmFuIDAyLCAyMDI0IGF0IDA1OjE1OjQ3UE0gKzAxMDAsIE1hbnVl
bCBUcmF1dCB3cm90ZToKPiA+ICsmcGNpZTJ4MSB7Cj4gPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4gPiArCXBpbmN0cmwtMCA9IDwmcGNpZV9yZXNldF9oPjsKPiA+ICsJcmVzZXQtZ3Bp
b3MgPSA8JmdwaW8xIFJLX1BCMiBHUElPX0FDVElWRV9ISUdIPjsKPiA+ICsJdnBjaWUzdjMtc3Vw
cGx5ID0gPCZ2Y2MzdjNfbWluaXBjaWU+Owo+ID4gKwlzdGF0dXMgPSAib2theSI7Cj4gPiArfTsK
PiAKPiBEb2VzIGl0IG1ha2Ugc2Vuc2UgdG8gZW5hYmxlIHRoaXMgSFcgYmxvY2sgYnkgZGVmYXVs
dCwgd2hlbiBpdCBpc24ndCB1c2VkIG9uCj4gYWN0dWFsIEhXPwo+IAoKUENJLUUgaXMgaG9va2Vk
IHVwIHRvIGEgY29ubmVjdG9yIGluIHRoZSBzY2hlbWF0aWNzLCBzbyBJIHRoaW5rIGl0IG1ha2Ug
c2Vuc2UgCnRvIGVuYWJsZSBpdCB3aGVuIHRoZXJlJ3Mgb25lIGF2YWlsYWJsZS4KCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

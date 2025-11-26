Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9556CD10396
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Nov 2025 08:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Date:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y8pBPWnMSxxHT21hBE/lmrshHUxRqX5UBt6Thg9CP+s=; b=tkjmKOFpypBfPPDmbYllPmRkVW
	SybQUAKht4K2WQdDxrNXP5EzVkqf7sXnJ1g1xkLEcKAZIHhRY7dtlXXOYSX3zmXfTkWSTsMzOkmFS
	UeTcH2M6iDhAPCPONvTGOldynPfbDsYf7KLotG8bF+J+y4bWDWw59HgKpXpOnNm6T5Ee+TMArn3dQ
	uQ4urtGpSmWaCpMBwCgxfHOI0Y4Nluy2MDN8LhCivKNGCUayS3Kx8Zv1taDvE/fPRaVEay9o8eENx
	DUdsFaR2B+DBxlcOeoIG2Y6QRTb4tTspIFpDgoKI42JpM8xJyX5Z/OzUItxkMcJBUfe4Q4Bo4AThC
	XlfBbixw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOBDO-0000000Ee5D-2HKr;
	Wed, 26 Nov 2025 08:49:30 +0000
Received: from slateblue.cherry.relay.mailchannels.net ([23.83.223.168])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOBDL-0000000Ee4T-1NyA;
	Wed, 26 Nov 2025 08:49:29 +0000
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 7A578441E6C;
	Wed, 26 Nov 2025 08:49:22 +0000 (UTC)
Received: from de-fra-smtpout3.hostinger.io (trex-green-7.trex.outbound.svc.cluster.local [100.96.77.42])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 593ED441145;
	Wed, 26 Nov 2025 08:49:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1764146962;
	b=3c6GjMIYiw+vY+FoBKHU2nlqtdZzbTL004Q/fu9Ax7Z2rRTILGN2oR/4hXriSmnhLg6vfL
	FHPfh60BE/uPH/Y7gyuZV1k4g892397WsGGodxe76HMox4SHVKKkJMDGmSZM04f1PSYc7o
	Rd2ApPASfkDkuWe+5uF97kQv9QB81blOuLupXDLSpKzHG0h1EcwOghlfhrXuys26D//b3p
	Gxe6z6SCp2bBjs0W6mihJhzEzkA2b56ix/f1gs9eD5UQpIglIqMd2AAWCNQZii0wPYYSGL
	tBlkU4GJuR71LklhS0KKewa+Sp5CGNK2bGweP8bhfDZJ25jFa8LuF7A5uyFgBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1764146962;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=LRFH/e+EPYkQeoBclAzTE/ypDqMfPq55IAr+yoWm76s=;
	b=9kJx9uX77hmyGUABE1xGLuSSar7r1QNgTqwPNxFWAMqNA5teIGOxJ3Q2nefJ+Tr84SSQpC
	/Xmr3gvm4f6fGN29F3S6pR1wi1K05oKlWVtjcJLwNSoHgI3w/cV7gnSK/mSuMc29tVCASA
	7XHTVuNEW6Ie3hOYOvzLqSoNlfndLUfDEV2pr+bLbicGGne2AB7bYxZmKQTmvrZwLYlZqy
	Xk8eIK7Is0IAt1pCrpG332/yLDm5bpbkOyyDjBpB6YAuebuhT7Kh9fR+16FzPdz4qozAQ2
	qeBjp76/3/FKuqIoZo/+OkhTZ8VQ7+2CyQkVVaiSA+1bRUweLKumJlpPWxRj+w==
ARC-Authentication-Results: i=1;
	rspamd-7bff5db4cb-6gxzj;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Stretch-Harbor: 5ca944300a683b5f_1764146962264_120106243
X-MC-Loop-Signature: 1764146962264:3432847594
X-MC-Ingress-Time: 1764146962264
Received: from de-fra-smtpout3.hostinger.io (de-fra-smtpout3.hostinger.io
 [148.222.55.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.96.77.42 (trex/7.1.3);
	Wed, 26 Nov 2025 08:49:22 +0000
Received: from [IPV6:2001:861:4450:d360:9d39:ba01:31fa:9155] (unknown [IPv6:2001:861:4450:d360:9d39:ba01:31fa:9155])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4dGYC221Zkz3x6d;
	Wed, 26 Nov 2025 08:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1764146958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LRFH/e+EPYkQeoBclAzTE/ypDqMfPq55IAr+yoWm76s=;
	b=X6jBVttoL3yARGLzIsFqnVB5ahkH4vBfjFRADu/XlO7tZcd8jMS9nwhERpwYkOSpudvedq
	j6wDwpqztA4o2AsvLyZqhMB7gVpP/b8P/m6N1A8wNIOQ0MvRyyhNfU9k3tgjtjcVGB8xug
	wNo2/uqFM00hYcx5kexi7tb3vvewLOL+O2FlJgK/QbpCcqv7yeDxlqNLwQpWYCLL6KVIvh
	pBZj/7BjNS94pJODh0bQDigsqpeLSOcfY62wPsdcF8p4EqEA/nNmxcTf9w+juvYOjbUfWo
	CsrfWrA6VtcQ/hqkzXgYN19YuzuhIjQInBHLPgJyXUR3L1ZTUCp2xxdqGdAt0A==
Message-ID: <45aac7ef-a5dc-4e93-bb11-30bb88259974@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable i2c2 on Orange Pi 3B
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>
References: <20251120-orangepi3-enable-i2c2-v1-1-2e023a74012a@rootcommit.com>
 <d66f81e4-9d9f-4df8-916b-e6f68c85d813@kwiboo.se>
Content-Language: en-US, fr
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <d66f81e4-9d9f-4df8-916b-e6f68c85d813@kwiboo.se>
Date: Wed, 26 Nov 2025 08:49:16 +0000 (UTC)
X-CM-Analysis: v=2.4 cv=ALriHGRn c=1 sm=1 tr=0 ts=6926bf0e a=YaLPeadj3FvY5eBQhwgDrg==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=5dAzR5NRAAAA:8 a=d70CFdQeAAAA:8 a=Lmt_ZpWL_zpAlULcO8oA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=ZKAZAlVgJm32z6MX8p4a:22 a=NcxpMcIZDGm-g932nG_k:22
X-CM-Envelope: MS4xfPRGcvVSXLekHcmNkq6vTuUkhR318co5HtaTHzpmaZ6VNLzeJ0uYr82ojz55048VLXFP+jax2UkHjwRaJWbDiMc+s/jbRrKIUkHnAqZr8oEUoaeGJxtd ZWcSxrHYEY/+2T4GcuyRaEaIcM/+I7Niz2TaeTFiQaoDx/D25Cy37vrrGb/4ytyUvkZbwOcbZPMc+OUJHoMwzZyoayOFqPMJqaRu11GDG/i+4wqQQ3+dq+Rx V3ALG0xjoRffADbWQ9aZ6/diCTQNh7qMCHQ7SUhG2Euggy0NATI/8IeNUTGZAB7iBSP3YztxVjzHN5sTqlNMscxErpvI4DZVHqdV7LkEAO23EVsY9uOUe5i1 69BDFS8Yt3kQuPPn9FryKyrFXwtf9/akntyjMXof76h3ZHIU4GssATbDtQLqgJKQ1sT/n8rS+NIOtetmzLDC5zyye37PkywqS0E7BH7PLUo15tc1/Gv1Dh6w zRqTITaT1jpbZHyZuYLKjLQrGpa6OhLcZtnrfW0kv9quZo5cEGAhOCWkG5Bc2odrKr1GSYxtKvKCwFBNJ2POfw2EcJp0EIT1KmVLDLAwCrSxcZ7kba+hbGtr FJIOZiQWwa9iFuSq7SZxJdbSSVWd1otA+R/Lb4ABOW3b+NCXrFa/avrDMkM5dOMFD/Y=
X-AuthUser: michael.opdenacker@rootcommit.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_004927_687264_B9975876 
X-CRM114-Status: GOOD (  20.33  )
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

SGkgSm9uYXMKClRoYW5rcyBmb3IgdGhlIHJldmlldyEKCk9uIDExLzI2LzI1IDA5OjQwLCBKb25h
cyBLYXJsbWFuIHdyb3RlOgo+IEhpIE1pY2hhZWwsCj4KPiBPbiAxMS8yMC8yMDI1IDg6MDAgUE0s
IE1pY2hhZWwgT3BkZW5hY2tlciB3cm90ZToKPj4gRW5hYmxlIHRoZSAiaTJjMiIgYnVzIG9uIGhl
YWRlciBwaW5zIDMgKEkyQ19TREFfTTEpCj4+IGFuZCA1IChJMkMyX1NDTF9NMSkgb2YgdGhlIE9y
YW5nZSBQaSAzQiBib2FyZC4KPj4KPj4gQXMgZG9jdW1lbnRlZCBvbiBodHRwOi8vd3d3Lm9yYW5n
ZXBpLm9yZy9pbWcvcGkzYi8wNzE5LXBpM2ItMTkucG5nCj4+IHN1Y2ggcGlucyBhcmUgdGhlIG9u
bHkgb25lcyBvZmZlcmluZyBJMkMgZnVuY3Rpb25hbGl0eQo+PiB3aXRob3V0IGNvbmZsaWN0aW5n
IHdpdGggb3RoZXIgU29DIGJsb2Nrcy4KPiBUaGlzIGlzIHN0cmljdGx5IG5vdCB0cnVlLCB0aGVz
ZSBwaW5zIGFyZSBieSBkZWZhdWx0IHVzZWQgYXMgR1BJTywgdGhpcwo+IHBhdGNoIGNoYW5nZSB0
aGVtIHRvIHVzZSB0aGUgSTJDMiBmdW5jLCBzb21ldGhpbmcgdGhhdCBzaG91bGQgbm9ybWFsbHkK
PiBiZSBlbmFibGVkIGluIGFuIG92ZXJsYXkuCj4KPiBGdW5jdGlvbnMgZm9yIHRoZXNlIHBpbnM6
Cj4KPiAJZnVuYyAwCQlmdW5jIDEKPgo+IAlHUElPNF9CNF9kCUkyQzJfU0RBX00xCj4gCUdQSU80
X0I1X2QJSTJDMl9TQ0xfTTEKCgpDb3JyZWN0LiBNeSBpZGVhIHdhcyB0aGF0IEdQSU9zIGFyZSBl
YXN5IHRvIGdldCBvbiBvdGhlciBwaW5zLCBhbmQgSSAKZm91bmQgdGhhdCBJMkMyIG9uIHN1Y2gg
cGlucyB3b3VsZCBiZSBhIGNvbnZlbmllbnQgZGVmYXVsdC4KCj4KPj4gU2lnbmVkLW9mZi1ieTog
TWljaGFlbCBPcGRlbmFja2VyIDxtaWNoYWVsLm9wZGVuYWNrZXJAcm9vdGNvbW1pdC5jb20+Cj4+
IC0tLQo+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LW9yYW5nZXBpLTNi
LmR0c2kgfCA1ICsrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtb3Jhbmdl
cGktM2IuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LW9yYW5nZXBp
LTNiLmR0c2kKPj4gaW5kZXggZDUzOTU3MGY1MzFlLi5lMmYwY2NjNmRiZTcgMTAwNjQ0Cj4+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LW9yYW5nZXBpLTNiLmR0c2kK
Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtb3JhbmdlcGktM2Iu
ZHRzaQo+PiBAQCAtNDM1LDYgKzQzNSwxMSBAQCByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPj4gICAJ
fTsKPj4gICB9Owo+PiAgIAo+PiArJmkyYzIgewo+PiArCXBpbmN0cmwtMCA9IDwmaTJjMm0xX3hm
ZXI+Owo+IHBpbmN0cmwtbmFtZXMgc2hvdWxkIGFsc28gYmUgYWRkZWQgaGVyZS4KCgpBY3R1YWxs
eSwgdGhlICJwaW5jdHJsLW5hbWVzIiBwcm9wZXJ0eSBpcyBhbHJlYWR5IGF2YWlsYWJsZSBpbiB0
aGUgCmRlZmluaXRpb24gb2YgaTJjMi4gVGhhdCdzIHdoeSBJIGRpZG4ndCBhZGQgaXQgYWdhaW4u
Cgo+Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+IEFzIG1lbnRpb25lZCBhYm92ZSwgdGhpcyBzaG91
bGQgYmUgZW5hYmxlZCBpbiBhbiBEVCBvdmVybGF5IG5vdCBpbiB0aGUKPiBib2FyZCBEVC4KCkkg
ZG9uJ3QgbWluZCBpZiBteSBwYXRjaCBpcyByZW1vdmVkLCBubyBoYXJkIGZlZWxpbmdzIDopCgpC
VFcsIGlzIHRoZXJlIGEgY29udmVuaWVudCBsb2NhdGlvbiBmb3Igc2hhcmluZyBvdmVybGF5cyBs
aWtlIHRoZXNlPyAKU29tZSBvdmVybGF5cyBhcmUgc29tZXRpbWVzIHRyaWNreSB0byBkZXZlbG9w
LCBhbmQgc2hhcmluZyB0aGVtIHdpdGggCm90aGVycyBpcyB1c2VmdWwgZm9yIHRoZSBjb21tdW5p
dHkuwqAgSSBndWVzcyB0aGUgcXVlc3Rpb24gd2FzIGFza2VkIApiZWZvcmUsIGJ1dCBJIGRvbid0
IGtub3cgaXRzIGFuc3dlciA6KQoKVGhhbmtzIGFnYWluCkNoZWVycwpNaWNoYWVsLgoKLS0gCk1p
Y2hhZWwgT3BkZW5hY2tlcgpSb290IENvbW1pdApZb2N0byBQcm9qZWN0IGFuZCBPcGVuRW1iZWRk
ZWQgVHJhaW5pbmcgY291cnNlIC0gTGVhcm4gYnkgZG9pbmc6Cmh0dHBzOi8vcm9vdGNvbW1pdC5j
b20vdHJhaW5pbmcveW9jdG8vCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

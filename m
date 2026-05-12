Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECCE7CD4851
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 14:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWWn01qXN8S38a6raXdsDC/sAS/wQj0YGCfehiP7RpE=; b=0XxRw9ofj/wRKS
	YEcxq3MFcaM+05IAgF//mf/IdOauczJV19cLlK9Mm+DhZ/iUF2zX+QWThKGiIFU7i8Y2eAJGma+c2
	GMUbwGKrJ3Alz2yT1KMqYOFsk/KuKhIjd8ItiR+M04ixV9BU6O/TpHn46w93vaxT1F1trr3t4M9C/
	Kqwqc+298tOsnLhnc6GGNBsWolAfBSCKosLwlf3oLwJunz/yTLFUVYtqgzqKxxkDJXopCGE3/IpKr
	PmDBh5ZbEMSoj47l7hAst+zkA5h6iFfEpiMV/2VcplWNZiq4OMN/obsEmacpFGRzVXwkgO7nrVVut
	7QvlpcB/yMPT6sXGsbXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMoXr-0000000H7ie-138U;
	Tue, 12 May 2026 14:57:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMoXo-0000000H7gw-3Pa2
	for linux-rockchip@lists.infradead.org;
	Tue, 12 May 2026 14:57:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wMoXZ-0006ha-1B; Tue, 12 May 2026 16:56:57 +0200
Message-ID: <e6d562e7-a9d2-4a1a-a139-c6e05eb4aaef@pengutronix.de>
Date: Tue, 12 May 2026 16:56:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/29] media: rockchip: rga: avoid odd frame sizes for
 YUV formats
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 sebastian.reichel@collabora.com
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
 <20260428-spu-rga3-v5-12-eb7f5d019d86@pengutronix.de>
 <4f5e481c8883b358ee4cef64f26f3f00f0ac7304.camel@ndufresne.ca>
Content-Language: en-US
From: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <4f5e481c8883b358ee4cef64f26f3f00f0ac7304.camel@ndufresne.ca>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_075712_852444_09997451 
X-CRM114-Status: GOOD (  24.65  )
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

SGkgTmljb2xhcywKCk9uIDUvOC8yNiAxMToxOCBQTSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToK
PiBMZSBtYXJkaSAyOCBhdnJpbCAyMDI2IMOgIDExOjAwICswMjAwLCBTdmVuIFDDvHNjaGVsIGEg
w6ljcml0wqA6Cj4+IEF2b2lkIG9kZCBmcmFtZSBzaXplcyBmb3IgWVVWIGZvcm1hdHMsIGFzIHRo
ZXkgbWF5IGNhdXNlIHVuZGVmaW5lZAo+PiBiZWhhdmlvci4gVGhpcyBpcyBkb25lIGluIHByZXBh
cmF0aW9uIGZvciB0aGUgUkdBMywgd2hpY2ggaGFuZ3Mgd2hlbiB0aGUKPj4gb3V0cHV0IGZvcm1h
dCBpcyBzZXQgdG8gMTI5eDEyOSBwaXhlbCBZVVY0MjAgU1AgKE5WMTIpLgo+Pgo+PiBUaGlzIHJl
cXVpcmVtZW50IGlzIGRvY3VtZW50ZWQgZXhwbGljaXRseSBmb3IgdGhlIFJHQTMgaW7CoCBzZWN0
aW9uIDUuNi4zCj4+IG9mIHRoZSBSSzM1ODggVFJNIFBhcnQgMi4gRm9yIHRoZSBSR0EyIHRoZSBS
SzM1ODggVFJNIFBhcnQgMgo+PiAoc2VjdGlvbiA2LjEuMikgYW5kIFJLMzU2OCBUUk0gUGFydCAy
IChzZWN0aW9uIDE0LjIpIG9ubHkgbWVudGlvbnMgdGhlCj4+IHgveSBvZmZzZXRzIGFuZCBzdHJp
ZGUgYWxpZ25pbmcgcmVxdWlyZW1lbnRzLiBCdXQgdGhlIHZlbmRvciBkcml2ZXIgZm9yCj4+IHRo
ZSBSR0EyIGFsc28gY29udGFpbnMgY2hlY2tzIGZvciB0aGUgd2lkdGggYW5kIGhlaWdodCB0byBi
ZSBhbGlnbmVkIHRvCj4+IDIgYnl0ZXMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8c2No
ZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Cj4+IC0tLQo+PiAgwqBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyB8IDE5ICsrKysrKysrKysrKysrLS0tLS0KPj4g
IMKgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4+IGluZGV4IGY1OTlj
OTkyODI5ZGQuLjc3YjhjN2FiNzQyNzQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmdhL3JnYS5jCj4+IEBAIC0zMzcsNiArMzM3LDE5IEBAIHN0YXRpYyBpbnQgdmlk
aW9jX3RyeV9mbXQoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2Zv
cm1hdCAqZikKPj4gIMKgCXN0cnVjdCByZ2FfY3R4ICpjdHggPSBmaWxlX3RvX3JnYV9jdHgoZmls
ZSk7Cj4+ICDCoAljb25zdCBzdHJ1Y3QgcmdhX2h3ICpodyA9IGN0eC0+cmdhLT5odzsKPj4gIMKg
CXN0cnVjdCByZ2FfZm10ICpmbXQ7Cj4+ICsJc3RydWN0IHY0bDJfZnJtc2l6ZV9zdGVwd2lzZSBm
cm1zaXplID0gewo+PiArCQkubWluX3dpZHRoID0gaHctPm1pbl93aWR0aCwKPj4gKwkJLm1heF93
aWR0aCA9IGh3LT5tYXhfd2lkdGgsCj4+ICsJCS5taW5faGVpZ2h0ID0gaHctPm1pbl9oZWlnaHQs
Cj4+ICsJCS5tYXhfaGVpZ2h0ID0gaHctPm1heF9oZWlnaHQsCj4+ICsJCS5zdGVwX3dpZHRoID0g
MSwKPj4gKwkJLnN0ZXBfaGVpZ2h0ID0gMSwKPj4gKwl9Owo+PiArCj4+ICsJaWYgKHY0bDJfaXNf
Zm9ybWF0X3l1dih2NGwyX2Zvcm1hdF9pbmZvKHBpeF9mbXQtPnBpeGVsZm9ybWF0KSkpIHsKPj4g
KwkJZnJtc2l6ZS5zdGVwX3dpZHRoID0gMjsKPj4gKwkJZnJtc2l6ZS5zdGVwX2hlaWdodCA9IDI7
Cj4gSSB0aGluayBpdHMgZmluZSBsaWtlIHRoaXMsIHNvIGxldCdzIHN0YXJ0IHdpdGg6Cj4KPiBS
ZXZpZXdlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEu
Y29tPgo+Cj4gQnV0IGl0IGRvZXMgbm90IGZlZWwgbGlrZSBhIGhhcmR3YXJlIGFsaWdubWVudCB0
byBtZS4gV2hlbiB3ZSBwcm9jZXNzIGluCj4gc29mdHdhcmUgdGhlc2UgdGhpbmdzLCB0aGUgbWlu
aW11bSBhbGlnbm1lbnQgaXMgYm91bmQgdG8gdGhlIHN1YnNhbXBsaW5nLCBzaW5jZQo+IHRoZXJl
IGlzIG5vIHdheSB0byBzdG9yZSBoYWxmIG9yIHF1YXJ0ZXIgcGl4ZWxzLCB0aGUgcGFkZGVkIHdp
ZHRoL2hlaWdodAo+IHJlcXVpcmVzIGEgc3RlcCB0aGF0IGZvbGxvdyB0aGUgc3Vic2FtcGxpbmcs
IHNvbWV0aGluZyBsaWtlOgo+Cj4gCQlmcm1zaXplLnN0ZXBfd2lkdGggPSBmaW5mby0+aGRpdjsK
PiAJCWZybXNpemUuc3RlcF9oZWlnaHQgPSBmaW5mby0+dmRpdjsKCkkgYWdyZWUgdGhhdCB0aGlz
IGxvb2tzIGJldHRlci4gTXkgbWFpbiBpbnRlbnRpb24gaXMgdG8gYmUgbW9yZSAKY29uc2VydmF0
aXZlLCBhcyB0aGUgUm9ja2NoaXAgcmVsYXRlZCBjb2RlL2RvY3Mgc2VlbSB0byBhbHdheXMgZW5z
dXJlIGEgCjIgcGl4ZWwgYWxpZ25tZW50IGluIGJvdGggZGlyZWN0aW9ucyBldmVuIGZvciBmb3Jt
YXRzIGxpa2UgWVVWNDIyLCB3aGVyZSAKd2Ugc2hvdWxkbid0IGhhdmUgYW4gYWxpZ25tZW50IHJl
cXVpcmVtZW50IGluIHRoZSBoZWlnaHQuIEJlc2lkZXMgdGhlIAp2ZW5kb3IgZHJpdmVyIGFuZCBU
Uk0gbWVudGlvbmVkIGluIHRoZSBkYXRhc2hlZXQsIHRoZSBsaWJyZ2EgYW5kIGl0J3MgCmRvY3Mg
YWxzbyBtZW50aW9uIGFuIGFsaWdubWVudCBvZiAyIChwaXhlbHM/ISkgZm9yIGFsbCBZVVYgZm9y
bWF0cyAoc2VlIApmb3JtYXQgYWxpZ25tZW50IGxpc3QgaW4gWzFdIGFuZCBRMi41IGluIFsyXSku
CgpHaXZlbiB0aGF0IHRoZSBkcml2ZXIgY3VycmVudGx5IGRvZXNuJ3QgaGF2ZSBhbnkgd2F5IHRv
IGdldCB0aGUgY29yZXMgCnVuc3R1Y2svcmVzZXQgaW4gY2FzZSBvZiBhIGhhbmcsIEknZCBsaWtl
IHRvIHBsYXkgaXQgbW9yZSBzYWZlbHkgYnkgCmFkaGVyaW5nIHRvIHdoYXQgdGhlIHZlbmRvciBk
b2VzIGluc3RlYWQgb2YgdHJ5aW5nIHRvIGRvIG1vcmUgYW5kIAp0aGVyZWZvcmUgYWxsb3dpbmcg
c29tZSBwb3RlbnRpYWwgYnJlYWtpbmcgZm9ybWF0LiBFLmcuIEkndmUgYWxzbyAKZXhwZXJpbWVu
dGVkIHdpdGggc2l6ZXMgb2bCoDY4eDIsIHdoaWNoIHRoZSBsaWJyZ2EgYWxsb3dzIGFzIGlucHV0
L291dHB1dCAKb2YgdGhlIFJHQTMgKHdoZXJlYXMgdGhlIFRSTSBzcGVjaWZpZXMgYSBtaW4gc2l6
ZSBvZiAxMjh4MTI4KSwgYnV0IApxdWlja2x5IGRyb3BwZWQgaXQgYXMgaXQgcHJvZHVjZWQgc29t
ZSBpbnRlcmVzdGluZyBicm9rZW4gb3V0cHV0cy4KClNpbmNlcmVseQogwqAgwqAgU3ZlbgoKClsx
XSAKaHR0cHM6Ly9jb2RlYmVyZy5vcmcvYWlyb2NrY2hpcC9saWJyZ2Evc3JjL2JyYW5jaC9tYWlu
L2RvY3MvUm9ja2NoaXBfRGV2ZWxvcGVyX0d1aWRlX1JHQV9FTi5tZCNpbWFnZS1mb3JtYXQtYWxp
Z25tZW50LWluc3RydWN0aW9ucwoKWzJdIApodHRwczovL2NvZGViZXJnLm9yZy9haXJvY2tjaGlw
L2xpYnJnYS9zcmMvYnJhbmNoL21haW4vZG9jcy9Sb2NrY2hpcF9GQVFfUkdBX0VOLm1kCgo+Cj4g
Tmljb2xhcwo+Cj4KPj4gKwl9Cj4+ICAgCj4+ICDCoAlpZiAoVjRMMl9UWVBFX0lTX0NBUFRVUkUo
Zi0+dHlwZSkpIHsKPj4gIMKgCQljb25zdCBzdHJ1Y3QgcmdhX2ZyYW1lICpmcm07Cj4+IEBAIC0z
NTgsMTEgKzM3MSw3IEBAIHN0YXRpYyBpbnQgdmlkaW9jX3RyeV9mbXQoc3RydWN0IGZpbGUgKmZp
bGUsIHZvaWQgKnByaXYsIHN0cnVjdCB2NGwyX2Zvcm1hdCAqZikKPj4gIMKgCWlmICghZm10KQo+
PiAgwqAJCWZtdCA9ICZody0+Zm9ybWF0c1swXTsKPj4gICAKPj4gLQlwaXhfZm10LT53aWR0aCA9
IGNsYW1wKHBpeF9mbXQtPndpZHRoLAo+PiAtCQkJwqDCoMKgwqDCoMKgIGh3LT5taW5fd2lkdGgs
IGh3LT5tYXhfd2lkdGgpOwo+PiAtCXBpeF9mbXQtPmhlaWdodCA9IGNsYW1wKHBpeF9mbXQtPmhl
aWdodCwKPj4gLQkJCQlody0+bWluX2hlaWdodCwgaHctPm1heF9oZWlnaHQpOwo+PiAtCj4+ICsJ
djRsMl9hcHBseV9mcm1zaXplX2NvbnN0cmFpbnRzKCZwaXhfZm10LT53aWR0aCwgJnBpeF9mbXQt
PmhlaWdodCwgJmZybXNpemUpOwo+PiAgwqAJdjRsMl9maWxsX3BpeGZtdF9tcChwaXhfZm10LCBm
bXQtPmZvdXJjYywgcGl4X2ZtdC0+d2lkdGgsIHBpeF9mbXQtPmhlaWdodCk7Cj4+ICDCoAlwaXhf
Zm10LT5maWVsZCA9IFY0TDJfRklFTERfTk9ORTsKPj4gICAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

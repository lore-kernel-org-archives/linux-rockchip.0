Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF1AC7115C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 16:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HXT8KZpHa5/GYXzPm0PMmF3MY42Ood1g5Y/ZCu5uDI=; b=qSBnlFwjIUW3yQ
	EAYn5A7/56CJD6fmDbgm8Vy8OVyMonUKo0fhtx2sHoInIxvPsDM7Mo4fILMSOFvP3sCrdqvPYJP+T
	W+zETRgnCOVAqqBir7YFt2UbFv1Rwomuy0uaeBJuaqHiVZevzaWLtl1HlJDVBlC/PKWYIk59pGnLV
	RD2GTDS3O/E3UHL/o/fHKObMtMoUGev94nZUZBn4uF52nEckgzdx8F9/kF225JC0XelHcM4g2gAZs
	B48x4bnrFpKJcwexi9ff5pb/EzqShzQelSkFOzG24ugpiwOj4lNbrbyHtfIlc7qu8KZIEqAGEEm20
	jdzo4TqgMvjypwPdADTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSegE-0000000G8t2-2EiN;
	Fri, 20 Jun 2025 16:33:30 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSeFt-0000000G5br-12Qj;
	Fri, 20 Jun 2025 16:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:To:From:
	Content-Type; bh=CBio1PPPpJVLzZUll1bxnb1TdvQipCHJF9EEAuawoOM=;
	b=PtNTfz7a6ceuzdIcvnaAMubBkFiQ2u9g5aqYZvwhQPvpte9cnGJUG2Pz52GtgB
	F3jFPwXAiyzEVbUeKQVIlPtExfcttXfJ/T/HKTmFvImpgC29ZL3sMV1NpmDCQPtM
	5DdEajKEoGL531e8baDlyvxpAJvlMHLl5rtp/qePJ/1a0=
Received: from [IPV6:240e:b8f:919b:3100:8440:da7c:be7e:927f] (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wDnz_PXhlVoLljeAg--.60205S2;
	Sat, 21 Jun 2025 00:05:44 +0800 (CST)
Message-ID: <e9eeeeb4-77e6-48f1-bedc-15207f39d7b6@163.com>
Date: Sat, 21 Jun 2025 00:05:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] Configure root port MPS during host probing
To: lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
 heiko@sntech.de, mani@kernel.org, yue.wang@Amlogic.com
Cc: pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
 jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250620155507.1022099-1-18255117159@163.com>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <20250620155507.1022099-1-18255117159@163.com>
X-CM-TRANSID: _____wDnz_PXhlVoLljeAg--.60205S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7KF4fCw13Kr45XFW3trWDArb_yoW5JF4fpF
	WfGws3Ar4xJF15GF9rWa1vkFyrZas7KrWUGrZrJ3sxZanxZFyUXF1xKw4rA347XrWxZ3WI
	gF1jqFy8uan8Za7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07U7pnQUUUUU=
X-Originating-IP: [240e:b8f:919b:3100:8440:da7c:be7e:927f]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiWxlyo2hVgqSAEAAAsY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_090617_650314_BA5338CC 
X-CRM114-Status: GOOD (  15.21  )
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

SGkgYWxs77yMCgpJJ20gdmVyeSBzb3JyeS4gSSBmb3Jnb3QgdGhlIHJldmlldyBsYWJlbCBvZiBO
aWtsYXMuIElmIGl0IGNhbiBiZSAKbWVyZ2VkLCBwbGVhc2UgYXNrIHRoZSBtYWludGFpbmVyIHRv
IGhlbHAgYWRkIHRoaXMgdGFnLiBUaGFuayB5b3UgdmVyeSBtdWNoLgoKUmV2aWV3ZWQtYnk6IE5p
a2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgoKQmVzdCByZWdhcmRzLApIYW5zCgpPbiAy
MDI1LzYvMjAgMjM6NTUsIEhhbnMgWmhhbmcgd3JvdGU6Cj4gQ3VycmVudCBQQ0llIGluaXRpYWxp
emF0aW9uIGV4aGliaXRzIGEga2V5IG9wdGltaXphdGlvbiBnYXA6IFJvb3QgUG9ydHMKPiBtYXkg
b3BlcmF0ZSB3aXRoIG5vbi1vcHRpbWFsIE1heGltdW0gUGF5bG9hZCBTaXplIChNUFMpIHNldHRp
bmdzLiBXaGlsZQo+IGRvd25zdHJlYW0gZGV2aWNlIGNvbmZpZ3VyYXRpb24gaXMgaGFuZGxlZCBk
dXJpbmcgYnVzIGVudW1lcmF0aW9uLCBSb290Cj4gUG9ydCBNUFMgdmFsdWVzIGluaGVyaXRlZCBm
cm9tIGZpcm13YXJlIG9yIGhhcmR3YXJlIGRlZmF1bHRzIG9mdGVuIGZhaWwKPiB0byB1dGlsaXpl
IHRoZSBmdWxsIGNhcGFiaWxpdGllcyBzdXBwb3J0ZWQgYnkgY29udHJvbGxlciBoYXJkd2FyZS4g
VGhpcwo+IHJlc3VsdHMgaW4gc3Vib3B0aW1hbCBkYXRhIHRyYW5zZmVyIGVmZmljaWVuY3kgdGhy
b3VnaG91dCB0aGUgUENJZQo+IGhpZXJhcmNoeS4KPiAKPiBUaGlzIHBhdGNoIHNlcmllcyBhZGRy
ZXNzZXMgdGhpcyBieToKPiAKPiAxLiAgQ29yZSBQQ0kgZW5oYW5jZW1lbnQgKFBhdGNoIDEpOgo+
IC0gUHJvYWN0aXZlbHkgY29uZmlndXJlcyBSb290IFBvcnQgTVBTIGR1cmluZyBob3N0IGNvbnRy
b2xsZXIgcHJvYmluZwo+IC0gU2V0cyBpbml0aWFsIE1QUyB0byBoYXJkd2FyZSBtYXhpbXVtICgx
MjggPDwgZGV2LT5wY2llX21wc3MpCj4gLSBDb25kaXRpb25hbCBvbiBQQ0llIGJ1cyB0dW5pbmcg
YmVpbmcgZW5hYmxlZCAoUENJRV9CVVNfVFVORV9PRkYgdW5zZXQpCj4gLSBNYWludGFpbnMgYmFj
a3dhcmQgY29tcGF0aWJpbGl0eSB2aWEgUENJRV9CVVNfVFVORV9PRkYgY2hlY2sKPiAtIFByZXNl
cnZlcyBzdGFuZGFyZCBNUFMgbmVnb3RpYXRpb24gZHVyaW5nIGRvd25zdHJlYW0gZW51bWVyYXRp
b24KPiAKPiAyLiAgRHJpdmVyIGNsZWFudXAgKFBhdGNoIDIpOgo+IC0gUmVtb3ZlcyByZWR1bmRh
bnQgTVBTIGNvbmZpZ3VyYXRpb24gZnJvbSBNZXNvbiBQQ0llIGNvbnRyb2xsZXIgZHJpdmVyCj4g
LSBGdW5jdGlvbmFsaXR5IGlzIG5vdyBjZW50cmFsaXplZCBpbiBQQ0kgY29yZQo+IC0gU2ltcGxp
ZmllcyBkcml2ZXIgbWFpbnRlbmFuY2UgbG9uZy10ZXJtCj4gCj4gLS0tCj4gQ2hhbmdlcyBmb3Ig
djU6Cj4gLSBVc2UgcGNpZV9zZXRfbXBzIGRpcmVjdGx5IGluc3RlYWQgb2YgcGNpZV93cml0ZV9t
cHMuCj4gLSBUaGUgcGF0Y2ggMSBjb21taXQgbWVzc2FnZSB3ZXJlIG1vZGlmaWVkLgo+IAo+IENo
YW5nZXMgZm9yIHY0Ogo+IC0gVGhlIHBhdGNoIFt2NCAxLzJdIGFkZCBhIGNvbW1lbnQgdG8gZXhw
bGFpbiB3aHkgaXQgd2FzIGRvbmUgdGhpcyB3YXkuCj4gLSBUaGUgcGF0Y2ggW3Y0IDIvMl0gaGF2
ZSBub3QgYmVlbiBtb2RpZmllZC4KPiAtIERyb3AgcGF0Y2ggW3YzIDMvM10uIFRoZSBNYWludGFp
bmVyIG9mIHRoZSBwY2ktYWFyZHZhcmsuYyBmaWxlIHN1Z2dlc3RzCj4gICAgdGhhdCB0aGlzIHBh
dGNoIGNhbm5vdCBiZSBzdWJtaXR0ZWQuIEluIGFkZGl0aW9uLCBNYW5pIGFsc28gc3VnZ2VzdHMK
PiAgICBkcm9wcGluZyB0aGlzIHBhdGNoIHVudGlsIHRoaXMgc2VyaWVzIG9mIGlzc3VlcyBpcyBy
ZXNvbHZlZC4KPiAKPiBDaGFuZ2VzIGZvciB2MzoKPiAtIFRoZSBuZXcgc3BsaXQgaXMgcGF0Y2gg
Mi8zIGFuZCAzLzMuCj4gLSBNb2RpZnkgdGhlIHBhdGNoIDEvMyBhY2NvcmRpbmcgdG8gTmlrbGFz
JyBzdWdnZXN0aW9uLgo+IAo+IENoYW5nZXMgZm9yIHYyOgo+IC0gQWNjb3JkaW5nIHRvIHRoZSBN
YWludGFpbmVyJ3Mgc3VnZ2VzdGlvbiwgbGltaXQgdGhlIHNldHRpbmcgb2YgTVBTCj4gICAgY2hh
bmdlcyB0byBwbGF0Zm9ybXMgd2l0aCBjb250cm9sbGVyIGRyaXZlcnMuCj4gLSBEZWxldGUgdGhl
IE1QUyBjb2RlIHNldCBieSB0aGUgU09DIG1hbnVmYWN0dXJlci4KPiAtLS0KPiAKPiBIYW5zIFpo
YW5nICgyKToKPiAgICBQQ0k6IENvbmZpZ3VyZSByb290IHBvcnQgTVBTIGR1cmluZyBob3N0IHBy
b2JpbmcKPiAgICBQQ0k6IGR3YzogUmVtb3ZlIHJlZHVuZGFudCBNUFMgY29uZmlndXJhdGlvbgo+
IAo+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLW1lc29uLmMgfCAxNyAtLS0tLS0t
LS0tLS0tLS0tLQo+ICAgZHJpdmVycy9wY2kvcHJvYmUuYyAgICAgICAgICAgICAgICAgICAgfCAx
MCArKysrKysrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDE3IGRl
bGV0aW9ucygtKQo+IAo+IAo+IGJhc2UtY29tbWl0OiAxOTI3MmIzN2FhNGY4M2NhNTJiZGY5YzE2
ZDVkODFiZGQxMzU0NDk0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

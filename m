Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58AA7CCFA05
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 03:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNIxmWo6qONyK4YAPGhHp5aw9FVCfaE3pWc9rp8Ehm0=; b=KI3tJeXK1Vv5PN
	5quoY8Ia2vXYoGEZ5tgHF00p+UvvnJzMItPzx/I7FNyIGF9uSshz720acktH8uv+XbjvDddSVZLKb
	vvQ6P+4Inrhpp+7nh3xlw0dvCFrhHCBDiYwefCvFK5k1kjDxDP7wmyPcKXCBPiewhQttOJSgMvZiA
	ERmBGOILkMHh18cZ8mXwpbhryqOfJOMTKnIl6/nVx35j0gZtxvp/tDLQb0u8lLDy7G0J0rspDaQ8K
	8CcTTalyd30e92Ct2lb6FeMvYRQVVJjQ5EdN+yj1B90ggBYbzAioEOho+UuDCBzFbvQbF3MVFmlcx
	U4yULN0sogvLrO7qiPGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGqWA-0000000Eo1t-3bjd;
	Thu, 06 Nov 2025 03:18:34 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGqW4-0000000Eo1L-1Ykq
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 03:18:33 +0000
X-QQ-mid: zesmtpip2t1762399047te82d4100
X-QQ-Originating-IP: t/O5br478cgyd5pY6LNMZtVnIz+dhLvOaSLytrjS1Sw=
Received: from [IPV6:240f:10b:7440:1:4c9d:dff9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 06 Nov 2025 11:17:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12882356124254277784
Message-ID: <65F6DECE54D6A0E2+06d33e7a-1054-44b3-919e-181e30cdb932@radxa.com>
Date: Thu, 6 Nov 2025 12:17:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
From: FUKAUMI Naoki <naoki@radxa.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
Content-Language: en-US
In-Reply-To: <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OfSYiviZO9YdhT4jzlzXqs5N37qWA8oxlM7nKQRuhBZODUWiA20D5tgS
	DJB5duFU/Abq63jqReAG8Ujxkg7ibzj3xoKNeRzfmirqMPIBvdQ0pGKxTty/qAeKyhWzmWY
	QvoKTZporxiqOOotr++EbvKia8Pvz1qubQgZOAIPEeJ49DynURmk2RCjii0VqNcAcBP/MhP
	ClQPJyGsPqO36IPmD2drtWN36Idb7wWgjnlyOiA3RYWiDk+Cq0iZSAWGnSCtv3EP676EJlP
	5PmxgZ4MY20JSP8VTO7IMimJubIKNn5eaRhzCclvu03w6YyxE90R48NDFTQj126Q36Xi1pm
	s/avsyZDr1IWAA+MfxJA3c0NWe5okm4DGFEurPgPbnBBwzoZF2Y2XG5kPDfMciPK43wqxHI
	xD2zDQ92CkpCQATG0pk2MBJiAu9as+mp19Jvh+vPTxC4xydz+6jk49kvFNfaTj04qTy0tgU
	CvrjJRs4ax0cMhBN521mxRusTHiHel936BTwCbggPLPcBRcuYsz4R7XZX0pmfDcmNjG1C2y
	DInvxZOVPnAWXIeazxl5Zr11Owo9CSObdjQSYXt/xaY4BwmuI/ZiR53PMb9WWXFZGG8TINu
	j7qt8clQv5gb3jhMp1wcsEEs+eruWBcKPpw+Br6HcQsoKBR+MS6tWw5AnxZcoju22yBgoot
	2UUXXfJJmTawbMb0yS9NM02TXRkPzJSvRzrewnE4DEt3Kb1GEiV98K4C8YxRRnollNtY2FD
	bpjvadXFnSW4QceSrDi+UAFRM81Uuyio9h29ZoCGc/xRMG3DbhP0xFxEKvNG59K4I2nbpga
	2mqQ7deBmgnrxv9SR/UHin5+Fs3pcVff7RJyAzcoa8upZnqJiM7l74+20Ve8r2pAT+FDOLl
	Fk3b8U5TY+bnd8H/t19lmNCioVQBoxsTbGVeDWSGTsBCCG9b5WwCgpR0B0g3/tAqJa/plOp
	FnztjmAAL7BHgy8f1BN9rTmrbFArBe1rvbifVnS+cRsp6xMzWyKBPje9O
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_191828_904950_FE80AC1D 
X-CRM114-Status: GOOD (  14.39  )
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

T24gMTEvNi8yNSAwODozOCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBIaSBKaW1teSwKPiAKPiBP
biAxMS82LzI1IDAzOjI3LCBKaW1teSBIb24gd3JvdGU6Cj4+IE9uIFR1ZSwgTm92IDQsIDIwMjUg
YXQgMTE6MTTigK9QTSBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+Pj4K
Pj4+IFRoZSBSYWR4YSBDTTUgSU8gQm9hcmQgaXMgYW4gYXBwbGljYXRpb24gYm9hcmQgZm9yIHRo
ZSBSYWR4YSBDTTUuCj4+Pgo+Pj4gU3BlY2lmaWNhdGlvbjoKPj4KPj4+IC0gMXggbWljcm9TRCBj
YXJkIHNsb3QKPj4KPj4gWyBzbmlwIF0KPj4KPj4+ICsKPj4+ICsmc2RtbWMgewo+Pj4gK8KgwqDC
oMKgwqDCoCBidXMtd2lkdGggPSA8ND47Cj4+PiArwqDCoMKgwqDCoMKgIGNhcC1tbWMtaGlnaHNw
ZWVkOwo+Pj4gK8KgwqDCoMKgwqDCoCBjYXAtc2QtaGlnaHNwZWVkOwo+Pj4gK8KgwqDCoMKgwqDC
oCBjZC1ncGlvcyA9IDwmZ3BpbzAgUktfUEE0IEdQSU9fQUNUSVZFX0xPVz47Cj4+PiArwqDCoMKg
wqDCoMKgIGRpc2FibGUtd3A7Cj4+PiArwqDCoMKgwqDCoMKgIG5vLXNkaW87Cj4+PiArwqDCoMKg
wqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+PiArwqDCoMKgwqDCoMKgIHBpbmN0
cmwtMCA9IDwmc2RtbWNfYnVzNCAmc2RtbWNfY2xrICZzZG1tY19jbWQ+Owo+Pj4gK8KgwqDCoMKg
wqDCoCBzZC11aHMtc2RyMTA0Owo+Pj4gK8KgwqDCoMKgwqDCoCB2bW1jLXN1cHBseSA9IDwmdmNj
XzN2M19zMz47Cj4+PiArwqDCoMKgwqDCoMKgIHZxbW1jLXN1cHBseSA9IDwmdmNjaW9fc2RfczA+
Owo+Pj4gK8KgwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+PiArfTsKPj4KPj4gV2hlbiB1
c2VkIGFzIGEgVEYgc2xvdCwgc2hvdWxkbid0IHRoZXJlIGJlIGEgIm5vLW1tYyIgYWxzbz8KPiAK
PiBXZSBoYXZlICJlTU1DIHRvIHVTRC4iCj4gIMKgaHR0cHM6Ly9yYWR4YS5jb20vcHJvZHVjdHMv
YWNjZXNzb3JpZXMvZW1tYy10by11c2QKPiAKPiBbwqAgMjAyLjE3Njc1N10gbW1jX2hvc3QgbW1j
MTogQnVzIHNwZWVkIChzbG90IDApID0gNDk1MDAwMDBIeiAoc2xvdCByZXEgCj4gNTIwMDAwMDBI
eiwgYWN0dWFsIDQ5NTAwMDAwSFogZGl2ID0gMCkKPiBbwqAgMjAyLjE3ODQ3N10gbW1jMTogbmV3
IGhpZ2ggc3BlZWQgTU1DIGNhcmQgYXQgYWRkcmVzcyAwMDAxCj4gW8KgIDIwMi4xNzk1MzRdIG1t
Y2JsazE6IG1tYzE6MDAwMSBTTEQ2NEcgNTcuNiBHaUIKPiBbwqAgMjAyLjIwNzMzNl0gbW1jYmxr
MWJvb3QwOiBtbWMxOjAwMDEgU0xENjRHIDQuMDAgTWlCCj4gW8KgIDIwMi4yMTAzNzRdIG1tY2Js
azFib290MTogbW1jMTowMDAxIFNMRDY0RyA0LjAwIE1pQgo+IFvCoCAyMDIuMjEyOTY3XSBtbWNi
bGsxcnBtYjogbW1jMTowMDAxIFNMRDY0RyA0LjAwIE1pQiwgY2hhcmRldiAoNTExOjEpCj4gCj4g
KEknbSBub3Qgc3VyZSB3aHkgaXQgc2F5cyAiTm90IHdvcmsgd2l0aCB0aGUgU0Qgc2xvdCBvbiB0
aGUgYm9hcmQuIiBJIAo+IHdpbGwgY2hlY2suKQoKVGhlcmUgaXMgbm8gaGFyZHdhcmUgbGltaXRh
dGlvbi4gImVNTUMgdG8gdVNEIiBzaG91bGQgd29yayB3aXRoIG1pY3JvU0QgCmNhcmQgc2xvdCBv
biB0aGUgYm9hcmQuCgpUaGF0IG5vdGljZSBtZWFucyAiZHRzIG5lZWQgdG8gYmUgY2hhbmdlZCIu
CgpCZXN0IHJlZ2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhl
bikgQ28uLCBMdGQuCgo+PiBUaGF0J3MgaG93IHRoZSBSb2NrIDVBLCA1QiwgYW5kIDVDIHdlcmUg
ZGVmaW5lZC4KPiAKPiBJIGhhdmUgc3VibWl0dGVkIGEgcGF0Y2ggd2l0aG91dCAibm8tbW1jIiBi
ZWZvcmUuIEkgaW50ZW5kIHRvIHNlbmQgb25lIAo+IGFnYWluIHdoZW4gSSBoYXZlIHRoZSBjaGFu
Y2UuCj4gCj4gQmVzdCByZWdhcmRzLAo+IAo+IC0tIAo+IEZVS0FVTUkgTmFva2kKPiBSYWR4YSBD
b21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgo+IAo+PiBKaW1teQo+Pgo+IAo+IAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

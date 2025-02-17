Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB6DBC021A9
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Feb 2025 23:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAtrNzPcwOf2NrQgY9BWi0u/jMowMqDNXKu3rawsWWY=; b=HDxj2kTrR++/BF
	TA77oFhuL2lV7sp6ugqyV2FKQW9GsrJiVDVFFr2+W/hKDMcIf4BQUKlmyXXIQomFvmt13lO5lvQCQ
	im1TfopKnBwNFCaWEkrVbEQbBDK3SEWq3vzwy/RMvS9JR09ICXQUT7z0o03N5SdVxUxSlVPMDHqK1
	kJIiLb+rnxPbxuF9ttibq5qIQgfk0D5mpri7TY9MaU/Cus8sF+y/FKnoV3+xM49//iprF/KYILn04
	sa8rShCRgL9sGY49rTA9Pr5EFD8gxAxihsvEEoznMsPaWAa0/AgCkz59H2wEosp4MrEflXsNDGeuZ
	2TvzYGcXTvSNWdjKzgbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkAdr-00000006Fw8-0au4;
	Mon, 17 Feb 2025 23:35:11 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkAcO-00000006Fmj-0AjA;
	Mon, 17 Feb 2025 23:33:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1739835218;
	bh=LdoZzq7qtMiglzhu00kRaJtsesikQFQgmqj4oShgtzQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JEO/bCNBZRdX7mbbM65vYVr4iQyWDeUcojAo9kKT3nJWtW9bZsprxtF2kpXRSeUpO
	 /v4uzzlJeo1l68SC389qUGWLSL8D6a8q76DWWoSw/OMbq4l+yvrPP+AreJPqV5eW2b
	 V1ISv89z9tPP8yI8Ggb/BYCgu98EnxTtmOrDhmAobhI5omeOMTJiO/4OOmEajWUCpH
	 JY7KP94rvSz5hip/8oAZ//z4w1Ef1MPWauAagzgqzWqB+Ojmk0NTJZpQq71/SC7N4I
	 hsZ76kKXobhqrhEza/hNUdtDeue+AWq3nAGeOhWg7gpZMDpA1OtoDkdjYn13cX5lbw
	 lCGnQBTCaDC2A==
Received: from [192.168.1.143] (144.232.221.87.dynamic.jazztel.es [87.221.232.144])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9D17617E1553;
	Tue, 18 Feb 2025 00:33:36 +0100 (CET)
Message-ID: <1b3234ce-4526-4735-b9c0-c242e6cc3cf0@collabora.com>
Date: Tue, 18 Feb 2025 01:33:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add HDMI1 PHY PLL clock source
 to VOP2 on RK3588
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: airlied@gmail.com, andy.yan@rock-chips.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com, kernel@collabora.com, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, robh@kernel.org, simona@ffwll.ch, tzimmermann@suse.de
References: <20250215-vop2-hdmi1-disp-modes-v1-3-81962a7151d6@collabora.com>
 <20250217024437.35155-1-liujianfeng1994@gmail.com> <5190979.MSiuQNM8U4@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <5190979.MSiuQNM8U4@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_153340_229731_3CFAB67C 
X-CRM114-Status: GOOD (  12.04  )
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

T24gMi8xNy8yNSA0OjMzIFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNb250YWcsIDE3
LiBGZWJydWFyIDIwMjUsIDAzOjQ0OjM3IE1FWiBzY2hyaWViIEppYW5mZW5nIExpdToKPj4gSGkg
Q3Jpc3RpYW4sCj4+Cj4+IE9uIFNhdCwgMTUgRmViIDIwMjUgMDI6NTU6MzkgKzAyMDAsIENyaXN0
aWFuIENpb2NhbHRlYSB3cm90ZToKPj4+IFRoZSBIRE1JMSBQSFkgUExMIGNsb2NrIHNvdXJjZSBj
YW5ub3QgYmUgYWRkZWQgZGlyZWN0bHkgdG8gdm9wIG5vZGUgaW4KPj4+IHJrMzU4OC1iYXNlLmR0
c2ksIGFsb25nIHdpdGggdGhlIEhETUkwIHJlbGF0ZWQgb25lLCBiZWNhdXNlIEhETUkxIGlzIGFu
Cj4+PiBvcHRpb25hbCBmZWF0dXJlIGFuZCBpdHMgUEhZIG5vZGUgYmVsb25ncyB0byBhIHNlcGFy
YXRlIChleHRyYSkgRFQgZmlsZS4KPj4+Cj4+PiBUaGVyZWZvcmUsIGFkZCB0aGUgSERNSTEgUEhZ
IFBMTCBjbG9jayBzb3VyY2UgdG8gVk9QMiBieSBvdmVyd3JpdGluZyBpdHMKPj4+IGNsb2NrcyAm
IGNsb2NrLW5hbWVzIHByb3BlcnRpZXMgaW4gdGhlIGV4dHJhIERUIGZpbGUuCj4+Cj4+IFRoZXJl
IGFyZSBib2FyZHMgdGhhdCBvbmx5IHVzZSBoZG1pMSBzdWNoIGFzIFJPQ0sgNSBJVFguIFNvIHRo
ZXJlIGFyZSB0d28KPj4gY2hvaWNlcyBmb3IgdGhpcyBib2FyZDoKPj4KPj4gMSwgRW5hYmxlIGhk
cHR4cGh5MCBhcyBkZXBlbmRlbmN5IG9mIHZvcCBhbHRob3VnaCBpdCBpcyBub3QgcmVhbGx5IHVz
ZWQuCj4+Cj4+IDIsIE92ZXJ3cml0ZSB2b3Agbm9kZSBhdCBib2FyZCBkdHMgdG8gbWFrZSBpdCBv
bmx5IHVzZSBoZHB0eHBoeTEgbGlrZToKPj4KPj4gJnZvcCB7Cj4+IAljbG9ja3MgPSA8JmNydSBB
Q0xLX1ZPUD4sCj4+IAkJIDwmY3J1IEhDTEtfVk9QPiwKPj4gCQkgPCZjcnUgRENMS19WT1AwPiwK
Pj4gCQkgPCZjcnUgRENMS19WT1AxPiwKPj4gCQkgPCZjcnUgRENMS19WT1AyPiwKPj4gCQkgPCZj
cnUgRENMS19WT1AzPiwKPj4gCQkgPCZjcnUgUENMS19WT1BfUk9PVD4sCj4+IAkJIDwmaGRwdHhw
aHkxPjsKPj4gCWNsb2NrLW5hbWVzID0gImFjbGsiLAo+PiAJCSAgICAgICJoY2xrIiwKPj4gCQkg
ICAgICAiZGNsa192cDAiLAo+PiAJCSAgICAgICJkY2xrX3ZwMSIsCj4+IAkJICAgICAgImRjbGtf
dnAyIiwKPj4gCQkgICAgICAiZGNsa192cDMiLAo+PiAJCSAgICAgICJwY2xrX3ZvcCIsCj4+IAkJ
ICAgICAgInBsbF9oZG1pcGh5MSI7Cj4+IH07Cj4+Cj4+IFdoYXQgZG8geW91IHRoaW5rIG9mIHRo
ZXNlIHR3byBtZXRob2Q/Cj4gCj4gR29pbmcgYnkgdGhlIGNvZGUgaW4gcGF0Y2gxICgrZHJtLW1p
c2MpIHdlIGhhdmU6Cj4gICB2b3AyLT5wbGxfaGRtaXBoeTAgPSBkZXZtX2Nsa19nZXRfb3B0aW9u
YWwodm9wMi0+ZGV2LCAicGxsX2hkbWlwaHkwIik7Cj4gKwo+ICAgdm9wMi0+cGxsX2hkbWlwaHkx
ID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKHZvcDItPmRldiwgInBsbF9oZG1pcGh5MSIpOwo+IAo+
IFNvIHRoZSBjbG9jay1yZWZlcmVuY2UgdG8gaGRwdHhwaHkwIHNob3VsZCBqdXN0IHJlc3VsdCBp
biB2b3AyLT5wbGxfaGRtaXBoeTAKPiBiZWluZyBOVUxMIGFuZCB0aHVzIGlnbm9yZWQgZnVydGhl
ciBvbj8KClllcCwgdGhhdCBpcyB0aGUgaW50ZW5kZWQgYmVoYXZpb3IuCgpASmlhbmZlbmc6IERp
ZCB5b3UgZW5jb3VudGVyIGFueSBwYXJ0aWN1bGFyIGlzc3VlIHdpdGggdGhlIGN1cnJlbnQgYXBw
cm9hY2g/CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

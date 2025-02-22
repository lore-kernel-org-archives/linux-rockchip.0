Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D53DAC021B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hO5QvmDQO2pk+kU0gRMMXZ+sKb43QX+trqdv6y3Xq3c=; b=jkzqhALb/WLvx0
	ggt0HVFQTz/aMBW7N2O+BzCUE7jdBGZUrKjfpTZwKo69aKu4dLmRklpTj38+WDVFAAg+9ffIx3Dm/
	vwvpVsCEGs4YYYXytdSEgptBXx25DEo0bFSoarT0LWbTmvfxb47pMC9JBoe2zIMCgaJgjKeM2vKjy
	/9U8ZpkhNwY9sj4wQv6IonUifLsqULshiZ/x/VAAt2dpMBnPzkjRGEcqLBIukGx9fW2oCg2X6+jWL
	k1b7YYx3o69u7n/n8pghIWtQBNI7X71uG3uY2jvZc0M909IBOuLajS8h4oKndI4ZQnKLpJoj9Wwbk
	vkpaw++yyOqUNyXll0Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlx0Q-00000008otC-1XfP;
	Sat, 22 Feb 2025 21:25:50 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlx0N-00000008osH-0QBQ
	for linux-rockchip@lists.infradead.org;
	Sat, 22 Feb 2025 21:25:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740259531; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kahvBBzC/sE5LzO7udW6on5iWQY6boAaWgpShXdSq3ZopHjNleUp5y/noGK051JyO29yFaUhLQ00F9gITZjlOzCkVySoTpuJ0fN2BfS8iGKp6CheJoZmQLWbnwnvyUW/jYJtTEcu9QoHRFnNIRgZclMNLHoXnCYh0ym51yzHKDY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740259531; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=HHhVwOm8XCVyTGfKeefhbmzIfD+mbGXuyzinCDr/k+8=; 
	b=lhwJVlRdv79ql3NhjmhU0772ptdonzIUfRZbzoqBBqJKjMc+/G9mbVp8oqqsAAebIp03wX2hWOoEuLOTUNplLKJIXw4F+c+9NSstsy7bWjU6B2qtereggchIA/v0dGEdc/f6lbig3wvhPezr3tb8250YE2b7SdYfMAe2qLQifJY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740259531;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=HHhVwOm8XCVyTGfKeefhbmzIfD+mbGXuyzinCDr/k+8=;
	b=OLJCMGjEEoSmAKmRUvUvA00/1MMQFy9EED6VKygTYzduAjvSSeNVrm7uSj2rQKv2
	+QtQnzqoyeeE9ieDueRneNoL0uG/mfc+Cl4p89cY7JivNFBXpyiTNwRQJ+SKCNoPnHj
	UV6qWYJehOaweRPxe/dHUfzh0ptkPInR9jZgKMpw=
Received: by mx.zohomail.com with SMTPS id 1740259529876548.7189453271194;
	Sat, 22 Feb 2025 13:25:29 -0800 (PST)
Message-ID: <dfb0ef63-8867-4d00-abdd-8280623c3405@collabora.com>
Date: Sun, 23 Feb 2025 00:25:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/6] media: platform: synopsys: Add support for HDMI
 input driver
To: Markus Elfring <Markus.Elfring@web.de>,
 Dingxian Wen <shawn.wen@rock-chips.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Jose Abreu <Jose.Abreu@synopsys.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nelson Costa <Nelson.Costa@synopsys.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Rob Herring <robh@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: LKML <linux-kernel@vger.kernel.org>, kernel@collabora.com,
 Tim Surber <me@timsurber.de>
References: <20250218184439.28648-5-dmitry.osipenko@collabora.com>
 <9e46e0f9-ef0d-406f-9fa9-9c4464a8db88@web.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <9e46e0f9-ef0d-406f-9fa9-9c4464a8db88@web.de>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250222_132547_213634_6E93A1CD 
X-CRM114-Status: UNSURE (   8.71  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMi8xOS8yNSAyMzo1NiwgTWFya3VzIEVsZnJpbmcgd3JvdGU6Cj4g4oCmCj4+ICsrKyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vc3lub3BzeXMvaGRtaXJ4L3NucHNfaGRtaXJ4LmMKPj4gQEAg
LTAsMCArMSwyNzE4IEBACj4g4oCmCj4+ICtzdGF0aWMgdTMyIGhkbWlyeF9yZWFkbChzdHJ1Y3Qg
c25wc19oZG1pcnhfZGV2ICpoZG1pcnhfZGV2LCBpbnQgcmVnKQo+PiArewo+PiArCXUzMiB2YWw7
Cj4+ICsKPj4gKwlndWFyZChzcGlubG9ja19pcnFzYXZlKSgmaGRtaXJ4X2Rldi0+cnN0X2xvY2sp
Owo+PiArCj4+ICsJdmFsID0gcmVhZGwoaGRtaXJ4X2Rldi0+cmVncyArIHJlZyk7Cj4+ICsKPj4g
KwlyZXR1cm4gdmFsOwo+PiArfQo+IAo+IE1heSBzdWNoIGEgZnVuY3Rpb24gaW1wbGVtZW50YXRp
b24gYmUgc2ltcGxpZmllZD8KPiAKPiB7Cj4gCWd1YXJkKHNwaW5sb2NrX2lycXNhdmUpKCZoZG1p
cnhfZGV2LT5yc3RfbG9jayk7Cj4gCXJldHVybiByZWFkbChoZG1pcnhfZGV2LT5yZWdzICsgcmVn
KTsKPiB9CgpUaGF0IHdpbGwgd29yaywgdGhhbmtzLgoKPiDigKYKPj4gK3N0YXRpYyBpbnQgaGRt
aXJ4X2dldF9kZXRlY3RlZF90aW1pbmdzKHN0cnVjdCBzbnBzX2hkbWlyeF9kZXYgKmhkbWlyeF9k
ZXYsCj4+ICsJCQkJICAgICAgIHN0cnVjdCB2NGwyX2R2X3RpbWluZ3MgKnRpbWluZ3MpCj4+ICt7
Cj4g4oCmCj4+ICsJbXV0ZXhfbG9jaygmaGRtaXJ4X2Rldi0+d29ya19sb2NrKTsKPj4gK3JldHJ5
Ogo+PiArCW1lbXNldCh0aW1pbmdzLCAwLCBzaXplb2Yoc3RydWN0IHY0bDJfZHZfdGltaW5ncykp
Owo+IOKApgo+PiArCW11dGV4X3VubG9jaygmaGRtaXJ4X2Rldi0+d29ya19sb2NrKTsKPj4gKwo+
PiArCXJldHVybiByZXQ7Cj4+ICt9Cj4g4oCmCj4gCj4gV291bGQgeW91IGJlY29tZSBpbnRlcmVz
dGVkIHRvIGFwcGx5IGEgc3RhdGVtZW50IGxpa2Ug4oCcZ3VhcmQobXV0ZXgpKCZoZG1pcnhfZGV2
LT53b3JrX2xvY2spO+KAnT8KPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4x
NC1yYzMvc291cmNlL2luY2x1ZGUvbGludXgvbXV0ZXguaCNMMjAxCgpUaGF0IHdpbGwgbWFrZSBj
b2RlIGxlc3MgY29uc2lzdGVudCBhbmQgbGVzcyBpbnR1aXRpdmUgdG8gbWUuIEFueXdheXMsCnRo
YW5rcyBmb3IgdGhlIHN1Z2dlc3Rpb24uCgotLSAKQmVzdCByZWdhcmRzLApEbWl0cnkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2667EC021AA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Feb 2025 20:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qn+ljxfOXDumDdk0++iIE1K3mBflGxUHYP5YzKrEdxs=; b=3OrZOvU0vzFWTJ
	6PY4XDwI5e41MsdYbzASccsdDhbOC8Sqj1wNM+0PJeOECMBQ69sn58aisOt/SgU3ynv9pTTWaICO7
	VBKncDpoimyVONI7m2i/hG2bOJaqran/CVQBUDonrmdO5Jc6HweehqLHMwvnTkLV5R2sby0dl44aY
	FzHaaKqiR02G9u7NwVQQuuKhSgddLgcAYVJWUWjKa/1mJ7WwbekbvggkkcPoLFO4mdf3Pl1iEw56y
	kQG/fvc1G2PcmhtbIepVEktiy174GQvX5tM2+gambjCWO2q3YtA5hZcP3ltOna4YOuht9wAOmyF8Y
	hyV7diJbkU+f6jHjJGYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkr8i-0000000F2CB-3j8d;
	Wed, 19 Feb 2025 20:57:52 +0000
Received: from mout.web.de ([217.72.192.78])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkr85-0000000F1wU-3hfA
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Feb 2025 20:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1739998595; x=1740603395; i=markus.elfring@web.de;
	bh=2SWP69i4G2CzvUOmUdUSobPigRxGcLa8t5Qfp8lqpJQ=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=VnOTHiEMj4i5LnWd7hlrJLp7SmYwLCwyVF8qwqZqBg0QTdtgNJhA/zDo1OfxQ10c
	 uZRnrRbnzdZmVU416Ia9TLUWehIe7YWrxT4hjXp/H1D0gqXijoEa7o/jTz/rcOL7b
	 hURcmfz43sxD8y5T479DwGfZjvVTw2ge9J+NSTaF/EEZuO43uwK+T5f3jeLBeHCoR
	 tHOCp0l5WojA4St96d8vBnl8AeCQkqLopQa8RD3y5ip7q8Pgd5zkMwnjglvJBaGc/
	 9gKUxHIy90v8af5HBC/bWuyveH2mCJg76xZIMiFT/Lxbj9P0TQ8iHPB41u9/xE6uq
	 g/Bd/XZtptj8TKAilg==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.70.10]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MQPZj-1tyHH13N0D-00XOQW; Wed, 19
 Feb 2025 21:56:34 +0100
Message-ID: <9e46e0f9-ef0d-406f-9fa9-9c4464a8db88@web.de>
Date: Wed, 19 Feb 2025 21:56:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dingxian Wen <shawn.wen@rock-chips.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
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
Subject: Re: [PATCH v7 4/6] media: platform: synopsys: Add support for HDMI
 input driver
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20250218184439.28648-5-dmitry.osipenko@collabora.com>
X-Provags-ID: V03:K1:g/nteeapHpXeO3nP8XGK/NTsQoE4a7rQd00/eKhfZJqD3E4me6k
 mPBfaWWvqneRcRbYIXoVsvgfDFiwgmcn2+SwUKiismKfCo0nx3rdQhZBy4mLTqfXiQ+eYAr
 crbVywIUycNHedSQV7D5KlQ5pZaP5YEjKbWr4MixaWf0KeSynMRIIrtuR+28WZrPHQqNJtt
 zqqN1ASlctW5KqJINvu4A==
UI-OutboundReport: notjunk:1;M01:P0:yENNPZNocHo=;+183wIzyv9NKLgHds8Pv5Kf1BKA
 A/Wg66fU01k3WnFoD00qZzEQwiXX0D7GuUKZeoZQMJa8keAt8+Q42akBR1/hAo2O0IXif2V2m
 UpRMSGaP9dy/S3Ec0yDk5BTlfcWGQvBT3DOoFcumU+AsFjlmEG/m5PZQpnQYorgFM9nSS02PN
 p58tNBtQM7DNzXAEs4ZqD7MG2Zm/249pLigmh/jKIXWFU7iz0Q2oMpbrBM2alc07/Ndkokaik
 0cqMxW+kBLOqYMncu6wIArXIXsGVU2Zzti1hsxwmrb4goYyyUy8kt3o1vrFj6BVNCrjUD2vP1
 mhI8dQsk8hz2Gzu8MX1Mx8QvdxOCJU/3LCiTlXHiBVWXCEhbtDxUitO7bqudEL+TjKiL3LzhW
 l/Z0RUvLd4oyCWx+xwJi3g1gnlGm86xgb+QS3n6tdDRZrtMsWWc0p6+aHPc1P8umtGckRZPyr
 ySLoAcJSG3tpXN0btIzmI5ax0+KOCWXC5i5PjxNIf705z4UkvWWbu91IWTRCRkaYJgAkB/LVZ
 hvm5vF+oHddRLi9ZdbZpoxyaYPqFC4WE6uvI6EkERfl1kUsRJrig5f2Gq3dfQgKIWfClCv/zy
 35iQkHQqDD/s+xOWTm9cZn9tokgo+LEpswNlSowKHUM6gMx97C1WWCl0f2wqGSvrSBU8LRXpn
 SRAvcgWTzgH4braa2hzN5Nbik448TO8oEBnLdJ//q8WQ6z4VZzoInGFUA2ZqAxOFsy7YHrTnj
 zY4V4q4hCm5oPoTFACgE1ayPBttSSUuY8yPyEFRV5zHs7vEW9udTtFsM5QqpnO1I5o/j7NDBN
 VjiOrlY0S9PQWBLedLf2k7Xd5KoQgoEwBqHnJ7I5+7NPlW/tb51tagSH9+pQXOa/EVYQlY6WH
 P+TH/mMc/zHycGtSLs+UJILEbFBB/AwbEbPacaFFDn8OaFlyWULwDGoOxStjbeKttoBjdiRis
 3s1r+qfGnD787i5dYmv2rKR8Z8gytFcy7h9KFwRPuuYyHy3sZAOtNDVjkrV/0mG2fja1TCBMv
 ecATiphPI7htOKxzsTohbuxuxX4XPV2SlFLDx4o1ChInU+OQy+gKYbpk9NmAKL5eusJ8pRz1N
 OGgcMdpPk0WwtUk3gxfFzU0I7nVGlhhx2juDha+VN2PfNvqqc5XVjLZGqMGgR5Ui4gdNJuV4A
 953oC5vBkAwPlQlOvKja71n7uZJ9FGoJfhpxCVQMBe2CBwSh1qdoRrEDsXG40qmVhOGhlZ2mA
 pac6GPVEumtSEvl7LJ61tEY8/80soT2qHAjs5euHCFCAiv/CTG0+S2Q7hQRJvZhwlXJheT0xa
 P8ajQG4bRrTyYvoSE7gdgXkj3gjdM2v3OV3GBP0suiLka3M44cTbGNwXXrlzzWxD1zE17OKA8
 TFcwClH2AMfL8jTK4akoGBJ+M321I6R9FHC5bF3ECN2VMnFktPoZKYwnC1apBbH12IihMKVvO
 clLH5DCRBHN7BK7FaXWjKie/zTgQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_125714_216725_23E4798C 
X-CRM114-Status: UNSURE (   6.78  )
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

4oCmCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zeW5vcHN5cy9oZG1pcngvc25wc19o
ZG1pcnguYwo+IEBAIC0wLDAgKzEsMjcxOCBAQArigKYKPiArc3RhdGljIHUzMiBoZG1pcnhfcmVh
ZGwoc3RydWN0IHNucHNfaGRtaXJ4X2RldiAqaGRtaXJ4X2RldiwgaW50IHJlZykKPiArewo+ICsJ
dTMyIHZhbDsKPiArCj4gKwlndWFyZChzcGlubG9ja19pcnFzYXZlKSgmaGRtaXJ4X2Rldi0+cnN0
X2xvY2spOwo+ICsKPiArCXZhbCA9IHJlYWRsKGhkbWlyeF9kZXYtPnJlZ3MgKyByZWcpOwo+ICsK
PiArCXJldHVybiB2YWw7Cj4gK30KCk1heSBzdWNoIGEgZnVuY3Rpb24gaW1wbGVtZW50YXRpb24g
YmUgc2ltcGxpZmllZD8KCnsKCWd1YXJkKHNwaW5sb2NrX2lycXNhdmUpKCZoZG1pcnhfZGV2LT5y
c3RfbG9jayk7CglyZXR1cm4gcmVhZGwoaGRtaXJ4X2Rldi0+cmVncyArIHJlZyk7Cn0KCgrigKYK
PiArc3RhdGljIGludCBoZG1pcnhfZ2V0X2RldGVjdGVkX3RpbWluZ3Moc3RydWN0IHNucHNfaGRt
aXJ4X2RldiAqaGRtaXJ4X2RldiwKPiArCQkJCSAgICAgICBzdHJ1Y3QgdjRsMl9kdl90aW1pbmdz
ICp0aW1pbmdzKQo+ICt7CuKApgo+ICsJbXV0ZXhfbG9jaygmaGRtaXJ4X2Rldi0+d29ya19sb2Nr
KTsKPiArcmV0cnk6Cj4gKwltZW1zZXQodGltaW5ncywgMCwgc2l6ZW9mKHN0cnVjdCB2NGwyX2R2
X3RpbWluZ3MpKTsK4oCmCj4gKwltdXRleF91bmxvY2soJmhkbWlyeF9kZXYtPndvcmtfbG9jayk7
Cj4gKwo+ICsJcmV0dXJuIHJldDsKPiArfQrigKYKCldvdWxkIHlvdSBiZWNvbWUgaW50ZXJlc3Rl
ZCB0byBhcHBseSBhIHN0YXRlbWVudCBsaWtlIOKAnGd1YXJkKG11dGV4KSgmaGRtaXJ4X2Rldi0+
d29ya19sb2NrKTvigJ0/Cmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE0LXJj
My9zb3VyY2UvaW5jbHVkZS9saW51eC9tdXRleC5oI0wyMDEKClJlZ2FyZHMsCk1hcmt1cwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

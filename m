Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B70ED42B8C
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 14:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RF3zujkTmbjGofuWe1xc0NJKi5M7Y7O2qjiHPAercsc=; b=u2fijowC+nh3yk
	/dPWK5vjCvIpZqTF9WX1MOV9LOaV8BiS5zgwEuoi1vSG3X9jZ0AfkPhTrJEcFBu9x0knPnDh3sWbv
	rrV9UhZgDnNnX6POKDcryaeGtG4Yw4gp+5Zv2iyrwBRLKxy3rHu9ZfzF6Z7lF78GmFwKtN9L1Ch9r
	bjHJN0litfHaAyPMYSc/0r54hj2Y2AtTFBCoRr+C7ddzVe3MHEDKkSEyUu4am5QqKXg3eoBLJUjL6
	cAvggkc0YffkPNQzK3wN2c7YRLeZH35/s1vvHj4wS5nKXtOz2abufW9UrGa8zoVSI4zdZKUflM5zt
	EoN/le7Dikg/Jf6Ph5tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAsAl-00000003oW2-2Dsl;
	Tue, 12 Nov 2024 14:47:15 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAs1U-00000003mNB-2kJh;
	Tue, 12 Nov 2024 14:37:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7EB31A41C62;
	Tue, 12 Nov 2024 14:35:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 614C8C4CED6;
	Tue, 12 Nov 2024 14:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731422259;
	bh=yW75lJPp4kqCgCVPMkIbHw2p/49v6BgJKGW8dcF7ODw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g10uLWKnMoNs8UBqNHWcGrgdFo2m2PeXfTpO5UC9XQTIoFUcEsj3IY5u3+5ybgzCp
	 GwHzpvY8kxER14I30jltzkbfM01s2SLLvSrUoc9ZCd81AKxJJnXSmBsnD0D5lJwwYZ
	 4ynd1xeQEFia4kPiBk92ofykCyf7yp3dsojpsHWkEdIoFEbNCjGUJ/n2IKjkflaHPq
	 8V+c3lMxepIlwBUy1XOERaOsQSwogtCCJNZGs7mXLIbzmpGbS3qUEEgKVrCF1b4S4z
	 9rAnGcwHL6gUWUkKPNh67Tkg42dJENV5bwX7Y1I/T5STRR7Qe0qREvnIBoBc0vO2Qb
	 FTnqEQxf40XFA==
Date: Tue, 12 Nov 2024 14:37:32 +0000
From: Lee Jones <lee@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, jic23@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jdelvare@suse.com, linux@roeck-us.net,
	srinivas.pandruvada@linux.intel.com, bentiss@kernel.org,
	dmitry.torokhov@gmail.com, pavel@ucw.cz, ukleinek@debian.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-leds@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH v9 1/9] HID: hid-sensor-hub: don't use stale
 platform-data on remove
Message-ID: <20241112143732.GG8552@google.com>
References: <20241107114712.538976-1-heiko@sntech.de>
 <20241107114712.538976-2-heiko@sntech.de>
 <nycvar.YFH.7.76.2411071358210.20286@cbobk.fhfr.pm>
 <4934964.GXAFRqVoOG@diego>
 <nycvar.YFH.7.76.2411071534110.20286@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.2411071534110.20286@cbobk.fhfr.pm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_063740_777135_F5CEC20F 
X-CRM114-Status: GOOD (  12.85  )
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

T24gVGh1LCAwNyBOb3YgMjAyNCwgSmlyaSBLb3NpbmEgd3JvdGU6Cgo+IE9uIFRodSwgNyBOb3Yg
MjAyNCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gCj4gPiBUaGlzIGNoYW5nZSB3YXMgbW9yZSBv
ciBsZXNzIGEgc3VycHJpc2UgZmluZCwgYmVjYXVzZSBJIHdhbnRlZCB0byBtYWtlCj4gPiB0aGUg
cGxhdGZvcm1fZGF0YSBwb2ludGVyIGluIHRoZSBtZmRfY2VsbCBzdHJ1Y3QgY29uc3QgYW5kIHRo
aXMgdGhlIGhpZAo+ID4gc2Vuc29yIGh1YiBzdG9vZCBvdXQgYXMgZG9pbmcgc29tZXRoaW5nIHN0
cmFuZ2UgOy0pIC4KPiA+IAo+ID4gU28gcGF0Y2ggMiBvZiB0aGlzIHNlcmllcyBhY3R1YWxseSBk
ZXBlbmRzIG9uIHRoaXMgY2hhbmdlIHRvIG5vdCBjYXVzZQo+ID4gYnVpbGQgZXJyb3JzLgo+IAo+
IEFoLCByaWdodC4KPiAKPiA+IEJ1dCBzZWVpbmcgdGhhdCB3ZSdyZSBhZnRlciAtcmM2IGFscmVk
eSwgSSB3b3VsZCBhc3N1bWUgdGhlIGJydW50IG9mIHRoZSAKPiA+IG1jdSBzZXJpZXMgbWlnaHQg
bmVlZCB0byB3YWl0IGFmdGVyIDYuMTMtcmMxIGFueXdheSAtIGJ1dCBJIGd1ZXNzIHRoYXQgCj4g
PiBkZXBlbmRzIG9uIGhvdyBMZWUgc2VlcyB0aGluZ3MgOy0pIC4KPiAKPiBPSywgSSBhbSBrZWVw
aW5nIG15IGhhbmRzIG9mZiBpdCBmb3IgdGhlIHRpbWUgYmVpbmcuCgpJIGNhbiB0YWtlIGl0IG5v
dyB3aXRoIGFuIEFjay4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

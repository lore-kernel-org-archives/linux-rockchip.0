Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE47ED2ECF7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7eXYCDd7Jio10aI6KxhSvvVn+/e4YVvGPMoNScbof0=; b=A9MLRqMZYEEEXn
	dNkkcW4rRaDAqqCEnxZvAzkTPZN1n+7K/W1IlUKnICPZqF6REzvnJ4+1cO7Dgrtm8lbRnMAe2cSz/
	6Mv5+xtVFsUjro4MTDIbfEwYuajfMh+TrXvytMqherAzV3KDACTt477382O4q5rkJdA4F6DThM6DM
	zqCfYpBpFPrhqDZMkJcHvmi4m9Uph/YrI9QA2lIQXWUjenYq90ccGNhONh0SLWVF9UJpARejKlrur
	wd99pZzTMb9v23adPrRPNT4MIsV4WeNOar6+9yf28+5jWHBzZ17Z52ObJtuRMHSQNVhRBEGwmJMEj
	JZDrNIPAy/4RfkDW9kAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi7vK-00000003WWZ-02s7;
	Tue, 20 Jan 2026 09:21:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi7vF-00000003WVe-3WgF;
	Tue, 20 Jan 2026 09:21:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=OXF/P9VEQfJJ8i8D8me4MwtOeFLxEnKqU9NmPAC1YHc=; b=JFoO3X/31ShkwGFeoJua438lVX
	I9lQFhXy/qzUijrhubYOGPYKLSBhhvGPyX4tBeGmHjfUYDNWQBHKfm9Sq8MygTdyBuf/HOPsfG4tP
	31RVUvi3YRJhRqj//hQmwVlHAGjkxAwWMaCS+vks8H3Pl/E/qe2Ux3atFsm6+3lF4oc7QAxt+8lSm
	leEad7NbM0B2LioM/a4oQzS6WD+N4kBk+kYWh/Vaznx49/Rz4h9VfGrT5w89xW97LAIiOh6c60ULN
	ZQap1RRC0ejab+OJe3hD8yuXJMzgqeOZe5TkkMmLm0ZvCTGD937bndPDAAqbyAJS3AokxDyU5mAm9
	ySVQxWig==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi7vD-0000000DgiO-0jIR;
	Tue, 20 Jan 2026 09:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OXF/P9VEQfJJ8i8D8me4MwtOeFLxEnKqU9NmPAC1YHc=; b=BimZu0SuvzB3jaUW5oNSKxEaOu
	uB3H3zCEEpx7yA6si/29a3bsR5iKClQLYlHKfTbQFEk8Gmfzpt+z47v2bP3if1Ke0/7lrocAxi0I6
	tc+T/tBM6Pz5+/9yzGEFeZYC5BzyOpLC5j3QS0gTRKAdGEG0We3410D6IoeBzojXifV5W1oB5C8c2
	lt+LPC710XKWmU8vMpx50S+2aKaaB5Dspupzyyc/QNocLut0BI588Ganj5QG71PMidnAWVe9p7rxn
	rTWbRKfShFWUmDMHqf8GqLJFhgeoaK/Bt0yzBGCMFxxuG8m39cbaNJza5UI+pJZwGMbHkeLKXyocU
	UGHAiwmQ==;
Received: from [192.76.154.238] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vi7v3-003KRU-PW; Tue, 20 Jan 2026 10:21:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>,
 Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Manivannan Sadhasivam <mani@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on RK3576
Date: Tue, 20 Jan 2026 10:21:01 +0100
Message-ID: <40619400.XM6RcZxFsP@phil>
In-Reply-To: <8960787.MhkbZ0Pkbq@diego>
References: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com>
 <CABjd4YympEqbiN9-Kwv40YtaCh6bu=3PBQPyvvGgKCQbLeZmZw@mail.gmail.com>
 <8960787.MhkbZ0Pkbq@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_092111_269105_B212570E 
X-CRM114-Status: GOOD (  11.48  )
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

QW0gTW9udGFnLCAxOS4gSmFudWFyIDIwMjYsIDE1OjQyOjIzIE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4gQW0gTW9udGFnLCAxOS4gSmFudWFy
IDIwMjYsIDE1OjA1OjE2IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQWxl
eGV5IENoYXJrb3Y6Cj4gPiBIYXBweSB0byBtYWtlIGEgdjIgd2l0aCBhbiBleHBsaWNpdCBwdWxs
LWRvd24uIFdpbGwgd2FpdCBhIGJpdCBmb3IgYW55Cj4gPiBvdGhlciBwb3RlbnRpYWwgZmVlZGJh
Y2sgdGhvdWdoLgo+IAo+IEknZCBzaWRlIHdpdGggUXVlbnRpbiBoZXJlLCBoYXZpbmcgdGhlIHBp
biBmaXJtbHkgb24gb25lIHN0YXRlLCB3aGVuIG5vLW9uZQo+IChib2FyZCBub3IgZHJpdmVyKSBp
cyBjYXJpbmcgd291bGQgYmUgbXkgcHJlZmVyZW5jZS4KPiBFc3BlY2lhbGx5IGFzIFF1ZW50aW4g
c2FpZCwgdGhpcyBpcyB0aGUgaGFyZHdhcmUtZGVmYXVsdCB0b28uCgpBbHNvIGl0IHdvdWxkIGJl
IGdvb2QgdG8gc2VuZCB0aGF0IHYyIHNvb25lciByYXRoZXIgdGhhbiBsYXRlciwgYXMgd2UncmUK
cHJldHR5IGxhdGUgaW4gdGhlIGN1cnJlbnQgZGV2ZWxvcG1lbnQgY3ljbGUgYWxyZWFkeS4KKFdl
J3JlIGFmdGVyIC1yYzYgYWxyZWFkeSkKCgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

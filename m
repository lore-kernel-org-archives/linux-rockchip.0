Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDEB3CA101F
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Sep 2025 02:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvHFCHORH5iYEj4J1PbckuXR2bnrP1lzBz5tD4/ubu0=; b=xxOHlfsyI6cKdi
	jduZ2cMdD0SXY21yGdqJy37E0TVNY12hVEmf3GecPRaP3fjscnAfIBBFXEY3XTo4DIEW7Ur9mylmL
	JdaS+Jv5G+D2Y3eLCct9jcYTJ3KvfOm45BpfstXACnEkLPJDrAutPOFgW6oDmxhML5KzK3e4Fuc5Q
	Ex17LbmOEP0LVmha8Raf8DMRc0s6tyt5nVUVoqrxrsCFUsE+lNScdRVYBq9Ub1TAlH6T6vcXeveTF
	pSEbYYEz62a1TRCnzi4X0jWoJErLlIrk0pjQ64/qpXfjFAkHwkHfYdVOPxTWIJ+QSyW5bdqp8Q9Lh
	2esFg3Q1cYQ0fvWXc5eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvRuX-0000000E5YN-103g;
	Mon, 08 Sep 2025 02:47:17 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvRrg-0000000E4t5-3oQx;
	Mon, 08 Sep 2025 02:44:23 +0000
X-QQ-mid: zesmtpgz8t1757299367t8a4b77a0
X-QQ-Originating-IP: kDY0/8+9nALfx1XqnlgO5eSHKtE512wTM2GGkuQcJPg=
Received: from localhost.localdomain ( [183.51.121.90])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 08 Sep 2025 10:42:45 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9255924790218013141
EX-QQ-RecipientCnt: 15
From: Kaison Deng <dkx@t-chip.com.cn>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Wayne Chou <zxf@t-chip.com.cn>,
	Kaison Deng <dkx@t-chip.com.cn>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add devicetree for the ROC-RK3588-RT
Date: Mon,  8 Sep 2025 10:42:45 +0800
Message-Id: <20250908024245.1005875-1-dkx@t-chip.com.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <2744084.BddDVKsqQX@diego>
References: <2744084.BddDVKsqQX@diego>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:t-chip.com.cn:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: OEnzgNnS40p5aZaK1EGTl3Mj98tsGfv1ttjfuvKpkhdgicvHnivZHaS9
	oEazUl6lZTf+cZbKoxvCjopzFLNVmiHEKo30rujhSAMiJ3xdqZl/yJ6d8ESu5C/+1IAgy35
	sz/Sr32KuFaBIutErgHGK7IDoAcqFUHmQ3SNJe40rfC7yzU1Q6BfeHfC9Sg4ce5psMo+jSu
	fshjBvR28JCFT0ZTbm9oBpgVUF2CBWRfzVDUjpzdGxaximAtxlhp94nMw2Kfj1ByRJ2J8iR
	M20vnIP6Sp0dayClYncRM8dsXrkQfj8WVOxQEGJHNRVuMdg/dmUONRxvYg2c6B4Fsk7Ds+z
	ERygAH7hBZDdvJPPfCeyaCMgVEEaiVKBzadv1TKhefNzAZOwlNtmy5gZmYxxqS0TcXxa19E
	uz/rSwLNDpiFW2QhhEf5PFZSkLiTu4aly5o7+PxV9cZFxMHilebFGN8zwHmUuumgo4FUiIQ
	RBebV4L/KE1LaU0s4wHBpqsgkRZt9q5gcrPQzabiz3y//z6wyScE0iXhS9OI3a0BVbFgUDV
	5CRwXiyD0zzyAxVvIadN3R9pAzJAw0tNOsuulSWpDne+XFjakx4HLwqaJ33wWQA8V9erPCt
	/gfLUf3AKWNcBBlBi/PNfI7CgX6HYE9D5dAt0IBFfsw63H/SVRnJHDJvF6LSwuWNs40KXud
	zNP0f0atPZrUjTJZtdh0/XzuTcb4PkvRLd+RXF+NX0Z6s87kA6NQ41rn+4l8Q0MoAt4fxnc
	c2+zuc/pFovo+YYiGYMbZPKKzR0WDHG7ER0wB+dIzYE65RKNREdplFON1CzDqmunuqpnnWC
	Cu449tS38h2jqCv5UbhUmjCuO9/mWQKXCCsLqru7K2hboWFWeXgVFPz6oInZizurqmasWdn
	syWwvkNXTyDx5mIKQsY+MiIhzz849ewhTKZ7ECcu+NGGiH7pcuj2VmW1wH2G7328olKl08Z
	yH6UNlqtzM6L1nUKybEIAAUUu9cMEw8fY+IXwE7K5s5ngoRi7PswJcb+Zlkhz30xA+vVAOi
	gLo4JMYLslJQMiVgWAOW9mdNkv3l+hfQduFxvomRO1d2i2GgcGI68TwLs67uRsIdLRfL4CV
	QmtkG/uFLgSZHfOZGX/q9eJAxWKRKpLNskyfKk8NoWdB+CvP0vhsxftKReA20kYAlPILdte
	Oir69RKrYI7K3LEdQnLvQUkdzw==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250907_194421_593878_AC189D53 
X-CRM114-Status: GOOD (  14.84  )
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

SGksCgpPbiBGcmksIDIwMjUtMDktMDUgYXQgMTE6MTkgKzAyMDAsIEhlaWtvIFN0w7xibmVyIHdy
b3RlOgo+IEhpLAo+Cj4gQW0gRnJlaXRhZywgNS4gU2VwdGVtYmVyIDIwMjUsIDExOjAxOjE1IE1p
dHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0Cj4gc2NocmllYiBLYWlzb24gRGVuZzoKPiA+IFRo
ZSBGaXJlZmx5IFJPQy1SSzM1ODgtUlQgaXMgUkszNTg4IGJhc2VkIFNCQyBmZWF0dXJpbmc6Cj4K
PiBPbiB0aGUgd2VicGFnZSBpdCBpcyB1bmNsZWFyIGFib3V0IHRoZSBzb2MsIGJvdGggcmszNTg4
IGFuZCByazM1ODhzCj4gYXJlCj4gbWVudGlvbmVkPwo+Cj4gaHR0cHM6Ly9lbi50LWZpcmVmbHku
Y29tL3Byb2R1Y3QvaW5kdXN0cnkvcm9jcmszNTg4cnQKPgpJcyByazM1ODguIFRoaXMgd2VicGFn
ZSBpcyBpbmNvcnJlY3RseSBkZXNjcmliZWQsIHdlIHdpbGwgY29ycmVjdCBpdC4KCj4gPiAtIFRG
IGNhcmQgc2xvdAo+ID4gLSBOVk1FIDIyNDIgc29ja2V0Cj4gPiAtIDF4IFVTQiAzLjAgUG9ydCwg
MXggVVNCIDIuMCBQb3J0LCAxeCBUeXBlYyBQb3J0Cj4gPiAtIDF4IEhETUkgMi4xIG91dCwgMXgg
SERNSSAyLjAgb3V0Cj4gPiAtIDJ4IEdpZ2FiaXQgRXRoZXJuZXQsIDF4IDIuNUcgRXRoZXJuZXQK
PiA+IC0gTS4yIEUtS0VZIGZvciBFeHRlbmRlZCBXaUZJIGFuZCBCbHVldG9vbGgKPiA+IC0gRVM4
Mzg4IG9uLWJvYXJkIHNvdW5kIGNvZGVjIC0gamFjayBpbi9vdXQKPiA+IC0gUlRDCj4gPiAtIExF
RDogV09SSywgRElZCj4gPiAtIEJUQiBjb25uZWN0b3IgZm9yIFBDaWUsIFVBUlQsIFVTQiwgQ0FO
LCBTQVJBREMsIEdQSU8KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBLYWlzb24gRGVuZyA8ZGt4QHQt
Y2hpcC5jb20uY24+Cj4KPiB5b3UgZGVmaW5pdGx5IG5lZWQgYSAybmQgcGF0Y2ggYWRkaW5nIGFu
IGVudHJ5IHRvCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUKL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+ClRoYW5rcyBmb3IgcmVtaW5kaW5nLCBJIHdpbGwgYWRk
IGEgMm5kIHBhdGNoIGZvciBoaW0uCgo+IFRoZSByZXN0IGxvb2tlZCBwcmV0dHkgZ29vZCBvbiBh
IHNob3J0IGdsYW5jZSA6LSkKPgo+IEhlaWtvCj4KPgoKS2Fpc29uCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

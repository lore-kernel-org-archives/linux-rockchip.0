Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DDF2C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 09:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IrB5eR0Xq/Q/gE8WKK2ZHrnPi8llWTFGJpQ8idLTBkE=; b=ApoTEuVS8JO9YD
	Lpol1RrI6VtM/If3E0qVzeIYMwCy6FJ08TmqbiPTsECtK8Rm/M+Rc2KZfZ+S6HsVc4w1RQI1sdNZR
	LFz5flutDgiLQsZ9NSQMlvsc500LH9gJFnal41EpVCvHY1oMSGSxa0VFtYmwhgcT2uxRd/UaYVanj
	xDtKuWehzGNBhFVhBqnCLeRNhITtk8ZvCuZxD5843KQhHTGzzZS9rkWl2YNQuKYK5ffBX5jdY+EP9
	DESwgRrerE2EiDGLxm9b6oY9HI8/2/qStTQGjAdhjChnrU2GzrdKtcxTvMdU9Uje2DLWpHPooJrlQ
	YMSDjOc+D02Mc9bEqidg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oevHF-000VmD-Dy; Sun, 02 Oct 2022 09:28:49 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oevH4-000VgI-B7; Sun, 02 Oct 2022 09:28:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 5CE2E32008FB;
	Sun,  2 Oct 2022 05:28:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sun, 02 Oct 2022 05:28:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1664702910; x=1664789310; bh=o4YZVV66nFlu/Ivg+JUF8MHi6wK7LZJ8ljN
	xD8TAngo=; b=Om3/r7JinO6Vdm0SovcvEVyrIeO7eOyiYs5icSZX2fbe2bJLD5F
	HRMkOyHvvcDMDeoh6N1yjISEejau0w6+HSI5aTUf6XZTk7snAWytpfhbAlvnP8Ti
	zvoYk1bRNfcS4kXT+0stj5MQbPO77Mh+itoDRWguyRb2m4w6GxGKdknZv+t4e9Wz
	UyVzGY57v9iMX3uq1afNQXg7ChyI/hbZBvg0AaU+wr9AJTwoMzm721n04R9lsBwD
	pw2x9eaALxmH595QroH2SaXu8zDRRoDbTOrVktrJW6OtpTbup0n/B/sUv45FeNQE
	G/kBU1Vk3tMug3Ty3kpFJ9i5xW+5QkSZRNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1664702910; x=1664789310; bh=o4YZVV66nFlu/
	Ivg+JUF8MHi6wK7LZJ8ljNxD8TAngo=; b=enNGwLxAIwmVqkIYRXEUMN3GkDFDa
	iF61ssUyYJml5oxleHED9YCI8iMRb/5+6yH+DDptE8dyo3wMN6ejwZNhDgVPD/0T
	5eut+C7SzbxMfjB1mFuHFve0G6eb8R6D0eXXNXxKapVWlygeSP0I+sAiitVhIFnh
	dJQByo4Li5v/nuTzQfYeSu50zrJtDg/Nj6nfon2cauQjD+VYI0UBJmeuuc3FuDdL
	N23zPMS8FQ34o9hxiN2sVbnCvvZhVfJpN0HHs7clDGcTj/Zx57RYx4jKXtiORCxQ
	fFTbOtvM1qPLExbZibf+p9OXwHt4zLUP5qYdQ2QVXwpQan6hOsGUuJLnQ==
X-ME-Sender: <xms:vlk5Y-UyEvoTehqxgtAwOTSWLwJCEhTGg4ISP4g-4yIEtjNxVJve6w>
    <xme:vlk5Y6mFi5xaqD4xg4VGOMKoWwnjQCBfdhS8XzvgIieTv6OAHYw6WZzkPunp1l1pM
    V2C4ONRfb5bbkfI8g>
X-ME-Received: <xmr:vlk5YyYXqr6n8Lh6Yl5MFw8bgIfUI3XS1lDHVQvLG804oHA8x9kUyCuegpWhFReb7c1hzbQvFW552rO58HcZXhRkI-SV6DQ47vI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeehjedgudeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofggtgfgsehtkeertdertdejnecuhfhrohhmpefvohhmucfh
    ihhtiihhvghnrhihuceothhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukheqne
    cuggftrfgrthhtvghrnheptdfgteduheeljeeiieduveehhffgfeelvedvjefhudetudeh
    udffleefffeuheeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepthhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:vlk5Y1VrI4_fi5Q19lQ0Hw4TPR7PJkB4dL8vYXWOLuzE2pwDjfPgng>
    <xmx:vlk5Y4nVIqlpq9zHkeRUdRNBfm3z-p9dqj-JkyAAi9SMfhvXuyhxWQ>
    <xmx:vlk5Y6ed4Hi4omPmwWE8t9CoIpt7HMtheUzvADOW3lp0WU2lRJZYuQ>
    <xmx:vlk5Yz_mHpNnIXR4WCp97kPB9h4N5rk7VaILPOQ8z39OptJ6I6-I7w>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 2 Oct 2022 05:28:27 -0400 (EDT)
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Subject: [PATCH v2] arm64: dts: rockchip: add BT/wifi nodes to Pinephone Pro
Date: Sun,  2 Oct 2022 20:28:09 +1100
Message-Id: <20221002092809.451501-1-tom@tom-fitzhenry.me.uk>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221002_022838_868283_F07969C3 
X-CRM114-Status: UNSURE (   8.98  )
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

UGluZXBob25lIFBybyBpbmNsdWRlcyBhIEF6dXJlV2F2ZSBBVy1DTTI1NlNNIHdpZmkgKHNkaW8w
KSBhbmQKYnQgKHVhcnQwKSBjb21ibyBtb2R1bGUsIHdoaWNoIGlzIGJhc2VkIG9uIEN5cHJlc3MK
Q1lQNDM0NTUgKEJDTTQzNDU1KS4KClRoZSBDWVA0MzQ1NSBkYXRhc2hlZXQgKCJQb3dlci1VcCBT
ZXF1ZW5jZSBhbmQgVGltaW5nIikgZG9jdW1lbnRzOgoqIG5lZWRpbmcgdG8gd2FpdCAxMG1zIGJl
dHdlZW4gY29uc2VjdXRpdmUgV0xfUkVHX09OIHRvZ2dsZXMKKiBuZWVkaW5nIHRvIHdhaXQgMTEw
bXMgYmV0d2VlbiBwb3dlci1vbiBhbmQgU0RJTyBhY2Nlc3MuCgpTaWduZWQtb2ZmLWJ5OiBUb20g
Rml0emhlbnJ5IDx0b21AdG9tLWZpdHpoZW5yeS5tZS51az4KUmV2aWV3ZWQtYnk6IE9uZMWZZWog
SmlybWFuIDxtZWdpQHhmZi5jej4KLS0tCkNoYW5nZXMgc2luY2UgdjE6CiogY2hhbmdlZCB3aWZp
IHBvd2VyIGRlbGF5cyBhY2NvcmRpbmcgdG8gZGF0YXNoZWV0CiogcmVuYW1lZCBzZGlvX3B3cnNl
cSBub2RlIHRvIHdpZmlfcHdyc2VxCiogcmVvcmRlciBub2RlcyBhbHBoYWJldGljYWxseQotLS0K
IC4uLi9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzICAgICB8IDc2ICsrKysr
KysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3NiBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5k
dHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0
cwppbmRleCAyZTA1OGMzMTUwMjUuLjA0NDAzYTc2MjM4YiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKQEAgLTgxLDYg
KzgxLDI3IEBAIHZjYzF2OF9jb2RlYzogdmNjMXY4LWNvZGVjLXJlZ3VsYXRvciB7CiAJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+OwogCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNf
c3lzPjsKIAl9OworCisJd2lmaV9wd3JzZXE6IHNkaW8td2lmaS1wd3JzZXEgeworCQljb21wYXRp
YmxlID0gIm1tYy1wd3JzZXEtc2ltcGxlIjsKKwkJY2xvY2tzID0gPCZyazgxOCAxPjsKKwkJY2xv
Y2stbmFtZXMgPSAiZXh0X2Nsb2NrIjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJ
cGluY3RybC0wID0gPCZ3aWZpX2VuYWJsZV9oX3Bpbj47CisJCS8qCisJCSAqIFdhaXQgYmV0d2Vl
biBwb3dlci1vbiBhbmQgU0RJTyBhY2Nlc3MgZm9yIENZUDQzNDU1CisJCSAqIFBPUiBjaXJjdWl0
LgorCQkgKi8KKwkJcG9zdC1wb3dlci1vbi1kZWxheS1tcyA9IDwxMTA+OworCQkvKgorCQkgKiBX
YWl0IGJldHdlZW4gY29uc2VjdXRpdmUgdG9nZ2xlcyBmb3IgQ1lQNDM0NTUgQ0JVQ0sKKwkJICog
cmVndWxhdG9yIGRpc2NoYXJnZS4KKwkJICovCisJCXBvd2VyLW9mZi1kZWxheS11cyA9IDwxMDAw
MD47CisKKwkJLyogV0xfUkVHX09OIG9uIG1vZHVsZSAqLworCQlyZXNldC1ncGlvcyA9IDwmZ3Bp
bzAgUktfUEIyIEdQSU9fQUNUSVZFX0xPVz47CisJfTsKIH07CiAKICZjcHVfbDAgewpAQCAtMzYw
LDExICszODEsNDUgQEAgdnNlbDJfcGluOiB2c2VsMi1waW4gewogCQl9OwogCX07CiAKKwlzZGlv
LXB3cnNlcSB7CisJCXdpZmlfZW5hYmxlX2hfcGluOiB3aWZpLWVuYWJsZS1oLXBpbiB7CisJCQly
b2NrY2hpcCxwaW5zID0gPDAgUktfUEIyIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owor
CQl9OworCX07CisKIAlzb3VuZCB7CiAJCXZjYzF2OF9jb2RlY19lbjogdmNjMXY4LWNvZGVjLWVu
IHsKIAkJCXJvY2tjaGlwLHBpbnMgPSA8MyBSS19QQTQgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxf
ZG93bj47CiAJCX07CiAJfTsKKworCXdpcmVsZXNzLWJsdWV0b290aCB7CisJCWJ0X3dha2VfcGlu
OiBidC13YWtlLXBpbiB7CisJCQlyb2NrY2hpcCxwaW5zID0gPDIgUktfUEQyIFJLX0ZVTkNfR1BJ
TyAmcGNmZ19wdWxsX25vbmU+OworCQl9OworCisJCWJ0X2hvc3Rfd2FrZV9waW46IGJ0LWhvc3Qt
d2FrZS1waW4geworCQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BBNCBSS19GVU5DX0dQSU8gJnBj
ZmdfcHVsbF9ub25lPjsKKwkJfTsKKworCQlidF9yZXNldF9waW46IGJ0LXJlc2V0LXBpbiB7CisJ
CQlyb2NrY2hpcCxwaW5zID0gPDAgUktfUEIxIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+
OworCQl9OworCX07Cit9OworCismc2RpbzAgeworCWJ1cy13aWR0aCA9IDw0PjsKKwljYXAtc2Qt
aGlnaHNwZWVkOworCWNhcC1zZGlvLWlycTsKKwlkaXNhYmxlLXdwOworCWtlZXAtcG93ZXItaW4t
c3VzcGVuZDsKKwltbWMtcHdyc2VxID0gPCZ3aWZpX3B3cnNlcT47CisJbm9uLXJlbW92YWJsZTsK
KwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCXBpbmN0cmwtMCA9IDwmc2RpbzBfYnVzNCAm
c2RpbzBfY21kICZzZGlvMF9jbGs+OworCXNkLXVocy1zZHIxMDQ7CisJc3RhdHVzID0gIm9rYXki
OwogfTsKIAogJnNkbW1jIHsKQEAgLTM5Myw2ICs0NDgsMjcgQEAgJnRzYWRjIHsKIAlzdGF0dXMg
PSAib2theSI7CiB9OwogCismdWFydDAgeworCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJ
cGluY3RybC0wID0gPCZ1YXJ0MF94ZmVyICZ1YXJ0MF9jdHMgJnVhcnQwX3J0cz47CisJdWFydC1o
YXMtcnRzY3RzOworCXN0YXR1cyA9ICJva2F5IjsKKworCWJsdWV0b290aCB7CisJCWNvbXBhdGli
bGUgPSAiYnJjbSxiY200MzQ1YzUiOworCQljbG9ja3MgPSA8JnJrODE4IDE+OworCQljbG9jay1u
YW1lcyA9ICJscG8iOworCQlkZXZpY2Utd2FrZXVwLWdwaW9zID0gPCZncGlvMiBSS19QRDIgR1BJ
T19BQ1RJVkVfSElHSD47CisJCWhvc3Qtd2FrZXVwLWdwaW9zID0gPCZncGlvMCBSS19QQTQgR1BJ
T19BQ1RJVkVfSElHSD47CisJCW1heC1zcGVlZCA9IDwxNTAwMDAwPjsKKwkJcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKKwkJcGluY3RybC0wID0gPCZidF9ob3N0X3dha2VfcGluICZidF93YWtl
X3BpbiAmYnRfcmVzZXRfcGluPjsKKwkJc2h1dGRvd24tZ3Bpb3MgPSA8JmdwaW8wIFJLX1BCMSBH
UElPX0FDVElWRV9ISUdIPjsKKwkJdmJhdC1zdXBwbHkgPSA8JnZjYzN2M19zeXM+OworCQl2ZGRp
by1zdXBwbHkgPSA8JnZjY18xdjg+OworCX07Cit9OworCiAmdWFydDIgewogCXN0YXR1cyA9ICJv
a2F5IjsKIH07CgpiYXNlLWNvbW1pdDogYjk4NTA2Mzg3MDcyN2JlM2U5NDc0N2IxYzkyOTIxOWQw
NGU3NzY2NQotLSAKMi4zNy4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

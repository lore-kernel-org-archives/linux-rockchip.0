Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE51BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Dec 2021 09:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=N4vZmFn+lQQYhsYVT18LrqPTPSFfmUPNHAcBX+UW88c=; b=uZykvNxu8ZN+zO
	EhBualdt0kQzp7EZZHqWZZeVz5RAlybGVYEyFxnzGcpP+e1Pk255Imre6FUO1/lViOptJbetJ3r8w
	wH42dTEQXfy6p1//zHHbDYnVskJT8rdP6ykDqk9NhJxZ6UkKWsJhu0t0/SraENht5jYzVeaB9g4wL
	VYf54gehji74BOH+VMSwhqHSpVUn0Uq27rQPF3Q53tj1DnGlhiYeB47TUyfIs3FC6MTW5h3lmzAXd
	cOIZhiMSSi+EVJXvFC/FuyorafUkOA+Mfqa4ToI8iKuq6WHeVnB6CDk+g7XkF7L4etiTI/nIsfCvI
	WWsV8c/y99Yn66Ovbttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvcZs-001Pvk-JF; Fri, 10 Dec 2021 09:52:32 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvcZe-001Pu1-5h; Fri, 10 Dec 2021 09:52:20 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id C1F681DB2;
 Fri, 10 Dec 2021 17:52:10 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from hp1216 (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21855T140161358755584S1639129928714121_; 
 Fri, 10 Dec 2021 17:52:10 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: zyf@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: zyf@rock-chips.com
X-FST-TO: jbx6244@gmail.com
X-RCPT-COUNT: 14
X-LOCAL-RCPT-COUNT: 2
X-MUTI-DOMAIN-COUNT: 0
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <e0494cae6d4ee80fec1a7b8ba3da28e9>
X-System-Flag: 0
Date: Fri, 10 Dec 2021 17:52:10 +0800
Organization: =?utf-8?B?55Ge6Iqv5b6u55S15a2Q?=
From: =?utf-8?B?6LW15Luq5bOw?= <yifeng.zhao@rock-chips.com>
To: "Johan Jonker" <jbx6244@gmail.com>, 
 =?utf-8?B?SGVpa29TdMO8Ym5lcg==?= <heiko@sntech.de>, 
 robh+dt <robh+dt@kernel.org>
Cc: devicetree <devicetree@vger.kernel.org>, "Vinod Koul" <vkoul@kernel.org>, 
 michael.riesch <michael.riesch@wolfvision.net>, 
 linux-rockchip <linux-rockchip@lists.infradead.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-phy <linux-phy@lists.infradead.org>, kishon <kishon@ti.com>, 
 "Philipp Zabel" <p.zabel@pengutronix.de>, 
 =?utf-8?B?6ZmI5Lqu?= <cl@rock-chips.com>
Subject: Re: Re: [PATCH v3 2/3] phy/rockchip: add naneng combo phy for RK3568
References: <20211025080632.32063-1-yifeng.zhao@rock-chips.com>, 
 <20211025080632.32063-3-yifeng.zhao@rock-chips.com>, 
 <65898b49-87ee-211e-f5ef-39147107ef83@gmail.com>, 
 <95ba0a5b-8f5a-3351-fc53-33021b2a0111@gmail.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.22.188[cn]
Mime-Version: 1.0
Message-ID: <2021121017510984173129@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_015218_599491_5EE29983 
X-CRM114-Status: GOOD (  13.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgSm9oYW4sCgpXZSByZWZlciB0byB0aGUgSVAgZG9jdW1lbnRzIG9ubHkgIGFuZCBkb24ndCBu
b3RpY2UgdGhhdCB0aGUgVFJNIG5hbWVzIHRoZSByZWdpc3RlcnMgaXMgZGlmZmVyZW50LiAKCkFi
b3V0IHRoZSBTU0MsIHNzY19lbiA9IDHvvIwgSW4gUENJRSBtb2RlIHdpbGwgc2V0IFNTQyBPTiwg
aXQgdGhlIHNhbWUgd2l0aCBTQVRBIGFuZCBVU0IuIApUaGUgZG9jdW1lbnQgZGVzY3JpcHRpb24g
aXMgbm90IGNsZWFyIGVub3VnaC4KCgoKCgo+SGksCgoKCj4KCgoKPlNlZSBxdWVzdGlvbiBiZWxv
dy4KCgoKPgoKCgo+T24gMTEvMTQvMjEgMTI6NDAgUE0sIEpvaGFuIEpvbmtlciB3cm90ZToKCgoK
Pj4gSGkgWWlmZW5nLAoKCgo+PiAKCgoKPj4gU29tZSBjb21tZW50cy4gSGF2ZSBhIGxvb2sgaWYg
aXQncyB1c2VmdWwuCgoKCj4+IAoKCgo+PiBPbiAxMC8yNS8yMSAxMDowNiBBTSwgWWlmZW5nIFpo
YW8gd3JvdGU6CgoKCj4+PiBUaGlzIHBhdGNoIGltcGxlbWVudHMgYSBjb21ibyBwaHkgZHJpdmVy
IGZvciBSb2NrY2hpcCBTb0NzCgoKCj4+PiB3aXRoIE5hTmVuZyBJUCBibG9jay4gVGhpcyBwaHkg
Y2FuIGJlIHVzZWQgYXMgcGNpZS1waHksIHVzYjMtcGh5LAoKCgo+Pj4gc2F0YS1waHkgb3Igc2dt
aWktcGh5LgoKCgo+Pj4KCgoKPj4+IFNpZ25lZC1vZmYtYnk6IFlpZmVuZyBaaGFvIDx5aWZlbmcu
emhhb0Byb2NrLWNoaXBzLmNvbT4KCgoKPj4+IC0tLQoKCgo+CgoKCj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwoKCgo+CgoKCj4+
PiArCgoKCj4+PiArI2RlZmluZSBCSVRfV1JJVEVBQkxFX1NISUZUCQkxNgoKCgo+Pj4gKyNkZWZp
bmUgUkVGX0NMT0NLXzI0TUh6CQkJMjQwMDAwMDAKCgoKPj4+ICsjZGVmaW5lIFJFRl9DTE9DS18y
NU1IegkJCTI1MDAwMDAwCgoKCj4+PiArI2RlZmluZSBSRUZfQ0xPQ0tfMTAwTUh6CQkxMDAwMDAw
MDAKCgoKPj4+ICsvKiBSSzM1NjggVDIyIENPTUJPIFBIWSBSRUcgKi8KCgoKPj4+ICsjZGVmaW5l
IFJLMzU2OF9UMjJfUEhZUkVHNQkJMHgxNAoKCgo+Pj4gKyNkZWZpbmUgVDIyX1BIWVJFRzVfUExM
X0RJVl9NQVNLCUdFTk1BU0soNywgNikKCgoKPj4+ICsjZGVmaW5lIFQyMl9QSFlSRUc1X1BMTF9E
SVZfU0hJRlQJNgoKCgo+Pj4gKyNkZWZpbmUgVDIyX1BIWVJFRzVfUExMX0RJVl8yCQkxCgoKCj4+
PiArCgoKCj4KCgoKPj4+ICsjZGVmaW5lIFJLMzU2OF9UMjJfUEhZUkVHNgkJMHgxOAoKCgo+CgoK
Cj5NdWx0aS1QSFlfUmVnaXN0ZXIwMDcKCgoKPkFkZHJlc3M6IE9wZXJhdGlvbmFsIEJhc2UgKyBv
ZmZzZXQgKDB4MDAxOCkKCgoKPgoKCgo+Pj4gKyNkZWZpbmUgVDIyX1BIWVJFRzZfVFhfUlRFUk1f
TUFTSwlHRU5NQVNLKDcsIDQpCgoKCj4+PiArI2RlZmluZSBUMjJfUEhZUkVHNl9UWF9SVEVSTV9T
SElGVAk0CgoKCj4+PiArI2RlZmluZSBUMjJfUEhZUkVHNl9UWF9SVEVSTV81ME9ITQkweDgKCgoK
Pj4+ICsjZGVmaW5lIFQyMl9QSFlSRUc2X1JYX1JURVJNX01BU0sJR0VOTUFTSygzLCAwKQoKCgo+
Pj4gKyNkZWZpbmUgVDIyX1BIWVJFRzZfUlhfUlRFUk1fU0hJRlQJMAoKCgo+Pj4gKyNkZWZpbmUg
VDIyX1BIWVJFRzZfUlhfUlRFUk1fNDRPSE0JMHhGCgoKCj4+PiArCgoKCj4+PiArI2RlZmluZSBS
SzM1NjhfVDIyX1BIWVJFRzcJCTB4MUMKCgoKPgoKCgo+TXVsdGktUEhZX1JlZ2lzdGVyMDA4CgoK
Cj5BZGRyZXNzOiBPcGVyYXRpb25hbCBCYXNlICsgb2Zmc2V0ICgweDAwMUMpCgoKCj4KCgoKPj4+
ICsjZGVmaW5lIFQyMl9QSFlSRUc3X1NTQ19FTgkJQklUKDQpCgoKCj4KCgoKPlNlZSBSb2NrY2hp
cCBSSzM1NjggVFJNIFBhcnQyIFYxLjAtMjAyMTAxMTEgcGFnZSAxOTU3LTE5NTgKCgoKPgoKCgo+
SXQgbG9va3MgYXMgaWYgYWxsIFBIWVJFRyBkZWZpbmVzIGFkZCAtMSBpbiB2YWx1ZT8gSSdtIEkg
Y29ycmVjdCBoZXJlPwoKCgo+CgoKCj49PT0KCgoKPgoKCgo+U1NDX0VOCgoKCj5JbiBVMyBhbmQg
U0FUQSBtb2RlLCB0aGlzIGJpdD0gMSwgc2V0IFNTQyBvbgoKCgo+SW4gUENJRSBtb2RlLCB0aGlz
IGJpdD0wIHNldCBTU0Mgb2ZmCgoKCj4KCgoKPsKgwqDCoMKgwqAgSWYgU3ByZWFkIFNwZWN0cnVt
IENsb2NraW5nIChTU0MpIGlzIHVzZWQgaXQgaXMKCgoKPsKgwqDCoMKgwqAgcmVxdWlyZWQgdGhh
dCBhIGNvbW1vbiByZWZlcmVuY2UgY2xvY2sgaXMgdXNlZCBieSB0aGUgbGluayBwYXJ0bmVycy4K
CgoKPsKgwqDCoMKgwqAgTW9zdCBjb21tZXJjaWFsbHkgYXZhaWxhYmxlIHBsYXRmb3JtcyB3aXRo
IFBDSWUgYmFja3BsYW5lcyB1c2UKCgoKPsKgwqDCoMKgwqAgU1NDIHRvIHJlZHVjZSBFTUkuCgoK
Cj4KCgoKPk1heWJlIGEgZHVtYiBxdWVzdGlvbiBmb3IgaW4gYSBwb3NzaWJsZSBZQU1MIGRlc2Ny
aXB0aW9uOgoKCgo+SXMgdGhpcyBhYm92ZSB0ZXh0IGZyb20gdGhlIFRSTSBjb3JyZWN0PwoKCgo+
SXMgU1NDIG9ubHkgdXNlZCBpbiBjb21iaW5hdGlvbiB3aXRoIFBDSUUgaW5zdGVhZCBvZiBVMyBh
bmQgU0FUQT8KCgoKPgoKCgo+PT09CgoKCj4KCgoKPkpvaGFuCgoKCj4KCgoKPj4+ICsKCgoKPj4+
ICsjZGVmaW5lIFJLMzU2OF9UMjJfUEhZUkVHMTAJCTB4MjgKCgoKPj4+ICsjZGVmaW5lIFQyMl9Q
SFlSRUcxMF9TVV9UUklNXzBfNwkweEYwCgoKCj4+PiArCgoKCj4+PiArI2RlZmluZSBSSzM1Njhf
VDIyX1BIWVJFRzExCQkweDJDCgoKCj4+PiArI2RlZmluZSBUMjJfUEhZUkVHMTFfUExMX0xQRl9B
REoJMHg0CgoKCj4+PiArCgoKCj4KCgoKPj4+ICsjZGVmaW5lIFJLMzU2OF9UMjJfUEhZUkVHMTIJ
CTB4MzAKCgoKPgoKCgo+TXVsdGktUEhZX1JlZ2lzdGVyMDEzCgoKCj5BZGRyZXNzOiBPcGVyYXRp
b25hbCBCYXNlICsgb2Zmc2V0ICgweDAwMzApCgoKCj4KCgoKPj4+ICsjZGVmaW5lIFQyMl9QSFlS
RUcxMl9SRVNJU1RFUl9NQVNLCUdFTk1BU0soNSwgNCkKCgoKPj4+ICsjZGVmaW5lIFQyMl9QSFlS
RUcxMl9SRVNJU1RFUl9TSElGVAkweDQKCgoKPj4+ICsjZGVmaW5lIFQyMl9QSFlSRUcxMl9SRVNJ
U1RFUl9ISUdIX1oJMHgzCgoKCj4+PiArI2RlZmluZSBUMjJfUEhZUkVHMTJfQ0tSQ1ZfQU1QMAkJ
QklUKDcpCgoKCj4+PiArCgoKCj4+PiArI2RlZmluZSBSSzM1NjhfVDIyX1BIWVJFRzEzCQkweDM0
CgoKCj4+PiArI2RlZmluZSBUMjJfUEhZUkVHMTNfQ0tSQ1ZfQU1QMQkJQklUKDApCgoKCj4+PiAr
CgoKCj4+PiArI2RlZmluZSBSSzM1NjhfVDIyX1BIWVJFRzE0CQkweDM4CgoKCj4+PiArI2RlZmlu
ZSBUMjJfUEhZUkVHMTRfQ1RMRV9FTgkJQklUKDApCgoKCj4+PiArI2RlZmluZSBUMjJfUEhZUkVH
MTRfU1NDX0NOVF9NQVNLCUdFTk1BU0soNywgNikKCgoKPj4+ICsjZGVmaW5lIFQyMl9QSFlSRUcx
NF9TU0NfQ05UX1NISUZUCTYKCgoKPj4+ICsjZGVmaW5lIFQyMl9QSFlSRUcxNF9TU0NfQ05UX1ZB
TFVFCTB4MQoKCgo+Pj4gKwoKCgo+Pj4gKyNkZWZpbmUgUkszNTY4X1QyMl9QSFlSRUcxNQkJMHgz
QwoKCgo+Pj4gKyNkZWZpbmUgVDIyX1BIWVJFRzE1X1NTQ19DTlRfVkFMVUUJMHg1ZgoKCgo+Pj4g
KwoKCgo+Pj4gKyNkZWZpbmUgUkszNTY4X1QyMl9QSFlSRUcxNwkJMHg0NAoKCgo+Pj4gKyNkZWZp
bmUgVDIyX1BIWVJFRzE3X1BMTF9MT09QCQkweDMyCgoKCj4+PiArCgoKCj4+PiArI2RlZmluZSBS
SzM1NjhfVDIyX1BIWVJFRzMxCQkweDdDCgoKCj4+PiArI2RlZmluZSBUMjJfUEhZUkVHMzFfU1ND
X01BU0sJCUdFTk1BU0soNywgNCkKCgoKPj4+ICsjZGVmaW5lIFQyMl9QSFlSRUczMV9TU0NfRElS
X1NISUZUCTQKCgoKPj4+ICsjZGVmaW5lIFQyMl9QSFlSRUczMV9TU0NfVVBXQVJECQkwCgoKCj4+
PiArI2RlZmluZSBUMjJfUEhZUkVHMzFfU1NDX0RPV05XQVJECTEKCgoKPj4+ICsjZGVmaW5lIFQy
Ml9QSFlSRUczMV9TU0NfT0ZGU0VUX1NISUZUCTYKCgoKPj4+ICsjZGVmaW5lIFQyMl9QSFlSRUcz
MV9TU0NfT0ZGU0VUXzUwMFBQTQkxCgoKCj4+PiArCgoKCj4+PiArI2RlZmluZSBSSzM1NjhfVDIy
X1BIWVJFRzMyCQkweDgwCgoKCj4+PiArI2RlZmluZSBUMjJfUEhZUkVHMzJfUExMX0tWQ09fTUFT
SwlHRU5NQVNLKDQsIDIpCgoKCj4+PiArI2RlZmluZSBUMjJfUEhZUkVHMzJfUExMX0tWQ09fU0hJ
RlQJMgoKCgo+Pj4gKyNkZWZpbmUgVDIyX1BIWVJFRzMyX1BMTF9LVkNPX1ZBTFVFCTIKCgoKPj4+
ICsKCgoKPgoKCgo+CgoKCj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

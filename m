Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8261606A32D
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 01:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Djb1dM4K;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=RwvIkZTV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=q0BeevwFv3EssZiETKrCulkupPaPrtiRxHf54lpFCxE=; b=Djb1dM4KukBDVFZCNMbx30gjsm
	zWPBqmaRJpzh7tLR7xtGKVAKPjKCIN6DbvNaaX0VMQBGo3hF6KzsShRq0msiIcxIPxIxpjs9fuNJa
	P9JjBVu1LHSHsmIPpFjHf8vfo4qvDu4VjwvPhlIv23Q9yplGc8pxlwlFXgFYXN7YRycZP0kg0RbWf
	/8zmYTgXYwAETxUrqy7p+FH5XWX7r6zi/PYwxdIR9mCzaAFQzbNIQAjMRY4xnxsF2bvisMjsxns8w
	UG95LbFW3VSNJzZ8wRvpQ+Z9mzVNyt2kIV70PT1GOUWjLe2aJ4y6G1uHasOB3/F4r+TQwx7Nwuohp
	VN+M9TgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRJC7-00000008IlL-0mZu;
	Thu, 12 Nov 2026 01:01:39 +0000
Received: from mail-m12859.netease.com ([103.209.128.59])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRJC3-00000008Ika-2ob1;
	Thu, 12 Nov 2026 01:01:38 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 545e00560;
	Thu, 12 Nov 2026 09:01:30 +0800 (GMT+08:00)
Message-ID: <dd25880e-be2d-4adc-8384-fa4a7160a4df@rock-chips.com>
Date: Thu, 12 Nov 2026 09:01:29 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Describe the Type-C port on RK3576
 EVB1
To: Alexey Charkov <alchark@flipper.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261106-rk3576-evb1-husb311-v1-1-99c2f57ea2a5@flipper.net>
 <dd59d491-82b0-4047-ae98-f8070f6be112@rock-chips.com>
 <CAKTNdwHbxnknob9NdjqWUcGU2fURO5B7V4kTTK+fvEYjNDOLCA@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CAKTNdwHbxnknob9NdjqWUcGU2fURO5B7V4kTTK+fvEYjNDOLCA@mail.gmail.com>
X-HM-Tid: 0aa1cd462be103a7kunmad3109128fdea8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCSEIaVktMTUpKTEkeSEkZGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=RwvIkZTV3jQpd5yHEhMQAJE6+49uXKgn5dUqP2jzosXCm8+6dUU5dw4KqqX/DoivJuUINoenbcsTAmcpB6BTQ+CWfDl9iRrua0VavXKaDAXLL/UcF9IXvO/F/f/XVsAi6kHyZHe2zbWlOQwtfMsVnRU16rPU1itMv9XWPFY5810=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=fY4d6y47CamDA7G44TSptxryAErHvm+2SddM192y+64=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_170136_348781_2EACF711 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQWxleGV5LAoKT24gMTEvMTEvMjAyNiA2OjQ1IFBNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToK
PiBIaSBDaGFveWksCj4gCj4gT24gV2VkLCBOb3YgMTEsIDIwMjYgYXQgMTozMeKAr1BNIENoYW95
aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Cj4+IEhpIEFsZXhl
eSwKPj4KPj4gT24gMTEvNy8yMDI2IDE6NTIgQU0sIEFsZXhleSBDaGFya292IHdyb3RlOgo+Pj4g
UkszNTc2IEVWQjEgaGFzIGl0cyBVU0JEUCBQSFkgcm91dGVkIHRvIGEgVHlwZS1DIHBvcnQgd2l0
aCBhIEhVU0IzMTEgQ0MKPj4+IGNvbnRyb2xsZXIgYW5kIGEgZml4ZWQtdm9sdGFnZSBWQlVTIHN1
cHBseS4KPj4+Cj4+PiBEZXNjcmliZSBpdCBpbiB0aGUgZGV2aWNlIHRyZWUsIGluY2x1ZGluZyB0
aGUgd2lyaW5nIGZvciBib3RoIHRoZSBVU0IgYW5kCj4+PiB0aGUgRFAgc2lkZS4KPj4+Cj4+PiBU
aGlzIG1ha2VzIHRoZSBkYXRhIHJvbGVzIGZvbGxvdyB0aGUgVHlwZS1DIHBvcnQncyBuZWdvdGlh
dGlvbiwgc28gdGhlCj4+PiBwb3J0IHN0b3BzIGJlaW5nIGhvc3Qgb25seS4gSXQgYWxzbyBsZWF2
ZXMgdGhlIFZCVVMgcmVndWxhdG9yIHRvIGJlCj4+PiBtYW5hZ2VkIGJ5IFRDUE0gaW5zdGVhZCBv
ZiBiZWluZyBoYXJkd2lyZWQgdmlhIHRoZSB0YW5nZW50aWFsbHkgcmVsYXRlZAo+Pj4gcGh5LXN1
cHBseSBvbiBhIFVTQiBjb250cm9sbGVyLiBEUCBsYW5lcyBhcmUgYWxzbyBtdXhlZCBkeW5hbWlj
YWxseSBieQo+Pj4gdGhlIFVTQkRQIFBIWSBiYXNlZCBvbiB0aGUgVHlwZS1DIHBvcnQncyBuZWdv
dGlhdGlvbiwgc28gdGhlIGhhY2t5IGZpeGVkCj4+PiBsYW5lIG11eGluZyBhbHNvIGdvZXMgYXdh
eS4KPj4+Cj4+Cj4+IEhhdmUgeW91IHRlc3RlZCB0aGlzPyBBcyBmYXIgYXMgSSBrbm93LCBkdy1k
cCBkcml2ZXIgZG9lcyBub3Qgc3VwcG9ydAo+PiBUeXBlLUMgSFBEIHlldC4KPiAKPiBJIGRpZCAt
IGl0IHdvcmtzIGZpbmUgZm9yIG1lIHVuZGVyIExpbnV4IHdpdGggU2ViYXN0aWFuJ3MgcGF0Y2hl
cy4gTXkKPiBwcmltYXJ5IG1vdGl2YXRpb24sIGhvd2V2ZXIsIHdhcyBVLUJvb3QsIHdoZXJlIHRo
ZSBjdXJyZW50IHBoeS1zdXBwbHkKPiBoYWNrIGJyZWFrcyBVU0IgZGF0YSByb2xlIHN3aXRjaGlu
ZywgZHVlIHRvIFZCVVMgYmVpbmcgZm9yY2VkCj4gYWx3YXlzLW9uLiBXaXRoIHRoaXMgcGF0Y2gg
aXQgd29ya3MsIGFuZCBub3cgdGhlIERUIGFjdHVhbGx5IGRlc2NyaWJlcwo+IHRoZSBoYXJkd2Fy
ZSwgYXMgaXQgaXMgc3VwcG9zZWQgdG8uCj4gCgpPaCwgSSBhbG1vc3QgZm9yZ290IGFib3V0IHRo
YXQuIEkgdGhpbmsgaXQgc2hvdWxkIGJlIHRoaXMgcGF0Y2ggc2VyaWVzWzBdLCByaWdodD8KCkJ1
dCBJIHRoaW5rIHdlIHByb2JhYmx5IG5lZWQgbW9yZSB0aGFuIGp1c3QgdGhpcyBzZXJpZXMsIGJl
Y2F1c2UKcmljaHRlayxydDE3MTFoIGRvZXMgbm90IHJlZ2lzdGVyIHRoZSBIUEQgYnJpZGdlLCBz
byB3ZSB3aWxsIGdldCB0aGlzOgoKWyAgIDE0LjgyODk4M10gYXV4aWxpYXJ5IGF1eF9icmlkZ2Uu
YXV4X2JyaWRnZS4wOiBkZWZlcnJlZCBwcm9iZSBwZW5kaW5nOiBhdXhfYnJpZGdlLmF1eF9icmlk
Z2U6IGZhaWxlZCB0byBhY3F1aXJlIGRybV9icmlkZ2UKCk1heWJlIHlvdSBoYXZlIGFscmVhZHkg
YWRkZWQgdGhlIGNvcnJlc3BvbmRpbmcgcGF0Y2ggeW91cnNlbGY/CkFub3RoZXIgb3B0aW9uIGlz
IHRvIHVzZSB0aGUgZ2VuZXJpYyBBVVggSFBEIHBhdGNoWzFdLiA6KQoKWzBdOiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI2MDgwNi1zeW5vcHN5cy1kdy1kcC1pbXBy
b3ZlbWVudHMtdjExLTAtMGQ1MDg1MDVmMzgzQGNvbGxhYm9yYS5jb20vClsxXTogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYxMDIwMDcyODE2LjE4MC0xLWtlcm5lbEBhaXJreWkuY29t
LwoKLS0gCkJlc3QsIApDaGFveWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E6C1C3064E
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Aug 2023 15:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHyUtvUqbjYYlL/qQo8bJrYIwcQZdv/v67qjOMuCVkE=; b=wq8fkkFRjhbfJV
	n2mHmOVZQSKjnF1jtql+8obR/54rqgjGoXqsQtY1YvjaqX3fOjRBjKOaRq4/Heqs7mPaoiquFst2x
	psvbXZFgwyzFNXLouQugBeCJ1oLG65zG1qhKkNFKxVYhEFS9yvZLXbxQu8rqwz7foh1o/bCQBYlhC
	BdnDFrzs2ur7lOzlWwk8tnzzc8rIAjVtFvaDHtV1AG0AIkPw++n/tucmYc27lKodjaZg9JfVQxUJR
	o1iDIpk1V/aXFIXp7rGTghjINXQehGvMkzg400wt9ibNtYnWcqk8tPxaRtM2WZZzy61PsDVFU0Vnk
	K0765b8SpD2IASYGIPsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWewx-006gdD-2y;
	Thu, 17 Aug 2023 15:30:15 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWewt-006gcS-2A;
	Thu, 17 Aug 2023 15:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1692286204; bh=6Xe6LtKQ+jTcxQ2HiaGji+K67ppcyiOEj2K0oAshaDA=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=mqpakAfBYWNGV59GPxS6ytXr73ZE3aLYCrbRdphkEBDAdyKy38kuLzOU0ZSntMFkm
	 wOu8oIu6Zup7Cm3ccg6YzrzBdSAJqpIQ9749WmSxKUerSo8j9f7RvTLDTimNFSfQiZ
	 CZNqFDtE2CtMY6aInr7kCi75J0nC/v+778Oj0lrw=
Date: Thu, 17 Aug 2023 17:30:03 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Muhammed Efe Cetin <efectn@6tel.net>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, 
	krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, 
	sebastian.reichel@collabora.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Orange Pi 5
Message-ID: <czvylysw2shlmvryimwtaquz747jel5k4dzfel6kgijmome7py@d4exzabfp3ig>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Muhammed Efe Cetin <efectn@6tel.net>, conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, 
	krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, 
	sebastian.reichel@collabora.com
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <dz2i6ix6dphyu6dwsqgvx7byoxegmdlsc6dwhyxd3uffqus6jo@r6jnxz7jprdv>
 <20230817145756.161970-1-efectn@6tel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230817145756.161970-1-efectn@6tel.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_083012_453704_2B7D3CDB 
X-CRM114-Status: GOOD (  16.59  )
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

T24gVGh1LCBBdWcgMTcsIDIwMjMgYXQgMDU6NTc6NTVQTSArMDMwMCwgTXVoYW1tZWQgRWZlIENl
dGluIHdyb3RlOgo+IAo+IEhpLCBPbmTFmWVqCj4gCj4gT24gMTcuMDguMjAyMyAxNjo1NywgT25k
xZllaiBKaXJtYW4gd3JvdGU6Cj4gPiBIaSBNdWhhbW1lZCwKPiA+IAo+ID4+Pj4gWy4uLl0KPiA+
Pj4KPiA+Pj4+ICsJdmNjXzF2MV9ubGRvX3MzOiB2Y2MtMXYxLW5sZG8tczMtcmVndWxhdG9yIHsK
PiA+Pj4+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+Pj4+ICsJCXJlZ3Vs
YXRvci1uYW1lID0gInZjY18xdjFfbmxkb19zMyI7Cj4gPj4+PiArCQlyZWd1bGF0b3ItYWx3YXlz
LW9uOwo+ID4+Pj4gKwkJcmVndWxhdG9yLWJvb3Qtb247Cj4gPj4+PiArCQlyZWd1bGF0b3ItbWlu
LW1pY3Jvdm9sdCA9IDwxMTAwMDAwPjsKPiA+Pj4+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0
ID0gPDExMDAwMDA+Owo+ID4+Pj4gKwkJdmluLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4gPj4+
PiArCX07Cj4gPj4+Cj4gPj4+IFRoZXJlJ3Mgbm8gc3VjaCByZWd1bGF0b3Igb24gdGhlIGJvYXJk
Lgo+ID4+Cj4gPj4gSXQncyBjb25uZWN0ZWQgdG8gUE1JQyBodHRwczovL2kuaW1ndXIuY29tL3NW
SmRDNUsucG5nCj4gPiAKPiA+IEl0J3Mgbm90IGEgc2VwYXJhdGUgZml4ZWQgcmVndWxhdG9yLiBJ
dCdzIGEgUE1JQyBvdXRwdXQgZnJvbSBidWNrNiBodHRwczovL21lZ291cy5jb20vZGwvdG1wLzg2
MzBmYTE3NDA3Yzc1YjkucG5nCj4gPiAKPiAKPiBJIHRoaW5rIGl0IHNob3VsZCBiZSBmaXhlZCBy
ZWd1bGF0b3IuIEl0J3MgdXNlZCBhcyB2Y2MxMy1zdXBwbHkgYW5kCj4gdmNjMTQtc3VwcGx5IHJl
Z3VsYXRvciBvbiBQTUlDIGFuZCBpdCdzIHNhbWUgYXMgb3RoZXIgcmszNTg4IGJvYXJkcy4KClll
cywgQlVDSzYgb3V0cHV0IGlzIGlucHV0IHRvIHNvbWUgTERPcy4gSWYgeW91IG1ha2UgdGhpcyBh
IHJlZ3VsYXRvci1maXhlZCwKQlVDSzYgd2lsbCBub3QgZ2V0IGVuYWJsZWQgd2hlbiB0aG9zZSBM
RE9zIGFyZSBlbmFibGVkLCBhbmQgdGhlIExET3Mgd2lsbCBub3QKd29yayBiZWNhdXNlIHRoZXkn
bGwgbGFjayBpbnB1dCBwb3dlci4KCllvdXIgcmVndWxhdG9yLWZpeGVkIGRvZXMgbm90aGluZyB0
byBlbmFibGUgQlVDSzYgd2hpY2ggaXMgd2hlcmUgdmNjXzF2MV9ubGRvX3MzCnBvd2VyIHJhaWwg
aXMgY29ubmVjdGVkLgoKSXQgb25seSB3b3JrcyBmb3IgeW91IG5vdywgYmVjYXVzZSBkY2RjLXJl
ZzYgaXMgbWFya2VkIGFzIHJlZ3VsYXRvci1hbHdheXMtb24sCnNvIGl0J3MgYWxyZWFkeSBlbmFi
bGVkIHdoZW4geW91IG5lZWQgdGhvc2UgZGVwZW5kZW50IExET3MuCgpyZWdhcmRzLAoJby4KCj4g
PiBTbyB0aGlzIGlzIFZERDJfRERSX1MzLiBJZiB5b3Ugd2FudCB0byBrZWVwIHRoZSBhbGlhcywg
anVzdCBhZGQgZXh0cmEgYWxpYXMgdG8KPiA+IGRjZGMtcmVnNiBsaWtlIHRoaXM6Cj4gPiAKPiA+
IAkJLi4uCj4gPiAJdmNjXzF2MV9ubGRvX3MzOiB2ZGQyX2Rkcl9zMzogZGNkYy1yZWc2IHsKPiA+
IAkJLi4uCj4gPiAKPiA+Pj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK

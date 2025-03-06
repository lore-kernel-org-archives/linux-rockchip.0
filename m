Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5AC2C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 16:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPd6iIqYXinuyQQbqEwInHZbAhgtOnSMIgb23LnpDH4=; b=4+DgyTwZNxaaaK
	heb3WtyyCZKtpoZixerH/+dZODMXu9ROFOThw4DwwVrgZrwa7Pg/hB1MdEBCAuH70pE16USxgKSy8
	8RYkkWVbiRqa7asFXg0JQxvTnhjHZ8SQEXo9OrwAkiQSiMjoNGURbkL/snSWcm4NEVucCAZ82oDPj
	pzGyqZaDg0sLTGQkO8drlTobLSGU8XGo3aAHnNobBX6sC+G3c76z5DS4NVcZepkau1gKI+ZdsiT/7
	jMRzjJcIYxZN7uDA/LBDfo83eQuO9twUb7SkVIkU+FKjCOPXUqNyXfo15Oja3syI7HnHIwPa+ABRX
	1o2XBklFDMAP+lDCNAHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqDuS-0000000BRys-0uBW;
	Thu, 06 Mar 2025 16:17:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqDuR-0000000BRym-0Y34
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 16:17:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Geb6EtM93X/fXUXMAE0FPspUAQRaC0n4VhGwzmdgPhc=; b=RYYH4I0ffh7cR2QNEz2XEeUDwn
	wpQaKN3F86PHPKuW/QEwR9x5fSJKw8FmjWv2tpGu3F7S9MVA69cDOk1eDH79gYt8PR7OXCFURYam8
	S0iloMymXBs+/rlFTvZd02FJv0StjATkNf8bP0S4CrbKHns5sA+x0HdHPWGFqCO4AjBrgvIeEmlWN
	rTl0NZU9oxxmmnZcbtpHPWOu7oGhd1t61R5/G/35fkpWUrOHExzbcorwGdikBWvbh5Pj1uJnIlg66
	kSxzdXCfmbatMGe0lsTizqwvzbNhM6gWvOUEqQ4DhuAxtqHJB5q+OEdzRJGIemQCo8HNUkdFtTAqk
	XBxdAOmw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqDuO-000000019KR-08nx
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 16:17:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Geb6EtM93X/fXUXMAE0FPspUAQRaC0n4VhGwzmdgPhc=; b=HRuSJEPHExoiukq5ECmYJqumVz
	abvKSEf1ZGPhhA4F1EEBPY2qzHRaRsRmCwBIC/kLPhFnmHbtkqwcIPxPmQ43RLXu6/FwoX4c6gWCc
	L0WsDGZaT9r6dYpr6ouaTUlnzxUZKNjcVr3dY7e9CmR9C+0hLpymRbb2hs++jh6p7i7Xcll1aTWXf
	ZllK+3oQn/1gamSSM4pBUFlr47zuq/FspmCtzotCt2UcU0J+ZA35p+Kml4LCZefr+xOLjt8mNyODL
	QxXXI1ku+3j3pDjhkWBkQAWFTfzM4jy8Wj44PdibMPTF/PXc1iXahuQLkaifqNXsmhTT6V2b2LXy2
	uBH+chWQ==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqDu7-0004hc-2k; Thu, 06 Mar 2025 17:16:59 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 jose.abreu@synopsys.com, nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v14 1/3] arm64: dts: rockchip: Add device tree support for HDMI RX
 Controller
Date: Thu, 06 Mar 2025 17:16:57 +0100
Message-ID: <3216426.Mh6RI2rZIc@diego>
In-Reply-To: <f5f3dd36-0f90-47dd-bc12-1e2f0207fe7d@collabora.com>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
 <9489391.T7Z3S40VBb@diego>
 <f5f3dd36-0f90-47dd-bc12-1e2f0207fe7d@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_161716_173718_3D18A9F3 
X-CRM114-Status: GOOD (  17.01  )
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

QW0gRG9ubmVyc3RhZywgNi4gTcOkcnogMjAyNSwgMTY6NTM6NDggTUVaIHNjaHJpZWIgRG1pdHJ5
IE9zaXBlbmtvOgo+IE9uIDMvNi8yNSAxNjowNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPiBI
aSBEbWl0cnksCj4gPiAKPiA+IEFtIERvbm5lcnN0YWcsIDYuIE3DpHJ6IDIwMjUsIDA4OjI4OjQw
IE1FWiBzY2hyaWViIERtaXRyeSBPc2lwZW5rbzoKPiA+PiBGcm9tOiBTaHJlZXlhIFBhdGVsIDxz
aHJlZXlhLnBhdGVsQGNvbGxhYm9yYS5jb20+Cj4gPj4KPiA+PiBBZGQgZGV2aWNlIHRyZWUgc3Vw
cG9ydCBmb3IgU3lub3BzeXMgRGVzaWduV2FyZSBIRE1JIFJYCj4gPj4gQ29udHJvbGxlci4KPiA+
Pgo+ID4+IFJldmlld2VkLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xs
YWJvcmEuY29tPgo+ID4+IFRlc3RlZC1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVu
a29AY29sbGFib3JhLmNvbT4KPiA+PiBDby1kZXZlbG9wZWQtYnk6IERpbmd4aWFuIFdlbiA8c2hh
d24ud2VuQHJvY2stY2hpcHMuY29tPgo+ID4+IFNpZ25lZC1vZmYtYnk6IERpbmd4aWFuIFdlbiA8
c2hhd24ud2VuQHJvY2stY2hpcHMuY29tPgo+ID4+IFNpZ25lZC1vZmYtYnk6IFNocmVleWEgUGF0
ZWwgPHNocmVleWEucGF0ZWxAY29sbGFib3JhLmNvbT4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0
cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPgo+ID4+IC0tLQoKPiA+
PiArCWhkbWlfcmVjZWl2ZXI6IGhkbWlfcmVjZWl2ZXJAZmRlZTAwMDAgewo+ID4+ICsJCWNvbXBh
dGlibGUgPSAicm9ja2NoaXAscmszNTg4LWhkbWlyeC1jdHJsZXIiLCAic25wcyxkdy1oZG1pLXJ4
IjsKPiA+PiArCQlyZWcgPSA8MHgwIDB4ZmRlZTAwMDAgMHgwIDB4NjAwMD47Cj4gPj4gKwkJcG93
ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1ZPMT47Cj4gPj4gKwkJcm9ja2NoaXAsZ3Jm
ID0gPCZzeXNfZ3JmPjsKPiA+PiArCQlyb2NrY2hpcCx2bzEtZ3JmID0gPCZ2bzFfZ3JmPjsKPiA+
PiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTc3IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4g
Pj4gKwkJCSAgICAgPEdJQ19TUEkgMTc4IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gPj4gKwkJ
CSAgICAgPEdJQ19TUEkgMTc5IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4gPj4gKwkJaW50ZXJy
dXB0LW5hbWVzID0gImNlYyIsICJoZG1pIiwgImRtYSI7Cj4gPj4gKwkJY2xvY2tzID0gPCZjcnUg
QUNMS19IRE1JUlg+LAo+ID4+ICsJCQkgPCZjcnUgQ0xLX0hETUlSWF9BVUQ+LAo+ID4+ICsJCQkg
PCZjcnUgQ0xLX0NSX1BBUkE+LAo+ID4+ICsJCQkgPCZjcnUgUENMS19IRE1JUlg+LAo+ID4+ICsJ
CQkgPCZjcnUgQ0xLX0hETUlSWF9SRUY+LAo+ID4+ICsJCQkgPCZjcnUgUENMS19TX0hETUlSWD4s
Cj4gPj4gKwkJCSA8JmNydSBIQ0xLX1ZPMT47Cj4gPj4gKwkJY2xvY2stbmFtZXMgPSAiYWNsayIs
Cj4gPj4gKwkJCSAgICAgICJhdWRpbyIsCj4gPj4gKwkJCSAgICAgICJjcl9wYXJhIiwKPiA+PiAr
CQkJICAgICAgInBjbGsiLAo+ID4+ICsJCQkgICAgICAicmVmIiwKPiA+PiArCQkJICAgICAgImhj
bGtfc19oZG1pcngiLAo+ID4+ICsJCQkgICAgICAiaGNsa192bzEiOwo+ID4+ICsJCXJlc2V0cyA9
IDwmY3J1IFNSU1RfQV9IRE1JUlg+LCA8JmNydSBTUlNUX1BfSERNSVJYPiwKPiA+PiArCQkJIDwm
Y3J1IFNSU1RfSERNSVJYX1JFRj4sIDwmY3J1IFNSU1RfQV9IRE1JUlhfQklVPjsKPiA+PiArCQly
ZXNldC1uYW1lcyA9ICJheGkiLCAiYXBiIiwgInJlZiIsICJiaXUiOwo+ID4+ICsJCW1lbW9yeS1y
ZWdpb24gPSA8JmhkbWlfcmVjZWl2ZXJfY21hPjsKPiA+PiArCQlwaW5jdHJsLTAgPSA8JmhkbWlt
MV9yeD47Cj4gPj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+IAo+ID4gaG1tLCB0
aGlzIG1pZ2h0IGJlIGJldHRlciBsaXZpbmcgaW4gdGhlIGJvYXJkIGR0cz8KPiAKPiBIRE1JIFJY
IGNvbnRyb2xsZXIgaXMgYSBwYXJ0IG9mIHRoZSBTb0MsIGl0J3Mgbm90IHNwZWNpZmljIHRvIGEK
PiBwYXJ0aWN1bGFyIGJvYXJkLiBJZiB5b3UgbWVhbmluZyBtb3ZlIGl0IGludG8gcm9jazViLmR0
cywgdGhlbiB3ZQo+IGRlZmluaXRlbHkgc2hvdWxkbid0IGRvIGl0LiBJdCdzIGxpa2UgbW92aW5n
IFBDSWUgY29udHJvbGxlciBub2RlIGludG8gYQo+IGJvYXJkIERUIDopCgpzb3JyeSwgc2hvdWxk
J3ZlIGJlZW4gY2xlYXJlci4gSSBtZWFudCB0aGUgcGluY3RybC4KVGhlcmUgYXJlIHR3byBzZXRz
IG9mIHBpbnMgaGRtaW0wLXJ4IGFuZCBoZG1pbTEtcnggd2hpY2ggb25lIGlzIHVzZWQgaXMKYm9h
cmQgc3BlY2lmaWMuCgpDYW4geW91IGNoZWNrIGlmICJtb3N0IiBib2FyZHMgdXNlIHRoZSBNMSB2
YXJpYW50PwoKUmF0aW9uYWxlIGJlaW5nLCB0aGF0IGlmIHdlIGtub3cgdGhhdCBtb3N0IGJvYXJk
cyB1c2UgdGhlIHNhbWUgc2V0IG9mCnBpbnMsIGl0J3MgbGlrZWx5IG9rIHRvIGp1c3QgaGF2ZSB0
aGUgbWlub3JpdHkgYm9hcmRzIG92ZXJyaWRlIGl0LgoKSGVpa28KCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EA03EEC2BA
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 01:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYHE9WHFaPdYPBIdWE/34ODDEDrhP2lRu45HRA1bwVU=; b=mNP7Q53Ms/uSnp
	se8Ru/oErM85Ws2riQTz36SQMVsNCRsutvXO3Kk6C6FYjGvXIMWFmnfz1HERJTS1YKQRqt7XzJ1tH
	+g4ZkWtqWSNri119Zl1Gf8+ASfdUB50/hTfQ0W2kq6S/U6uJyf0h9+6KF1DTVlEJrYgl9hyS5dv3E
	iEbu7jAE+UkvrmfzJS2Le/wjw2c7NGtEzZaEHyMwvJkg6FDWU6D2tUt4emIUQXsGRyNAJRU+Kbl/X
	ZzivBnpk3wm8elxCBJzKFBKNYHzGlZ44V3d+AZtu2hnj/eMUShDEC8QbPLCkxsW9D3znUiKq5z2yF
	4517JrA+zWc9TpmuFvng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuhRv-00000001I04-1JSs;
	Tue, 24 Feb 2026 01:42:55 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuhRr-00000001HxC-2ZGx;
	Tue, 24 Feb 2026 01:42:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1771897343;
	bh=Jcc+Bm636zbBsjTNZ3EK3Eue5zZ9zHiTiOlMdsEG1Jc=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=VcOSGa3qsRmuOcmKvj/Dke3MbVeXFPDmIjSGVU/Uh6YJvGQCanaHUr5/1on2LicyJ
	 xMbVFeZhHSWDm0Y/Kj6L6EHz06BcVGIAd/DAu7Uka80a9GHaeHzPw/GwhIJFGOAz69
	 hg/Wlslts+7lbalHKhRWitnyNwjWsEgVGicTHcLU=
X-QQ-mid: zesmtpgz3t1771897338te0671743
X-QQ-Originating-IP: VxWANHq/kQn9OZsEiJ4CYippYDR23qbKKQHdJan0+js=
Received: from [127.0.0.1] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 24 Feb 2026 09:42:17 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17092131372750963368
Message-ID: <C28FA037F24F3E74+97535c93-cc16-4bd5-b436-db7cdc0bb580@airkyi.com>
Date: Tue, 24 Feb 2026 09:42:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add node name for
 RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <B5000B8F1001C1D8+040b217f-8ee1-4f96-95ec-e44d140b589d@airkyi.com>
 <9cc9a3c5-55f0-32f6-f166-acfb3a34f0a3@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <9cc9a3c5-55f0-32f6-f166-acfb3a34f0a3@rock-chips.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NVgUsgecbtFOUkTH+U2yxknL5s9pEbBwWrJgzv2os8snM7fa2YfLveCT
	qqRjDqwe/is7Jxgv4P97rRTMtfDOWPkXee73aeJDIGJiER1q+o0+2W4WTTMEsHnOu3d51IX
	/KLcVUrruHXWUsdosYtMicdrRv86ztzv9yRGHVYrT5XQO4bCA0bga4yUZyPKMwCk3jny7du
	sfhO5qtpbqTaem1bPoQ24OFT50Fb8N9xaAN766csZjPwJTMAB0p4ghmaocFkHpOwyAG3Y7J
	akEyR+t0MZWS6dc5gr8cueCV39RGcVmcXS7BxxsUF0FsZw0CvsQrIqzcDoXMTAdRQqijzHR
	nhb2elj5XR9h2khReLcqw6HsE67rP7bQVhTRcbb5IibQ8o0bW0FE/SRSoM5LjQcP6cAn9uP
	T7zs5Q+aV3+23DCfeb0aB1I3/o6I9DvGOvHJxgKgh26vf+3mRr2GFtDolyWDr/u+C/9vh0k
	ipvovA96nAkPOfN4TN0OrSKgm/D8xqnkx/KEGL+aotkDRRSCc7i7Q23HPTpiGG+rIUvu/nu
	IzigGEb+B2Lt6c/MdZ2WFjO64W+dYxvGEoiVhQQjq+ab5MaPjSnH0ubJje6RPSlgmdoRj0G
	klR8Sdn64MEdkEB/1Buaf5Suc/8pw1wqo15z//TMzWvqQBq8lpg7Vpn/AtGCAkaEOcjJad5
	kf2eSUPG5LgtqKi1qRUw4VxjX5XCab1xEuGnxWoRZVknrVCtHdIu6eVf3xyqppoVLAlMVa2
	5Rvx4lzkDRI1kzymShHdHi23dHXyhxkHFxrJO7MO7bYaRe490iC4i+Z8Mv5iBrcZq2c4/EY
	Y3uDnongwLGurOPR+2COojNi+TLBjX9iWS2k61lJaZmzibD10S0/xbAk6k2ScYvPK2pO3Cz
	zsOcD8qAifg82b9RvFAj6z49kRV75Fnri3dye/GMGOXpoUmAB2ya+TP0d3jqASLKyBzpJU9
	Xu81tADr/Ls4x6aPia0vNdMIkGhYyeVyV8Bma1PAjsBmmf1IAkvshVHhEaDkVWScZY1Ey8H
	ZH77PbpbFoOi1EFwYztkyKz/VvXLw=
X-QQ-XMRINFO: M/715EihBoGS/VAi3I5lh1UT7FCdJekTaA==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_174252_172135_28D7D96A 
X-CRM114-Status: GOOD (  18.92  )
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

T24gMi8xMy8yMDI2IDc6MTEgUE0sIFNoYXduIExpbiB3cm90ZToKPiBIaSBDaGFveWkKPiAKPiDl
nKggMjAyNi8wMi8xMyDmmJ/mnJ/kupQgMTg6MzIsIENoYW95aSBDaGVuIOWGmemBkzoKPj4gSGVs
bG8gU2hhd24sCj4+Cj4+IE9uIDIvMTMvMjAyNiAxMDozNSBBTSwgU2hhd24gTGluIHdyb3RlOgo+
Pj4gVGh1cyB0aGUgYm9hcmQgZHRzIGZpbGVzIGNvdWxkIGFkZCBwcm9wZXJ0eSBmb3IgdGhlc2Ug
bm9kZXMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1j
aGlwcy5jb20+Cj4+PiAtLS0KPj4gWW91IHNob3VsZCBhbHNvIGFkZCBwbWRvbWFpbiBkcml2ZXIu
Cj4+Cj4+IEkndmUgZW5jb3VudGVyZWQgYSBzaW1pbGFyIGlzc3VlIGJlZm9yZS4KPj4gRmlubGV5
IHRvbGQgbWUgdG8gdXNlIHRoZSBuZXcgUE1JQywgYW5kIHRoYXQgd291bGQgc29sdmUgdGhlIHBy
b2JsZW0uCj4+IE1heWJlIHlvdSdyZSB1c2luZyB0aGUgc2FtZSBvbGQgUE1JQyBhcyBJIGRpZCA6
KQo+Pgo+IAo+IEkgZG9uJ3Qga25vdyB3aGF0IGRvZXMgbmV3IFBNSUMgbWVhbj8gTmV3IFJLODA2
IGRyaXZlciBvciBuZXcgUks4MDYKPiBoYXJkd2FyZT8KCkl0IGlzIG5ldyBSSzgwNiBoYXJkd2Fy
ZS4gQWNjb3JkaW5nIHRvIEZpbmxleSwgZW5kIHVzZXJzIGFyZSBjdXJyZW50bHkgdXNpbmcgCnRo
aXMgbmV3IHR5cGUgb2YgUE1JQy4KCgo+IAo+IFRoZSBwcm9ibGVtIGlzIHRoZXNlIHBvd2VyIGRv
bWFpbnMgcmVseSBvbiB2b2x0YWdlIHN1cHBseSB3aGljaCBjb3VsZAo+IGJlIHByb2JlZCBsYXRl
IGFmdGVyIHBtZG9tYWluIGRyaXZlciwgdGhlbiB0aGUgc3lzdGVtIGVuYWJsZXMgdGhlIFBEIGFu
ZAo+IGFjY2VzcyB0aGUgSVAgd2l0aG91dCBQRCBhY3R1YWxseSBlbmFibGVkKGV2ZW4gdy9vIHZv
bHRhZ2Ugc3VwcGx5Cj4gZW5hYmxlZCkuCj4gCgpJZiBJJ20gbm90IG1pc3Rha2VuLCB0aGUgbmV3
IGhhcmR3YXJlIHdpbGwgYXV0b21hdGljYWxseSBwb3dlcnMgdXAgdGhlIHN1cHBseQpjb3JyZXNw
b25kaW5nIHRvIFZERUMvVk5FQy4KCgo+IAo+IAo+Pgo+Pj4KPj4+IMKgIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSB8IDggKysrKy0tLS0KPj4+IMKgIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQo+Pj4gaW5kZXggN2Zl
OTU5My4uNGZiODg4OCAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LWJhc2UuZHRzaQo+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtYmFzZS5kdHNpCj4+PiBAQCAtOTA3LDcgKzkwNyw3IEBACj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNzaXplLWNlbGxzID0gPDA+Owo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjcG93ZXItZG9tYWluLWNlbGxzID0gPDA+Owo+Pj4g
wqAgLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwb3dlci1kb21haW5AUkszNTg4X1BE
X1JLVkRFQzAgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwZF9ya3ZkZWMw
OiBwb3dlci1kb21haW5AUkszNTg4X1BEX1JLVkRFQzAgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDxSSzM1ODhfUERfUktWREVDMD47Cj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZjcnUg
SENMS19SS1ZERUMwPiwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPCZjcnUgSENMS19WRFBVX1JPT1Q+LAo+Pj4gQEAgLTkxNyw3ICs5MTcs
NyBAQAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBtX3Fv
cyA9IDwmcW9zX3JrdmRlYzA+Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICNwb3dlci1kb21haW4tY2VsbHMgPSA8MD47Cj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHBvd2VyLWRvbWFpbkBSSzM1ODhfUERfUktWREVDMSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHBkX3JrdmRlYzE6IHBvd2VyLWRvbWFpbkBSSzM1ODhfUERfUktWREVDMSB7
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPFJL
MzU4OF9QRF9SS1ZERUMxPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjbG9ja3MgPSA8JmNydSBIQ0xLX1JLVkRFQzE+LAo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNydSBIQ0xLX1ZEUFVfUk9P
VD4sCj4+PiBAQCAtOTI2LDcgKzkyNiw3IEBACj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcG1fcW9zID0gPCZxb3Nfcmt2ZGVjMT47Cj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDww
PjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG93ZXItZG9tYWluQFJLMzU4OF9QRF9WRU5DMCB7Cj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBkX3ZlbmMwOiBwb3dlci1kb21haW5A
UkszNTg4X1BEX1ZFTkMwIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZWcgPSA8UkszNTg4X1BEX1ZFTkMwPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmNydSBIQ0xLX1JLVkVOQzA+LAo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNy
dSBBQ0xLX1JLVkVOQzA+Owo+Pj4gQEAgLTkzNyw3ICs5MzcsNyBAQAo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNzaXplLWNlbGxzID0gPDA+Owo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNwb3dlci1kb21haW4tY2Vs
bHMgPSA8MD47Cj4+PiDCoCAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cG93ZXItZG9tYWluQFJLMzU4OF9QRF9WRU5DMSB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHBkX3ZlbmMxOiBwb3dlci1kb21haW5AUkszNTg4X1BEX1ZFTkMxIHsKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDxS
SzM1ODhfUERfVkVOQzE+Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZjcnUgSENMS19SS1ZFTkMxPiwKPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNy
dSBIQ0xLX1JLVkVOQzA+LAo+Pgo+IAo+IAo+IAoKLS0gCkJlc3QsIApDaGFveWkKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

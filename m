Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1034EFB7E5
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 03:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IYfHokWwrgxoUPQgXb8ZUU4yR2hN1Ak748ldz1HUVAw=; b=TWoL+gzb4Ej+x6sOmUCfmiyWPp
	xx3BUpQNML1CCuXmPZBtIivyTUlwIG6+W3LmwVwY+WEwJv7P+rJ42Vbg1xZ9g21qtKf7qvhmCD4ki
	t9fbEleiBA/3RGofB/bWCEdtBCy0W+m1VCv6u4PRI8io8DWIlfDQkUON3pT+izph6Ocv6L3JbesiP
	qnKY/C68OusxiI69EC55qmZcRmzC1I8XZMCNqm2XDsyFBsxcuHkxvm4VNfAIP2vcmViWdO2i1Zw3H
	0pzLdQw6pZ5RQ0ggy+CBhu+egSMWAt8xg8tlJ0EKAnqkilXRXVCCQ+hjDKLoQ9HtufO9yIH2S7fh9
	eTdbwDjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuisH-00000001OEG-1KVp;
	Tue, 24 Feb 2026 03:14:13 +0000
Received: from mail-m1973190.qiye.163.com ([220.197.31.90])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuisE-00000001ODp-1qKM;
	Tue, 24 Feb 2026 03:14:12 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 34bf77547;
	Tue, 24 Feb 2026 11:14:01 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "finley.xiao" <finley.xiao@rock-chips.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add node name for
 RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
To: Chaoyi Chen <kernel@airkyi.com>
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <B5000B8F1001C1D8+040b217f-8ee1-4f96-95ec-e44d140b589d@airkyi.com>
 <9cc9a3c5-55f0-32f6-f166-acfb3a34f0a3@rock-chips.com>
 <C28FA037F24F3E74+97535c93-cc16-4bd5-b436-db7cdc0bb580@airkyi.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <54ba06df-b9eb-f4de-0254-afc3b8fcb0ab@rock-chips.com>
Date: Tue, 24 Feb 2026 11:14:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <C28FA037F24F3E74+97535c93-cc16-4bd5-b436-db7cdc0bb580@airkyi.com>
X-HM-Tid: 0a9c8da3b33509cckunm4fd9e8659c9d03
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkwaSlYdTkwYQ0JOQxpPTUNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUJCSU5LVU
	pLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=kOWA5HPKq1t2S4LMXPzcHbvRfwGsQn6q4o1yVtjCJa1zZ1coXy1w0YYRyLDQTmW/wNIM2Jia9ETpK+7jIHFJXreFLw2rx9bu4qBKGx9sTwl3Dm4NGTpz1e8IT1vSJJcNX709xjEGiUXyBMkaUEmaGlvjnzEmhT5XZibzT0Qj2VY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=oY/aVs2MBsqFBnrxFsG7MMgaG2m19nI2+4Sd2HfxOD4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_191410_668914_83628F1C 
X-CRM114-Status: GOOD (  23.07  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgrlnKggMjAyNi8wMi8yNCDmmJ/mnJ/kuowgOTo0MiwgQ2hhb3lpIENoZW4g5YaZ6YGTOgo+IE9u
IDIvMTMvMjAyNiA3OjExIFBNLCBTaGF3biBMaW4gd3JvdGU6Cj4+IEhpIENoYW95aQo+Pgo+PiDl
nKggMjAyNi8wMi8xMyDmmJ/mnJ/kupQgMTg6MzIsIENoYW95aSBDaGVuIOWGmemBkzoKPj4+IEhl
bGxvIFNoYXduLAo+Pj4KPj4+IE9uIDIvMTMvMjAyNiAxMDozNSBBTSwgU2hhd24gTGluIHdyb3Rl
Ogo+Pj4+IFRodXMgdGhlIGJvYXJkIGR0cyBmaWxlcyBjb3VsZCBhZGQgcHJvcGVydHkgZm9yIHRo
ZXNlIG5vZGVzLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5A
cm9jay1jaGlwcy5jb20+Cj4+Pj4gLS0tCj4+PiBZb3Ugc2hvdWxkIGFsc28gYWRkIHBtZG9tYWlu
IGRyaXZlci4KPj4+Cj4+PiBJJ3ZlIGVuY291bnRlcmVkIGEgc2ltaWxhciBpc3N1ZSBiZWZvcmUu
Cj4+PiBGaW5sZXkgdG9sZCBtZSB0byB1c2UgdGhlIG5ldyBQTUlDLCBhbmQgdGhhdCB3b3VsZCBz
b2x2ZSB0aGUgcHJvYmxlbS4KPj4+IE1heWJlIHlvdSdyZSB1c2luZyB0aGUgc2FtZSBvbGQgUE1J
QyBhcyBJIGRpZCA6KQo+Pj4KPj4KPj4gSSBkb24ndCBrbm93IHdoYXQgZG9lcyBuZXcgUE1JQyBt
ZWFuPyBOZXcgUks4MDYgZHJpdmVyIG9yIG5ldyBSSzgwNgo+PiBoYXJkd2FyZT8KPiAKPiBJdCBp
cyBuZXcgUks4MDYgaGFyZHdhcmUuIEFjY29yZGluZyB0byBGaW5sZXksIGVuZCB1c2VycyBhcmUg
Y3VycmVudGx5IHVzaW5nCj4gdGhpcyBuZXcgdHlwZSBvZiBQTUlDLgo+IAo+IAo+Pgo+PiBUaGUg
cHJvYmxlbSBpcyB0aGVzZSBwb3dlciBkb21haW5zIHJlbHkgb24gdm9sdGFnZSBzdXBwbHkgd2hp
Y2ggY291bGQKPj4gYmUgcHJvYmVkIGxhdGUgYWZ0ZXIgcG1kb21haW4gZHJpdmVyLCB0aGVuIHRo
ZSBzeXN0ZW0gZW5hYmxlcyB0aGUgUEQgYW5kCj4+IGFjY2VzcyB0aGUgSVAgd2l0aG91dCBQRCBh
Y3R1YWxseSBlbmFibGVkKGV2ZW4gdy9vIHZvbHRhZ2Ugc3VwcGx5Cj4+IGVuYWJsZWQpLgo+Pgo+
IAo+IElmIEknbSBub3QgbWlzdGFrZW4sIHRoZSBuZXcgaGFyZHdhcmUgd2lsbCBhdXRvbWF0aWNh
bGx5IHBvd2VycyB1cCB0aGUgc3VwcGx5Cj4gY29ycmVzcG9uZGluZyB0byBWREVDL1ZORUMuCj4g
CgpUaGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0aW9uIG9uIHRoZSBoYXJkd2FyZSB1cGRhdGUuCgpJ
J20gY3VycmVudGx5IHVzaW5nIHRoZSBFVkIgYm9hcmQgZm9yIFNvQyBicmluZy11cCBhbmQgcG9z
dC1zaWxpY29uCnZhbGlkYXRpb24sIHdoaWNoIEkgYmVsaWV2ZSBjYXJyaWVzIHRoZSBvbGQgUks4
MDYgaGFyZHdhcmUuIEl0J3MgYWxzbwphcHBhcmVudCB0aGF0IG1hbnkgZGV2ZWxvcGVycyAoYXMg
b3Bwb3NlZCB0byBlbmQgdXNlcnMpIGFyZSBzdGlsbApyZWx5aW5nIG9uIHRoZSBvbGQgaGFyZHdh
cmUgaW4gdGhlIGZpZWxkLgoKR2VuZXJhbGx5IHNwZWFraW5nLCB1cHN0cmVhbSBjb2RlIGhhcyBu
byB3YXkgdG8gZGlzdGluZ3Vpc2ggYmV0d2VlbiB0aGUgCm9sZCBhbmQgbmV3IFBNSUMgdmFyaWFu
dHMgc29sZWx5IGZyb20gdGhlIERUUywgY29ycmVjdD8gR2l2ZW4gdGhpcywgSQp0aGluayB3ZSBz
aG91bGQgYWltIHRvIGtlZXAgYm90aCBoYXJkd2FyZSB2ZXJzaW9ucyB3b3JrYWJsZSBpbiB0aGUK
dXBzdHJlYW0gY29kZS4KCj4gCj4+Cj4+Cj4+Pgo+Pj4+Cj4+Pj4gIMKgIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSB8IDggKysrKy0tLS0KPj4+PiAgwqAgMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKPj4+PiBpbmRl
eCA3ZmU5NTkzLi40ZmI4ODg4IDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQo+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQo+Pj4+IEBAIC05MDcsNyArOTA3LDcgQEAKPj4+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9IDwwPjsKPj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjcG93ZXItZG9tYWluLWNlbGxz
ID0gPDA+Owo+Pj4+ICDCoCAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBvd2VyLWRv
bWFpbkBSSzM1ODhfUERfUktWREVDMCB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBwZF9ya3ZkZWMwOiBwb3dlci1kb21haW5AUkszNTg4X1BEX1JLVkRFQzAgewo+Pj4+ICDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPFJLMzU4OF9Q
RF9SS1ZERUMwPjsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNsb2NrcyA9IDwmY3J1IEhDTEtfUktWREVDMD4sCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjcnUgSENMS19WRFBVX1JPT1Q+
LAo+Pj4+IEBAIC05MTcsNyArOTE3LDcgQEAKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHBtX3FvcyA9IDwmcW9zX3JrdmRlYzA+Owo+Pj4+ICDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9
IDwwPjsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG93ZXItZG9tYWluQFJLMzU4OF9QRF9SS1ZE
RUMxIHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBkX3JrdmRlYzE6IHBv
d2VyLWRvbWFpbkBSSzM1ODhfUERfUktWREVDMSB7Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8UkszNTg4X1BEX1JLVkRFQzE+Owo+Pj4+ICDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZjcnUg
SENMS19SS1ZERUMxPiwKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCA8JmNydSBIQ0xLX1ZEUFVfUk9PVD4sCj4+Pj4gQEAgLTkyNiw3ICs5
MjYsNyBAQAo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cG1fcW9zID0gPCZxb3Nfcmt2ZGVjMT47Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAjcG93ZXItZG9tYWluLWNlbGxzID0gPDA+Owo+Pj4+ICDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBwb3dlci1kb21haW5AUkszNTg4X1BEX1ZFTkMwIHsKPj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBkX3ZlbmMwOiBwb3dlci1kb21haW5AUkszNTg4X1BEX1ZF
TkMwIHsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
ZyA9IDxSSzM1ODhfUERfVkVOQzA+Owo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZjcnUgSENMS19SS1ZFTkMwPiwKPj4+PiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNydSBBQ0xL
X1JLVkVOQzA+Owo+Pj4+IEBAIC05MzcsNyArOTM3LDcgQEAKPj4+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNzaXplLWNlbGxzID0gPDA+Owo+Pj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3Bvd2VyLWRvbWFpbi1jZWxs
cyA9IDwwPjsKPj4+PiAgwqAgLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHBvd2VyLWRvbWFpbkBSSzM1ODhfUERfVkVOQzEgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcGRfdmVuYzE6IHBvd2VyLWRvbWFpbkBSSzM1ODhfUERfVkVOQzEgewo+Pj4+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcg
PSA8UkszNTg4X1BEX1ZFTkMxPjsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZjcnUgSENMS19SS1ZFTkMxPiwKPj4+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDwmY3J1IEhDTEtfUktWRU5DMD4sCj4+Pgo+Pgo+Pgo+Pgo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

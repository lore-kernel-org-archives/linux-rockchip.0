Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC84FCCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 12:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlR4s5+MdT7YaJ4Mgoi1pv3TJhHosE/qvyLrPQAvkis=; b=Gf18JYRSU3cFLb
	x1h2s2AYg2OhDgjc87TrX5TTgQo5KwvmktPDn41S/jv8XZeD2QuVwI+aqDyKh0GLbFdkx/RvOvRCy
	hFKO5NnNQ/1vOr4A1hfv+V3t4TPTOMXgxXIhM/XvJjmnAxeMGbpV2lrzaQCWFlPrgg3wqyVE1aRQa
	czZS4uS2MHrYXQcZg4aH3+UwHgCYxxfQaigmSpasTP48AclpunkFl81dDqgAy4flUMOytJkzzwMjb
	Ct4eQQoO8X36YhhspJ9uQeLyC5ke2r9gm7KDpeKiyKAGAr9reN5aomeCvuj2EN9vYduoShXUUOmML
	Drje5tSNelAz6AbSjmRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBB1v-0000000Gs15-1aYz;
	Tue, 21 Oct 2025 11:59:55 +0000
Received: from mail-m3275.qiye.163.com ([220.197.32.75])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBB1r-0000000Gryy-2C24
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 11:59:54 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26aa4dd4d;
	Tue, 21 Oct 2025 19:59:48 +0800 (GMT+08:00)
Message-ID: <15d92d15-6c48-40ca-bae4-5d08ed2e60b8@rock-chips.com>
Date: Tue, 21 Oct 2025 19:59:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Adrian Hunter <adrian.hunter@intel.com>,
 linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: Change DLL_STRBIN_TAPNUM_DEFAULT
 to 0x4
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKFoKZTcFsLvtWqqXsxDmDZpSg2jvAw=U8xn56vzKFSiXag@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAPDyKFoKZTcFsLvtWqqXsxDmDZpSg2jvAw=U8xn56vzKFSiXag@mail.gmail.com>
X-HM-Tid: 0a9a06a3c8f209cckunm80246634699b03
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0gdH1ZJTR0aShlMGEpPHhpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=KJxUVaek3O1yZHxSuTnafUH+h+4htjGBjF70g+rlxvusNvGZa64yTqtHKcR6FstJYpe1pxBMh9KbtrHbxxj5/7QmBKJrn9ojw0fTBOsi+02a5dOMDuoDECDPTSpx+TTJsRjNvOYLV8sYe2lIe7fbYzRc1i2+FadUHGP2A/yCTuM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=cvrw4pJc2J92Y+nymL28QbdmQxOGzCdHFwATQ2Xx/Tc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_045952_831009_246594C1 
X-CRM114-Status: GOOD (  12.54  )
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

5ZyoIDIwMjUvMTAvMjEg5pif5pyf5LqMIDE4OjE4LCBVbGYgSGFuc3NvbiDlhpnpgZM6Cj4gT24g
TW9uLCAyMCBPY3QgMjAyNSBhdCAwMzo1MCwgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlw
cy5jb20+IHdyb3RlOgo+Pgo+PiBzdHJiaW4gc2lnbmFsIGRlbGF5IHVuZGVyIDB4OCBjb25maWd1
cmF0aW9uIGlzIG5vdCBzdGFibGUgYWZ0ZXIgbWFzc2l2ZQo+PiB0ZXN0LiBUaGUgcmVjb21tYW5k
YXRpb24gb2YgaXQgc2hvdWxkIGJlIDB4NC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGlu
IDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gRG8gd2UgbmVlZCBhIGZpeGVzL3N0YWJs
ZS10YWcgaGVyZSB0b28/Cj4gCgpZZXMsIHdlIGRvLgoKRml4ZXM6IDA4ZjNkZmY3OTlkNCAoIm1t
Yzogc2RoY2ktb2YtZHdjbXNoYzogYWRkIHJvY2tjaGlwIHBsYXRmb3JtIHN1cHBvcnQiKQoKQnV0
IEknZCBsaWtlIHRvIGhvbGQgaXQgZm9yIGEgd2hpbGUgYXMgSSBhc2tlZCBzb21lIG90aGVyIGZv
bGtzIHRvIHRlc3QKdGhpcyBwYXRjaCBhc2FwIHRvbyAuIFNvIGxldCdzIHdhaXQgdG8gc2VlIGlm
IGl0IGFsc28gc29sdmVzIHRoZWlyCnByb2JsZW1zLgoKPiBLaW5kIHJlZ2FyZHMKPiBVZmZlCj4g
Cj4+IC0tLQo+Pgo+PiAgIGRyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktb2YtZHdjbXNoYy5jIHwgMiAr
LQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMgYi9kcml2
ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYwo+PiBpbmRleCBlZWJkNDUzLi41YjYxNDAx
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYwo+PiAr
KysgYi9kcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYwo+PiBAQCAtOTQsNyArOTQs
NyBAQAo+PiAgICNkZWZpbmUgRExMX1RYQ0xLX1RBUE5VTV9ERUZBVUxUICAgICAgIDB4MTAKPj4g
ICAjZGVmaW5lIERMTF9UWENMS19UQVBOVU1fOTBfREVHUkVFUyAgICAweEEKPj4gICAjZGVmaW5l
IERMTF9UWENMS19UQVBOVU1fRlJPTV9TVyAgICAgICBCSVQoMjQpCj4+IC0jZGVmaW5lIERMTF9T
VFJCSU5fVEFQTlVNX0RFRkFVTFQgICAgICAweDgKPj4gKyNkZWZpbmUgRExMX1NUUkJJTl9UQVBO
VU1fREVGQVVMVCAgICAgIDB4NAo+PiAgICNkZWZpbmUgRExMX1NUUkJJTl9UQVBOVU1fRlJPTV9T
VyAgICAgIEJJVCgyNCkKPj4gICAjZGVmaW5lIERMTF9TVFJCSU5fREVMQVlfTlVNX1NFTCAgICAg
ICBCSVQoMjYpCj4+ICAgI2RlZmluZSBETExfU1RSQklOX0RFTEFZX05VTV9PRkZTRVQgICAgMTYK
Pj4gLS0KPj4gMi43LjQKPj4KPj4KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

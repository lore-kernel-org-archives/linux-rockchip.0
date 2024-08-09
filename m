Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF51BC52D71
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 06:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70CV6z/NpEv2TD5MTwnSanQ7KrLL7Xh8BryONtwkhF4=; b=ZVPedQLcpHYnXs
	NF92pd3mLP6lYKjQhcbIGz0FZFb9tA4O13rGTYwcqjxFqX8HkaIHBoboBuXGDLF0xs948rTwds4xg
	y0PCOIgDSlRnki3G+JoFhVyo83takEd/lUZRSTeB7ps2prpzeUxnQ+3TfXeAk9EcblZhWfAl8YhUg
	nVvszYXzQlb0INV1Ou7N5pZzYJRytzvfZpk7lva3VQzN3ApbN0oTcSzafHr/tiE8nMg6RaVtQ0T4f
	AF7pO7UmnnNq0MnVvqiWAWSmTglU73+zMglrF8w5vihtX7yOyVaDXB4t+LyBKzArFo2ia0eOwYCtu
	GAg83G0KtmuSI/gIyKbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scIst-0000000APU7-3Pf9;
	Fri, 09 Aug 2024 06:13:55 +0000
Received: from mail-m1973170.qiye.163.com ([220.197.31.70])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scIrJ-0000000AOyU-3Vkd
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Aug 2024 06:12:20 +0000
DKIM-Signature: a=rsa-sha256;
	b=NbxpK5WGgVa8sio3vm+pfT8FzcMOaLZxORS0fH+ThwtWF6zfT3IquaNgppDx/2Qn8oCH9HYss/1WETz4Y7f2y1eNX2HC/lzW31l5Z9O/uCGLNd0jTLN8+6aSJQqloDKjmvN5kR44ytvx4IgpDbwinShVwyfU49hKfihpj1p8FRU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=w6c7WlzzHIzp6TEffKl+icPYchFCdoKhGjgZi506x/M=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.69] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 2E5BE460404;
	Fri,  9 Aug 2024 14:11:44 +0800 (CST)
Message-ID: <adbd07c2-3c01-474d-884f-df9eeb08b580@rock-chips.com>
Date: Fri, 9 Aug 2024 14:11:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>,
 YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] scsi: ufs: rockchip: init support for UFS
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
 <1723089163-28983-4-git-send-email-shawn.lin@rock-chips.com>
 <93a16a4a-6a12-446f-bfc9-e8aa907e0598@kernel.org>
 <a8305f20-ea58-40b5-93f6-2c44f151219c@rock-chips.com>
 <4de61c50-0f84-40b6-8993-d4e82cf54be0@kernel.org>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <4de61c50-0f84-40b6-8993-d4e82cf54be0@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkJMGlZKTUpDT0hJHktKGkpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9135c3b9a603aekunm2e5be460404
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KzI6TCo5LjI#Vg9LPxNPTRMB
	AjEKCi5VSlVKTElISkNIQktOTE9NVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5NT0M3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_231218_396939_9834D741 
X-CRM114-Status: GOOD (  25.76  )
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

5ZyoIDIwMjQvOC85IDEzOjQ0LCBLcnp5c3p0b2YgS296bG93c2tpIOWGmemBkzoKPiBPbiAwOS8w
OC8yMDI0IDAyOjUzLCBTaGF3biBMaW4gd3JvdGU6Cj4+IOWcqCAyMDI0LzgvOCAxODozNiwgS3J6
eXN6dG9mIEtvemxvd3NraSDlhpnpgZM6Cj4+PiBPbiAwOC8wOC8yMDI0IDA1OjUyLCBTaGF3biBM
aW4gd3JvdGU6Cj4+Pj4gUkszNTc2IGNvbnRhaW5zIGEgVUZTIGNvbnRyb2xsZXIsIGFkZCBpbml0
IHN1cHBvcnQgZm90IGl0Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3
bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+Pj4KPj4+Cj4+PiAuLi4KPj4+Cj4+Pj4gKwllcnIgPSBj
bGtfcHJlcGFyZV9lbmFibGUoaG9zdC0+cmVmX291dF9jbGspOwo+Pj4+ICsJaWYgKGVycikKPj4+
PiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIGVyciwgImZhaWxlZCB0byBlbmFibGUgcmVm
IG91dCBjbG9ja1xuIik7Cj4+Pj4gKwo+Pj4+ICsJaG9zdC0+cnN0X2dwaW8gPSBkZXZtX2dwaW9k
X2dldCgmcGRldi0+ZGV2LCAicmVzZXQiLCBHUElPRF9PVVRfTE9XKTsKPj4+PiArCWlmIChJU19F
UlIoaG9zdC0+cnN0X2dwaW8pKSB7Cj4+Pj4gKwkJZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQ
VFJfRVJSKGhvc3QtPnJzdF9ncGlvKSwKPj4+PiArCQkJCSJpbnZhbGlkIHJlc2V0LWdwaW9zIHBy
b3BlcnR5IGluIG5vZGVcbiIpOwo+Pj4+ICsJCWVyciA9IFBUUl9FUlIoaG9zdC0+cnN0X2dwaW8p
Owo+Pj4KPj4+IE5vLiBMb29rIGF0IHlvdXIgY29kZSBhYm92ZSAtIHlvdSBoYXZlIHJldHVybiBk
ZXZfZXJyX3Byb2JlLCBzbyBsb2dpY2FsCj4+PiBpcyB0aGF0IHRoZSBzeW50YXggaXMgZXJyID0g
ZGV2X2Vycl9wcm9iZS4gRG9uJ3Qgb3Zlci1jb21wbGljYXRlIHRoZSBjb2RlLgo+Pj4KPj4+IEFu
eXdheSwgdGhpcyBpcyBzdXNwaWNpb3VzLiBZb3UgYWxyZWFkeSBoYXZlIHJlc2V0cyB3aXRoIGZv
dXIgcmVzZXRzCj4+PiAoISEhKSBhbmQgeW91IGNsYWltIHlvdSBoYXZlIGZpZnRoIHJlc2V0IC0g
R1BJTz8gVGhpcyBsb29rcyBqdXN0IHdyb25nLAo+Pj4gbGlrZSB5b3UgcmVwcmVzZW50IHNvbWUg
cHJvcGVydGllcyB3aGljaCBkbyBub3QgYmVsb25nIGhlcmUuCj4+Pgo+Pgo+PiBUaGFua3MgZm9y
IHRoZSBmZWFkYmFjay4KPj4KPj4gWWVzLCB3ZSBoYXZlIDQgcmVzZXRzIGZvciBjb250cm9sbGVy
LCBhbmQgb25lIGdwaW8gdG8gcmVzZXQgdGhlCj4+IGRldmljZS4gSXQgaGFwcGVuZWQgdG8gYmUg
Y2FsbGVkIHJlc2V0LWdwaW9zIGluIERUIGJ1dCBjYW4gYmUKPj4gYW55IG5hbWUgaWYgeW91IGxp
a2UgaXQgdG8gYmUuIEkgYWRkZWQgcmVzZXQtZ3Bpb3MgYXMgYSByZXF1aXJlZCBvbmUKPj4gbGlz
dGVkIGluIGR0LWJpbmRpbmdzIGZpbGUsIGluIHBhdGNoIDIuCj4gCj4gVGhlbiBleHBsYWluIGlu
IHRoZSBiaW5kaW5ncyB3aGF0IHRoaXMgcmVzZXQtZ3Bpb3MgaXMgZm9yLgoKR290IGl0LgoKPj4K
Pj4KPj4gICA+IEFsc28sIHdoeSBkbyB5b3UgbGVhdmUgdGhlIGRldmljZSBpbiB0aGUgcmVzZXQg
c3RhdGU/IExvZ2ljYWwgb25lCj4+IG1lYW5zCj4+ICAgPiAtIHJlc2V0IGlzIGFzc2VydGVkLiBU
aGlzIGFwcGxpZXMgdG8gdWZzX3JvY2tjaGlwX2RldmljZV9yZXNldCgpIGFzID4KPj4gd2VsbAo+
PiAgID4gLSB0aGF0J3MganVzdCB3cm9uZyBjb2RlLgo+Pgo+Pgo+PiBObywgSSB0ZXN0ZWQgaXQg
aW4gbGludXgtbmV0IGFuZCB0aGUgb3V0cHV0IGlzIEhJR0gsIGFuZCBsZWF2ZSB0aGUKPj4gZGV2
aWNlIGluIGFjdGl2ZSBzdGF0ZS4KPj4KPj4gSW4gZHRzLCB3ZSBhZGQ6Cj4+IHJlc2V0LWdwaW9z
ID0gPCZncGlvNCBSS19QRDAgR1BJT19BQ1RJVkVfSElHSD47Cj4gCj4gPyBEb24ndCB1c2UgcmFu
ZG9tIHZhbHVlcywgd2hhdCBpcyB0eXBlIG9mIHRoZSByZXNldCBsaW5lPwo+IAo+Pgo+PiBzbyBn
cGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAoaG9zdC0+cnN0X2dwaW8sIDEpIC0+IG91dHB1dCBISUdI
IGZvcgo+PiBncGlvNF9kMC4gQmFzZWQgb24geW91ciBjb21tZW50LCB3ZSBzaG91bGQgY2hhbmdl
IHRoZSBkdHMgdG8gdXNlCj4+IEdQSU9fQUNUSVZFX0xPVyBhbmQgdGhlbiBncGlvZF9zZXRfdmFs
dWVfY2Fuc2xlZXDvvIhob3N0LT5yc3RfZ3BpbywgMO+8iQo+Pgo+Pgo+PiBCb3RoIGNhbiB3b3Jr
LCBob3dldmVyIElNTywgaXNuJ3QgbG9naWNhbCBvbmUgbWVhbnMgSElHSCBsZXZlbCBpbiBsaW5l
Cj4+IG1vcmUgaHVtYW4gcmVhZGFibGU/Cj4gCj4gWW91IG1peCBsb2dpY2FsIGxldmVsIGFuZCBs
aW5lIGxldmVsLgo+IAo+IElmIHRoaXMgaXMgcmVzZXQgR1BJTywgdGhlbiAxIG1lYW5zIGFzc2Vy
dGVkIHNvIHlvdXIgY29kZSBpcyBib2d1cy4KPiAKPiBNYXliZSB0aGUgdGhlIGxpbmUgaXMgYWN0
aXZlIGxvdz8KPiAKClllcywgSSBtaXggdGhlIHRoZW0uIFdpbGwgY2hhbmdlIHRvIHVzZSBhY3Rp
dmUtbG93LgoKVGhhbmtzLgoKPj4KPj4KPj4KPj4+IFdoZXJlIGlzIHlvdXIgRFRTIHNvIHdlIGNh
biB2YWxpZGF0ZSBpdD8KPj4+Cj4+Cj4+IFdpbGwgYWRkIGl0IGluIHRoZSBuZXh0IHZlcnNpb24s
IGFzIG5vdyB0aGUgcmszNTc2LmR0c2kgaXMgdW5kZXIKPj4gcmV2aWV3ZWQgYW5kIFVGUyBub2Rl
IHdhcyBub3QgYWRkZWQuIFNvIEkgd2FzIGFmcmFpZCB0byBpbnRlcmZlcmUKPj4gd2l0aCB0aGF0
IHBhdGNoIGFuZCBqdXN0IHdhbnRlZCB0byBhZGQgaW5jcmVtZW50YWwgcGF0Y2ggb25jZQo+PiBy
azM1NzYuZHRzaSBnb3QgbWVyZ2VkLgo+Pgo+Pj4gQmVzdCByZWdhcmRzLAo+Pj4gS3J6eXN6dG9m
Cj4+Pgo+IAo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

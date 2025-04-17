Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5780BC369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 07:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jr7HDes+H25DnRsdD4/pyg75f+5mbOoPvOydTfM/Fxs=; b=BMedQ05muJk7mu
	p2JV4xqZKyINwZ9ugjVcQ7OFEiU+xF+D+xRT8ZqR+dqZfs8xN0Ld2Oads5oCP0jrmo8eZfgNNX8Rk
	Q7X3izzyK6U3msinuSgQbiVbdbJhL5JQxK8Ey5L2vOoy8URziTT+rFf2///zIYz/hifcNGxpBR7MJ
	l9coPF43MU3ltNB12U+m90DzRIRrgQrQ6R7JtrxQvpseTcnHCVbpimlMdXWLsiwtT9Ez1/HXxeVQ4
	zbu2ShM5HoQmYgVnNDfISB0lvwdB0J1Fpl1zOehTMOR8sovPLBIRWHZY4oDH+XN+O22rXLQQM2G2u
	RRct35sBW6MFJMb4GlpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JN9-0000000C2Bv-0u6b;
	Thu, 17 Apr 2025 07:09:19 +0000
Received: from mail-m1973188.qiye.163.com ([220.197.31.88])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JN5-0000000C2BK-2L6P;
	Thu, 17 Apr 2025 07:09:17 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1232f7211;
	Thu, 17 Apr 2025 15:09:09 +0800 (GMT+08:00)
Message-ID: <85643fe4-c7df-4d64-e852-60b66892470a@rock-chips.com>
Date: Thu, 17 Apr 2025 15:08:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Cc: shawn.lin@rock-chips.com, lpieralisi@kernel.org, kw@linux.com,
 bhelgaas@google.com, heiko@sntech.de, manivannan.sadhasivam@linaro.org,
 robh@kernel.org, jingoohan1@gmail.com, thomas.richard@bootlin.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Configure max payload size on host init
To: Niklas Cassel <cassel@kernel.org>, Hans Zhang <18255117159@163.com>
References: <20250416151926.140202-1-18255117159@163.com>
 <aACoEpueUHBLjgbb@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aACoEpueUHBLjgbb@ryzen>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh1PS1YdTh9MTR0YHxlPHR9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9642947cc309cckunm1232f7211
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MxA6Dgw6LTJWGhBPTThCVige
	SEhPCxdVSlVKTE9PQ0xITE5KSE5CVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlDSE03Bg++
DKIM-Signature: a=rsa-sha256;
	b=Bru4i23kQYP97Nux3LeWYaNmKGGkZOkOZHQ0UKzubnL1kmVrx40dZe9StL44MeqBGjDHQsj/p2arOdsfDLIMDj7XsnYJaSq8EMu/yUacpIEFeqa5MGha3wpPB1oztmJIUtu4dZy5cnd8M4RGAKe/Stpn69AXKrNpf617Id0ZB04=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=NhjvZ2JRR5EyoY0B1vtxKVPb3zuD+k++ITAMYs8q1PE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_000916_051484_5763B5EA 
X-CRM114-Status: GOOD (  13.53  )
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

5ZyoIDIwMjUvMDQvMTcg5pif5pyf5ZubIDE1OjA0LCBOaWtsYXMgQ2Fzc2VsIOWGmemBkzoKPiBI
ZWxsbyBIYW5zLAo+IAo+IE9uIFdlZCwgQXByIDE2LCAyMDI1IGF0IDExOjE5OjI2UE0gKzA4MDAs
IEhhbnMgWmhhbmcgd3JvdGU6Cj4+IFRoZSBSSzM1ODgncyBQQ0llIGNvbnRyb2xsZXIgZGVmYXVs
dHMgdG8gYSAxMjgtYnl0ZSBtYXggcGF5bG9hZCBzaXplLAo+PiBidXQgaXRzIGhhcmR3YXJlIGNh
cGFiaWxpdHkgYWN0dWFsbHkgc3VwcG9ydHMgMjU2IGJ5dGVzLiBUaGlzIHJlc3VsdHMKPj4gaW4g
c3Vib3B0aW1hbCBwZXJmb3JtYW5jZSB3aXRoIGRldmljZXMgdGhhdCBzdXBwb3J0IGxhcmdlciBw
YXlsb2Fkcy4KPiAKPiBQYXRjaCBsb29rcyBnb29kIHRvIG1lLCBidXQgcGxlYXNlIGFsd2F5cyBy
ZWZlcmVuY2UgdGhlIFRSTSB3aGVuIHlvdSBjYW4uCj4gCj4gQmVmb3JlIHRoaXMgcGF0Y2g6Cj4g
CQlEZXZDYXA6IE1heFBheWxvYWQgMjU2IGJ5dGVzCj4gCQlEZXZDdGw6IE1heFBheWxvYWQgMTI4
IGJ5dGVzCj4gCj4gCj4gQXMgcGVyIHJrMzU4OCBUUk0sIHNlY3Rpb24gIjExLjQuMy44IERTUF9Q
Q0lFX0NBUCBEZXRhaWwgUmVnaXN0ZXJzIERlc2NyaXB0aW9uIgo+IAo+IERldkNhcCBpcyBwZXIg
dGhlIHJlZ2lzdGVyIGRlc2NyaXB0aW9uIG9mIERTUF9QQ0lFX0NBUF9ERVZJQ0VfQ0FQQUJJTElU
SUVTX1JFRywKPiBmaWVsZCBQQ0lFX0NBUF9NQVhfUEFZTE9BRF9TSVpFLgo+IFdoaWNoIGNsYWlt
cyB0aGF0IHRoZSB2YWx1ZSBhZnRlciByZXNldCBpcyAweDEgKDI1NkIpLgo+IAo+IERldkN0bCBp
cyBwZXIgdGhlIHJlZ2lzdGVyIGRlc2NyaXB0aW9uIG9mCj4gRFNQX1BDSUVfQ0FQX0RFVklDRV9D
T05UUk9MX0RFVklDRV9TVEFUVVMsIGZpZWxkIFBDSUVfQ0FQX01BWF9QQVlMT0FEX1NJWkVfQ1Mu
Cj4gV2hpY2ggY2xhaW1zIHRoYXQgdGhlIHJlc2V0IHZhbHVlIGlzIDB4MCAoMTI4QikuCj4gCj4g
Qm90aCBvZiB0aGVzZSBtYXRjaCB0aGUgdmFsdWVzIGFib3ZlLgo+IAo+IEFzIHBlciB0aGUgZGVz
Y3JpcHRpb24gb2YgUENJRV9DQVBfTUFYX1BBWUxPQURfU0laRV9DUzoKPiAiUGVybWlzc2libGUg
dmFsdWVzIHRoYXQKPiBjYW4gYmUgcHJvZ3JhbW1lZCBhcmUgaW5kaWNhdGVkIGJ5IHRoZSBNYXhf
UGF5bG9hZF9TaXplCj4gU3VwcG9ydGVkIGZpZWxkIChQQ0lFX0NBUF9NQVhfUEFZTE9BRF9TSVpF
KSBpbiB0aGUgRGV2aWNlCj4gQ2FwYWJpbGl0aWVzIChERVZJQ0VfQ0FQQUJJTElUSUVTX1JFRykg
cmVnaXN0ZXIgKGZvciBtb3JlCj4gZGV0YWlscywgc2VlIHNlY3Rpb24gNy41LjMuMyBvZiBQQ0kg
RXhwcmVzcyBCYXNlIFNwZWNpZmljYXRpb24pLiIKPiAKPiBTbyB5b3VyIHBhdGNoIGxvb2tzIGdv
b2QuCj4gCj4gSSBndWVzcyBJJ20gbW9zdGx5IHN1cnByaXNlZCB0aGF0IHRoZSBlLmcuIHBjaV9j
b25maWd1cmVfbXBzKCkgZG9lcyBub3QKPiBhbHJlYWR5IHNldCBEZXZDdGwgdG8gdGhlIG1heChE
ZXZDYXAuTVBTIG9mIHRoZSBob3N0LCBEZXZDYXAuTVBTIG9mIHRoZQo+IGVuZHBvaW50KS4KPiAK
PiBBcHBhcmVudGx5IHBjaV9jb25maWd1cmVfbXBzKCkgb25seSBkZWNyZWFzZXMgTVBTIGZyb20g
dGhlIHJlc2V0IHZhbHVlcz8KPiBJdCBuZXZlciBpbmNyZWFzZXMgaXQ/Cj4gCgpBY3R1YWxseSBp
dCBkb2VzOgoKaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL0Rv
Y3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2VybmVsLXBhcmFtZXRlcnMudHh0I0w0NzU3Cgo+IAo+
IEtpbmQgcmVnYXJkcywKPiBOaWtsYXMKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67DEBC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 06:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4ZbhLSYwd9SiJi5hVejojG3R9H5uqhrSyqcqh+qbR0=; b=ay0NVxihONGx7c
	kJKefOtam0Xd3MufYbmrszv7cdRVUl/Boi+lJuoeoQ4wruDevDCAP+xdFObKVm3v7fWbVtqo6H6fM
	xanXW0xSrfmcFv+UZP0v+QniGOBKM1kkmaMZqZZQox6/rsUjSpj4nvgUFOchuXJhdjlU0qNzLvG67
	Cs8okKircXi9pAncBiZEoBFx2RYW5y0XVYy6Q4j/Y3/OK7Cd0ciAyIZ2rgCNrAMjZ6rL57Jr7f5kZ
	4Su2CjS2BvKR2rL8ezs4afPvMC4j/i/Xb32RvlWHqbwOuI6GBoPyJUm94EIFVzDgzM7Zk9IPdmwvw
	Esp85nHYsPxAQy5Gz6Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbwMU-00000007CTy-2z0G;
	Thu, 08 Aug 2024 06:10:58 +0000
Received: from mail-m254103.xmail.ntesmail.com ([103.129.254.103])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbwMR-00000007CT9-061k
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 06:10:57 +0000
DKIM-Signature: a=rsa-sha256;
	b=jxtn3Rd1dLBgtCF2/hGkKe+XQ1bpjqEgLAv3lWNrgqm6FilohfU+F12mqV0P+BwM/XrmN8Xcj0Ip3d7Tji7nBKP7ovFnk10ZvS6il04Jvom6PgzSSpXMWw+KgnA/1wyrO+z/b9Q15wLx87U/lmE+tf3ph3r5Qrf10uqey4XVPh8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=eBvF1yVRkPrWREGioo9SaAdk0UUJh165NjxJgk+YcKM=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.69] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 6CD9A460411;
	Thu,  8 Aug 2024 14:10:26 +0800 (CST)
Message-ID: <659b9e09-b98d-48e0-ad0f-bfb2fe2148bc@rock-chips.com>
Date: Thu, 8 Aug 2024 14:10:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 Liang Chen <cl@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Conor Dooley <conor+dt@kernel.org>, Bart Van Assche <bvanassche@acm.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 YiFeng Zhao <zyf@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Avri Altman <avri.altman@wdc.com>,
 linux-scsi@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: ufs: Document Rockchip UFS host
 controller
To: "Rob Herring (Arm)" <robh@kernel.org>
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
 <1723089163-28983-3-git-send-email-shawn.lin@rock-chips.com>
 <172309498853.3975217.8775988957925335272.robh@kernel.org>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <172309498853.3975217.8775988957925335272.robh@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkJOSlZPHU0fTEtOTB1LHkpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91309c2dc503aekunm6cd9a460411
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MCo6Vhw5NzI9TAs5GhdJHENC
	ATIKCz1VSlVKTElIS0JMT0lMQktLVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5PSkM3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_231055_627645_556928BD 
X-CRM114-Status: GOOD (  18.37  )
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

SGkgUm9iCgrlnKggMjAyNC84LzggMTM6MjksIFJvYiBIZXJyaW5nIChBcm0pIOWGmemBkzoKPiAK
PiBPbiBUaHUsIDA4IEF1ZyAyMDI0IDExOjUyOjQyICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4+
IERvY3VtZW50IFJvY2tjaGlwIFVGUyBob3N0IGNvbnRyb2xsZXIgZm9yIFJLMzU3NiBTb0MuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+
Pgo+PiAtLS0KPj4KPj4gQ2hhbmdlcyBpbiB2MjoKPj4gLSByZW5tYWUgZmlsZSBuYW1lCj4+IC0g
Zml4IGFsbCBlcnJvcnMgYW5kIHBhc3MgdGhlIGR0X2JpbmRpbmdfY2hlY2s6Cj4+ICAgIG1ha2Ug
ZHRfYmluZGluZ19jaGVjayBEVF9TQ0hFTUFfRklMRVM9cm9ja2NoaXAscmszNTc2LXVmcy55YW1s
Cj4+Cj4+ICAgLi4uL2JpbmRpbmdzL3Vmcy9yb2NrY2hpcCxyazM1NzYtdWZzLnlhbWwgICAgICAg
ICAgfCA5NiArKysrKysrKysrKysrKysrKysrKysrCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDk2IGlu
c2VydGlvbnMoKykKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3Vmcy9yb2NrY2hpcCxyazM1NzYtdWZzLnlhbWwKPj4KPiAKPiBNeSBib3Qg
Zm91bmQgZXJyb3JzIHJ1bm5pbmcgJ21ha2UgZHRfYmluZGluZ19jaGVjaycgb24geW91ciBwYXRj
aDoKPiAKPiB5YW1sbGludCB3YXJuaW5ncy9lcnJvcnM6Cj4gCj4gZHRzY2hlbWEvZHRjIHdhcm5p
bmdzL2Vycm9yczoKPiAvYnVpbGRzL3JvYmhlcnJpbmcvZHQtcmV2aWV3LWNpL2xpbnV4L0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcm9ja2NoaXAscmszNTc2LXVmcy55YW1s
OiAkaWQ6IENhbm5vdCBkZXRlcm1pbmUgYmFzZSBwYXRoIGZyb20gJGlkLCByZWxhdGl2ZSBwYXRo
L2ZpbGVuYW1lIGRvZXNuJ3QgbWF0Y2ggYWN0dWFsIHBhdGggb3IgZmlsZW5hbWUKPiAgIAkgJGlk
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy91ZnMvcm9ja2NoaXAsdWZzLnlhbWwKPiAg
IAlmaWxlOiAvYnVpbGRzL3JvYmhlcnJpbmcvZHQtcmV2aWV3LWNpL2xpbnV4L0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcm9ja2NoaXAscmszNTc2LXVmcy55YW1sCgpUaGlz
IGlzIGFscmVhZHkgZml4ZWQgYnkgYSByZXNlbmQgdjIgMi8zIHBhdGNoLCBhIG1vbWVudCBhZ28u
IFNvcnJ5IGZvciAKdGhhdC4KCj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vm
cy9yb2NrY2hpcCxyazM1NzYtdWZzLmV4YW1wbGUuZHRzOjI0OjE4OiBmYXRhbCBlcnJvcjogZHQt
YmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTc2LWNydS5oOiBObyBzdWNoIGZpbGUgb3IgZGly
ZWN0b3J5Cj4gICAgIDI0IHwgICAgICAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcm9j
a2NoaXAscmszNTc2LWNydS5oPgo+ICAgICAgICB8ICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiBjb21waWxhdGlvbiB0ZXJtaW5hdGVk
LgoKVGhlcmUgYXJlIHN0aWxsIHBlbmRpbmcgcGF0Y2hlcyBmcm9tIFJvY2tjaGlwIGluIHF1ZXVl
IGZvciByZXZpZXcuIFRoaXMKcGF0Y2hzZXQgaXMgYmFzZWQgb24gdGhlbS4gSSB3aWxsIHdhaXQg
Zm9yIG1vcmUgY29tbWVudHMgYW5kIHVwZGF0ZSB0aGVtCmFmdGVyIGFsbCB1bmRlci1yZXZpZXcg
cGF0Y2hlcyBnb3QgbWVyZ2VkLgoKVGhhbmtzLgoKPiBtYWtlWzJdOiAqKiogW3NjcmlwdHMvTWFr
ZWZpbGUubGliOjQyNzogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9yb2Nr
Y2hpcCxyazM1NzYtdWZzLmV4YW1wbGUuZHRiXSBFcnJvciAxCj4gbWFrZVsyXTogKioqIFdhaXRp
bmcgZm9yIHVuZmluaXNoZWQgam9icy4uLi4KPiBtYWtlWzFdOiAqKiogWy9idWlsZHMvcm9iaGVy
cmluZy9kdC1yZXZpZXctY2kvbGludXgvTWFrZWZpbGU6MTQzMDogZHRfYmluZGluZ19jaGVja10g
RXJyb3IgMgo+IG1ha2U6ICoqKiBbTWFrZWZpbGU6MjQwOiBfX3N1Yi1tYWtlXSBFcnJvciAyCj4g
Cj4gZG9jIHJlZmVyZW5jZSBlcnJvcnMgKG1ha2UgcmVmY2hlY2tkb2NzKToKPiAKPiBTZWUgaHR0
cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L2RldmljZXRyZWUtYmluZGluZ3MvcGF0
Y2gvMTcyMzA4OTE2My0yODk4My0zLWdpdC1zZW5kLWVtYWlsLXNoYXduLmxpbkByb2NrLWNoaXBz
LmNvbQo+IAo+IFRoZSBiYXNlIGZvciB0aGUgc2VyaWVzIGlzIGdlbmVyYWxseSB0aGUgbGF0ZXN0
IHJjMS4gQSBkaWZmZXJlbnQgZGVwZW5kZW5jeQo+IHNob3VsZCBiZSBub3RlZCBpbiAqdGhpcyog
cGF0Y2guCj4gCj4gSWYgeW91IGFscmVhZHkgcmFuICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIGFu
ZCBkaWRuJ3Qgc2VlIHRoZSBhYm92ZQo+IGVycm9yKHMpLCB0aGVuIG1ha2Ugc3VyZSAneWFtbGxp
bnQnIGlzIGluc3RhbGxlZCBhbmQgZHQtc2NoZW1hIGlzIHVwIHRvCj4gZGF0ZToKPiAKPiBwaXAz
IGluc3RhbGwgZHRzY2hlbWEgLS11cGdyYWRlCj4gCj4gUGxlYXNlIGNoZWNrIGFuZCByZS1zdWJt
aXQgYWZ0ZXIgcnVubmluZyB0aGUgYWJvdmUgY29tbWFuZCB5b3Vyc2VsZi4gTm90ZQo+IHRoYXQg
RFRfU0NIRU1BX0ZJTEVTIGNhbiBiZSBzZXQgdG8geW91ciBzY2hlbWEgZmlsZSB0byBzcGVlZCB1
cCBjaGVja2luZwo+IHlvdXIgc2NoZW1hLiBIb3dldmVyLCBpdCBtdXN0IGJlIHVuc2V0IHRvIHRl
c3QgYWxsIGV4YW1wbGVzIHdpdGggeW91ciBzY2hlbWEuCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

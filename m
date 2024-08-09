Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91A9DC52D7B
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 00:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZlDXjecYY8PRGua/h4hanK6zZ7xlzF8btccbmntQio=; b=q0YTv1V4opVkty
	Y+oK0+OQ7HY6b82gWaklETOO+SDIjnN9cXkcp26mf2rZVk63HG7IYgIvFFpMIVEwaiwhpVjvRB39W
	S/fYJYhQwJTVwe9iof0uxfbFPWwKQqQ1eVtO4ljWsmhj6gL7Q18iZuxWRtkPqx8+kRjLaSBzYAqf3
	dTKPutw7cGF4VYoS0y0mpdOTdO7E+ATqaUeJRpTgj3vN+c1fE+nBT1N9cthm09RGwZ8opf8BoJWS+
	AiHrpLGNNg2t8yXQlmeRlVAHfH826vwBNv8QzULhyAWrjzCFhwFHs41vg02d4hPxb8FfaXseA/0aw
	zi2/P7HEdbFy4QnX1Chg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scDsr-00000009raq-3voe;
	Fri, 09 Aug 2024 00:53:33 +0000
Received: from mail-m6017.netease.com ([210.79.60.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scDso-00000009rZw-2LDN
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Aug 2024 00:53:32 +0000
DKIM-Signature: a=rsa-sha256;
	b=PjW7R72fDWmkAA3u5H/IGzBoAANM/LQEhVfEcKg844Yg03yeyOR2bNDlyYqsyOhhDDvds/sVIoZ7TrmEE++lNokCPZoUATlN58MlIdYA9XmsbF9RSbqZT8810sPbO56P76i0ndFXLbmxCpWhf2Fbar8qjZzZBFnHPwmNFAjUbaY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=cy550DiWB2ZzXUSUZQc3XZMosj7sndMJZrv8tyVP9mg=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.69] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 7E561460205;
	Fri,  9 Aug 2024 08:53:05 +0800 (CST)
Message-ID: <a8305f20-ea58-40b5-93f6-2c44f151219c@rock-chips.com>
Date: Fri, 9 Aug 2024 08:53:05 +0800
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
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <93a16a4a-6a12-446f-bfc9-e8aa907e0598@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0wYS1ZLTR9MTRlKQh5LThlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91349fffc503aekunm7e561460205
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PDY6Axw4CDI2Vgk3NCoXUSgO
	DQ9PCghVSlVKTElISk1PTENMSU9IVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9MTEs3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_175331_171870_534451F5 
X-CRM114-Status: GOOD (  23.57  )
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

5ZyoIDIwMjQvOC84IDE4OjM2LCBLcnp5c3p0b2YgS296bG93c2tpIOWGmemBkzoKPiBPbiAwOC8w
OC8yMDI0IDA1OjUyLCBTaGF3biBMaW4gd3JvdGU6Cj4+IFJLMzU3NiBjb250YWlucyBhIFVGUyBj
b250cm9sbGVyLCBhZGQgaW5pdCBzdXBwb3J0IGZvdCBpdC4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
U2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+Cj4gCj4gLi4uCj4gCj4+ICsJ
ZXJyID0gY2xrX3ByZXBhcmVfZW5hYmxlKGhvc3QtPnJlZl9vdXRfY2xrKTsKPj4gKwlpZiAoZXJy
KQo+PiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIGVyciwgImZhaWxlZCB0byBlbmFibGUg
cmVmIG91dCBjbG9ja1xuIik7Cj4+ICsKPj4gKwlob3N0LT5yc3RfZ3BpbyA9IGRldm1fZ3Bpb2Rf
Z2V0KCZwZGV2LT5kZXYsICJyZXNldCIsIEdQSU9EX09VVF9MT1cpOwo+PiArCWlmIChJU19FUlIo
aG9zdC0+cnN0X2dwaW8pKSB7Cj4+ICsJCWRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VS
Uihob3N0LT5yc3RfZ3BpbyksCj4+ICsJCQkJImludmFsaWQgcmVzZXQtZ3Bpb3MgcHJvcGVydHkg
aW4gbm9kZVxuIik7Cj4+ICsJCWVyciA9IFBUUl9FUlIoaG9zdC0+cnN0X2dwaW8pOwo+IAo+IE5v
LiBMb29rIGF0IHlvdXIgY29kZSBhYm92ZSAtIHlvdSBoYXZlIHJldHVybiBkZXZfZXJyX3Byb2Jl
LCBzbyBsb2dpY2FsCj4gaXMgdGhhdCB0aGUgc3ludGF4IGlzIGVyciA9IGRldl9lcnJfcHJvYmUu
IERvbid0IG92ZXItY29tcGxpY2F0ZSB0aGUgY29kZS4KPiAKPiBBbnl3YXksIHRoaXMgaXMgc3Vz
cGljaW91cy4gWW91IGFscmVhZHkgaGF2ZSByZXNldHMgd2l0aCBmb3VyIHJlc2V0cwo+ICghISEp
IGFuZCB5b3UgY2xhaW0geW91IGhhdmUgZmlmdGggcmVzZXQgLSBHUElPPyBUaGlzIGxvb2tzIGp1
c3Qgd3JvbmcsCj4gbGlrZSB5b3UgcmVwcmVzZW50IHNvbWUgcHJvcGVydGllcyB3aGljaCBkbyBu
b3QgYmVsb25nIGhlcmUuCj4gCgpUaGFua3MgZm9yIHRoZSBmZWFkYmFjay4KClllcywgd2UgaGF2
ZSA0IHJlc2V0cyBmb3IgY29udHJvbGxlciwgYW5kIG9uZSBncGlvIHRvIHJlc2V0IHRoZQpkZXZp
Y2UuIEl0IGhhcHBlbmVkIHRvIGJlIGNhbGxlZCByZXNldC1ncGlvcyBpbiBEVCBidXQgY2FuIGJl
CmFueSBuYW1lIGlmIHlvdSBsaWtlIGl0IHRvIGJlLiBJIGFkZGVkIHJlc2V0LWdwaW9zIGFzIGEg
cmVxdWlyZWQgb25lCmxpc3RlZCBpbiBkdC1iaW5kaW5ncyBmaWxlLCBpbiBwYXRjaCAyLgoKCiA+
IEFsc28sIHdoeSBkbyB5b3UgbGVhdmUgdGhlIGRldmljZSBpbiB0aGUgcmVzZXQgc3RhdGU/IExv
Z2ljYWwgb25lCm1lYW5zCiA+IC0gcmVzZXQgaXMgYXNzZXJ0ZWQuIFRoaXMgYXBwbGllcyB0byB1
ZnNfcm9ja2NoaXBfZGV2aWNlX3Jlc2V0KCkgYXMgPiAKd2VsbAogPiAtIHRoYXQncyBqdXN0IHdy
b25nIGNvZGUuCgoKTm8sIEkgdGVzdGVkIGl0IGluIGxpbnV4LW5ldCBhbmQgdGhlIG91dHB1dCBp
cyBISUdILCBhbmQgbGVhdmUgdGhlCmRldmljZSBpbiBhY3RpdmUgc3RhdGUuCgpJbiBkdHMsIHdl
IGFkZDoKcmVzZXQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BEMCBHUElPX0FDVElWRV9ISUdIPjsKCnNv
IGdwaW9kX3NldF92YWx1ZV9jYW5zbGVlcChob3N0LT5yc3RfZ3BpbywgMSkgLT4gb3V0cHV0IEhJ
R0ggZm9yCmdwaW80X2QwLiBCYXNlZCBvbiB5b3VyIGNvbW1lbnQsIHdlIHNob3VsZCBjaGFuZ2Ug
dGhlIGR0cyB0byB1c2UKR1BJT19BQ1RJVkVfTE9XIGFuZCB0aGVuIGdwaW9kX3NldF92YWx1ZV9j
YW5zbGVlcO+8iGhvc3QtPnJzdF9ncGlvLCAw77yJCgoKQm90aCBjYW4gd29yaywgaG93ZXZlciBJ
TU8sIGlzbid0IGxvZ2ljYWwgb25lIG1lYW5zIEhJR0ggbGV2ZWwgaW4gbGluZSAKbW9yZSBodW1h
biByZWFkYWJsZT8KCgoKPiBXaGVyZSBpcyB5b3VyIERUUyBzbyB3ZSBjYW4gdmFsaWRhdGUgaXQ/
Cj4gCgpXaWxsIGFkZCBpdCBpbiB0aGUgbmV4dCB2ZXJzaW9uLCBhcyBub3cgdGhlIHJrMzU3Ni5k
dHNpIGlzIHVuZGVyCnJldmlld2VkIGFuZCBVRlMgbm9kZSB3YXMgbm90IGFkZGVkLiBTbyBJIHdh
cyBhZnJhaWQgdG8gaW50ZXJmZXJlCndpdGggdGhhdCBwYXRjaCBhbmQganVzdCB3YW50ZWQgdG8g
YWRkIGluY3JlbWVudGFsIHBhdGNoIG9uY2UKcmszNTc2LmR0c2kgZ290IG1lcmdlZC4KCj4gQmVz
dCByZWdhcmRzLAo+IEtyenlzenRvZgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

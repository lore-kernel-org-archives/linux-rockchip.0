Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7777C54EBD
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 20:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/Y7H9fn42CKaMdCVPqellJKMGDzb/CQDv8lyouMeSY=; b=zIVGOo9AAttwdE
	RHvS4RlUTZWI3qPh/rVR+i3wRRAItrgTMOrqSlm4bFBStf9lHwB8QoJT2U3xu3DUh7rdMbJdrXqtp
	YmDprwf5bT2JiAIFZKEim+FOweuzegB10m+qH367SWocrfLF0rnLjKoNeF3TjR1cBvhVbcPIJWfSB
	JjeWOqBadnlpLMoc1jnv5ghdM8mDkrD9VEs5OlI4QJtmgEvPbVjcXBDqbbIDDZ+v81cHJICv7IKsv
	UTJGHkeEKg88lwqtlbBqE+X41T+TqLKQ8J6k4hkoce4RN12THKxErrRJyNZ0o3BwNWO3cDnLb1RW/
	mN6MJp4LPklJRhIGueBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEyKH-003mLK-Fg; Mon, 09 Jan 2023 20:00:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEyKC-003mIK-Jn
	for linux-rockchip@lists.infradead.org; Mon, 09 Jan 2023 20:00:55 +0000
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8946E6602D6A;
	Mon,  9 Jan 2023 20:00:48 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673294449;
	bh=aNxF/+Hoq4Gd7aJCmM96Gfm8Aq+Jh67MSR5O2NNGsso=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=fyxUTj54ttkr13MsVew38u+JDz8+6sBegp8lpkc/xfZ69fO2htKaEC2LmSu4+74UI
	 5pJLjGpNH+/ZKoBV/QcrEvprWgJmcFffWXeutpyZurQrs7vqf/kWVJW9r8uxgA/8Ba
	 hPHF6EmCrW24JwlfMuiQPTLkagVAbGDn9an6tJuIRb3SkuuD9Y+Q+hsPBWmh58vsZv
	 4wJ3Eqh1gHGI3ZhCnWXDNH7flGRHMGYUzwQzDLsKdfaXRhf9pUaDtBfPCuD/8I9M9k
	 ss4/TJBPq8VTdPN1ZAf2qPUNJQiGK9VGcDacGt8tFImiADi2BeO9vS8f426wCTERAT
	 p1FLQNr5Du0Sg==
Message-ID: <f3bf3ba7cc27f4d8eddeec730fe588a7a32c0465.camel@collabora.com>
Subject: Re: [PATCH v2 3/4] media: rkvdec: Re-enable H.264 error detection
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, kernel@collabora.com,
 linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org
Date: Mon, 09 Jan 2023 15:00:39 -0500
In-Reply-To: <Y6oTEkEwuGISwr+z@eze-laptop>
References: <20221223193807.914935-1-nicolas.dufresne@collabora.com>
	 <20221223193807.914935-4-nicolas.dufresne@collabora.com>
	 <Y6oTEkEwuGISwr+z@eze-laptop>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_120052_820910_772EBCEB 
X-CRM114-Status: GOOD (  27.51  )
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

TGUgbHVuZGkgMjYgZMOpY2VtYnJlIDIwMjIgw6AgMTg6MzMgLTAzMDAsIEV6ZXF1aWVsIEdhcmNp
YSBhIMOpY3JpdMKgOgo+IEhpIE5pY29sYXMsCj4gCj4gSSdtIHN0aWxsIHVuc3VyZSBhYm91dCB0
aGlzIHBhdGNoc2V0Lgo+IEl0IHNvdW5kcyBsaWtlIGEgZ29vZCBhcHByb2FjaCBhbmQgYSBuaWNl
Cj4gaW1wcm92ZW1lbnQsIGJ1dCBJIHdhbnQgdG8gbWFrZSBzdXJlIEkgdGhpbmsgdGhyb3VnaCBp
dC4KPiAKPiBNZWFud2hpbGUsIGEgc21hbGwgY29tbWVudC4uLgo+IAo+IE9uIEZyaSwgRGVjIDIz
LCAyMDIyIGF0IDAyOjM4OjA1UE0gLTA1MDAsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4gPiBU
aGlzIHJlLWVuYWJsZSBILjI2NCBlcnJvciBkZXRlY3Rpb24sIGJ1dCB1c2luZyB0aGUgb3RoZXIg
ZXJyb3IgbW9kZS4KPiA+IEluIHRoYXQgbW9kZSwgdGhlIGRlY29kZXIgd2lsbCBza2lwIG92ZXIg
dGhlIGVycm9yIG1hY3JvLWJsb2NrIG9yCj4gPiBzbGljZXMgYW5kIGNvbXBsZXRlIHRoZSBkZWNv
ZGluZy4gQXMgYSBzaWRlIGVmZmVjdCwgdGhlIGVycm9yIHN0YXR1cwo+ID4gaXMgbm90IHNldCBp
biB0aGUgaW50ZXJydXB0IHN0YXR1cyByZWdpc3RlciwgYW5kIGluc3RlYWQgZXJyb3JzIGFyZQo+
ID4gZGV0ZWN0ZWQgcGVyIGZvcm1hdC4gVXNpbmcgdGhpcyBtb2RlIHdvcmthcm91bmQgdGhlIGlz
c3VlIHRoYXQgdGhlCj4gPiBIVyBnZXQgc3R1Y2sgaW4gZXJyb3Igc3RhdGUsIGFuZCBhbGxvdyBy
ZXBvcnRpbmcgdGhhdCBzb21lIGNvcnJ1cHRpb24KPiA+IG1heSBiZSBwcmVzZW50IGluIHRoZSBi
dWZmZXIgdG8gdXNlcmxhbmQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRHVmcmVz
bmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYyB8IDIzICsrKysrKysrKysrKysrKysr
KystLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2
ZGVjLWgyNjQuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYwo+
ID4gaW5kZXggNGZjMTY3YjQyY2YwYy4uZGZlM2UyMzVmMDk5YSAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYwo+ID4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jCj4gPiBAQCAtMTE2MiwxNCArMTE2
MiwxNSBAQCBzdGF0aWMgaW50IHJrdmRlY19oMjY0X3J1bihzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4
KQo+ID4gIAo+ID4gIAlzY2hlZHVsZV9kZWxheWVkX3dvcmsoJnJrdmRlYy0+d2F0Y2hkb2dfd29y
aywgbXNlY3NfdG9famlmZmllcygyMDAwKSk7Cj4gPiAgCj4gPiAtCXdyaXRlbCgwLCBya3ZkZWMt
PnJlZ3MgKyBSS1ZERUNfUkVHX1NUUk1EX0VSUl9FTik7Cj4gPiAtCXdyaXRlbCgwLCBya3ZkZWMt
PnJlZ3MgKyBSS1ZERUNfUkVHX0gyNjRfRVJSX0UpOwo+ID4gKwl3cml0ZWwoMHhmZmZmZmZmZiwg
cmt2ZGVjLT5yZWdzICsgUktWREVDX1JFR19TVFJNRF9FUlJfRU4pOwo+ID4gKwl3cml0ZWwoMHhm
ZmZmZmZmZiwgcmt2ZGVjLT5yZWdzICsgUktWREVDX1JFR19IMjY0X0VSUl9FKTsKPiA+ICAJd3Jp
dGVsKDEsIHJrdmRlYy0+cmVncyArIFJLVkRFQ19SRUdfUFJFRl9MVU1BX0NBQ0hFX0NPTU1BTkQp
Owo+ID4gIAl3cml0ZWwoMSwgcmt2ZGVjLT5yZWdzICsgUktWREVDX1JFR19QUkVGX0NIUl9DQUNI
RV9DT01NQU5EKTsKPiA+ICAKPiA+ICAJLyogU3RhcnQgZGVjb2RpbmchICovCj4gPiAgCXdyaXRl
bChSS1ZERUNfSU5URVJSVVBUX0RFQ19FIHwgUktWREVDX0NPTkZJR19ERUNfQ0xLX0dBVEVfRSB8
Cj4gPiAtCSAgICAgICBSS1ZERUNfVElNRU9VVF9FIHwgUktWREVDX0JVRl9FTVBUWV9FLAo+ID4g
KwkgICAgICAgUktWREVDX1RJTUVPVVRfRSB8IFJLVkRFQ19CVUZfRU1QVFlfRSB8Cj4gPiArCSAg
ICAgICBSS1ZERUNfSDI2NE9SVlA5X0VSUl9NT0RFLAo+ID4gIAkgICAgICAgcmt2ZGVjLT5yZWdz
ICsgUktWREVDX1JFR19JTlRFUlJVUFQpOwo+ID4gIAo+ID4gIAlyZXR1cm4gMDsKPiA+IEBAIC0x
MTgzLDEwICsxMTg0LDI2IEBAIHN0YXRpYyBpbnQgcmt2ZGVjX2gyNjRfdHJ5X2N0cmwoc3RydWN0
IHJrdmRlY19jdHggKmN0eCwgc3RydWN0IHY0bDJfY3RybCAqY3RybCkKPiA+ICAJcmV0dXJuIDA7
Cj4gPiAgfQo+ID4gIAo+ID4gK3N0YXRpYyBpbnQgcmt2ZGVjX2gyNjRfY2hlY2tfZXJyb3JfaW5m
byhzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4KQo+ID4gK3sKPiA+ICsJc3RydWN0IHJrdmRlY19kZXYg
KnJrdmRlYyA9IGN0eC0+ZGV2Owo+ID4gKwlpbnQgZXJyOwo+ID4gKwo+ID4gKwllcnIgPSByZWFk
bChya3ZkZWMtPnJlZ3MgKyBSS1ZERUNfUkVHX0gyNjRfRVJSSU5GT19OVU0pOwo+ID4gKwlpZiAo
ZXJyICYgUktWREVDX1NUUk1EX0RFQ1RfRVJSX0ZMQUcpIHsKPiA+ICsJCXByX2RlYnVnKCJEZWNv
ZGVkIHBpY3R1cmUgaGF2ZSAlaS8laSBzbGljZXMgd2l0aCBlcnJvcnMuXG4iLAo+IAo+IC4uLiBz
dGlsbCB1c2VzIHByX2RlYnVnLiBJIHdvdWxkIGNoYW5nZSBpdCBzbyBpdCB1c2VzIHY0bDJfZGJn
LAo+IGFuZCBjYW4gYmUgY29udHJvbGxlZCB1c2luZyB0aGUgc2FtZSBkZWJ1ZyBwYXJhbWV0ZXIK
PiBhcyB5b3UgdXNlIGluIHBhdGNoIDQvNC4KCkdvb2QgY2F0Y2gsIEkgbWlzc2VkIHRoYXQgb25l
LCB3aWxsIGZpeC4KCj4gCj4gPiArCQkJIFJLVkRFQ19FUlJfUEtUX05VTShlcnIpLCBSS1ZERUNf
U0xJQ0VERUNfTlVNKGVycikpOwo+ID4gKwkJcmV0dXJuIFZCMl9CVUZfU1RBVEVfRVJST1I7Cj4g
PiArCX0KPiA+ICsKPiA+ICsJcmV0dXJuIFZCMl9CVUZfU1RBVEVfRE9ORTsKPiA+ICt9Cj4gPiAr
Cj4gPiAgY29uc3Qgc3RydWN0IHJrdmRlY19jb2RlZF9mbXRfb3BzIHJrdmRlY19oMjY0X2ZtdF9v
cHMgPSB7Cj4gPiAgCS5hZGp1c3RfZm10ID0gcmt2ZGVjX2gyNjRfYWRqdXN0X2ZtdCwKPiA+ICAJ
LnN0YXJ0ID0gcmt2ZGVjX2gyNjRfc3RhcnQsCj4gPiAgCS5zdG9wID0gcmt2ZGVjX2gyNjRfc3Rv
cCwKPiA+ICAJLnJ1biA9IHJrdmRlY19oMjY0X3J1biwKPiA+ICAJLnRyeV9jdHJsID0gcmt2ZGVj
X2gyNjRfdHJ5X2N0cmwsCj4gPiArCS5jaGVja19lcnJvcl9pbmZvID0gcmt2ZGVjX2gyNjRfY2hl
Y2tfZXJyb3JfaW5mbywKPiA+ICB9Owo+ID4gLS0gCj4gPiAyLjM4LjEKPiA+IAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

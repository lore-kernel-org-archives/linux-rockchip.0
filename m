Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80778C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 May 2022 08:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayk4iX7R1CxAj2TokkMDqePTM0qwHLCrmvG/uzqsPk8=; b=U6oCisd2lOnvBr
	yDSmKVjBVm5+yGIKVaJo7r7wTaXu0loLjryM9DPE5oJzLE+MnPdglVMrxwRrA9c4T+evBwaQwUM80
	j9fFkEZbMScao6gKb6tJvxZI0qDhw3YDzz8ZS/qJxB/QpdRwM7Ne++zX4yhWdgKYcxiHdmBFFL1DM
	Pf+pxZWLSIIVrPqhHN3Es17sp++RHxPYlNWHls+ncvhUIlV4vBv+u/YeDXZ+aU5wP02SwAfUYOU/5
	ryAWwe+FDLjUkBgR5QpYBJLZZ9kVvTxojsJKDc3Uocr4b9L1vBpplAWDnzUSvpfo0aLrQt/RmXHrH
	OjSTpWSkxHgH3oA2fT/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npQvg-00F9Lo-W7; Fri, 13 May 2022 08:45:45 +0000
Received: from mail-m17655.qiye.163.com ([59.111.176.55])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npQua-00F8iH-LA; Fri, 13 May 2022 08:44:39 +0000
Received: from [172.16.12.93] (unknown [58.22.7.114])
 by mail-m17655.qiye.163.com (Hmail) with ESMTPA id 2E4D94003D;
 Fri, 13 May 2022 16:44:32 +0800 (CST)
Message-ID: <94bf30a2-9dcf-07b2-ccb6-3c4aa5cf6a00@rock-chips.com>
Date: Fri, 13 May 2022 16:44:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [BUG] New arm scmi check in linux-next causing rk3568 not to boot
 due to firmware bug
Content-Language: en-US
To: Sudeep Holla <sudeep.holla@arm.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Etienne Carriere <etienne.carriere@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
 linux-kernel@vger.kernel.org, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>
References: <1698297.NAKyZzlH2u@archbook> <YnOEwuuyO2/h7c1G@e120937-lin>
 <CAN5uoS_MgBiTVZCRSZyYCH4cnUZD_bHj2+mZu661bFV8TKWScw@mail.gmail.com>
 <6587375.6lpfYT6tjA@archbook> <Yn0a9nSD7Yu6aOkt@bogus>
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <Yn0a9nSD7Yu6aOkt@bogus>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRpPQklWGkMfSkhMSx
 5LTExKVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODI6Nzo*ND0*SU8tTigDOQsh
 AzdPCRVVSlVKTU5JT0hKT0xJQ0tPVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
 EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIQkNMNwY+
X-HM-Tid: 0a80bc974751da01kuws2e4d94003d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_014436_881500_0F53CC32 
X-CRM114-Status: GOOD (  21.05  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgU3VkZWVwLAoKIMKgwqDCoCBSb2NrY2hpcCBoYXMgbm90aWNlIHRoaXMgaXNzdWUsIHdlIHdp
bGwgY2hlY2sgaG93IHRvIGZpeCB0aGlzIGlzc3VlIAppbiBvdXIgQVRGIHJlbGVhc2UuCgoKVGhh
bmtzLAotIEtldmVyCk9uIDIwMjIvNS8xMiAyMjozNCwgU3VkZWVwIEhvbGxhIHdyb3RlOgo+IE9u
IFRodSwgTWF5IDEyLCAyMDIyIGF0IDAxOjExOjIyUE0gKzAyMDAsIE5pY29sYXMgRnJhdHRhcm9s
aSB3cm90ZToKPj4gSGVsbG8sCj4+Cj4+IHNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseSwgY29tcGxl
dGVseSBtaXNzZWQgdGhhdCB0aGVyZSB3YXMgYSBxdWVzdGlvbgo+PiBmb3IgbWUgaW4gdGhpcyBt
YWlsLgo+Pgo+PiBPbiBEb25uZXJzdGFnLCA1LiBNYWkgMjAyMiAxMTo0MDowOSBDRVNUIEV0aWVu
bmUgQ2FycmllcmUgd3JvdGU6Cj4+PiBIZWxsbyBOaWNvbGFzLCBDcmlzdGlhbiwKPj4+IFsuLi5d
Cj4+Pgo+Pj4gSW5kZWVkIHRoZSBmaXJtd2FyZSBpbXBsZW1lbnRhdGlvbiBpcyB3cm9uZyBpbiBU
Ri1BLgo+Pj4gQW5kIGFsc28gaW4gT1AtVEVFIGJ5IHRoZSB3YXk6Cj4+PiBodHRwczovL2dpdGh1
Yi5jb20vT1AtVEVFL29wdGVlX29zL2Jsb2IvMy4xNy4wL2NvcmUvZHJpdmVycy9zY21pLW1zZy9i
YXNlLmMjTDE2My1MMTY2Cj4+Pgo+Pj4gQE5pY29hbHMsIGRvIHlvdSB3YW50IHRvIHNlbmQgYSBw
YXRjaCB0byBURi1BLCBvciBkbyB5b3Ugd2FudCBtZSB0byBkbyBpdD8KPj4gSSBoYXZlIG5vIGV4
cGVyaWVuY2Ugd2l0aCBURi1BLCBzbyBJJ2QgcHJlZmVyIGlmIHlvdSBjb3VsZCBkbyBpdC4KPj4K
Pj4gSW4gZ29vZCBuZXdzLCBSb2NrY2hpcCBoYXMgY29uZmlybWVkIHRoZXkncmUgcHJlcGFyaW5n
IHRvIHJlbGVhc2UgUkszNTZ4Cj4+IFRGLUEgc291cmNlcywgc28gSSdsbCBiZSBhYmxlIHRvIHBv
cnQgdGhlIHBhdGNoIG92ZXIgdG8gdGhlaXIgc291cmNlcyBvbmNlCj4+IHRoZXkgYXJlIHJlbGVh
c2VkLCBpZiB0aGV5IGRvbid0IGFscmVhZHkgYXBwbHkgaXQgdGhlbXNlbHZlcy4KPj4KPiBTbywg
dGhlcmUgaXMgbm8gd2F5IHRvIGdldCBhIGJsb2IgcmVsZWFzZSB3aXRoIHRoZSBwYXRjaCBhcHBs
aWVkID8KPiBXZSBrbm93IGl0IGlzIGEgYnVnIGluIFRGLUEgYW5kIGlmIFJvY2tjaGlwIGlzIHVz
aW5nIHRoYXQgY29kZWJhc2UsIGl0Cj4gd2lsbCBiZSB0aGUgc2FtZSBidWcgdGhlcmUgdG9vIGNh
dXNpbmcgdGhpcyBpc3N1ZS4gV2FpdGluZyB1bnRpbCB0aGUKPiBjb2RlIGlzIHJlbGVhc2VkIGFu
ZCB0aGUgcHJvcGVyIFRGLUEgcG9ydCBpcyBkb25lIG1heSBub3QgYmUgYWNjZXB0YWJsZQo+IGZv
ciBtYW55IGRldmVsb3BlcnMuIFNvIHNvbWVvbmUgZnJvbSB0aGUgcm9ja2NoaXAgZG9pbmcgdGhl
c2UgdGYtYSBibG9iCj4gcmVsZWFzZSBtdXN0IGdldCBpbnZvbHZlZCBoZXJlLCB1bmRlcnN0YW5k
IHRoZSBzaXR1YXRpb24gYW5kIGdldCB0aGUgZml4ZWQuCj4KPiBXZSBjYW4gd29ya2Fyb3VuZCwg
YnV0IEkgd2FudCB0byBoZWFyIHRoYXQgaXQgd2lsbCBiZSBmaXhlZCBpbnN0ZWFkIG9mCj4gZ2V0
dGluZyBpZ25vcmVkIHVudGlsIHByb3BlciBwb3J0IGlzIGF2YWlsYWJsZS4KPgo+IEV0aWVubmUs
IGFyZSB5b3Ugbm90IHRoZSBhdXRob3IgZm9yIHRoZSByZWxhdGVkIFRGLUEgY29kZSA/IEhvdyBj
YW4gd2UKPiBnZXQgdGhhdCBmaXhlZCBpbiB0aGUgVEYtQSBjb2RlIGJhc2UuIElmIHlvdSBhcmUg
bm90LCB0aGVuIEkgd2lsbCB0cnkgdG8KPiBnZXQgbXkgcmVwbyBsb2dpbiBjcmVkZW50aWFscyBz
b3J0ZWQgc28gdGhhdCBJIGNhbiBvbmx5IHB1c2ggVEYtQSBjaGFuZ2UuCj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

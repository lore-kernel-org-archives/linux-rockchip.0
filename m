Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 086FEC624A4
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 08:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEI48tOWBar+CJsfMD49M0SrcFW426qCA70N2F038u4=; b=46ltZGomVVEv4r
	lIu/OC9BsFw7pbnSwoo7HE8uL9w/7YnoPu7V3YsZdv0C+gELhuIw+9ZdZxy08xcMJ4Zc89CkHr3Jf
	M2I5ETcmnfHEqtWnsvPTl2ZfJStLo13KkZLUsKj6jnAL9z/inYRNfaInoA6l/2xzEZ4lFr5CXwa2M
	eTr5lo8Pst+BHfMJA22Mx8c/WaGU/KQGqUVWO+W5lj5huBMWQpqd2kADEczxVASfMf6irDgghYhBe
	e8I+siSzfsaKbQH6rdv650CFCe6pvLTtbIAae/UMoMdSyERyXTtxolrFnzbgZE09m6hUzE3QhUdvm
	euBvGmWjpdons10755qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22rf-0000000GnhO-1XZN;
	Thu, 03 Sep 2026 08:32:07 +0000
Received: from mail-m15577.qiye.163.com ([101.71.155.77])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22rb-0000000Gng4-2ztr
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 08:32:05 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4c64fdfbf;
	Thu, 3 Sep 2026 16:26:51 +0800 (GMT+08:00)
Message-ID: <aa7c0d0b-7522-40e4-9249-4cf220fce3b7@rock-chips.com>
Date: Thu, 3 Sep 2026 16:26:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Bjorn Helgaas <bhelgaas@google.com>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 0/2] Two small INTx fixes for Rockchip's dwc based PCIe
 controller driver
To: Niklas Cassel <cassel@kernel.org>
References: <1788403477-71491-1-git-send-email-shawn.lin@rock-chips.com>
 <apktsxxgZ3yFclo0@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <apktsxxgZ3yFclo0@ryzen>
X-HM-Tid: 0aa06660c06b03a4kunm327acd4f9a4d1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCSE9IVh8ZSk8fSR1OHUMYTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=jaamjoFUreTM837YI2TiFdKX4zFjHp4FDU4+iM2jOSmW2cyUwPrFsBafMj14Xg8Ym+itKEJDQEFLt6DRkmEyK1tBl4JmzlrH6Dz4GSljNajtb+JQHvy1fltoVtwBcdfvinSAIR4r7uvUCRrD+QBuHAlFLcYBVk6jsxSkOVJ/heI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=/UhlaAB1/S1eXNI2E1Gi/N3a6HvqV7vxHRIaDiB8rOw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_013204_280469_4F7EF4CF 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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

5ZyoIDIwMjYvMDkvMDMg5pif5pyf5ZubIDE2OjIwLCBOaWtsYXMgQ2Fzc2VsIOWGmemBkzoKPiBI
ZWxsbyBTaGF3biwKPiAKPiBPbiBUaHUsIFNlcCAwMywgMjAyNiBhdCAxMDo0NDozNUFNICswODAw
LCBTaGF3biBMaW4gd3JvdGU6Cj4+Cj4+IFRoaXMgc21hbGwgc2VyaWVzIGZpeGVzIHR3byBJTlR4
IHJlbGF0ZWQgaXNzdWVzIGluIHRoZSBSb2NrY2hpcAo+PiBEZXNpZ25XYXJlIFBDSWUgY29udHJv
bGxlciBkcml2ZXIuCj4+Cj4+IE5vdGUgdGhhdCBwYXRjaCAyIGRlcGVuZHMgb24gYjM3NmIzZmY5
Y2IwIHdoaWNoIGlzIG5vdCB5ZXQgaW4gTGludXMnCj4+IHRyZWUsIHNvIHRoaXMgc2VyaWVzIGlz
IGJhc2VkIG9uIGxpbnV4LW5leHQuCj4gCj4gJCBnaXQgdGFnIC0tY29udGFpbnMgYjM3NmIzZmY5
Y2IwCj4gdjcuMy1yYzEKPiAKPiBGV0lXLCB0aGUgY29tbWl0IHlvdSBhcmUgcmVmZXJlbmNpbmcg
aXMgaW4gTGludXMnIHRyZWUgYWxyZWFkeS4KCkFoLCBhIGZldyBkYXlzIGFnbyBJIGRpZG4ndCBz
ZW5kIG91dCB0aGUgcGF0Y2ggaW4gdGltZSwgYnV0IG5vdyBpdCBpcyAKaW5kZWVkIG9uIExpbnVz
JyB0cmVlLgoKVGhhbmtzLgoKPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gTmlrbGFzCj4gCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

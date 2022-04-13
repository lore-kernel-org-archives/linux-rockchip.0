Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 705DCC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 02:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hz/rYutUJjZHqbHNOCKRVaPBcvCEbueLxKdUQsLftXk=; b=LCC+lTHwWQEe9t
	pSKokmVAj+wXaTEwvWxNqFphjKz7VzE4SXJU6/aKHukxDqMrYLdZI9m+om5UDWEwiNl1/y/DVoHJw
	BXPgtbVEKul10QcObB192Efg9GYCkn9mOUMX/ZP86dz8bjSSYc8N0SAlHkNISndc62EcZI4wwPoKA
	dlq0rEhFcijWk07m6MIIWmLwnJAwG4eUJNiWG970ash2dCIN64DiC7cExKaAUCGERDGNgyiTJHTHC
	VnpcZ0fMKxCUxyx3L1f5/2RAYBNFaR6aOL+PEjLyxjU/TTqD8L1ATOBwc+XLhsV2N1SSDuuPjpr9U
	t4kEJ+LZhuqfHJmshKLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neT9o-00GSsz-IQ; Wed, 13 Apr 2022 02:55:00 +0000
Received: from mail-m17640.qiye.163.com ([59.111.176.40])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neT9d-00GSsF-7d; Wed, 13 Apr 2022 02:54:51 +0000
Received: from [172.16.12.69] (unknown [58.22.7.114])
 by mail-m17640.qiye.163.com (Hmail) with ESMTPA id D15D35403EB;
 Wed, 13 Apr 2022 10:54:44 +0800 (CST)
Message-ID: <0cf83ec0-29d3-fbde-0b7d-9d58d210f0a4@rock-chips.com>
Date: Wed, 13 Apr 2022 10:54:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/4] PCI: dwc: rockchip: add legacy interrupt support
Content-Language: en-GB
To: Peter Geis <pgwipeout@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
References: <20220412185751.124783-1-pgwipeout@gmail.com>
 <20220412185751.124783-3-pgwipeout@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20220412185751.124783-3-pgwipeout@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUJLHhpWH0gaSxlPHU
 1ITx1KVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PU06Dhw*Nz0*GD8RSB0uOAwe
 Lw8aFCpVSlVKTU9CQ0pDT0NOT0lKVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
 C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlDS083Bg++
X-HM-Tid: 0a8020d841c5d995kuwsd15d35403eb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_195449_479969_64E8AACF 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
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

SGkgUGV0ZXIsCgrlnKggMjAyMi80LzEzIDI6NTcsIFBldGVyIEdlaXMg5YaZ6YGTOgo+IFRoZSBs
ZWdhY3kgaW50ZXJydXB0cyBvbiB0aGUgcmszNTZ4IHBjaWUgY29udHJvbGxlciBhcmUgaGFuZGxl
ZCBieSBhCj4gc2luZ2xlIG11eGVkIGludGVycnVwdC4gQWRkIGlycSBkb21haW4gc3VwcG9ydCB0
byB0aGUgcGNpZS1kdy1yb2NrY2hpcCA+Cj4gK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfbGVn
YWN5X2ludF9oYW5kbGVyKHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKPiArewo+ICsJc3RydWN0IGly
cV9jaGlwICpjaGlwID0gaXJxX2Rlc2NfZ2V0X2NoaXAoZGVzYyk7Cj4gKwlzdHJ1Y3Qgcm9ja2No
aXBfcGNpZSAqcm9ja2NoaXAgPSBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+ICsJ
c3RydWN0IGRldmljZSAqZGV2ID0gcm9ja2NoaXAtPnBjaS5kZXY7Cj4gKwl1MzIgcmVnOwo+ICsJ
dTMyIGh3aXJxOwo+ICsJdTMyIHZpcnE7Cj4gKwo+ICsJY2hhaW5lZF9pcnFfZW50ZXIoY2hpcCwg
ZGVzYyk7Cj4gKwo+ICsJcmVnID0gcm9ja2NoaXBfcGNpZV9yZWFkbF9hcGIocm9ja2NoaXAsIDB4
OCk7Cj4gKwoKCk92ZXJhbGwgaXQgbG9va3MgZ29vZCBleGNlcHQgdGhhdCAweDggaGFzIGEgbmFt
ZSwKUENJRV9DTElFTlRfSU5UUl9TVEFUVVNfTEVHQUNZLiBCVFcsIElmIHlvdSBjb25zaWRlciBh
ZGRpbmcgbW9yZSBzdXBwb3J0CnRvIGl0LCBmb3IgaW5zdGFuY2UsIGVuYWJsZS9kaXNhYmxlL2Fm
ZmluaXR5PyAgVGhlIGRvd25zdHJlYW0ga2VybmVsCmZpbmlzaGVkIHRoZXNlIGZvciBiZXR0ZXIg
Zml0dGluZyBmb3IgZnVuY3Rpb24gZHJpdmVyIHVzYWdlLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

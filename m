Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F25CEC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Feb 2022 01:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thuBPVH+sbC+socZbQS1aA+df5zJ8eUpuOUCZXP1b7U=; b=kBUtiNzOSop+Ay
	Yuik52sXS/6BzfqK1loGPfD0F/HhfLYOlpkizZD6y9h3KQuFC7g9ij39zPwP9OfFHJIK8QgBghHHr
	xpX9hOYqMSyPqOnHJvdy3Mpu3ID2n89FOmbh04hPoHKvMTpd68wStWHT8y7OqnzcWOfjUp0Iqn0AI
	b6BNHz/7t3uilzZYZ/xW0pjtE/NgkHFDo9aOAI1HhsgCsODK++eXjAUNN7S5ku7PJvjCL1t0ekdo5
	2Ftq5yx9ExqECxL8/7zHuQ85t5t7NbBKYdugptGSHqcxm14/enGHui4LdssHzbLZ1jeisirMG3YTs
	y6F2SF4hc0CSvc9/ai4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK93H-0059ME-5B; Wed, 16 Feb 2022 01:24:15 +0000
Received: from mail-m17640.qiye.163.com ([59.111.176.40])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK935-0059KW-2m; Wed, 16 Feb 2022 01:24:05 +0000
Received: from [172.16.12.40] (unknown [58.22.7.114])
 by mail-m17640.qiye.163.com (Hmail) with ESMTPA id D921E540269;
 Wed, 16 Feb 2022 09:23:58 +0800 (CST)
Message-ID: <0ee7ab71-5d01-58e2-baf7-4dd41455b377@rock-chips.com>
Date: Wed, 16 Feb 2022 09:23:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH 2/6] spi: rockchip: Preset cs-high and clk polarity in
 setup progress
To: Mark Brown <broonie@kernel.org>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220211034344.4130-1-jon.lin@rock-chips.com>
 <20220211034344.4130-2-jon.lin@rock-chips.com>
 <YgZHalrdhhilxROt@sirena.org.uk>
 <4222ce7d-a1e3-1728-fec2-976946b06ba9@rock-chips.com>
 <YgpP9j80OuhkCN8p@sirena.org.uk>
 <e0f0ca0d-40df-cf86-9471-9272bcc171f9@rock-chips.com>
 <YgueWHKur2w55s+0@sirena.org.uk>
From: Jon Lin <jon.lin@rock-chips.com>
In-Reply-To: <YgueWHKur2w55s+0@sirena.org.uk>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUIaGUJWSR9NTkgdShgfHU
 geVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NzI6Eyo4ST5IOBZLAUMVCC9N
 MjowCS1VSlVKTU9PQkxPTUhCSEtDVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
 QVlOQ1VJSVVMVUpKT1lXWQgBWUFJQ05MNwY+
X-HM-Tid: 0a7f002107c5d995kuwsd921e540269
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_172403_333696_3DB5EAAE 
X-CRM114-Status: GOOD (  12.74  )
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

CgrlnKggMjAyMi8yLzE1IDIwOjM2LCBNYXJrIEJyb3duIOWGmemBkzoKPiBPbiBUdWUsIEZlYiAx
NSwgMjAyMiBhdCAxMTowMDo1NEFNICswODAwLCBKb24gTGluIHdyb3RlOgo+PiDlnKggMjAyMi8y
LzE0IDIwOjQ5LCBNYXJrIEJyb3duIOWGmemBkzoKPiAKPj4+IEFzIGNvdmVyZWQgaW4gdGhlIGRv
Y3VtZW50YXRpb24gc2V0dXAoKSBmb3Igb25lIGRldmljZSBtYXkgcnVuIHdoaWxlCj4+PiBhbm90
aGVyIGlzIGFjdGl2ZSwgdGhlcmVmb3JlIGlmIG11bHRpcGxlIGRldmljZXMgYXJlIGNvbmZpZ3Vy
ZWQgaW4gdGhlCj4+PiBzYW1lIHJlZ2lzdGVyIHlvdSBzaG91bGQgdXNlIGEgbG9jayB0byBlbnN1
cmUgdGhlcmUgY2FuJ3QgYmUgbXVsdGlwbGUKPj4+IHdyaXRlcy4gIE5vdGUgdGhhdCB0aGUgYWJv
dmUgYXBwZWFycyB0byBub3QganVzdCBiZSBzZXR0aW5nIHRoZSBtb2RlIGJ1dAo+Pj4gYWxzbyB0
aGUgY2hpcCBzZWxlY3Qgc28gaWYgeW91J3ZlIGdvdCB0d28gU1BJX0NTX0hJR0ggZGV2aWNlcyB0
aGVuCj4+PiB0aGV5J2xsIGJvdGggYmUgZ29pbmcgaW4gYW5kIHNlcGFyYXRlbHkgc2V0dGluZyBj
cjAuCj4gCj4+IElzIHRoZSBpb19tdXRleCBpbiBmdW5jdGlvbiBzcGlfc2V0dXAgaXMgZ29vZCBl
bm91Z2g/Cj4gCj4gSXQncyBub3Qgc3VwcG9zZWQgdG8gYmUgZm9yIHRoYXQgYnV0IGxvb2tpbmcg
YXQgdGhlIGNvZGUgcXVpY2tseSBJCj4gKnRoaW5rKiBzZXR1cCgpIGlzIG5ldmVyIGNhbGxlZCB3
aXRoIGlvX211dGV4IGhlbGQgc28gaXQgbWlnaHQgd2VsbCBiZQo+IGZpbmUgLSB5b3Ugc2hvdWxk
IGRvdWJsZSBjaGVjayB0aG91Z2guICBJZiBub3QgeW91J2QgbmVlZCB0byBhZGQgYW5vdGhlcgo+
IGxvY2sgaW4geW91ciBkcml2ZXIgZGF0YS4KCuOAi3NldHVwKCkgaXMgbmV2ZXIgY2FsbGVkIHdp
dGggaW9fbXV0ZXggaGVsZApJIHRoaW5rIHNvLiBhbmQgSSB0aGluayB0aGUgaW9fbXV0ZXggaXMg
ZW5vdWdoIGZvciBtZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK

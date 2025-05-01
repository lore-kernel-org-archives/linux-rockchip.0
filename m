Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCE28C369DC
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 May 2025 13:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5T8rkNkwKQqnCv/IVMynyawrYytltD7FkWzc4PIs/HI=; b=SIj7IptUy5WQlV
	HGRMtdSGJVspJJZx75irVQF++T9EVfxwS49uusN8K2Bubb6DFwVZH5dnah6Az4K7isWrlrwOfwsbE
	hrKKc+s1DUazTp4y42jcaBHSW8FPwounmFo1m4etLw4j7iOrV6PupdqDZSDUEZO2EejBP+rtmGqjQ
	sYrpsGDNwX2myasUKbbJSErhSwFAtTbreM5CNcvaNO9Owwfoj3srchQGMn94nb0JDETTAmLNlcf41
	xs9I55vAhr44wdkJgRlFDxYtJNAL68hC5EGRKYBf5ICKR/riW0TIzdsCxlUH/yu7saq4681JercwI
	CyMWY/JQLgey184XLZdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uATym-0000000FpAe-1DT0;
	Thu, 01 May 2025 13:29:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uATxg-0000000Fp3i-3LWL;
	Thu, 01 May 2025 13:28:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=5pF0zRMnxqpAZiQDV2tjp1OzcmcfhmgifjwYB3Den84=; b=RD6jBeYdyI6NdHc8c+BcRx6sC1
	wYRv+O8cKAFHt/LDHeN6Qf0L2jJiSGAtBvMTFUJaYubq+l2HSoQ5YZQ9weBPv8PGy0OyVrlqXAXUb
	DlQ10tPQVsfUPBnm8N2YjE/kN7gWGxY533Hv4snOu4o1pOWN8EP0eGwhOz2cw0IdbTc/F0xpOBXUq
	7EWoYgdB7XoQ5FofLvL9ESHj7ShhmDlZigg6QZ92lbq98encWmo9U9w4KhM168tkMpWnZk1XNEilB
	6ceAZewhyyJKZe6sZSgy1rIHlnScM+ig7Fnl9ldZIfVbB9jhuuYxr1BCIT5hN+rRJueA43s5Lhp/B
	N63Gh5+A==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uATxY-0001u3-Vx; Thu, 01 May 2025 15:28:17 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 6/7] arm64: dts: rockchip: add core dtsi for RK3562 Soc
Date: Thu, 01 May 2025 15:28:16 +0200
Message-ID: <47204993.fMDQidcC6G@diego>
In-Reply-To: <20250415051855.59740-7-kever.yang@rock-chips.com>
References: <20250415051855.59740-1-kever.yang@rock-chips.com>
 <20250415051855.59740-7-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_062824_834635_DC5BC28F 
X-CRM114-Status: GOOD (  11.67  )
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

SGkgS2V2ZXIsCgpBbSBEaWVuc3RhZywgMTUuIEFwcmlsIDIwMjUsIDA3OjE4OjU0IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgS2V2ZXIgWWFuZzoKPiBGcm9tOiBGaW5sZXkg
WGlhbyA8ZmlubGV5LnhpYW9Acm9jay1jaGlwcy5jb20+Cj4gCj4gUkszNTYyIGlzIGEgU29jIGZy
b20gUm9ja2NoaXAsIHdoaWNoIGVtYmVkZGVkIHdpdGggcXVhZAo+IEFSTSBDb3J0ZXgtQTUzLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEZpbmxleSBYaWFvIDxmaW5sZXkueGlhb0Byb2NrLWNoaXBzLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29t
Pgo+IC0tLQo+IAo+IENoYW5nZXMgaW4gdjQ6Cj4gLSByZW1vdmUgZ21hYyBhbmQgb3RwIG5vZGVz
Cj4gCj4gQ2hhbmdlcyBpbiB2MzoKPiAtIHJlbW92ZSBpMmMvc2VyaWFsL3NwaSBhbGlhcwo+IC0g
YWRkIHNvYyBub2RlCj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIHJlbW92ZSBncmYgaW4gY3J1Cj4g
LSBVcGRhdGUgc29tZSBwcm9wZXJ0aWVzIG9yZGVyCj4gCgo+ICsJc29jIHsKPiArCQljb21wYXRp
YmxlID0gInNpbXBsZS1idXMiOwo+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDI+Owo+ICsJCSNzaXpl
LWNlbGxzID0gPDI+Owo+ICsJCXJhbmdlczsKPiArCj4gKwkJc2NtaV9zaG1lbTogc2NtaS1zaG1l
bUAxMGYwMDAgewo+ICsJCQljb21wYXRpYmxlID0gImFybSxzY21pLXNobWVtIjsKPiArCQkJcmVn
ID0gPDB4MCAweDAwMTBmMDAwIDB4MCAweDEwMD47Cj4gKwkJfTsKCnRoZSBzY21pIHNobWVtIGlz
IG5vdCBhIHNvYy1kZXZpY2UsIGJ1dCBpbnN0ZWFkIGEgcGllY2Ugb2YgbWFpbiBtZW1vcnkuCldl
IHJlY2VudGx5IGZpeGVkIHRoYXQgZm9yIGV4YW1wbGUgZm9yIHRoZSByazM1ODggWzBdLCBzbyBw
bGVhc2UgZm9sbG93CmFsb25nIGZvciB0aGlzIG5ldyBzb2MuCgpUaGFua3MgYSBsb3QKSGVpa28K
CgpbMF0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbW1p
bmQvbGludXgtcm9ja2NoaXAuZ2l0L2NvbW1pdC8/aWQ9OGVjZDA5NmQwMThiZThhNmJkM2JkOTMw
ZjNhNDFhODVkYjY2YTY3ZAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

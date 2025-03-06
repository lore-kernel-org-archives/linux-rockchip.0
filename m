Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68A6FC282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 14:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6M7F2lWX/AI0m/aJFHoOy2tSmr05vlyyjh+4TsG6dA=; b=WIx5zC2j7qOcX4
	gIYq1HD/wTtFi6HSK7AMXplVDCof9aPU+yRLY3tw2LZx/4nzVUEKlyDqRoFfHz/r6Q8NsvicAjzeD
	gMJS0dWIoUNgkstjPOhcu7J26i1iG627r1hs76yUKCKM/bu6cFeZCWSQSg3e8eENgqQNSjX8YLtMi
	QWf0CV/M2LYFv6OCUteCpwkxcDkGvkGUEpM/7IWCDMvapddjybXeupDoqZqPkN6FNoSnEPRUGJnSE
	ACIRlGjvVc5QbYp9XxLBWikrxmT9LO7zweXUzjL8/Uz/lUCSrkGQn9TMYTenUabDOCoSVNYnr2UKg
	QbNaOIBbL1wsMS8J6Jlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBr3-0000000B927-0LVX;
	Thu, 06 Mar 2025 14:05:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBir-0000000B7eY-1yKb;
	Thu, 06 Mar 2025 13:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=oV9F+a884N+xaC28QLacb3BrnPMfcnJSbpQ7M1sZLFk=; b=RYazXRyf4N1th84zVX9vDRiPii
	xTI6hqG+EaKyn+Kv8mu05/ud48DV+GUA06oAeneQaapMPzffsq7sOazpfDCQLXZoi7DLOdyKx2rVb
	RAmmX04me3rWJlLh2TENZgE3WzO4VpgznuEG3BaADqV2m8vPT8+AX51g1EcjFvzByYrD+UAg2pLRh
	JRIjOwl0Nat4fikc5JRA5erPkxFfbpne+PsPFRyJ4XrYF8AqiPwr5qx2/X8x5w1aWZLq+Gxs5sYFi
	ZxirRyy10jcCrHI0jW31ZIGCPH4jsNoj9QF0otVOqhj40zYG2DVl6lx23naYI/vkPFDC0OWiCPiT5
	RKYBYpsg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBil-00000009xat-3qMr;
	Thu, 06 Mar 2025 13:57:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=oV9F+a884N+xaC28QLacb3BrnPMfcnJSbpQ7M1sZLFk=; b=ZYLN+D7X+5Wzty1yFojtJK6qrx
	Bpy2s2k1EvqZmxUugYeeiz1+KeKSjdq2spIR7VzN0kvnc7o4m4F6lhdYk020KR6N8nuzVw9t10a/l
	iA3wB57zrogFJi/aoAUvJRF/i6SajC68s2V9lVYZtb02vZfeRtg2A7xsaVmgK/SJjIclkjlOU1J1o
	wKnQBo5gSC6RGpi01zGa6E7xc0jMUBPNFpnxVjCefeE3cnXbE88PtYaM4VsGCwp8to08QUqVEx0ls
	/0m68679LrajjGB9XYKtxYqCA/d6Rkin9n2ZI0JHaJDtiKqzgg3eMLnbBZwAXQxy+bGQISnwfWmcv
	gxe+Nzpw==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqBif-0003YT-8p; Thu, 06 Mar 2025 14:57:01 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org, ziyao@disroot.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable SCMI clk for RK3528 SoC
Date: Thu, 06 Mar 2025 14:57:00 +0100
Message-ID: <3008437.usQuhbGJ8B@diego>
In-Reply-To: <b57e0930-c9a3-4c44-a740-a5623d6904ba@kernel.org>
References: <4856313.kQq0lBPeGt@diego> <7020561.MhkbZ0Pkbq@diego>
 <b57e0930-c9a3-4c44-a740-a5623d6904ba@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_135708_308557_FCD3FC15 
X-CRM114-Status: GOOD (  12.89  )
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

QW0gRG9ubmVyc3RhZywgNi4gTcOkcnogMjAyNSwgMTQ6NTQ6MDQgTUVaIHNjaHJpZWIgS3J6eXN6
dG9mIEtvemxvd3NraToKPiBPbiAwNi8wMy8yMDI1IDE0OjUxLCBIZWlrbyBTdMO8Ym5lciB3cm90
ZToKPiA+IEFtIERvbm5lcnN0YWcsIDYuIE3DpHJ6IDIwMjUsIDE0OjQwOjAyIE1FWiBzY2hyaWVi
IENodWt1biBQYW46Cj4gPj4gSGksCj4gPj4KPiA+Pj4gVGhhdCBzcmFtIGlzIHBhcnQgb2YgdGhl
IHNvYyAoYW5kIGhhcyBhbiBtbWlvLWFkZHJlc3MpLCBzbyBJJ2QgdGhpbmsKPiA+Pj4gaXQgc2hv
dWxkIGxpdmUgaW5zaWRlIHRoZSBzb2Mgbm9kZT8KPiA+Pgo+ID4+IEJ1dCBzb2MgcmFuZ2VzIHN0
YXJ0cyBmcm9tIDB4ZmUwMDAwMDAsIEkgZG9uJ3Qga25vdyB3aGV0aGVyIHRvIGNoYW5nZSBpdC4K
PiA+PiBBbmQgYWxsIG90aGVyIG5vZGVzIGFyZSAweGYuLi4sIGV4Y2VwdCB0aGlzIHNyYW0uCj4g
Pj4gQW55IHN1Z2dlc3Rpb25zIHdvdWxkIGJlIGdyZWF0bHkgYXBwcmVjaWF0ZWQuCj4gPiAKPiA+
IGRhcm4gLi4uIEkgZGlkbid0IHJlYWxpemUgdGhhdCB0aGlzIGlzIG5vdCBzcmFtLCBidXQgbWFp
biBtZW1vcnkgOi0pCj4gCj4gCj4gSGVoLCBJIHRoaW5rIGNhcnZpbmcgb3V0IHJlc2VydmVkIGJs
b2NrcyBmcm9tIHRoZSBtYWluIFJBTSBhbmQgY2FsbGluZwo+IGl0IGEgU1JBTSBpcyBhIHN0cmV0
Y2guCgp5ZXAsIGhlbmNlIGdvaW5nIHdpdGggdGhlIHJlc2VydmVkIG1lbW9yeSBpbnN0ZWFkCmFu
ZCBub3QgdHJ5aW5nIHRvIGNhbGwgaXQgc3JhbSA6LSkKCkFuZCBJIGp1c3Qgc2F3IHJrMzU3NiBo
YXMgdGhlIHNhbWUgaXNzdWUsIG9ubHkgdGhhdCB0aGVyZQp0aGUgbW1pbyBhcmVhIGlzIHNpdHRp
bmcgYmVmb3JlIHRoZSBtYWluIG1lbW9yeSBhZGRyZXNzIHNwYWNlCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

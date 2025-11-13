Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62B42CD98FD
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 23:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xc6qpk7ee/ancBP1iBMTOTCGvN2dH6OTSyfYRa5qCIg=; b=Og0SSLH0ymffbr
	GyNC7SY0y7GT68BrFd3IKtLJQeYzrHDh0vWQHc25rbYjzgyEQdLUaYSNAyuf/tGNFD7MYQEfB30py
	LFoLSw0eKc0VtboU/PLSH++Z3Wn2yvRj0qrqTDqxW8zUexXNvupG/GayUVOZNJFEyPlQIcPhE+R1Z
	vHYzpmb1qCfIR8pfXDcxV67VOYaXRxXWnKFHWOYzyi31/y42Z6E8Xy7yScD5NoLJaJ7b4EdUM92Y/
	KSgGATWoPuD/y9GzHFK/HxN8TaijLP++Z3J64O0jZhUBrWNObh32P454Y+5fX28mfu0MJaJq7KdS+
	/Wqq4vMEtRfmCp7SYpHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgIx-0000000BDn4-3S0I;
	Thu, 13 Nov 2025 23:00:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgIu-0000000BDm9-1yyF;
	Thu, 13 Nov 2025 23:00:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=grMTbYxT3/Qu8aQl2TnXJ0ZZN1+fBc/GLnQ6IdZDoyc=; b=dxFLBhUo9l+ugyCbGCgdx8+WbI
	ZxFRWe9SnBJa7RxKNyggJEt/8aNO5GKzdg+YCwrz2qqyOy1h9UfAuNomHtfzV7cAui7pN9wu8b03Q
	m94a5AfQijob3Hfpmp9zA/R6Gl4znVvirOuKHFIqJtNETR3jH2odWocki6DI49loXMfy/edgTD/xw
	jLFIY8n0FC/gTOnjOBzQcnV7qDT/xqRERsIaJGcF1nI/16hGurX7ltwX6X10sF3xn9zIrnFUXTOJS
	V7wkQJKbX9czmViLJezsnwNMBNM0IzPs3sIFw+iodpV4Q+3Ups9gnbl3v6UgrtkRp89NTjFw1LB6z
	wVRNmzOQ==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgIe-0005Zq-D3; Fri, 14 Nov 2025 00:00:20 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Hsun Lai <i@chainsx.cn>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: add mmc aliases for 100ASK DshanPi A1
Date: Fri, 14 Nov 2025 00:00:19 +0100
Message-ID: <1841407.VLH7GnMWUR@diego>
In-Reply-To: <20251101120010.41729-1-amadeus@jmu.edu.cn>
References: <20251101120010.41729-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_150036_515227_C0BECE06 
X-CRM114-Status: GOOD (  14.70  )
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

SGksCgpBbSBTYW1zdGFnLCAxLiBOb3ZlbWJlciAyMDI1LCAxMzowMDowNSBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIENodWt1biBQYW46Cj4gQWRkIG1pc3NpbmcgTU1DIGFs
aWFzZXMuIFJlbW92ZSB0aGUgbWF4LWZyZXF1ZW5jeSBwcm9wZXJ0eQo+IGZyb20gdGhlIE1NQyBu
b2RlLCB3aGljaCBpcyBhbHJlYWR5IGRlZmluZWQgaW4gcmszNTc2LmR0c2kuCgpwbGVhc2Ugc3Bs
aXQgdGhpcyBpbnRvIDIgcGF0Y2hlcywgb25lIGZvciB0aGUgYWxpYXNlcywgb25lIGZvciB0aGUK
bWF4LWZyZXF1ZW5jeSByZW1vdmFsLgoKVGhhbmtzCkhlaWtvCgo+IAo+IFNpZ25lZC1vZmYtYnk6
IENodWt1biBQYW4gPGFtYWRldXNAam11LmVkdS5jbj4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NzYtMTAwYXNrLWRzaGFucGktYTEuZHRzIHwgNCArKy0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LTEwMGFzay1kc2hhbnBp
LWExLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LTEwMGFzay1kc2hh
bnBpLWExLmR0cwo+IGluZGV4IDU5YzE3MjU3M2NmOC4uOWNiZDNmYWUxNmFiIDEwMDY0NAo+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LTEwMGFzay1kc2hhbnBpLWEx
LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LTEwMGFzay1k
c2hhbnBpLWExLmR0cwo+IEBAIC0xOSw2ICsxOSw4IEBAIC8gewo+ICAJYWxpYXNlcyB7Cj4gIAkJ
ZXRoZXJuZXQwID0gJmdtYWMwOwo+ICAJCWV0aGVybmV0MSA9ICZnbWFjMTsKPiArCQltbWMwID0g
JnNkaGNpOwo+ICsJCW1tYzEgPSAmc2RtbWM7Cj4gIAl9Owo+ICAKPiAgCWNob3NlbiB7Cj4gQEAg
LTczNSw3ICs3MzcsNiBAQCAmc2FpNiB7Cj4gICZzZGhjaSB7Cj4gIAlidXMtd2lkdGggPSA8OD47
Cj4gIAlmdWxsLXB3ci1jeWNsZS1pbi1zdXNwZW5kOwo+IC0JbWF4LWZyZXF1ZW5jeSA9IDwyMDAw
MDAwMDA+Owo+ICAJbW1jLWhzNDAwLTFfOHY7Cj4gIAltbWMtaHM0MDAtZW5oYW5jZWQtc3Ryb2Jl
Owo+ICAJbm8tc2RpbzsKPiBAQCAtNzQ5LDcgKzc1MCw2IEBAICZzZG1tYyB7Cj4gIAljYXAtbW1j
LWhpZ2hzcGVlZDsKPiAgCWNhcC1zZC1oaWdoc3BlZWQ7Cj4gIAlkaXNhYmxlLXdwOwo+IC0JbWF4
LWZyZXF1ZW5jeSA9IDwyMDAwMDAwMDA+Owo+ICAJc2QtdWhzLXNkcjEwNDsKPiAgCXZtbWMtc3Vw
cGx5ID0gPCZ2Y2NfM3YzX3MzPjsKPiAgCXZxbW1jLXN1cHBseSA9IDwmdmNjaW9fc2RfczA+Owo+
IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK

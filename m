Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6C4BC30658
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jul 2024 14:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+ALDDKJSwKBbK4k1Q208xhadJbBd6UMKpY0sgwdZUU=; b=Yf4/1YTxhdWkTt
	qGj2aVzH7yMwq3yMNrK7tdOL1S9QHTrp3rf9dfjQ5TL0zjAqjEpKW1UNBhmknJATlvSS7RPaOyZ1p
	SX1qpQ14rY9G1rURbVC9Ebz6DzEuWQdJ/DtYu4fNGLkga9uKVoXb2M0ySub5zjbIRuNVI00FpNohO
	+Y0AZCbRotJ6GXB2azsihujctSP90tik1XDG+an1bXpXpjxaZRJ+JSpZO2tcy+e0jGPUJyfsn7aBc
	EUJmpmGNeIxmxSG/nB9Kp5AN3KaM/QyDaRBXXDw7JI6ONSSoFnAQMeKdyfE4NvYkZkk9JHXPfTkGf
	71GHZUyh+w8TGgneOGOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOeTm-000000072Av-3jzX;
	Tue, 02 Jul 2024 14:27:35 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOeTk-000000072AB-2hTl
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jul 2024 14:27:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8155ECE1EA4;
	Tue,  2 Jul 2024 14:27:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87D23C116B1;
	Tue,  2 Jul 2024 14:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719930449;
	bh=3RukxIGMXD2kt59a9xvGasAbRxiLnm1I3JR0FXS9ccE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pqRiFWlEuBDVXT/SG0o3Q6U+fexBVFmkyuVwmdeHxDt5RyD35xJ/KMlX/Ry+5mjdd
	 ofPFbxVVjIb1lSswjCn+xLGS8AkkTXd3S/zCNXyXy5bYExx5dyVnQYy1a2zZ+ggDZR
	 sz9TEWDC0qVcgtAJ2mg+e7kJ4UaaQBsT12v25huIRAVlgT+fUx/AADrBlTf5WP0d5k
	 fEA80jAP2JJwYUM2bwPAbXxTgiosN9Pn8hps7bpNH9le4oxEcifKPZxzNN8/FWGpN+
	 Hkl382qzrVhjrL9QtDKbdF+rQ28tCPXkNmpypgeKaHMTaYzwZyhRhKoDPcnWNOkPPo
	 6LCVB3I/5ilJg==
Message-ID: <49656278-2750-4a8f-8ecf-9a31120eed0d@kernel.org>
Date: Tue, 2 Jul 2024 16:27:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: add ethernet aliases
To: Philipp Puschmann <p.puschmann@pironex.com>,
 Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org
References: <20240702124626.116290-1-p.puschmann@pironex.com>
 <6bb12ab4cd12357dfd69db35107d8b88@manjaro.org>
 <f2c7cdb2-b27d-40cc-b103-68043714f13c@pironex.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <f2c7cdb2-b27d-40cc-b103-68043714f13c@pironex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_072733_061114_E08090B1 
X-CRM114-Status: GOOD (  12.27  )
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

T24gMDIvMDcvMjAyNCAxNjoyNSwgUGhpbGlwcCBQdXNjaG1hbm4gd3JvdGU6Cj4gSGkgRHJhZ2Fu
LAo+IAo+PiBIZWxsbyBQaGlsaXBwLAo+Pgo+PiBPbiAyMDI0LTA3LTAyIDE0OjQ2LCBQaGlsaXBw
IFB1c2NobWFubiB3cm90ZToKPj4+IFByb3ZpZGluZyBldGhlcm5ldCBhbGlhc2VzIHNvbHZlcyBh
IHN1YnRsZSBwcm9ibGVtIGZvciB0aGUgcmszNTY4LiBUaGUKPj4+IGJ1c19pZCB1c2VkIGZvciB0
aGUgc3lzZnMgZGlyZWN0b3J5IG5hbWUgb2YgdGhlIG1kaW8uIFdpdGhvdXQgZXRoZXJuZXQKPj4+
IGFsaWFzIHRoZSBidXNfaWQgaXMgYWx3YXlzIDAgYW5kIHNvIGNyZWF0aW5nIHRoZSBzeXNmcyBk
aXJlY3RvcnkgZm9yIHRoZQo+Pj4gc2Vjb25kIG1kaW8gZmFpbHMgd2l0aCBhIGR1cGxpY2F0ZSBm
aWxlbmFtZSBlcnJvciBhbmQgYnkgdGhpcyB0aGUgc2V0dXAKPj4+IG9mIHRoZSBzZWNvbmQgZXRo
ZXJuZXQgcG9ydCBmYWlscyB0b28uCj4+Pgo+Pj4gTm90ZTogVGhlIGFsaWFzIG51bWJlcmluZyBp
cyBpbnZlcnRlZCBhcyBnbWFjMSBjb21lcyBmcm9tIG1vcmUgZ2VuZXJpYwo+Pj4gcmszNTZ4LmR0
c2kgYnV0IGdtYWMwIGNvbWVzIGZyb20gc3BlY2lhbGlzZWQgcmszNTY4Lgo+Pgo+PiBQbGVhc2Ug
c2VlIHRoZSBmb2xsb3dpbmcgY29tbWl0cyBhbmQgdGhlIGRpc2N1c3Npb25zIG9uIHRoZSByb2Nr
Y2hpcC1saW51eAo+PiBtYWlsaW5nIGxpc3QgdGhhdCBhcmUgbGlua2VkIGluIHRoZW06Cj4+Cj4+
IC0gYjAxNDBhMWIzYjFkICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBldGhlcm5ldDAgYWxp
YXMgdG8gdGhlIGR0cwo+PiDCoCBmb3IgUkszNTg4KFMpIGJvYXJkcyIpCj4+IC0gMzZkOWIzYWU3
MDhlICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBldGhlcm5ldDAgYWxpYXMgdG8gdGhlIGR0
cwo+PiDCoCBmb3IgUkszNTY2IGJvYXJkcyIpCj4+IC0gNWQ5MGNiMWVkY2Y3ICgiYXJtNjQ6IGR0
czogcm9ja2NoaXA6IFJlbW92ZSBldGhlcm5ldDAgYWxpYXMgZnJvbSB0aGUKPj4gwqAgU29DIGR0
c2kgZm9yIFJLMzM5OSIpCj4+IC0gYzkwMGZlZjVkZWZmICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6
IFJlbW92ZSBldGhlcm5ldDAgYWxpYXMgZnJvbSB0aGUKPj4gwqAgU29DIGR0c2kgZm9yIFJLMzM2
OCIpCj4+PiBUbyBzdW0gaXQgdXAsIGV0aGVybmV0WCBhbGlhc2VzIGFyZSBjb25zaWRlcmVkIGJv
YXJkLWxldmVsIGZlYXR1cmVzLAo+PiBiZWNhdXNlIG5vdCBhbGwgYm9hcmRzL2RldmljZXMgYWN0
dWFsbHkgZXhwb3NlIHRoZSBFdGhlcm5ldCBpbnRlcmZhY2VzCj4+IGJ1aWx0IGludG8gdGhlIFNv
Q3MuwqAgVGh1cywgYWRkaW5nIGV0aGVybmV0WCBhbGlhc2VzIHRvIHRoZSBTb0MgZHRzaQo+PiBm
aWxlcywgdW5mb3J0dW5hdGVseSwgaXNuJ3QgYW4gYWNjZXB0YWJsZSBvcHRpb24uCj4gQXJlIGV0
aGVybmV0IGFsaWFzZXMgYXJlIGhhbmRsZWQgZGlmZmVyZW50bHkgdGhhbiBpMmMsIHNlcmlhbCBh
bmQgc3BpIGFsaWFzZXM/Cj4gVGhlcmUgYXJlIGFsaWFzZXMgZm9yIGVhY2ggb2YgdGhlbSwgd2l0
aG91dCBkb2luZyBhbnkgaGFybS4gQW5kIGV2ZW4gaWYgdGhlIGdtYWMKPiBub2RlcyBhcmUgZGlz
YWJsZWQgd2l0aCBzdGF0dXMgcHJvcGVydHk/CgpJIHRoaW5rIHRoaXMgd2FzIGV4cGxhaW5lZCBt
YW55IHRpbWVzLiBEaWQgeW91IGxvb2sgYXQgYWJvdmUgZGlzY3Vzc2lvbnM/CgpCZXN0IHJlZ2Fy
ZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK

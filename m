Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E16A606A326
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 01:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Bm7igpJA;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=g3zKO2fI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bUcZUCd9M3mCb1u91juYAfbsCsNyYNcQf5td2PT4hL0=; b=Bm7igpJADUxppnS+Txs+ExtXzB
	0U7Nl4yLw4KGFAUI0gXaGJ+jd3B2eoev0aCOkvf3UgXFr4oHZFazFXP3tLPxQf4qauM6Z9nd8evm3
	Te0MRwsUhZLwe2LZb6Vw2ZNZN8adJCWNzBe9b7jfVEPs/2fBbHwE2Z4bC0fZsJrJ56I74jefC6EFO
	KKTwSRWJdtvMhQX+XiEs+NSXff8S/aOls7Mc6ftkQtgcmhAdlFiL3V8Kw2D3vVYO6h6KP8ri7AHxX
	v0ECuQKoqZhYYsihjSWL+Frxq5uuAsLQGAr3jfi0v7GfDA3CnaLrAEr/9Bpyk81oL4jwPyEiVEoTn
	eWB3jJgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOmEs-00000007Th6-1LYT;
	Thu, 05 Nov 2026 01:26:02 +0000
Received: from mail-m1602365393.xmail.ntesmail.com ([160.236.53.93])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOmEl-00000007TfB-1B2Y;
	Thu, 05 Nov 2026 01:26:01 +0000
Received: from [192.168.10.59] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 538ad91db;
	Thu, 5 Nov 2026 09:25:51 +0800 (GMT+08:00)
Message-ID: <8ab021df-dd10-4f29-bacf-9c01c22c7202@rock-chips.com>
Date: Thu, 5 Nov 2026 09:25:50 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: rk3308-codec: describe
 detection and ADC routing
To: Mark Brown <broonie@kernel.org>
Cc: heiko@sntech.de, linux-sound@vger.kernel.org, luca.ceresoli@bootlin.com,
 lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com,
 linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 huangtao@rock-chips.com, sugar.zhang@rock-chips.com, lxt@rock-chips.com,
 xing.zheng@rock-chips.com
References: <20261101040125.1864141-1-zhengxing@rock-chips.com>
 <20261101044149.2018744-1-zhengxing@rock-chips.com>
 <20261101044149.2018744-2-zhengxing@rock-chips.com>
 <aufBA7-uC7udM0qa@sirena.org.uk>
Content-Language: en-US
From: Xing Zheng <zhengxing@rock-chips.com>
In-Reply-To: <aufBA7-uC7udM0qa@sirena.org.uk>
X-HM-Tid: 0aa1a94ff11e03a8kunmeffaf22e3a50de
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZT0NKVk0dTEofQk0dHhodGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=g3zKO2fILayjVdGEZOCwKOnfIp7jt4rjJRF3J5aD3fldQeIQB47CNsGCkR6dKMnPT7odmhpFizQdvM2Ru9irAIQkLfADKCosoYb/99wAonx6O+0VOOdiq2L5clqxymPBnknZlowa8rtF1891us3q0aWT1/Tegbm9s8U1vtnTETs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=wYPlcYxWEFPPxDzllayWHKcttt65f1mLVtY971TaG9g=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_172556_063219_6985F6ED 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgTWFyaywKCk9uIDExLzIvMjYgMDY6NDUsIE1hcmsgQnJvd24gd3JvdGU6Cj4gT24gU3VuLCBO
b3YgMDEsIDIwMjYgYXQgMTI6NDE6NDdQTSArMDgwMCwgWGluZyBaaGVuZyB3cm90ZToKPj4gRGVz
Y3JpYmUgdGhlIG9wdGlvbmFsIGRldGVjdC1HUkYgcGhhbmRsZSBhbmQgbmFtZWQgaW50ZXJydXB0
IHJlc291cmNlcwo+PiB1c2VkIGJ5IHRoZSBCL0MgaGVhZHBob25lIGRldGVjdG9yLiBSZXRhaW4g
dGhlIGxlZ2FjeSBpbnRlcnJ1cHQgb3JkZXIKPj4gYW5kIGluZGV4LWJhc2VkIGxvb2t1cCB3aGVu
IG5hbWVzIGFyZSBhYnNlbnQuIERvY3VtZW50IHRoZSBkZXRlY3Rvcgo+PiBkaXNhYmxlIGFuZCBy
ZXZlcnNlZC1qYWNrIHByb3BlcnRpZXMgYW5kIHRoZWlyIHJlc291cmNlIGRlcGVuZGVuY2llcy4K
PiBQbGVhc2UgZG9uJ3Qgc2VuZCBuZXcgcGF0Y2hlcyBpbiByZXBseSB0byBvbGQgcGF0Y2hlcyBv
ciBzZXJpZXNlcywgdGhpcwo+IG1ha2VzIGl0IGhhcmRlciBmb3IgYm90aCBwZW9wbGUgYW5kIHRv
b2xzIHRvIHVuZGVyc3RhbmQgd2hhdCBpcyBnb2luZwo+IG9uIC0gaXQgY2FuIGJ1cnkgdGhpbmdz
IGluIG1haWxib3hlcyBhbmQgbWFrZSBpdCBkaWZmaWN1bHQgdG8ga2VlcCB0cmFjawo+IG9mIHdo
YXQgY3VycmVudCBwYXRjaGVzIGFyZSwgYm90aCBmb3IgdGhlIG5ldyBwYXRjaGVzIGFuZCB0aGUg
b2xkIG9uZXMuCgpVbmRlcnN0b29kLiBBbnkgZnV0dXJlIHBhdGNoIHNlcmllcyBvciByZXZpc2lv
biBJIHN1Ym1pdCB3aWxsIHN0YXJ0Cml0cyBvd24gdGhyZWFkLCB3aXRoIGxpbmtzIHRvIGVhcmxp
ZXIgdmVyc2lvbnMgaW4gdGhlIGNvdmVyIGxldHRlci4KCkkgYW0gcHV0dGluZyB0aGlzIHNlcmll
cyBvbiBob2xkIHdoaWxlIEkgaW52ZXN0aWdhdGUgcGxheWJhY2sgYW5kCmNhcHR1cmUgcHJvYmxl
bXMgb2JzZXJ2ZWQgb24gb3VyIEVWQiB3aXRoIHVwc3RyZWFtIGNvZGVjIGNoYW5nZXMKYmFja3Bv
cnRlZCB0byBvdXIgZG93bnN0cmVhbSA2LjEyIGtlcm5lbC4KCkJlZm9yZSB0aGVzZSBiYWNrcG9y
dHMsIHNvdW5kL3NvYy9jb2RlY3MvcmszMzA4X2NvZGVjLmMgYW5kIC5oIG1hdGNoZWQKdGhlIHVw
c3RyZWFtIHZlcnNpb25zIGF0IDJiYTJkMTcxNzBmOSAoIkFTb0M6IGNvZGVjczogcmszMzA4OiBm
aXgKYnVpbGRpbmcgd2l0aG91dCBDT05GSUdfT0YiKS4gT24gdG9wIG9mIHRoYXQgY29kZWMgYmFz
ZWxpbmUsIEkgYXBwbGllZAp0aGUgZm9sbG93aW5nIHVwc3RyZWFtIGNvbW1pdHM6CgogwqAgMmQ4
YTA5MTcyNWU2IEFTb0M6IGNvZGVjczogcmszMzA4OiBjb252ZXJ0IHRvIHNuZF9zb2NfZGFwbV94
eHgoKQogwqAgMGM1NTU1MmI1ZjVlIEFTb0M6IGNvZGVjczogcmszMyo6IHVzZSAuYXV0b19zZWxl
Y3RhYmxlX2Zvcm1hdHMKIMKgIDE1N2Y3Y2JhNzdhOSBBU29DOiBjb2RlY3M6IHJrMzMwODogYWRk
IHN1cHBvcnQgZm9yIGNvZGVjIHJldmlzaW9uIEIKCkkgYWxzbyBiYWNrcG9ydGVkIGExYzk5YjYw
OTdhZiAoIkFTb0M6IHNvYy1jb21wb25lbnQ6IGFkZApzbmRfc29jX2NvbXBvbmVudF90b19kYXBt
KCkiKSBmb3IgdGhlIERBUE0gYWNjZXNzb3IgdXNlZCBieSB0aGUKY29udmVydGVkIGRyaXZlci4g
VGhlc2UgYXJlIHVwc3RyZWFtIGNvbW1pdCBJRHM7IHRoZSByZXN0IG9mIHRoZQprZXJuZWwgcmVt
YWlucyBiYXNlZCBvbiBkb3duc3RyZWFtIDYuMTIuCgpJIGhhdmUgbm90IHlldCBkZXRlcm1pbmVk
IHdoZXRoZXIgdGhlIHBsYXliYWNrIGFuZCBjYXB0dXJlIGlzc3VlcwphcmUgaW4gdGhlIHVwc3Ry
ZWFtIGRyaXZlciBvciBpbiB0aGUgYmFja3BvcnQvaW50ZWdyYXRpb24uCgpJIHdpbGwgcmV3b3Jr
IGFueSBuZWNlc3NhcnkgY2hhbmdlcyBhZ2FpbnN0IHRoZSBjdXJyZW50IHVwc3RyZWFtIGJhc2UK
YW5kIHZhbGlkYXRlIHBsYXliYWNrIGFuZCBjYXB0dXJlIG9uIHRoZSBFVkIgYmVmb3JlIHJlc3Vi
bWl0dGluZy4KRGVwZW5kaW5nIG9uIHRoZSByZW1haW5pbmcgc2NvcGUsIEkgd2lsbCBzZW5kIGVp
dGhlciBhIHJldmlzZWQgdjMgb2YKdGhpcyBzZXJpZXMgb3IgYSBzZXBhcmF0ZSwgZm9jdXNlZCBw
YXRjaCBvciBzZXJpZXMuIEluIGVpdGhlciBjYXNlLAp0aGUgc3VibWlzc2lvbiB3aWxsIHN0YXJ0
IGEgbmV3IHRocmVhZCBhbmQgcmVmZXJlbmNlIHRoZSBlYXJsaWVyCnNlcmllcyB3aGVyZSByZWxl
dmFudC4KClRoYW5rIHlvdSBmb3IgdGhlIHJldmlldyBhbmQgdGhlIHRocmVhZGluZyBndWlkYW5j
ZS4KCkJlc3QgUmVnYXJkcwpYaW5nIFpoZW5nCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

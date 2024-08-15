Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF4F1C52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 13:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRewIO6Fx/IzVugGnTkx5VC8P+plWVBpO5xlILZrV7Q=; b=4HmzDbamzQw3VC
	MdSJxrG1DoxS3gr2zp2hJ/6Z2boHyHeesqsFXYjhVLqGNfgGFlF2IeiUhozamJx9GuOUyvJF5MQH5
	kwgZPzjS9mbdJCN7n5Z1U0aJ3Q8sMSEHz7FzbdIf074Pd+UDeh+LgOi7AOxqtkjXI4ImlNyUHmFCx
	jknGAbyx8ZTq6jVG6EfthBpUy5lbBnpeGwwLelqLFD+PTST0L1fyQPvaQ14hi5cr4rNYdzwHL6S+U
	gzEjg8ILXuikgc/XWPciZCbMRncJ2dPIK3rkNAayuHoBdaZZ+ReXB7H/jBsCbgEAMlSsaayhjWRzB
	WQVbpqGNbImFPGZ9U3ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seaMw-0000000A0zK-0CiQ;
	Thu, 15 Aug 2024 13:18:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seaMF-0000000A0mL-2ZQn;
	Thu, 15 Aug 2024 13:17:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6Sh4JlvtilfgHZ8AKzPSFBYOVcq2ODGvw9XQUWeQAJY=; b=d0kGjN51Zg2xvCf4LcSmivsDFy
	Vyu8uZDt6/w5bnI95Le5DUbLclvga9RNjik+4gBS+K8sjQZ6CDJvWAVbVVLRO8zed3/4TPmkh3KA3
	UrX9ac8sj0lT0XNuD1dLWUa7C/5k2QG1Tfbzzd0441wanLIZ/hP2cJjNWfHZCg9wEBeycBUUMCPj1
	I5xOpgUb3GSx98InpSaE+JDkfBwKKPUX1tym2sR5povzL3e4jvnzKv1jevzGmALLGEx4w1Zx9YHis
	3IW3T49HC28EC6Hv/PPQVGbFvLsNCzRCwGfjIWOvGcqsYkNGvmxuIPEvfQiqhxn+w1mQmE/E8HeAs
	dB56TZcg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seaM1-0002nJ-Fa; Thu, 15 Aug 2024 15:17:25 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jaehoon Chung <jh80.chung@samsung.com>,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
Subject: Re: [PATCH v3 2/3] mmc: dw_mmc-rockchip: Add v2 tuning support
Date: Thu, 15 Aug 2024 15:17:24 +0200
Message-ID: <18146801.MNNF8PUAaN@diego>
In-Reply-To: <5dc82aa2-82a0-4778-b598-88775d5f791c@rock-chips.com>
References: <20240814223555.3695-1-detlev.casanova@collabora.com>
 <20240814223555.3695-3-detlev.casanova@collabora.com>
 <5dc82aa2-82a0-4778-b598-88775d5f791c@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_061739_692659_F837BA9E 
X-CRM114-Status: GOOD (  21.36  )
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

QW0gRG9ubmVyc3RhZywgMTUuIEF1Z3VzdCAyMDI0LCAwMjo1NTozNyBDRVNUIHNjaHJpZWIgU2hh
d24gTGluOgo+IEhpIERldGxldgo+IAo+IOWcqCAyMDI0LzgvMTUgNjozNCwgRGV0bGV2IENhc2Fu
b3ZhIOWGmemBkzoKPiA+IEZyb206IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29t
Pgo+ID4gCj4gPiB2MiB0dW5pbmcgd2lsbCBpbmhlcml0IHByZS1zdGFnZSBsb2FkZXIncyBwaGFz
ZSBzZXR0aW5ncyBmb3IgdGhlIGZpcnN0Cj4gPiB0aW1lLCBhbmQgZG8gcmUtdHVuZSBpZiBuZWNl
c3NhcnkuCj4gPiBSZS10dW5lIHdpbGwgc3RpbGwgdHJ5IHRoZSByb3VnaCBkZWdyZWVzLCBmb3Ig
aW5zdGFuY2UsIDkwLCAxODAsIDI3MCwKPiA+IDM2MCBidXQgY29udGludWUgdG8gZG8gdGhlIGZp
bmUgdHVuaW5nIGlmIHNhbXBsZSB3aW5kb3cgaXNuJ3QgZ29vZAo+ID4gZW5vdWdoLgo+ID4gCj4g
PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiA+
IFNpZ25lZC1vZmYtYnk6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9y
YS5jb20+Cgo+ID4gQEAgLTI3Nyw2ICszMjIsMTAgQEAgc3RhdGljIGludCBkd19tY2lfcmszMjg4
X3BhcnNlX2R0KHN0cnVjdCBkd19tY2kgKmhvc3QpCj4gPiAgIAkJCQkJJnByaXYtPmRlZmF1bHRf
c2FtcGxlX3BoYXNlKSkKPiA+ICAgCQlwcml2LT5kZWZhdWx0X3NhbXBsZV9waGFzZSA9IDA7Cj4g
PiAgIAo+ID4gKwlwcml2LT51c2VfdjJfdHVuaW5nID0KPiA+ICsJCW9mX2RldmljZV9pc19jb21w
YXRpYmxlKGhvc3QtPmRldi0+b2Zfbm9kZSwKPiA+ICsJCQkJCSJyb2NrY2hpcCxyazM1NzYtZHct
bXNoYyIpOwo+ID4gKwo+IAo+IHYyIGlzIGEga2luZCBvZiBzb2Z0d2FyZSBkZWNpc2lvbiBpbnN0
ZWFkIG9mIGhhcmR3YXJlIGRlcGVuZGVuY3kuCj4gU28gaW4gdGhlb3J5LCBhbnkgU29DIGNhbiBj
bGFpbSB0byB1c2UgaXQgdmlhIERULgoKd2hpY2ggYWN0dWFsbHkgbWFrZXMgaXQgdW5zdWl0YWJs
ZSBmb3IgZHQuCgpEZXZpY2V0cmVlIGRlc2NyaWJlcyBoYXJkd2FyZS1wcm9wZXJ0aWVzIGFuZCBz
aG91bGQgX25vdF8gYmUgdXNlZCBmb3IKc29mdHdhcmUgY29uZmlndXJhdGlvbi4KCkZyb20gdGhl
IGNvbW1lbnQgYWJvdmUsIEkgYXNzdW1lIHRoZSByazM1NzYgZG9lcyBub3QgbmVlZCB0aGF0IGZl
YXR1cmUKYW5kIGNhbiBqdXN0IHdvcmsgd2l0aCB0aGUgcmVndWxhciB0dW5pbmc/CgpTbyB0aGVy
ZSBhcmUgdHdvIHJvdXRlcyBmb3IgdGhlIGltbWVkaWF0ZSBmdXR1cmU6CigxKSByazM1NzYgX25l
ZWRzXyB0aGF0IGZlYXR1cmUsIHRoZW4gZ29pbmcgd2l0aCB0aGUgY29tcGF0aWJsZSBpcyBmaW5l
CgooMikgcmszNTc2IGRvZXMgbm90IG5lZWQgYWJzb2x1dGVseSBuZWVkIHRoYXQgZmVhdHVyZSwg
dGhlbiBJJ2QgZXhwZWN0CnRoZSBiYXNpYyByazM1NzYgdG8gZmlyc3QgY29tZSB3aXRob3V0LCBh
cyBJJ2QgZXhwZWN0IGEgbG90IG1vcmUgZXhwbGFuYXRpb24Kb24gd2h5IGl0IGlzIGFjdHVhbGx5
IG5lZWRlZCwgYW5kIHdoaWNoIGNhc2VzIGl0IGRvZXMgaW1wcm92ZS4KVGhlIGNvbW1pdCBtZXNz
YWdlIGRvZXMgbm90IHJlYWxseSBleHBsYWluIHRoYXQgbXVjaCBhYm91dCB3aHkgdGhpcwppcyBh
IGdyZWF0L25lZWRlZCBmZWF0dXJlIGFuZCB3aGljaCBhcmVhcyBpdCBkb2VzIGltcHJvdmUuCgoK
SGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

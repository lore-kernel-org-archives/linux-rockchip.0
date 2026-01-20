Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C38BD2ECF7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 08:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G13YFRLXP4KL/9ZkDZHjKGPkuSXAeTC/nFEKll6Wbl0=; b=Cx7XPh1QspvBxI
	d0x1aY+VTvxtpkL1DFsI1tpMo/tmkJf1l9LWUG03dV8lvbnzuHM5GeLjW+r0Z3PqfvrUAa2aRCzNa
	WlGC/goWjiHadoanym6qwwt/8zghEMBxEb0h2kS1Ac0xQ96oKZ3ErxSxTv+OgrAGFhN5NqKvW9BVM
	mm+DPs37R7p7TLNOAO3SRAjfD3WgEcWy8VlWO3C8T/wt659nQ1Dz3rlhqwUqhStTDjt8RhKnFy6ma
	Q/F40CWXOTK5g75dgI3poUFIM3cr/QEidqurCRQ712fjLgMk9HYAm3j1bvggKtDAC7MBvDLi6CHqL
	HP7inY08SRdTZZjbaiqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi7X1-00000003UkZ-1Eq3;
	Tue, 20 Jan 2026 08:56:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi7Wy-00000003Ujf-1Bxu;
	Tue, 20 Jan 2026 08:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dxgtuw6/eiHYsPsz91G2+s/blRfxmN8N4VduCGdXThM=; b=EEUU3TtcX15TaXsTpy+efUZgnr
	GvRN3Wul0JrdfXvzmqZFYEm9I5Uuv2B2EaNTsD6vtuVQ2+71/Bp0nMxYDfQreGXBBUP8E75DD691R
	sAIRMetPw+PlnHZgC9fXRBVhvGFkXks8VAGKpYofCqbwcrnGs2p5BTnF2BLcVEKn8IjMgEHdbP4kL
	vuJxuwoN8jvH8O5oN6rX7N6gVXJ1b2PMiViNfcUxHagz6JNq/xpOXqaAQAnK0ZGMXv6M0VDImvFsR
	LMq0DtfiImIzlNlKYk4TEmnqJ22gXd2Z3+oQymTtqHxJ9fB9TTcxhaeEAlz4ysIznmFaON5yNz4x1
	QaakdUVA==;
Received: from [192.76.154.230] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vi7Wm-003K6A-Kw; Tue, 20 Jan 2026 09:55:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, Quentin Schulz <quentin.schulz@cherry.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on RK3576
Date: Tue, 20 Jan 2026 09:55:56 +0100
Message-ID: <5743823.mogB4TqSGs@phil>
In-Reply-To: <6479d7b8-7712-4181-9c82-0021da94d1a8@rock-chips.com>
References: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com>
 <6479d7b8-7712-4181-9c82-0021da94d1a8@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_005608_362836_B80C22A8 
X-CRM114-Status: GOOD (  24.03  )
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

QW0gRGllbnN0YWcsIDIwLiBKYW51YXIgMjAyNiwgMDI6Mzk6MjggTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBTaGF3biBMaW46Cj4g5ZyoIDIwMjYvMDEvMTkg5pif5pyf5LiA
IDE3OjIyLCBBbGV4ZXkgQ2hhcmtvdiDlhpnpgZM6Cj4gPiBSb2NrY2hpcCBSSzM1NzYgVUZTIGNv
bnRyb2xsZXIgdXNlcyBhIGRlZGljYXRlZCBwaW4gdG8gcmVzZXQgdGhlIGNvbm5lY3RlZAo+ID4g
VUZTIGRldmljZSwgd2hpY2ggY2FuIG9wZXJhdGUgZWl0aGVyIGluIGEgaGFyZHdhcmUgY29udHJv
bGxlZCBtb2RlIG9yIGFzIGEKPiA+IEdQSU8gcGluLgo+ID4gCj4gCj4gSXQncyB0aGUgb25seSBv
bmUgMS4yViBJTyBjb3VsZCBiZSB1c2VkIG9uIFJLMzU3NiB0byByZXNldCB1ZnMgZGV2aWNlcywK
PiBleGNlcHQgdWZzIHJlZmNsay4gU28gaXQncyBhIGRlZGljYXRlZCBwaW4gZm9yIHN1cmUgaWYg
dXNpbmcgdWZzLCB0aGF0J3MKPiB3aHkgd2UgcHV0IGl0IGludG8gcmszNTc2LmR0c2kuCj4gCj4g
PiBQb3dlci1vbiBkZWZhdWx0IGlzIEdQSU8gbW9kZSwgYnV0IHRoZSBib290IFJPTSByZWNvbmZp
Z3VyZXMgaXQgdG8gYQo+ID4gaGFyZHdhcmUgY29udHJvbGxlZCBtb2RlIGlmIGl0IHVzZXMgVUZT
IHRvIGxvYWQgdGhlIG5leHQgYm9vdCBzdGFnZS4KPiA+IAo+IAo+IFJPTSBjb2RlIGNvdWxkIGJl
IHNwZWNpZmljLCBidXQgdGhlIGxpbnV4L2xvYWRlciBkcml2ZXIgaXMgY29tcGF0aWJsZe+8jAo+
IHNvIGZvciB0aGUgY29taW5nIFNvQ3MsIHdpdGggbW9yZSAxLjJWIElPIGNvdWxkIGJlIHVzZWQs
IGl0J3MgbW9yZQo+IGZsZXhpYmxlIHRvIHVzZSBncGlvLWJhc2VkIGluc3RlYWQgb2YgaGFyZHdh
cmUgY29udHJvbGxlZChvZiBjb3Vyc2UsCj4gbW92ZSByZXNldCBwaW5jdHJsIHNldHRpbmdzIGlu
dG8gYm9hcmQgZHRzKS4KPiAKPiA+IEdpdmVuIHRoYXQgZXhpc3RpbmcgYmluZGluZ3MgKGFuZCBy
azM1NzYuZHRzaSkgZXhwZWN0IGEgR1BJTy1jb250cm9sbGVkCj4gPiBkZXZpY2UgcmVzZXQsIHJl
cXVlc3QgdGhlIHJlcXVpcmVkIHBpbiBjb25maWcgZXhwbGljaXRseS4KPiA+IAo+ID4gVGhpcyBk
b2Vzbid0IGFwcGVhciB0byBhZmZlY3QgTGludXgsIGJ1dCBpdCBkb2VzIGFmZmVjdCBVLWJvb3Q6
Cj4gPiAKPiAKPiBJSVVDLCBpdCdzIG1vcmUgb3IgbGVzcyBhIGZpeCBmb3IgbG9hZGVyLCBtb3Jl
IHByZWNpc2VseSBVLWJvb3QgaGVyZT8KPiBJJ20gbm90IGVudGlyZWx5IGNlcnRhaW4gYWJvdXQg
dGhlIGhhbmRsaW5nIGhlcmUsIGlzIGl0IHN0YW5kYXJkCj4gY29udmVudGlvbiB0byBhZGQgYSBm
aXhlcyB0YWcgaW4gdGhpcyBjb250ZXh0PwoKWWVzLCBhIGZpeGVzIHRhZyBpcyB3YXJyYW50ZWQg
aGVyZSwgaW4gTGludXggaXQgIm9ubHkiIGZpeGVzIGEgcG90ZW50aWFsCmlzc3VlIGR1ZSB0byB0
aGUgbWlzbWF0Y2ggYmV0d2VlbiBwaW5jb25maWcgYW5kIGdwaW8gZHVyaW5nIHByb2JlLgoKbmNl
IHRoaXMgcGF0Y2ggdGhlbiBlbnRlcnMgdGhlIGtlcm5lbCwgaXQgY2FuIGJlIGNoZXJyeS1waWNr
ZWQgdG8KdGhlIGN1cnJlbnQgdS1ib290IGRldmVsb3BtZW50IGN5Y2xlLiBJIGRvbid0IHRoaW5r
IHUtYm9vdCBpcyBkb2luZwpzdGFibGUgcmVsZWFzZXMgdGhvdWdoLCBzbyBVLUJvb3Qgd2lsbCBv
bmx5IHByb2ZpdCBmb3IgdGhlIG5leHQKdmVyc2lvbiB3aGVyZSB0aGlzIGlzIGluY2x1ZGVkLgoK
SGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

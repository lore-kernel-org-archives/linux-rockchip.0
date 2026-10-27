Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 869E2606A323
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 00:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=k38Kpllz;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=hV1UNJnX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=w/rGtNTx/mlyI1ZlCXktOcvuXJ0Bi4w4Ghb8W5hCUjU=; b=k38Kpllz5p7c4h3tqVufgBFG5g
	UWH43Qu0WV4H2hAYw6k7aKzYLVc6C3gvm+9rkBy/lbKOlSCkthDhYuAHIvdH26tIP9fPJYy6z1Acp
	AVpDNZ9+cLvDUb89McV8dvnkjuVCO3jOof28RLlGnkO2OlKPqC75WE4KDHdqyQ7K755/P98GFj+xT
	kek2PlmUITADeS6CZY1v8JJSc4R3iGOmsQqoltRogofyZ2Q5k1doDnzXKLYJa+daq4r/tuyn+9HeM
	SQJUqsXzBf8twKA3vNk2DU8BC/6wkKRZ0Mur1RfD6255pE09ERYWXorOBucN1L79ci3CJSuOH1+Gx
	okKUvcfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLVV3-00000003ZGV-1gin;
	Tue, 27 Oct 2026 00:57:13 +0000
Received: from mail-m822136198.xmail.ntesmail.com ([8.221.36.198])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLVUz-00000003ZFS-3sQy;
	Tue, 27 Oct 2026 00:57:12 +0000
Received: from [172.16.12.93] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 526eb68c8;
	Tue, 27 Oct 2026 08:57:04 +0800 (GMT+08:00)
Message-ID: <9f8114fc-c4bd-4f50-8c5a-a8afc94249b8@rock-chips.com>
Date: Tue, 27 Oct 2026 08:57:02 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] clk: rockchip: Add RK3572 clock and reset support
To: Cunhao Lu <1579567540@qq.com>, Stephen Boyd <sboyd@kernel.org>,
 Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Richard Cochran <richardcochran@gmail.com>
Cc: linux-clk <linux-clk@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, netdev <netdev@vger.kernel.org>
References: <20261026-add-board-ok3572-c-clk-v3-0-dbabfa39d692@qq.com>
 <20261026-add-board-ok3572-c-clk-v3-3-dbabfa39d692@qq.com>
 <0d5de6fd-3150-4898-a652-7f5b64dcaf07@rock-chips.com>
 <tencent_6876096D2306016F88487E0E4D78345B3208@qq.com>
From: =?UTF-8?B?5byg5pm0?= <zhangqing@rock-chips.com>
In-Reply-To: <tencent_6876096D2306016F88487E0E4D78345B3208@qq.com>
X-HM-Tid: 0aa17adc5aa409d2kunmf1cad9ec130d7c4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQ0JJVkhLTU1JSB8dQ05LHlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=hV1UNJnX6QxnjUOiSLVmQD2uma3cke/feZxFVH5S4idvDB+vzdGr/E9wgn464etOHYT4aZjOe+e90+ba5lq8wnXpsEnx+r0uShc0/GkpQM+Mdf57U1BSBg7TzTBAjAc4coCZPgYikVjqHNbeHLnvM30slTEgbXfdnZ7gyX4ZygI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=LTWlkC3bqSlTG2YkDHxmrbiZeaSggK5ojxGD1nHsNsI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_175710_946025_EA1024E9 
X-CRM114-Status: GOOD (  19.83  )
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
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CuWcqCAyMDI2LzEwLzI2IDIyOjU2LCBDdW5oYW8gTHUg5YaZ6YGTOgo+IEhpIHpoYW5ncWluZywK
Pgo+PiBUaGlzIGlzIGluIGNsay5oLCBwbGVhc2Ugc3VibWl0IGl0IHNlcGFyYXRlbHkuCj4gVGhh
bmtzIGZvciB0aGUgcmV2aWV3LiBJIHdpbGwgbW92ZSBDT01QT1NJVEVfTVVYVEJMIHRvIGNsay5o
IGFuZCBhZGQgaXQKPiBpbiBhIHNlcGFyYXRlIHByZXBhcmF0b3J5IHBhdGNoLgo+Cj4+IFRoaXMg
aXMgaW5jb3JyZWN0IGhlcmU7IHRoZXJlIHNob3VsZCBiZSBubyBuZWdhdGl2ZSB2YWx1ZXMuIFR3
bydzCj4+IGNvbXBsZW1lbnQgaXMgdXNlZCBoZXJlLCBzbyBhIGNvbnZlcnNpb24gaXMgbmVlZGVk
LiBGb3IgZXhhbXBsZSwKPj4gLTEyOTU1IHNob3VsZCBiZSA1MjU4MS4KPj4KPj4gSW4gY2xrLXBs
bC5jLCBjdXIuayAmIEJJVCgxNSkgaXMgdXNlZCB0byBkZXRlcm1pbmUgdGhlIHR3bydzIGNvbXBs
ZW1lbnQKPj4gY29udmVyc2lvbi4KPiBJIGFncmVlIHRoYXQgdGhlIGhhcmR3YXJlIGV4cGVjdHMg
YSAxNi1iaXQgdHdvJ3MgY29tcGxlbWVudCBlbmNvZGluZzoKPiAtMTI5NTUgaXMgZW5jb2RlZCBh
cyAweGNkNjUsIHdoaWNoIGlzIDUyNTgxIHdoZW4gcmVhZCBhcyB1bnNpZ25lZC4gVGhlCj4gZGlm
ZmVyZW5jZSBoZXJlIGlzIGhvdyB0aGF0IGNvZWZmaWNpZW50IGlzIHJlcHJlc2VudGVkIGluIHRo
ZSByYXRlCj4gdGFibGUgb24gdGhlIGtlcm5lbCB2ZXJzaW9uIHRoaXMgc2VyaWVzIHRhcmdldHMu
Cj4KPiBJIGZvdW5kIHRoZSBjdXIuayAmIEJJVCgxNSkgYnJhbmNoIGluIFJvY2tjaGlwJ3MgZG93
bnN0cmVhbSBkZXZlbG9wLTYuMTIKPiB0cmVlLiBUaGVyZSwgayBpcyB1bnNpZ25lZCBpbnQsIHNv
IHRoZSBkcml2ZXIgZXhwbGljaXRseSBjaGVja3MgYml0IDE1Cj4gYW5kIHN1YnRyYWN0cyB0aGUg
bWFnbml0dWRlIG9mIGEgbmVnYXRpdmUgZnJhY3Rpb25hbCBjb2VmZmljaWVudC4KPgo+IFRoaXMg
c2VyaWVzIHVzZXMgdGhlIHVwc3RyZWFtIGltcGxlbWVudGF0aW9uLiBCb3RoIHYyIGFuZCB2MyBh
cmUgYmFzZWQKPiBvbiBhODA0YzU3NDJiZmYsIHdoaWNoIGFscmVhZHkgY29udGFpbnMgY29tbWl0
Cj4gNTgxNDc4ODgzNDc3ICgiY2xrOiByb2NrY2hpcDogRnJhY3Rpb25hbCBQTEwgY29lZmZpY2ll
bnQgb24gUkszNTg4L1JLMzU3Ngo+IGlzIHR3bydzIGNvbXBsZW1lbnQiKS4gVGhhdCBjb21taXQg
Y2hhbmdlZCB0aGUgayBtZW1iZXIgb2YKPiBzdHJ1Y3Qgcm9ja2NoaXBfcGxsX3JhdGVfdGFibGUg
dG86Cj4KPiAgICAgICAgICBzMTYgazsgLyogZnJhY3Rpb25hbCBwYXJ0LCAxNiBiaXQgdHdvJ3Mg
Y29tcGxlbWVudCAqLwo+Cj4gT24gdGhpcyBiYXNlLCByb2NrY2hpcF9yazM1ODhfcGxsX3JlY2Fs
Y19yYXRlKCkgdXNlcyBzaWduZWQgYXJpdGhtZXRpYzoKPgo+ICAgICAgICAgIHM2NCBmcmFjX3Jh
dGU2NCA9IChzNjQpcHJhdGUgKiBjdXIuazsKPiAgICAgICAgICBwb3N0ZGl2ID0gY3VyLnAgKiA2
NTUzNjsKPiAgICAgICAgICByYXRlNjQgKz0gZGl2X3M2NChmcmFjX3JhdGU2NCwgcG9zdGRpdik7
Cj4KPiBUaGUgc2lnbmVkIHR5cGUgcmVwcmVzZW50cyB0aGUgbmVnYXRpdmUgY29lZmZpY2llbnQg
ZGlyZWN0bHksIHNvIHRoaXMKPiBpbXBsZW1lbnRhdGlvbiBkb2VzIG5vdCBuZWVkIGEgc2VwYXJh
dGUgY3VyLmsgJiBCSVQoMTUpIGJyYW5jaC4gRm9yCj4gZXhhbXBsZSwgdGhlIG1haW5saW5lIFJL
MzU3NiByYXRlIHRhYmxlIGFscmVhZHkgY29udGFpbnM6Cj4KPiAgICAgICAgICBSSzM1ODhfUExM
X1JBVEUoOTU1NTIwMDAwLCAzLCA0NzgsIDIsIC0xNTczMCksCj4gICAgICAgICAgUkszNTg4X1BM
TF9SQVRFKDc4NTU2MDAwMCwgMywgMzkzLCAyLCAtMTQ0MTkpLAo+Cj4gVGhlc2UgYXJlIGV4YWN0
bHkgdGhlIHNhbWUgZW50cmllcyBhcyBpbiB0aGlzIFJLMzU3MiBwYXRjaCwgaW5jbHVkaW5nCj4g
cCwgbSBhbmQgcy4gTWFpbmxpbmUgUkszNTg4IHVzZXMgdGhlIHNhbWUgZW50cmllcyBhcyB3ZWxs
LiBTaW5jZSBSSzM1NzIKPiB1c2VzIHRoaXMgc2hhcmVkIHVwc3RyZWFtIFBMTCBpbXBsZW1lbnRh
dGlvbiwgSSB3aWxsIGZvbGxvdyB0aGUKPiBtYWlubGluZSBSSzM1NzYgY29udmVudGlvbiBmb3Ig
aXRzIHJhdGUgdGFibGUuCj4KPiBXcml0aW5nIDUyNTgxIGRpcmVjdGx5IGludG8gYW4gczE2IGlu
aXRpYWxpemVyIHdvdWxkIHJlcXVpcmUgYW4KPiBvdXQtb2YtcmFuZ2UgaW1wbGljaXQgY29udmVy
c2lvbjsgYSByZWR1Y2VkIGNvbXBpbGVyIHRlc3QgcmVwcm9kdWNlcwo+IENsYW5nJ3MgY29uc3Rh
bnQtY29udmVyc2lvbiBkaWFnbm9zdGljLiBBbiBleHBsaWNpdCBjYXN0IHN1Y2ggYXMKPiAoczE2
KTUyNTgxIHdvdWxkIHByb2R1Y2UgdGhlIHNhbWUgc2lnbmVkIGNvZWZmaWNpZW50LCBidXQgd291
bGQgYWRkIGEKPiBjb252ZXJzaW9uIHRoYXQgdGhlIGV4aXN0aW5nIG1haW5saW5lIHRhYmxlcyBh
dm9pZC4gVXNpbmcgLTEyOTU1Cj4gZGlyZWN0bHkgbWFrZXMgdGhlIHZhbHVlIHVzZWQgaW4gdGhl
IHJhdGUgY2FsY3VsYXRpb24gY2xlYXIgYW5kIHN0YXlzCj4gY29uc2lzdGVudCB3aXRoIFJLMzU3
Ni4KPgo+IFRoZSByZWdpc3RlciBlbmNvZGluZyBpcyBwcmVzZXJ2ZWQ6IHRoZSB3cml0ZSBwYXRo
IHBhc3NlcyBrIHRocm91Z2gKPiBISVdPUkRfVVBEQVRFKCkgd2l0aCBhIDB4ZmZmZiBtYXNrLCBz
byAtMTI5NTUgc3RpbGwgd3JpdGVzIDB4Y2Q2NSBpbnRvCj4gdGhlIGNvZWZmaWNpZW50IGZpZWxk
LiBUaGUgZml2ZSBpbml0aWFsaXplciBjaGFuZ2VzIGZyb20gdjIgdG8gdjMgb25seQo+IG1ha2Ug
dGhlIHNpZ25lZCB2YWx1ZXMgZXhwbGljaXQ7IHRoZXkgZG8gbm90IGNoYW5nZSBwLCBtLCBzIG9y
IHRoZQo+IDE2LWJpdCBjb2VmZmljaWVudCBlbmNvZGluZ3MuIEluIHBhcnRpY3VsYXIsIG5vIGZ1
cnRoZXIgYWRqdXN0bWVudCBvZgo+IG0gaXMgbmVlZGVkIGZvciB0aGVzZSByZXByZXNlbnRhdGlv
biBjaGFuZ2VzLgo+Cj4gSSB3aWxsIHRoZXJlZm9yZSByZXRhaW4gdGhlIHNpZ25lZCBjb2VmZmlj
aWVudHMsIGZvbGxvd2luZyBtYWlubGluZQo+IFJLMzU3Ni4KT0sKPgo+IEJlc3QgcmVnYXJkcywK
PiBDdW5oYW8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

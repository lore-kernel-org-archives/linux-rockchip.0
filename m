Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DC9606A32F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 17:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YusLBwwL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=iY0cVogF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gkwG+TxSwKPesJ4zX+zhavc01Kp0gM+9Xfo4FMB++Sk=; b=YusLBwwLUWtaUoXtba1T6NP0Xf
	3s6CI/NO83xAQAPo2gGClddmKHQpVMcOrG8bUS9cnxu52HuzWI1DsjFB6BJ2/6kVFlLNHFBP+GrCV
	/7kqNZXZ2pXMWf8Fyw91gSvM4V4fhoUpG36Y2++YMfkPlUSmFNbjT1prGjDToW6Q/suZ30Ukf4cLa
	J6qvWVOy7GJZY/+baKmw5OTfYRsYQ7wbCb9qkoszhNssx7n/tQM4KpU2dk4tqz4W6rDeqoAbS1wEJ
	Apew8gVOr0YCD4r9TTCxkOsvTD9aNT0UOnsDEskfzhILSbYCDTC2lwg2iOttya65F5buFepALSFdD
	GNGuHjsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTN62-00000006bKM-3AK2;
	Tue, 17 Nov 2026 17:35:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTN5T-00000006at1-0Wfq;
	Tue, 17 Nov 2026 17:35:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DBDDE45F68;
	Tue, 17 Nov 2026 17:35:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D83F1F000D1;
	Tue, 17 Nov 2026 17:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794936918;
	bh=xdxs12743NDoNJxbnDGKAhLTeXv90Ow3q001NJmFiRo=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=iY0cVogFK/z7QGVoaMgG1ymZmRQqjTfWjlHGqoCcByQxgAvsVAZ7t5hqehI6aIttK
	 HN6yNEXIeFfeP7d31+Ez6PRir/PwO1eGDDZfZ4/yLTuk7PbZyQK5GwT3i0RLvefNHQ
	 NYoj68Q9/p/Wihb7mjz0Z+A+XLBt7p6ITbtSQQajvohhh1GTprobAJLtVMlYTD7LkJ
	 BT5Ryo8OSIOX+KIds3Hxljd8OMS7SFHIRmcJgoVRIj5+5yRh2cKtJpha2PJXeSAbXw
	 JKX2F6ns4aVnI6NuVe0s7IX4lolK29oe5rxex/zIVt2XO0WExtllhcpKiB2oXC2A7P
	 944yyN522tkfQ==
Subject: Re: [PATCH 6/9] soc: rockchip: grf: Restore the RK3588 PHP StreamIDs
 after system suspend
From: netdev-bot+sashiko@kernel.org
To: aiyengar1990@gmail.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@kernel.org,
 kuba@kernel.org, pabeni@redhat.com, david.wu@rock-chips.com,
 dlemoal@kernel.org, cassel@kernel.org, fancer.lancer@gmail.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-ide@vger.kernel.org, praan@google.com,
 will@kernel.org, robin.murphy@arm.com, iommu@lists.linux.dev,
 shawn.lin@rock-chips.com, sebastian.reichel@collabora.com
Date: Tue, 17 Nov 2026 17:35:16 +0000
Message-ID: <179493691692.3136.5141582035448551878@kernel.org>
In-Reply-To: <20261113-mmu600-php-v1-6-231196049a3b@gmail.com>
References: <20261113-mmu600-php-v1-6-231196049a3b@gmail.com>
X-sashiko-severity: Low
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIGNvbmNlcm46IHRoZSBjb21taXQg
bWVzc2FnZSBzYXlzIHRoYXQgJ1RoZSBTTU1VIGFib3J0cyBhCiAgbWFzdGVyIHdob3NlIFN0cmVh
bUlEIHdhcyBsb3N0JywgYnV0IGF0IHRoaXMgY29tbWl0IG1tdTYwMF9waHAgaXPigKYKCi0tCgpz
b2M6IHJvY2tjaGlwOiBncmY6IFJlc3RvcmUgdGhlIFJLMzU4OCBQSFAgU3RyZWFtSURzIGFmdGVy
IHN5c3RlbSBzdXNwZW5kCgpUaGlzIGNvbW1pdCBrZWVwcyB0aGUgUkszNTg4IFBIUCBHUkYgU3Ry
ZWFtSUQgdGFibGUgYWZ0ZXIgaW5pdC4gSXQgYWxzbwpyZWdpc3RlcnMgYSBzeXNjb3JlIHJlc3Vt
ZSBvcCB0aGF0IHJld3JpdGVzIGFueSBTdHJlYW1JRHMgbG9zdCB3aGVuIFBEX1BIUAppcyBwb3dl
cmVkIG9mZiBkdXJpbmcgc3lzdGVtIHN1c3BlbmQuIFRoZSBvcCBpcyBvbmx5IHJlZ2lzdGVyZWQg
d2hlbiB0aGUKR1JGIG5vZGUgaGFzIGEgY2xvY2tzIHByb3BlcnR5LgoKPiBUaGUgUEhQIEdSRiBp
cyBpbiBQRF9QSFAsIHdoaWNoIGZpcm13YXJlIG1heSBwb3dlciBvZmYgaW4gc3lzdGVtCj4gc3Vz
cGVuZC4gVGhlIFNNTVUgYWJvcnRzIGEgbWFzdGVyIHdob3NlIFN0cmVhbUlEIHdhcyBsb3N0LgoK
W1NldmVyaXR5OiBMb3ddCklzIHRoaXMgZGVzY3JpcHRpb24gYWNjdXJhdGUgZm9yIHRoZSB0cmVl
IGF0IHRoaXMgY29tbWl0PwoKSW4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
YmFzZS5kdHNpIHRoZSBtbXU2MDBfcGhwIG5vZGUgaXMKc3RpbGwgZGlzYWJsZWQgYXQgdGhpcyBw
b2ludDoKCiAgICBtbXU2MDBfcGhwOiAuLi4KICAgICAgICAuLi4KICAgICAgICBzdGF0dXMgPSAi
ZGlzYWJsZWQiOwoKTm9uZSBvZiB1c2Izb3RnMiwgZ21hYzAvMSBvciBzYXRhMC0yIHBvaW50IGF0
IGl0IHdpdGggYW4gaW9tbXVzIHByb3BlcnR5CnlldC4gVGhhdCBtZWFucyB0aGUgU01NVSBhYm9y
dCBkZXNjcmliZWQgYWJvdmUgY2FuJ3QgaGFwcGVuIGluLXRyZWUgd2l0aAp0aGlzIHBhdGNoIGFs
b25lLCBhbmQgcm9ja2NoaXBfZ3JmX3Jlc3VtZSgpIGhhcyBubyB2aXNpYmxlIGVmZmVjdCB5ZXQu
CgpUd28gbGF0ZXIgcGF0Y2hlcyBpbiB0aGUgc2VyaWVzIGZpeCB0aGF0OgoKICAiYXJtNjQ6IGR0
czogcm9ja2NoaXA6IEF0dGFjaCB0aGUgbWFzdGVycyBvZiB0aGUgUkszNTg4IFBIUCBTTU1VIgog
IGFkZHMgaW9tbXVzID0gPCZtbXU2MDBfcGhwIE4+IHRvIHRoZSBzaXggbWFzdGVycy4KCiAgImFy
bTY0OiBkdHM6IHJvY2tjaGlwOiBFbmFibGUgdGhlIFJLMzU4OCBQSFAgU01NVSIgcmVtb3ZlcyB0
aGUKICBzdGF0dXMgPSAiZGlzYWJsZWQiIGxpbmUuCgpTbyBieSB0aGUgZW5kIG9mIHRoZSBzZXJp
ZXMgdGhlIHJlc3RvcmUgZG9lcyB0YWtlIGVmZmVjdC4KCkNvdWxkIHRoZSBjb21taXQgbWVzc2Fn
ZSBzYXkgdGhhdCB0aGlzIHBhdGNoIHByZXBhcmVzIGZvciB0aG9zZSBsYXRlciBEVFMKY2hhbmdl
cz8gT3IgY291bGQgdGhlIHBhdGNoIGJlIG1vdmVkIGFmdGVyIHRoZW0gaW4gdGhlIHNlcmllcz8K
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL25ldGRldi1haS5ib3RzLmxpbnV4LmRl
di9zYXNoaWtvLyMvcGF0Y2hzZXQvMjAyNjExMTMtbW11NjAwLXBocC12MS0wLTIzMTE5NjA0OWEz
YiU0MGdtYWlsLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F4029606A331
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 10:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NHytisb7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=Jze5PRda
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/j7FdZ5bHZs93LdU4beTRPdlSlC6GmAQnAHvjC0+zVk=; b=NHytisb7l9Lj2k3bt0mfWo0JK1
	g0lXohVlrvcm+87gr62z6Z4svOwN6etJvoQXFo3NSFUlRqQIs75OpcesIsZh7yRsBb1RNeBV3Z0nx
	obQ+SrciVE+L1CLZpLvRXLDScFJ5Z+eYkZImr0OQvslLYWHcMlx12PeKN42WBtow4H6Plb8NwzKvr
	1yRlI/xKWNn5MZ7c901wBJT2igGtulg5x37zIcbMhCa9I5f7t5G/rXHieXaXqNfsPXe06q11ruecc
	cgCS22ZLM7P+E63gLo6SnvDzSdjIGt7c0FcM8GFuA1WzIYW+6/e24bpdFgfYPbx3qB0clBFfYvB5/
	zFY4L+cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLeql-00000004Mfi-1Uhm;
	Tue, 27 Oct 2026 10:56:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLeqi-00000004Mf7-31Pg;
	Tue, 27 Oct 2026 10:56:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=iRDyXe44Y1voxIFFug2VYkvVa9+PxgdNI7cbcINaWFg=; b=Jze5PRdaRk9WLOOmvuXfp6Fv5c
	z/BRwx79xy+Bac7g8xaYFbMgRA4ELz86k5d/AfFqTIsCADA3A2n7jTE1rVlWdtA8LyfiPMNtRztjW
	G89mdyzGt4ka6hPAT9OfTAgv9SQ5F7GVD+6fzH8mVyZ5mmdTU0WnW7hR6nal9n+n4nN6yiCA72bd0
	vB2K+U8dlcvPuTdD6n2V1vTmP0vNMlxw2E30WIlvyFeDb2Ag5vL9n8zR3tsN0RKSSgMfswC5cV25n
	bHbArBhy9RoRocsNbMs4ITAUdGjm3CCNtkGdNgqPa9wiqau3Sasx4Yhx9+OzdVVAhYb9ncqx4nkX0
	OH8DZpKQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>, Stephen Boyd <sboyd@kernel.org>,
 Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Richard Cochran <richardcochran@gmail.com>, Cunhao Lu <1579567540@qq.com>
Cc: "shawn.lin" <shawn.lin@rock-chips.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, netdev <netdev@vger.kernel.org>
Subject: Re: [PATCH v4 2/4] clk: rockchip: Add internal support for 24-bit fractional
 dividers
Date: Tue, 27 Oct 2026 11:56:01 +0100
Message-ID: <6321950.31tnzDBltd@diego>
In-Reply-To: <tencent_AE0E51DA2FACC999E65D6631016044234005@qq.com>
References: <20261027-add-board-ok3572-c-clk-v4-0-d4152b4fedaa@qq.com>
 <f9068153-0d6c-471f-a08b-41cff51ff748@rock-chips.com>
 <tencent_AE0E51DA2FACC999E65D6631016044234005@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_035612_765552_B9CE2AE5 
X-CRM114-Status: GOOD (  13.13  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDI3LiBPa3RvYmVyIDIwMjYsIDExOjQxOjI1IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQ3VuaGFvIEx1Ogo+ID4gSSBndWVzcyB5b3UgYXJlIGRlc2Ny
aWJpbmcgd2hhdCB5b3UgY2hhbmdlZCBhZ2FpbnN0IHRoZQo+ID4gb3JpZ2luYWwgcGF0Y2ggZnJv
bSBFbGFpbmUuIEJ1dCB0aGlzIGlzIG5vdCBob3cgaXQgd29ya3MuCj4gCj4gSSdtIHZlcnkgc29y
cnkgZm9yIHRoZSBtaXN0YWtlLiBBZnRlciBjYXJlZnVsbHkgcmV2aWV3aW5nIHRoZSBndWlkZWxp
bmVzLAo+IEkgdW5kZXJzdGFuZCB0aGF0IG15IG5vdGVzIGFib3V0IGNoYW5nZXMgdG8gRWxhaW5l
J3Mgb3JpZ2luYWwgcGF0Y2ggc2hvdWxkCj4gaGF2ZSBiZWVuIGVuY2xvc2VkIGluIHNxdWFyZSBi
cmFja2V0cyBbXS4gSSB3aWxsIGtlZXAgb25seSB0aGUgc2lnbmlmaWNhbnQKPiBjaGFuZ2VzIGlu
IHRob3NlIG5vdGVzIGFuZCBwbGFjZSB0aGVtIHdpdGhpbiBzcXVhcmUgYnJhY2tldHMuCj4gCj4g
VGhhbmsgeW91IGFnYWluIGZvciBwb2ludGluZyBvdXQgbXkgbWlzdGFrZS4gVGhpcyByZW1pbmRz
IG1lIHRoYXQgSSBzdGlsbAo+IGhhdmUgbXVjaCB0byBsZWFybi4KCmFuZCBhcyBJIHdyb3RlIGlu
IG15IHJlcGx5IHRvIEtyenlzenRvZiBzbGlnaHRseSwgbGVzcyB2ZXJib3NpdHkgaXMKdXN1YWxs
eSBiZXR0ZXIuIEkuZS4gYSBzaG9ydCBkZXNjcmlwdGlvbiB3aGF0IHlvdSBkaWQsIG5vdCBhIGRl
dGFpbGVkCmxpc3QgaXMgdXN1YWxseSBuaWNlciwgaS5lLiBzb21ldGhpbmcgbGlrZQoKKysrKysr
KysrKysrKwpTaWduZWQtb2ZmLWJ5OiBFbGFpbmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBz
LmNvbT4KW2FkYXB0ZWQgdG8gbWFpbmxpbmUgcm9ja2NoaXAgY2xvY2sgYW5kIHJlc2V0IGhhbmRs
aW5nICh4aW4yNG0gaW5wdXQsCiAgZG9uJ3QgaW50cm9kdWNlIENMS19OUl9DTEtTLCBldGMpIF0K
U2lnbmVkLW9mZi1ieTogQ3VuaGFvIEx1IDwxNTc5NTY3NTQwQHFxLmNvbT4KKysrKysrKysrKysr
KwoKQW5kIGFzIGZvciBzcGVlZCwgbWF5YmUgZ2l2ZSBpdCBhIGJpdCBtb3JlIHRpbWUgYmV0d2Vl
biBpdGVyYXRpb25zLgpBIHZlcnNpb24gcGVyIGRheSBpcyBhIGJpdCBmYXN0LCBhcyBpdCBkb2Vz
bid0IGdpdmUgcGVvcGxlIHRpbWUgdG8gYWN0dWFsbHkKcmVzcG9uZC4KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

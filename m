Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B85606A330
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 19:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JZSx65kU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=p5opZ+bY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mPke2Ns+Jkqgbmv63doZhPNsQ+wqxY+uvSDYM50/L4g=; b=JZSx65kUhRmpeOT0Ono6IXojmi
	INc8O5jhTonmy2W8/yIgXEa1cl14xvQbtMW4l+D2I3kKtohAfYfmPviXIvQ1K64MAUTUT8W7CXCGt
	s8J56P+Rwx+K2iskOGhnG/wZqXmUjF9Q8hw2tjVxLccSqTj3SGzaS1/hqDMFzaYa9Sd0PR9B4cmwF
	pTaSy05OA83bJvn85Nx8/oEbdRv+GAjq1d+okjfajoEfCcXEO1yLjjJpMdhoPvHY+cHYbjlGH1IQs
	K1V/W+mTECoDC2MS2TmQ1IzZUjCKxjHee+LhcPkr4R+YoRi/tUc82EEwrXcD7AaXggyG2jSIkKR0E
	G1TIHJmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRx9P-0000000EGTd-1kew;
	Fri, 13 Nov 2026 19:41:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRx9K-0000000EGRP-1Cdi
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 19:41:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=FUUDjMJLqzdhhhgrW+6M8TUvldUvipUDpwAdIp+gxyQ=; b=p5opZ+bYE2FpS3kBBayO8TmI+n
	mdBvGrVVV+LmpdN6ZrZgxrr1LIrcrGXywyYR4/1d2bjvungmtN8+YAz/hlzlfO3U128cyiPAfssu4
	sts5sNXJO/QFIagtWeSN2S2Rl1V3smpzmBAPjckUiM/VYbZ01Kw4iBDF94f8o40EJVwxUEF6THFFV
	lzsMWF9FWczngvI+h4ti7+dtQlmUJ63Lfm0OArDc+ApSpk9mN9HG3wbZHMFMVCA3FzOFhQ5JaJKWj
	6gxGkDsKavjemFxnCR2r5mBmEKjYN87R+launD9ICn6pPjp2YoNoVjfQ6UKtCSLgXYL/WVw0zZXjJ
	+dxVQgaw==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Alexis Bauvin <alexis@bauvin.com>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
 Alexis Bauvin <alexis@bauvin.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: fix training on devices with internal
 phases
Date: Fri, 13 Nov 2026 20:41:23 +0100
Message-ID: <1utgVv6mTtiR495uahjqKw@sntech.de>
In-Reply-To: <20261110200050.2529828-1-alexis@bauvin.com>
References: <20261110200050.2529828-1-alexis@bauvin.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_114126_346839_A7001E30 
X-CRM114-Status: GOOD (  12.64  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDEwLiBOb3ZlbWJlciAyMDI2LCAyMTowMDo0NiBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIEFsZXhpcyBCYXV2aW46Cj4gQ29udHJvbGxlcnMgd2l0aCBp
bnRlcm5hbCBwaGFzZXMgZG9uJ3QgbmVlZCB0aGUgImNpdS1kcml2ZSIgYW5kCj4gImNpdS1zYW1w
bGUiIGNsb2NrcywgYW5kIHJlY2VudCB2ZXJzaW9ucyBkb24ndCBoYXZlIHRoZW0gYXQgYWxsLiBU
dW5pbmcKPiBleHBlY3RzIHRob3NlIGNsb2NrcyB0byBiZSBmaWxsZWQgd2hlbiBpdCBpcyBub3Qg
bmVjZXNzYXJ5LCBhbmQgZmFpbHMgb24KPiBkZXZpY2VzIHdoaWNoIGRvbid0IG5lZWQgdGhlbS4K
PiAKPiBGaXhlcyBlTU1DIHRyYWluaW5nIG9uIHN1Y2ggZGV2aWNlIGJ5IG5vdCByZXF1aXJpbmcg
dGhlIGNsb2NrcyB3aGVuIHRoZXkKPiBhcmUgaW50ZXJuYWwgdG8gdGhlIGNvbnRyb2xsZXIsIGFz
IHRoZXkgYXJlIG5vdCBwb3B1bGF0ZWQgYW55bW9yZSBvbgo+IGRldmljZXMgdXNpbmcgdGhlIFJL
MzU3NiBjb21wYXRpYmxlIHN0cmluZ3MuCj4gCj4gVGhpcyBoYXMgYmVlbiB0ZXN0ZWQgb24gYW4g
UkszNTA2IG9uIHRoZSA2LjEyIGJyYW5jaCBmcm9tCj4gbGludXgtcm9ja2NoaXAuCj4gCj4gRml4
ZXM6IDczYWJiMWYxNmUgKCJtbWM6IGR3X21tYy1yb2NrY2hpcDogQWRkIHN1cHBvcnQgZm9yIHJr
MzU3NiBTb0NzIikKPiBTaWduZWQtb2ZmLWJ5OiBBbGV4aXMgQmF1dmluIDxhbGV4aXNAYmF1dmlu
LmNvbT4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

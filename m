Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C858360A3823
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 22:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MPYec/ZD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ku09BI/e
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cZS2F2Dmpg7erjQfvyA5I/Yy5oSvDo5RaGshzbt7jb0=; b=MPYec/ZDq8k+r4g7DdmPch3NTW
	mDphHcYf+Idjz/+NK2v6lm7abxFNMY5ZDKyMTvxB7SwJEa1k6GQGsQLC7bTSshFzGX2i/qbRR8rtg
	Bbou8L6D6GnuulnTE2qocjlpiKvgIDSSJRgxHuFVCmPZ8X98jnNNJG6sHTJE2GVAmuRCra2JjfuBJ
	UOp4g4WTx2moSV9TOv10OwUpoauci4ctQjLU6P6S5DhYDuwMDlVTxBM20p7OT7+HQHP4aH/qVS3Y3
	nKE7LPpdV8bxEQtl3T84F9KQNLo9GaxsGnNkhRZgMQ0DJkllPa/j7T6HOZXELzmfWnhTvVd7lyTVk
	WlsTrS3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdL5-0000000BALx-32So;
	Thu, 12 Nov 2026 22:32:15 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdKy-0000000BAHC-0Gxw;
	Thu, 12 Nov 2026 22:32:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B6C604602D;
	Thu, 12 Nov 2026 22:32:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CBB21F000C5;
	Thu, 12 Nov 2026 22:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794522727;
	bh=FnKwjWoPH+aBZ+Vqr2z+nXlMKyFxL9fotAh/0RuRiL8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=ku09BI/eyf5/4gS0ojO5Fg6F7AfCgiDpTOgR9wpaDZfwcZbV7Wg5OEDk0af+tAutO
	 Ui7w7ozndnXJ0fgWidzs46IT67MyD57dmujEKGGhqzclAcvxd3iRXPV+ABdBBa/Dgp
	 CRd2qfic1QHiVB9seLYQpFACMFAmZRhHBjuLWf3JIU8fIvXCDiR/HUnrURtfUHAVaK
	 M8IY9O1gXEVaQoTDPFduEGPATl+gp6y1s+mtu8r+Kyi5vmPVLL1BHCn81yxF42emUQ
	 iqAjcNR7iUX2Nfn9yNrJfAj0sdPRYUAGSMsOyw/2VUj6c4ZOp+Blo3vRKGeSKePFYy
	 3SHEQbNlwMq8A==
Subject: Re: [PATCH net v9 02/10] can: rockchip_canfd: serialize TX state and
 command writes
From: netdev-bot+sashiko@kernel.org
To: 1579567540@qq.com
Cc: mkl@pengutronix.de, kernel@pengutronix.de, mailhol@kernel.org,
 heiko@sntech.de, socketcan@hartkopp.net, davem@davemloft.net,
 edumazet@kernel.org, kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 corbet@lwn.net, skhan@linuxfoundation.org, rdunlap@infradead.org,
 wg@grandegger.com, linux-can@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 stable@vger.kernel.org
Date: Thu, 12 Nov 2026 22:32:06 +0000
Message-ID: <179452272605.488853.7766222371781076513@kernel.org>
In-Reply-To: <20261111-rockchip-canfd-restart-close-v9-2-6643f3825ba3@qq.com>
References: <20261111-rockchip-canfd-restart-close-v9-2-6643f3825ba3@qq.com>
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
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIGNvbW1pdCBtZXNzYWdlIGNhcnJp
ZXMgQ2M6IHN0YWJsZSBhbmQgbWFrZXMgdGhlIGJhY2twb3J0CiAgZGVwZW5kIG9uIHRocmVlIG90
aGVyIGZpeGVzLCBidXQgb25seSBkZXNjcmliZXMgdGhlbSBsb29zZWx5IGFuZCBuZXZlcuKApgoK
LS0KCmNhbjogcm9ja2NoaXBfY2FuZmQ6IHNlcmlhbGl6ZSBUWCBzdGF0ZSBhbmQgY29tbWFuZCB3
cml0ZXMKClRoaXMgcGF0Y2ggYWRkcyBhIHR4X2xvY2sgc3BpbmxvY2sgdG8gc3RydWN0IHJrY2Fu
ZmRfcHJpdi4gVGhlIGxvY2sKc2VyaWFsaXplcyBya2NhbmZkX3N0YXJ0X3htaXQoKSBhZ2FpbnN0
IFJYLXNpZGUgZWNobyBjb21wbGV0aW9uIGFuZCB0aGUKZXJyYXR1bSAxMiByZXRyeSBwYXRoLiBJ
dCBjb3ZlcnMgdGhlIFRYIGZyZWUtc3BhY2UgY2hlY2tzLCBlY2hvIGhhbmRsaW5nLApoZWFkL3Rh
aWwgdXBkYXRlcywgQlFMIGFjY291bnRpbmcgYW5kIHRoZSBNT0RFL0NNRC9NT0RFIGNvbW1hbmQg
c2VxdWVuY2UuClRoZSByZXRhaW5lZCBvcmlnaW5hbCBza2IgaXMgbm93IHJlbGVhc2VkIGFmdGVy
IHRoZSBsb2NrIGlzIGRyb3BwZWQuCgo+IFJlbGVhc2UgdGhlIG9yaWdpbmFsIHNrYiByZXRhaW5l
ZCBieSB0aGUgcHJlY2VkaW5nIGVjaG8tZmFpbHVyZSBmaXggYWZ0ZXIKPiB1bmxvY2tpbmcgYW5k
IHJlc3RvcmluZyBJUlFzLCBzbyBpdHMgc29ja2V0IGRlc3RydWN0b3IgY2Fubm90IHJ1biB1bmRl
cgo+IHR4X2xvY2suIEJhY2twb3J0cyBuZWVkIHRoYXQgcmV0YWluZWQtcmVmZXJlbmNlIGhhbmRs
aW5nIGFuZCB0aGUgQ0FOIHNrYgo+IG93bmVyc2hpcCBmaXgsIG9yIGVxdWl2YWxlbnQgaGFuZGxp
bmcuCgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IHNpbmNlIHRoZSBwYXRj
aCBjYXJyaWVzIENjOiBzdGFibGUgYW5kIGRlcGVuZHMgb24Kb3RoZXIgZml4ZXMgZm9yIGJhY2tw
b3J0cywgY291bGQgdGhvc2UgZml4ZXMgYmUgbmFtZWQgYnkgc3ViamVjdCAoYW5kIGJ5Cmhhc2gg
d2hlcmUgdGhlIGhhc2ggaXMgc3RhYmxlKT8KClRoZSAicHJlY2VkaW5nIGVjaG8tZmFpbHVyZSBm
aXgiIGxvb2tzIGxpa2UgdGhlIHByZXZpb3VzIHBhdGNoIGluIHRoaXMKc2VyaWVzOgoKICBjYW46
IHJvY2tjaGlwX2NhbmZkOiBwcmV2ZW50IFRYIHN0YWxsIG9uIGVjaG8gc2tiIGZhaWx1cmUKClRo
ZSAiQ0FOIHNrYiBvd25lcnNoaXAgZml4IiBsb29rcyBsaWtlOgoKICBiNGViY2JiZjY2YmEgKCJj
YW46IGRldjogY2FuX3B1dF9lY2hvX3NrYigpOiBmcmVlIHNrYiBvbiBpbnZhbGlkIGVjaG8gaW5k
ZXgiKQoKVGhlIHNrYl9nZXQoKSBwYXNzZWQgdG8gY2FuX3B1dF9lY2hvX3NrYigpIGluIHJrY2Fu
ZmRfc3RhcnRfeG1pdCgpLAp0b2dldGhlciB3aXRoIHRoZSBkZXZfY29uc3VtZV9za2JfYW55KCkg
LyBkZXZfa2ZyZWVfc2tiX2FueSgpIGNhbGxzIGFmdGVyCnRoZSB1bmxvY2ssIG9ubHkgYmFsYW5j
ZXMgaWYgY2FuX3B1dF9lY2hvX3NrYigpIGFsc28gZnJlZXMgdGhlIHBhc3NlZApyZWZlcmVuY2Ug
b24gdGhlIC1FSU5WQUwgcGF0aC4gVGhhdCBtYWtlcyBiNGViY2JiZjY2YmEgYSBoYXJkCnByZXJl
cXVpc2l0ZSBmb3IgYW55IGJhY2twb3J0LgoKPiBUaGlzIGxvY2sgY292ZXJzIHJ1bm5pbmcgVFgs
IGNvbXBsZXRpb24gYW5kIHJldHJ5LiBTeW5jaHJvbml6YXRpb24gd2l0aAo+IGJ1cy1vZmYgYW5k
IGNvbnRyb2xsZXIgcmVpbml0aWFsaXphdGlvbiBpcyBwcm92aWRlZCBieSB0aGUgbGF0ZXIKPiBs
aWZlY3ljbGUgZml4LgoKV2hpY2ggcGF0Y2ggaXMgInRoZSBsYXRlciBsaWZlY3ljbGUgZml4Ij8g
SXQgYXBwZWFycyB0byBiZSAiY2FuOgpyb2NrY2hpcF9jYW5mZDogc2VyaWFsaXplIFRYIHdpdGgg
YnVzLW9mZiBhbmQgcmVzdGFydCIgbGF0ZXIgaW4gdGhpcwpzZXJpZXMuCgpBdCB0aGlzIGNvbW1p
dCwgcmtjYW5mZF9jaGlwX2ZpZm9fc2V0dXAoKSwgcmVhY2hlZCB2aWEKcmtjYW5mZF9zZXRfbW9k
ZShDQU5fTU9ERV9TVEFSVCkgLT4gcmtjYW5mZF9jaGlwX3N0YXJ0KCksIHN0aWxsIHJlc2V0cwp0
aGUgVFggcmluZyBhbmQgQlFMIHN0YXRlIHdpdGhvdXQgdHhfbG9jazoKCmRyaXZlcnMvbmV0L2Nh
bi9yb2NrY2hpcC9yb2NrY2hpcF9jYW5mZC1jb3JlLmM6cmtjYW5mZF9jaGlwX2ZpZm9fc2V0dXAo
KSB7CiAgICAuLi4KCVdSSVRFX09OQ0UocHJpdi0+dHhfaGVhZCwgMCk7CglXUklURV9PTkNFKHBy
aXYtPnR4X3RhaWwsIDApOwoJbmV0ZGV2X3Jlc2V0X3F1ZXVlKHByaXYtPm5kZXYpOwp9CgpUaGUg
Y2hpcCBzdG9wIC8gY2FuX2J1c19vZmYoKSBoYW5kbGluZyBpbiBya2NhbmZkX2hhbmRsZV9zdGF0
ZV9lcnJvcl9pbnQoKQphbHNvIHJ1bnMgb3V0c2lkZSB0aGUgbG9jay4KCkNvdWxkIHRoZSBmb2xs
b3ctdXAgYmUgbmFtZWQgZXhwbGljaXRseSwgc28gYSBzdGFibGUgYmFja3BvcnQgb2YgdGhpcwpw
YXRjaCBhbHNvIHBpY2tzIHVwIHRoZSBjaGFuZ2UgdGhhdCBjbG9zZXMgdGhhdCB3aW5kb3c/Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYv
c2FzaGlrby8jL3BhdGNoc2V0LzIwMjYxMTExLXJvY2tjaGlwLWNhbmZkLXJlc3RhcnQtY2xvc2Ut
djktMC02NjQzZjM4MjViYTMlNDBxcS5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

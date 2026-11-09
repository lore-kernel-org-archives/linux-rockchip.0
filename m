Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C21F606A334
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 14:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Gsv+6AUk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=eLkNmxdq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uS4W6tULBlZEJapsKlCnX44iXRKrLV+oUDZnyxxNs94=; b=Gsv+6AUkVI1e0y42TR3qHCv+wy
	utl1KWXvJlg1tqeeSKF7Llj/EajOWSE3tnj6UirX8dbTOF8ZzcfN1BX/hus5TUxNpxecGDd4FUg2z
	1QlkCOkq/4vtxKcBqf2WImNNHt1IGk1PTwzmzDpNNHlKQlnOvYCpWwHSZpLSLNNiqDZVbh7OwKjJN
	6G9tGGPnptu8wGDJyLzVdfb6BTOjJqzRfwTDZYpKe8jwgUvK0u6GF+6iyu07AxVrm1Sn/Xdt0H9f3
	3FfVVe2PX/Ff8lgIcQE7y7hQgF2wNiew10d14LBQ4n2h4Aobzlp2ap2uMfR0SQet0r4pxPhNyj08Y
	1Jl23+xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQc3-00000000y5q-1i8a;
	Mon, 09 Nov 2026 14:44:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQc1-00000000y4z-25t3;
	Mon, 09 Nov 2026 14:44:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0FE05438B1;
	Mon,  9 Nov 2026 14:44:45 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794235484;
	b=cVTSP+B6qvFTuEX+LPOkwCD/oWaJRE/hVTwT5/aEf939IiLoirpLEICdy0V4juPT8mN9
	 lmshGPrxZTZY01G3Fx+YangVw0+V8Izc8/izb3vM/iiWT1nTJSL3fXwqhLS0vdNpwRqE+
	 a9S2OEDBPURrFMspFSWXJLd6PDEgIzkaQ1PTSpHrotdLNmKGUnbxzDxd095P3j0sCtCkf
	 dUF8hGwFPWl0ylTG9bP6UbexKs/dNJlruSvi6n+sswkYhJZaKKIgTkg2DPaHdaDOgmLMp
	 Vnuw25xKb4S/jgczdcTkC1RtHKC+n93kNVuDOhVFkGHJeQN28HYLX83uDesImJKxXgQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794235484;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=AKdT6PBhwwgO3uVwYjRcHd7Do76RgrQ21RM3FwKVSII=;
	b=yco4Qqyu7UsNJJ+DHKquk7IkMxpSK0JOXpMkB9n8QKhHDUjJQJZtvjiQMB30CIlM0pR7
	 CFi9W1haAgVDVoC9qloyqkztl+QUYHWsrv8qd9cV2xys1rsJGhwyHz8kxb/1ITY/k62MC
	 HjwTOJw687c9D8KW+3pDYyIcyfPZC3QxeXn9AWbDj5dUS3DjwZ2OX31ecwwc40xRjfYb+
	 befvhXkYoumd3xde4meRzxF6QxUdEoJ4F28clFqAHlhLAbtImcIZx+Y/B35JDmdrW5mII
	 cmtZcoMZhYwJAnwhix4hRJCqUDBeykZ/Pe+9R2UI9JJ9pu9tWAgEhmQfcMqPYCCO+dA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id D89C71F0089F;
	Mon,  9 Nov 2026 14:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794235484;
	bh=AKdT6PBhwwgO3uVwYjRcHd7Do76RgrQ21RM3FwKVSII=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=eLkNmxdqajHiQvMguKF+V5/x3eoq8mklbeBk9imxmRJLChaMKdqTIt32c+ttnT+Va
	 2unB2DFgkO/H6JI+WSQAR9Px1L6FeYH48G1SvdtzSJCWwWwbYL2gLHPJz3m8/s/TKb
	 cInu4xVJofbyyNdU9yCHbq/PTdg5Qjo0csKjsawPtsMcQ20Zw9SFV4tV5tSGfFzhQQ
	 UZJqu2k8hgG/AyBrpFVePOsQxePhHNg6DjHz37z0TLZq5lFVI1t/0e7SE2rcUaMlEN
	 WboeZt+F+UXQ8sDBYr9KQpx8uZE87Gpc3apg5Fb0YXNhw9jM/vv8A+BMdfZPiFTo2M
	 c8aszJfqrntUg==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 49363484FA;
	Mon,  9 Nov 2026 14:44:43 +0000 (UTC)
From: =?utf-8?q?Kry=C5=A1tof_=C4=8Cern=C3=BD_via_B4_Relay?= <devnull+cleverline1mc.gmail.com@kernel.org>
Date: Mon, 09 Nov 2026 15:40:59 +0100
Subject: [PATCH 1/2] serial: 8250: Add RX trigger levels for U6_16550A
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-8250-select-u6-64bit-v1-1-04bc8332fa34@gmail.com>
References: <20261109-8250-select-u6-64bit-v1-0-04bc8332fa34@gmail.com>
In-Reply-To: <20261109-8250-select-u6-64bit-v1-0-04bc8332fa34@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 =?utf-8?q?Kry=C5=A1tof_=C4=8Cern=C3=BD?= <cleverline1mc@gmail.com>, 
 Miroslav Ondra <ondra@faster.cz>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794235482; l=1531;
 i=cleverline1mc@gmail.com; s=20241112; h=from:subject:message-id;
 bh=E2kYgvRVI0V5zzIOIvpSYf52Ap3eD6IiSUx3X0nJA5k=;
 b=jsgvGiHnVICw6dgfxc/096xFpMKcmxhqMsvH9BwAP3EVWtbpO5GUy+crvHVGKALOOIYISpI9w
 hq3zVeDbMF4CkXIGBTXJcdjmPkBQtjxz4/02QofLJS/6QYbDfkcwUuJ
X-Developer-Key: i=cleverline1mc@gmail.com; a=ed25519;
 pk=EJoEbw03UiRORQuCiEyNA8gH1Q6fIpEWnn/MyaWOWX0=
X-Endpoint-Received: by B4 Relay for cleverline1mc@gmail.com/20241112 with
 auth_id=275
X-Original-From: =?utf-8?q?Kry=C5=A1tof_=C4=8Cern=C3=BD?= <cleverline1mc@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: cleverline1mc@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

RnJvbTogS3J5xaF0b2YgxIxlcm7DvSA8Y2xldmVybGluZTFtY0BnbWFpbC5jb20+CgpQT1JUX1U2
XzE2NTUwQSBoYXMgYSA2NC1ieXRlIEZJRk8gYnV0IG5vIHJ4dHJpZ19ieXRlcyB0YWJsZSwgc28g
dGhlCnJ4X3RyaWdfYnl0ZXMgc3lzZnMgYXR0cmlidXRlIGlzIG5vdCByZWdpc3RlcmVkIGZvciBw
b3J0cyBvZiB0aGlzIHR5cGUKYW5kIHRoZSBSWCB0cmlnZ2VyIGxldmVsIGNhbm5vdCBiZSByZWFk
IG9yIGNoYW5nZWQgZnJvbSB1c2Vyc3BhY2UuCgpBZGQgYSB0YWJsZSB3aXRoIDEsIDE2LCAzMiBh
bmQgNjIgYnl0ZXMsIGkuZS4gMSBjaGFyYWN0ZXIsIEZJRk8gMS80CmZ1bGwsIEZJRk8gMS8yIGZ1
bGwgYW5kIEZJRk8gMiBsZXNzIHRoYW4gZnVsbC4gVGhlc2UgYXJlIHRoZSBsZXZlbHMgdGhlClN5
bm9wc3lzIERlc2lnbldhcmUgVUFSVCB1c2VzIGZvciBhIDY0LWJ5dGUgRklGTywgYW5kIHRoZXkg
bWF0Y2ggdGhlCmV4aXN0aW5nIFBPUlRfQUxUUl8xNjU1MF9GNjQgdGFibGUuCgpUaGUgZGVmYXVs
dCBGQ1IgdmFsdWUgb2YgdGhlIHR5cGUgaXMgdW5jaGFuZ2VkLCBzbyB0aGUgdHJpZ2dlciBsZXZl
bCBhCnBvcnQgc3RhcnRzIHdpdGggc3RheXMgYXQgMS8yIGZ1bGwuIFRoZSBvbmx5IHZpc2libGUg
Y2hhbmdlIGZvciBwb3J0cwphbHJlYWR5IGRldGVjdGVkIGFzIFU2XzE2NTUwQSBieSBhdXRvY29u
ZmlnIGlzIHRoZSBuZXcgc3lzZnMgYXR0cmlidXRlLgoKVGhpcyBwcmVwYXJlcyBmb3IgODI1MF9k
dyBzZWxlY3RpbmcgUE9SVF9VNl8xNjU1MEEgZm9yIERlc2lnbldhcmUgVUFSVHMKd2l0aCBhIDY0
LWJ5dGUgRklGTy4KCkNvLWRldmVsb3BlZC1ieTogTWlyb3NsYXYgT25kcmEgPG9uZHJhQGZhc3Rl
ci5jej4KU2lnbmVkLW9mZi1ieTogTWlyb3NsYXYgT25kcmEgPG9uZHJhQGZhc3Rlci5jej4KU2ln
bmVkLW9mZi1ieTogS3J5xaF0b2YgxIxlcm7DvSA8Y2xldmVybGluZTFtY0BnbWFpbC5jb20+Ci0t
LQogZHJpdmVycy90dHkvc2VyaWFsLzgyNTAvODI1MF9wb3J0LmMgfCAxICsKIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC84MjUw
LzgyNTBfcG9ydC5jIGIvZHJpdmVycy90dHkvc2VyaWFsLzgyNTAvODI1MF9wb3J0LmMKaW5kZXgg
MzZiMmIwYTJjMDVjLi5hN2FjZWRlNjJmNDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdHR5L3Nlcmlh
bC84MjUwLzgyNTBfcG9ydC5jCisrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC84MjUwLzgyNTBfcG9y
dC5jCkBAIC0xNjMsNiArMTYzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzZXJpYWw4MjUwX2Nv
bmZpZyB1YXJ0X2NvbmZpZ1tdID0gewogCQkuZmlmb19zaXplCT0gNjQsCiAJCS50eF9sb2Fkc3oJ
PSA2NCwKIAkJLmZjcgkJPSBVQVJUX0ZDUl9FTkFCTEVfRklGTyB8IFVBUlRfRkNSX1JfVFJJR18x
MCwKKwkJLnJ4dHJpZ19ieXRlcwk9IHsxLCAxNiwgMzIsIDYyfSwKIAkJLmZsYWdzCQk9IFVBUlRf
Q0FQX0ZJRk8gfCBVQVJUX0NBUF9BRkUsCiAJfSwKIAlbUE9SVF9URUdSQV0gPSB7CgotLSAKMi40
Ny4zCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK

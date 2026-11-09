Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1617606A336
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 14:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=El3MeTDv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=dMBxRQI0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/YL3ZJT9KkUpoOPhzHSGcpcBf3aOu2voVDDPh4QQzRo=; b=El3MeTDvFqy9Abh5YfCOlmNM6q
	vHKeXjlpNP7Y2NbOsJ8oowGEDgSFUS7lAEo6zQOZFp5uIetHDR2PJm4/S8qH+sRgebZZFt7q3y+uP
	gA6jLE7479dlifeIRd0h1g1X4cuPuRyWd1GZqPIOJCBAeAaK4XDi3QHMfTrqII7J8rA9zV6hj5n51
	uS3VDuxAySg8DAY6Y0D1yS36aQ2REhBECYVXH3bqrqhw3AIOaonZ8WnsOLdbFR4DS71xSGta06KmP
	hqkD5ZSZeVrK80huMjqfVr7LCqtkYygKZqzXID8CH9oYexWshcI5ZbfO1WVkCBIEmYubx9a8+Hu4j
	EIyhzdDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQc3-00000000y60-2O0b;
	Mon, 09 Nov 2026 14:44:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQc1-00000000y4x-2hWn;
	Mon, 09 Nov 2026 14:44:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B855F61806;
	Mon,  9 Nov 2026 14:44:44 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794235484;
	b=yhjrbbsh2duDWcroTpZpqxGrJwLlHaQziuooKgtaCJmXPmagxQkrtZWrZwXsVnS60Elw
	 F24aArwEq4T7NgszDPixHJtLl2dE0Ai/cAI5zZR85D4dpOd64EqV4lVjvlVmylP7QZizU
	 5DY/vgpIHGEsPEl0SAxaUeDFr1NRpyvSShs3BOiMZACkcZrqAHN1H7SMRIkaNyA2jKySl
	 g5/76fg498B4erCCQtlIkl4HJ2go/o0urNn6DjiMLMl0JY38/f8wNEL/AnWgYbjdIPWDB
	 YGluDUChBafY5RbQB7pAWv1REA+Qb2EoU0Vn7E4YQMsRE64QIy1iYPvuKq09jl+H2OQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794235484;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=fsb5m8uyyKxFLJlwAnbap8+GD4wIrFORIE3SZs3ZMVo=;
	b=wjemTBBjOS2RyBSz4sgKIfGQ/s5qQotb8JR0ruUdPP9LzPujivfmYu6xKLDJksaGelun
	 y0WPFcS+NAA09CGInd0VHcsYLahd1/hAXHKN3/WOLCMc5G5YvpMBzsGGrYw3hoUPFcx0E
	 3yaJJZEGV6nxwvh9ewx50FfSc6j4+FymGSSjj4w3nFrKk9/sGBOwsdX3oW8TDdFuh0lge
	 f7/AgvyMoJ2CsNb6EezKYXfY9xMGATY/JqIgCONspggSBN/Bi4tap5b9j2NathP/5xcmn
	 WGmvDVql74h6R2PjU91omg+cZ49k1GICdtqoMmFMjgbIXkltSRnA6NsGFXNcwF/e0vw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id D996A1F008A1;
	Mon,  9 Nov 2026 14:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794235484;
	bh=fsb5m8uyyKxFLJlwAnbap8+GD4wIrFORIE3SZs3ZMVo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=dMBxRQI0llMdrBh6hP6xnnUoTgY15KtNT57x6NshNioljgg9bEmJIP9yS98SXkqOT
	 3x1mja5NN4MjYSgIhKLjGb9reHv/1iZ9iUjxJ14m+KVS+e25k8ZflnDgQ1BKPKIlDe
	 ut0Az7UTPUtztQfy+4RqBTcAQiWVAIsJCtgiG93Q3MT2l6vxcHEN9hNVyg9FOpkrSv
	 JYR5sVcuAc/J5JRz3rAGghie4kYxu8qpA+UBZN16ef45IiiofOoq9i3Zov2xRhCZny
	 Qxh6pATLuJq7EyCXZxlAyLM3UWHI+CI5wVtl+FBzpVdMV0xGM3bP4GHMI77UyT5Tv8
	 KHebWqDxFBYag==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 587FD48501;
	Mon,  9 Nov 2026 14:44:43 +0000 (UTC)
From: =?utf-8?q?Kry=C5=A1tof_=C4=8Cern=C3=BD_via_B4_Relay?= <devnull+cleverline1mc.gmail.com@kernel.org>
Date: Mon, 09 Nov 2026 15:41:00 +0100
Subject: [PATCH 2/2] serial: 8250_dw: Select U6_16550A for 64-byte FIFO
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261109-8250-select-u6-64bit-v1-2-04bc8332fa34@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794235482; l=1747;
 i=cleverline1mc@gmail.com; s=20241112; h=from:subject:message-id;
 bh=tbchbKgf4kvxbU+PFwpYUbA6/5DTF0wZIBoRBHeTq0o=;
 b=orLP3TrrB5XbdCVxNkTqhcupcoB3GSd2j6ojGBCGcI5BM8ZlnWV2XkvAZBQ9gF2MXQEi7dB93
 bzVu4JHI50IDYkkU6Rog+KjlWtj92H5Gl/jhz+nmPZdLGYmi7SZsbtx
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

RnJvbTogS3J5xaF0b2YgxIxlcm7DvSA8Y2xldmVybGluZTFtY0BnbWFpbC5jb20+CgpEZXNpZ25X
YXJlIDgyNTAgcG9ydHMgdGhhdCBkZXNjcmliZSB0aGVpciBGSUZPIGluIHRoZSBDUFIgcmVnaXN0
ZXIgYXJlCmFsd2F5cyBjb25maWd1cmVkIGFzIFBPUlRfMTY1NTBBLCByZWdhcmRsZXNzIG9mIHRo
ZSBGSUZPIGRlcHRoLiBPbgpVQVJUcyB3aXRoIGEgNjQtYnl0ZSBGSUZPLCBzdWNoIGFzIHRob3Nl
IG9uIHRoZSBSb2NrY2hpcCBSSzMzMjgsIHRoaXMKc2VsZWN0cyB0aGUgMTYtYnl0ZSByeHRyaWdf
Ynl0ZXMgdGFibGUgezEsIDQsIDgsIDE0fS4gVGhlIHJ4X3RyaWdfYnl0ZXMKc3lzZnMgYXR0cmli
dXRlIHRoZW4gcmVwb3J0cyA4IGJ5dGVzIHdoaWxlIHRoZSBoYXJkd2FyZSB0cmlnZ2VycyBhdCAz
MiwKYW5kIHdyaXRlcyB0byBpdCBwcm9ncmFtIHRoZSB3cm9uZyB0cmlnZ2VyIGxldmVsLgoKU2Vs
ZWN0IFBPUlRfVTZfMTY1NTBBIHdoZW4gdGhlIENQUiByZXBvcnRzIGEgNjQtYnl0ZSBGSUZPLiBH
ZW5lcmljCmF1dG9jb25maWcgYWxyZWFkeSBhc3NpZ25zIHRoaXMgdHlwZSB0byBhIDE2NTUwQSB3
aXRoIGEgNjQtYnl0ZSBGSUZPLAphbmQgaXRzIHJ4dHJpZ19ieXRlcyB0YWJsZSBtYXRjaGVzIHRo
ZSBEZXNpZ25XYXJlIEZDUiBSVCBlbmNvZGluZy4KClRoZSBGSUZPIHNpemUsIFRYIGxvYWQgc2l6
ZSBhbmQgY2FwYWJpbGl0aWVzIGFyZSBzdGlsbCB0YWtlbiBmcm9tIHRoZQpDUFIsIGFuZCB0aGUg
ZGVmYXVsdCBGQ1IgdmFsdWUgaXMgdGhlIHNhbWUgZm9yIGJvdGggdHlwZXMsIHNvIHRoZQpoYXJk
d2FyZSBpcyBwcm9ncmFtbWVkIGV4YWN0bHkgYXMgYmVmb3JlLiBUaGUgcG9ydCB0eXBlIHJlcG9y
dGVkIHRvCnVzZXJzcGFjZSBjaGFuZ2VzIGZyb20gMTY1NTBBIHRvIFU2XzE2NTUwQS4KCkNvLWRl
dmVsb3BlZC1ieTogTWlyb3NsYXYgT25kcmEgPG9uZHJhQGZhc3Rlci5jej4KU2lnbmVkLW9mZi1i
eTogTWlyb3NsYXYgT25kcmEgPG9uZHJhQGZhc3Rlci5jej4KU2lnbmVkLW9mZi1ieTogS3J5xaF0
b2YgxIxlcm7DvSA8Y2xldmVybGluZTFtY0BnbWFpbC5jb20+Ci0tLQogZHJpdmVycy90dHkvc2Vy
aWFsLzgyNTAvODI1MF9kd2xpYi5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy90dHkvc2VyaWFsLzgyNTAv
ODI1MF9kd2xpYi5jIGIvZHJpdmVycy90dHkvc2VyaWFsLzgyNTAvODI1MF9kd2xpYi5jCmluZGV4
IDliYjAyYTRhYjExZi4uYWU1NTZiMDZiMDNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL3R0eS9zZXJp
YWwvODI1MC84MjUwX2R3bGliLmMKKysrIGIvZHJpdmVycy90dHkvc2VyaWFsLzgyNTAvODI1MF9k
d2xpYi5jCkBAIC0yMzYsOSArMjM2LDkgQEAgdm9pZCBkdzgyNTBfc2V0dXBfcG9ydChzdHJ1Y3Qg
dWFydF9wb3J0ICpwKQogCiAJLyogU2VsZWN0IHRoZSB0eXBlIGJhc2VkIG9uIEZJRk8gKi8KIAlp
ZiAocmVnICYgRFdfVUFSVF9DUFJfRklGT19NT0RFKSB7Ci0JCXAtPnR5cGUgPSBQT1JUXzE2NTUw
QTsKIAkJcC0+ZmxhZ3MgfD0gVVBGX0ZJWEVEX1RZUEU7CiAJCXAtPmZpZm9zaXplID0gRFdfVUFS
VF9DUFJfRklGT19TSVpFKHJlZyk7CisJCXAtPnR5cGUgPSAocC0+Zmlmb3NpemUgPT0gNjQpID8g
UE9SVF9VNl8xNjU1MEEgOiBQT1JUXzE2NTUwQTsKIAkJdXAtPmNhcGFiaWxpdGllcyA9IFVBUlRf
Q0FQX0ZJRk8gfCBVQVJUX0NBUF9OT1RFTVQ7CiAJfQogCgotLSAKMi40Ny4zCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD63E606A335
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 14:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RElbsMRO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=XFoaIo2B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=C0v7wu7VqaqgMYs3QeLOWVItme6Mxp2C1zORhj5JO8o=; b=RElbsMROgXjO73lcbSPnXvNG9r
	avBPPPq0VZYbr081Wpa/MMgD1j4V5s9rKJfiIJ1Zf1EwHo+XhgkUdL+E3011yC+iDU2EgCtJktEmK
	oW2zcZ8b3tF3fsDmlG42DNIcgsF/xd7ZbRIwPIcnfrfYfH48WG1UCYQ3f8BXfI4Z9U+aeJ+M3QdI1
	mcLvbWAe9N+smiAWgkudzkVhbAhls0x0GFHK7m4tkb5/zRXC4G4O1aXZfxWgy/5OF/6fjh8NUG0nU
	P4BONt2I+rR4iOgZbQY1PcnPS0RDos4ZTgwfpd1c8AfPMS1BrZbTVWt0kkXbaDUNGGJ2YUcE9oxnG
	xkdvjspw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQc3-00000000y5h-1Qn2;
	Mon, 09 Nov 2026 14:44:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQc1-00000000y4y-25pM;
	Mon, 09 Nov 2026 14:44:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F150042E8E;
	Mon,  9 Nov 2026 14:44:44 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794235484;
	b=RLwF+j6/d3fXIZ5OYqDFht6mBCBmGylZFd5Bptl3+BGi3ibyhjbg5TP+BpN4dMr2puq6
	 HhUoWDeAumPKxMss5OkypaDzxNHLUZJn3bvEpiTVLo+SoBhBrIYQu0vnvI09wO8YBC7bK
	 dnDnQcwMQtjUxt84AOTo13+NuXexwcAK1Jk173j5RaKL2YTQX30n2Qx+t4S9s+XCggcBC
	 F1IBOAPGWspE8KFDROQ0sLC0JaVtSte7XHNNWyRwidcPRJxkgLcebFk8+zFFtENcxoRCc
	 f4g8xhki5W778hNy/ZahyPVZYldiUFUG/Xx78MdSSDd8DewdlOoxlJ7nUJ3NCdMSFiA==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794235484;
	h=DKIM-Signature:Received:From:Subject:Date:Message-Id:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:X-B4-Tracking:X-Change-ID:To:
	 Cc:X-Mailer:X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To;
	bh=P8cPmZ6LyhdSdBvBMkhnzumAS8edWkpwK9m1uBz9e0c=;
	b=ow9ufE4f+MExdCiGV6xzPYwzY2BXq9Xr5df+iSK9bGFchWTt7V6YqH/CxhJIxKx0r740
	 H8kKIfh4l5WHVkvd+zG8pHcryT3to3TD6F0/HFEDS0iyk+qcUImEFsJfm6/sR6DY0eHqL
	 4Y0inITO0Uc6NwpDS1rIiclXy9+kPzg0LLomgfj7VuCpMJ79iLf7ELznsY+m558PHMnHJ
	 agMw1dFG9hRrb6g2QEKUZ1x8GBmK1T5kMCDa8wlMHX4omlFCIoKIrgQSinivwbnzScZBB
	 60p8TEOFdoAdxrwr6JmH5fNkmhDSy+SrhVNfc2XFAqFA7Avvjb3qcgZi/qnY1KpGRRw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id D9AB81F008A2;
	Mon,  9 Nov 2026 14:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794235484;
	bh=P8cPmZ6LyhdSdBvBMkhnzumAS8edWkpwK9m1uBz9e0c=;
	h=From:Subject:Date:To:Cc:Reply-To;
	b=XFoaIo2BLRg3Y4uCpy7NLTkL3B21kvsKP7q2kYfqJYX26C9KrJqRHwmkG5tam/zgj
	 BoCCIEKOuxOUYEDy0SVQCBTYHVNGMKiI6iynEBVdO7qqSGk8M2bk0wYBc0eoqK7tgW
	 5ngw5U+mcn56KopIXFvMAHBhV+PskFCJSya0q9f3Hca4lqaJyPh+XsxJmpi/nrokri
	 sryjIWI8Y5XZ2MRocQYmgL5FlQeOjaYVbkto/ZZ10bOxGNe/uLcYZUXqcEI7VtGwqZ
	 zgefmPMnUuk92M6+RHXNijlMiGLvM+y5elXClGVOOtm0xKLzzlKoGrNx3tbUh1ZQMu
	 ZOCclvbdbqy6A==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 35482484FD;
	Mon,  9 Nov 2026 14:44:43 +0000 (UTC)
From: =?utf-8?q?Kry=C5=A1tof_=C4=8Cern=C3=BD_via_B4_Relay?= <devnull+cleverline1mc.gmail.com@kernel.org>
Subject: [PATCH 0/2] serial: 8250_dw: Fix RX trigger levels for 64-byte
 FIFOs
Date: Mon, 09 Nov 2026 15:40:58 +0100
Message-Id: <20261109-8250-select-u6-64bit-v1-0-04bc8332fa34@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHrb8WoC/yXMTQqDQAxA4atI1g1kRp2pvYp04U/USNEy0SKId
 3esy2/x3g7KQVjhlewQ+Ccq8xRhHgk0QzX1jNJGgyXrDKWET5sTKn+4WXB16LJaFvTeeDZVUZB
 NIabfwJ1s/235vq1rPcbmesFxnGmESPp4AAAA
X-Change-ID: 20261030-8250-select-u6-64bit-7717e1a99023
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 =?utf-8?q?Kry=C5=A1tof_=C4=8Cern=C3=BD?= <cleverline1mc@gmail.com>, 
 Miroslav Ondra <ondra@faster.cz>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794235482; l=4142;
 i=cleverline1mc@gmail.com; s=20241112; h=from:subject:message-id;
 bh=j7wsNWKLOu8PU6y8Iijjhk75JExmK+N8BPwkouuO6/4=;
 b=j33Bj/JLEw5tU/jtXgoDEE6XPG5xL5NLdO5eBUw/pzIKsWldf4BLZxfpNUT2XARmmBnE29HHP
 iwu6BkgbdpjAHPQHQs8PwHl9YcEADD/JNz4ILRDb4PAW+fpU5fqG1d4
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

RGVzaWduV2FyZSBVQVJUcyB0aGF0IHJlcG9ydCB0aGVpciBGSUZPIHRocm91Z2ggdGhlIENQUiBy
ZWdpc3RlciBhcmUKYWx3YXlzIHJlZ2lzdGVyZWQgYXMgUE9SVF8xNjU1MEEuIEZvciBhIDY0LWJ5
dGUgRklGTywgYXMgZm91bmQgb24gdGhlClJvY2tjaGlwIFJLMzMyOCwgdGhlIHJ4X3RyaWdfYnl0
ZXMgc3lzZnMgYXR0cmlidXRlIHRoZXJlZm9yZSB1c2VzIHRoZQoxNi1ieXRlIHRhYmxlOiBpdCBy
ZXBvcnRzIDggYnl0ZXMgd2hpbGUgdGhlIGhhcmR3YXJlIHRyaWdnZXJzIGF0IDMyLAphbmQgd3Jp
dGluZyBpdCBwcm9ncmFtcyBhIGRpZmZlcmVudCBsZXZlbCB0aGFuIHJlcXVlc3RlZC4KCkdlbmVy
aWMgYXV0b2NvbmZpZyBhbHJlYWR5IGNsYXNzaWZpZXMgYSAxNjU1MEEgd2l0aCBhIDY0LWJ5dGUg
RklGTyBhcwpQT1JUX1U2XzE2NTUwQS4gRGVzaWduV2FyZSBwb3J0cyB3aXRob3V0IGEgdXNhYmxl
IENQUiBhcmUgcHJvYmVkIHRoaXMKd2F5LCBzbyB0aGUgc2FtZSA2NC1ieXRlIGNvcmUgaXMgcmVn
aXN0ZXJlZCBhcyBVNl8xNjU1MEEgb3IgYXMgMTY1NTBBCmRlcGVuZGluZyBvbiB3aGV0aGVyIGl0
cyBDUFIgY2FuIGJlIHJlYWQuIFRoaXMgc2VyaWVzIG1ha2VzIHRoZSBDUFIKcGF0aCBwaWNrIFU2
XzE2NTUwQSBhcyB3ZWxsLCBhZnRlciBmaXJzdCBnaXZpbmcgUE9SVF9VNl8xNjU1MEEgYW4Kcnh0
cmlnX2J5dGVzIHRhYmxlIHRoYXQgbWF0Y2hlcyB0aGUgRGVzaWduV2FyZSBGQ1IgUlQgZW5jb2Rp
bmcuCgpQYXRjaCAxIGFkZHMgdGhlIHRhYmxlIHRvIHRoZSBjb3JlLiBJdCBoYXMgdG8gY29tZSBm
aXJzdDogd2l0aG91dCBpdCwKcGF0Y2ggMiB3b3VsZCBtYWtlIHRoZSByeF90cmlnX2J5dGVzIGF0
dHJpYnV0ZSBkaXNhcHBlYXIgb24gdGhlCmFmZmVjdGVkIHBvcnRzLgoKUGF0Y2ggMiBzd2l0Y2hl
cyA4MjUwX2R3IHRvIHRoZSBuZXcgdHlwZSBmb3IgNjQtYnl0ZSBGSUZPcy4KClRoaW5ncyB3b3J0
aCByZXZpZXdpbmc6CgotIFRoZSByZWdpc3RlciBwcm9ncmFtbWluZyBkb2VzIG5vdCBjaGFuZ2Uu
IEZJRk8gc2l6ZSwgVFggbG9hZCBzaXplIGFuZAogIGNhcGFiaWxpdGllcyBzdGlsbCBjb21lIGZy
b20gQ1BSLCBhbmQgYm90aCB0eXBlcyB1c2UgdGhlIHNhbWUgZGVmYXVsdAogIEZDUiB2YWx1ZS4K
Ci0gVGhlIHBvcnQgdHlwZSB2aXNpYmxlIHRvIHVzZXJzcGFjZSBjaGFuZ2VzIGZyb20gMTY1NTBB
ICg0KSB0bwogIFU2XzE2NTUwQSAoMTkpIGZvciB0aGVzZSBwb3J0cywgaW4gVElPQ0dTRVJJQUws
IC9wcm9jL3R0eS9kcml2ZXIvc2VyaWFsCiAgYW5kIHRoZSBib290IGxvZy4KCi0gZHc4MjUwX3Nl
dHVwX3BvcnQoKSBpcyBhbHNvIHVzZWQgYnkgODI1MF9scHNzLCBzbyBJbnRlbCBMUFNTIFVBUlRz
IHdpdGgKICBhIDY0LWJ5dGUgRklGTyBhcmUgYWZmZWN0ZWQgdGhlIHNhbWUgd2F5LiBJIGNvdWxk
IG5vdCB0ZXN0IG9uIExQU1MKICBoYXJkd2FyZS4KCi0gUG9ydHMgZGV0ZWN0ZWQgYXMgVTZfMTY1
NTBBIGJ5IGF1dG9jb25maWcgZ2FpbiB0aGUgcnhfdHJpZ19ieXRlcwogIGF0dHJpYnV0ZS4gSXRz
IGhpZ2hlc3QgbGV2ZWwsIEZJRk8gc2l6ZSAtIDIsIGZvbGxvd3MgdGhlIERlc2lnbldhcmUKICBl
bmNvZGluZyBhbmQgbWF5IG5vdCBtYXRjaCBub24tRGVzaWduV2FyZSBoYXJkd2FyZSBkZXRlY3Rl
ZCB0aGlzIHdheS4KCi0gT25seSA2NC1ieXRlIEZJRk9zIGFyZSBoYW5kbGVkLiBEZXNpZ25XYXJl
IEZJRk9zIG9mIG90aGVyIGRlcHRocyBrZWVwCiAgdXNpbmcgdGhlIDE2LWJ5dGUgdGFibGUuIERl
cml2aW5nIHRoZSBsZXZlbHMgZnJvbSB0aGUgRklGTyBzaXplIHdvdWxkCiAgY292ZXIgdGhlbSBh
cyB3ZWxsLCBidXQgbmVlZHMgYSBuZXcgaG9vayBpbiB0aGUgY29yZS4gSSBhbSBoYXBweSB0byBn
bwogIHRoYXQgd2F5IGluc3RlYWQgaWYgaXQgaXMgcHJlZmVycmVkLgoKVGVzdGluZzoKClRlc3Rl
ZCBvbiBhIFVuaXBpIEcxMTAgY29udHJvbGxlciB3aXRoIGEgUm9ja2NoaXAgUkszMzI4LCBvbiB0
dHlTMSBhbmQKdHR5UzIsIHdpdGggbmV4dC0yMDI2MTAyOSBhbmQgd2l0aCA2LjEyLjExNC1jaXAz
NCwgZWFjaCB3aXRob3V0IGFuZAp3aXRoIHRoaXMgc2VyaWVzLiBCb3RoIHBvcnRzIGhhdmUgYSA2
NC1ieXRlIEZJRk8sIGFuZCBib3RoIGtlcm5lbHMgYW5kCmJvdGggcG9ydHMgZ2F2ZSBpZGVudGlj
YWwgcmVzdWx0cy4KCldpdGggdGhlIFVBUlQgaW4gaW50ZXJuYWwgbG9vcGJhY2sgYXQgOTYwMCBi
YXVkLCBlYWNoIHZhbHVlIHdhcyB3cml0dGVuCnRvIHJ4X3RyaWdfYnl0ZXMgYW5kIDY0MCBieXRl
cyB3ZXJlIHNlbnQuIFRoZSBsYXJnZXN0IGNodW5rIGRlbGl2ZXJlZAp0byB1c2Vyc3BhY2Ugc2hv
d3MgdGhlIHRyaWdnZXIgbGV2ZWwgdGhlIGhhcmR3YXJlIGFjdHVhbGx5IHVzZWQ6CgogICAgICAg
ICAgICAgICAgIHdpdGhvdXQgc2VyaWVzICAgICAgICAgd2l0aCBzZXJpZXMKICB3cml0dGVuICAg
ICAgICByZWFkcyAgIGh3IGxldmVsICAgICAgIHJlYWRzICAgaHcgbGV2ZWwKICAxICAgICAgICAg
ICAgICAxICAgICAgIDEgICAgICAgICAgICAgIDEgICAgICAgMQogIDQgICAgICAgICAgICAgIDQg
ICAgICAgMTYgICAgICAgICAgICAgMSAgICAgICAxCiAgOCAgICAgICAgICAgICAgOCAgICAgICAz
MiAgICAgICAgICAgICAxICAgICAgIDEKICAxNiAgICAgICAgICAgICAxNCAgICAgIDYyICAgICAg
ICAgICAgIDE2ICAgICAgMTYKICAzMiAgICAgICAgICAgICAxNCAgICAgIDYyICAgICAgICAgICAg
IDMyICAgICAgMzIKICA2MiAgICAgICAgICAgICAxNCAgICAgIDYyICAgICAgICAgICAgIDYyICAg
ICAgNjIKCldpdGhvdXQgdGhlIHNlcmllcyB0aGUgcG9ydHMgcmVnaXN0ZXIgYXMgMTY1NTBBIGFu
ZCByeF90cmlnX2J5dGVzCnJlcG9ydHMgOCBieSBkZWZhdWx0LCB3aGlsZSB0aGUgZGVmYXVsdCBG
Q1IgdmFsdWUgaXMgdGhlIG9uZSB3cml0dGVuCmZvciA4IGFib3ZlLCBpLmUuIDMyIGJ5dGVzLiBX
aXRoIHRoZSBzZXJpZXMgdGhleSByZWdpc3RlciBhcwpVNl8xNjU1MEEgYW5kIHJlcG9ydCAzMi4g
VmFsdWVzIGluIGJldHdlZW4gcm91bmQgZG93biB0byB0aGUgbmVhcmVzdApsZXZlbCwgZm9yIGV4
YW1wbGUgMzEgcmVhZHMgYmFjayBhcyAxNiwgNDAgYXMgMzIgYW5kIDI1NSBhcyA2Mi4gQXQKbGV2
ZWwgNjIgdGhlIFRYLWVtcHR5IGludGVycnVwdCBhbHNvIGRyYWlucyB0aGUgUlggRklGTywgc28g
Mi1ieXRlCmNodW5rcyBhcHBlYXIgYmV0d2VlbiB0aGUgNjItYnl0ZSBvbmVzLgoKVGhlIHNlcmll
cyB3YXMgYWxzbyBidWlsZC10ZXN0ZWQgd2l0aCBXPTEgZm9yIGFybTY0IGRlZmNvbmZpZyBhbmQg
Zm9yCmFuIHg4Nl82NCBjb25maWcgd2l0aCA4MjUwX2xwc3MsIGF0IGVhY2ggcGF0Y2guIEl0IHdh
cyBub3QgdGVzdGVkIG9uCkludGVsIExQU1MgaGFyZHdhcmUuCgpUaGUgY29tbWl0IG1lc3NhZ2Vz
IGFuZCB0aGlzIGNvdmVyIGxldHRlciB3ZXJlIGRyYWZ0ZWQgd2l0aCBoZWxwCmZyb20gYW4gQUkg
YXNzaXN0YW50LiBUaGUgY2hhbmdlcyBhcmUgdXNlZCBpbiBkb3duc3RyZWFtIFVuaXBpIGtlcm5l
bC4KClNpZ25lZC1vZmYtYnk6IEtyecWhdG9mIMSMZXJuw70gPGNsZXZlcmxpbmUxbWNAZ21haWwu
Y29tPgotLS0KS3J5xaF0b2YgxIxlcm7DvSAoMik6CiAgICAgIHNlcmlhbDogODI1MDogQWRkIFJY
IHRyaWdnZXIgbGV2ZWxzIGZvciBVNl8xNjU1MEEKICAgICAgc2VyaWFsOiA4MjUwX2R3OiBTZWxl
Y3QgVTZfMTY1NTBBIGZvciA2NC1ieXRlIEZJRk8KCiBkcml2ZXJzL3R0eS9zZXJpYWwvODI1MC84
MjUwX2R3bGliLmMgfCAyICstCiBkcml2ZXJzL3R0eS9zZXJpYWwvODI1MC84MjUwX3BvcnQuYyAg
fCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCi0t
LQpiYXNlLWNvbW1pdDogYTM5Yzk1MDgwNjIxM2Y2ODYxZDAwZjkwNzI5YWNhYWEyMWYyZDk1YQpj
aGFuZ2UtaWQ6IDIwMjYxMDMwLTgyNTAtc2VsZWN0LXU2LTY0Yml0LTc3MTdlMWE5OTAyMwoKQmVz
dCByZWdhcmRzLAotLSAgCktyecWhdG9mIMSMZXJuw70gPGNsZXZlcmxpbmUxbWNAZ21haWwuY29t
PgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

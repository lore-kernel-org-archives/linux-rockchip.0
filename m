Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8E960A3811
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 22:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=X57ZRur5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Rb8Wmlwk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WhJ+6/ytfacP50UfXXpZA68qQaJZDIT4b8DweznWwGU=; b=X57ZRur51OAyWV8pWYoVshstpW
	IqWWeGq1MUP0IrAfhsOPuLgIR/QxaBvFmlScajyt+XmSPNekqRJ73zrvCZ2NFokUSWFmozYoZO48m
	rYWvTL+UNIKxUDS/hUyCwWs9AUJT46YZUvNvbFJtKUKN9zr5O8feBvTL8k92O2UCErHRjMpBtoY+D
	T3TCKeOJnVuYVMoI9yOD58YB/O2DQEdSFOtAMGCP/DnW055ApAKvkwSEvhCR4VCBiG7FOO8wV2D80
	NamNL09CN8VOwo5aneyC1QWMNzzh/n8FPSPAU9PooY7ifdmNU0jlzgqV7TcuH0SDl5AqjEkjiXIBB
	6hsNyQVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdLC-0000000BAPr-3pCi;
	Thu, 12 Nov 2026 22:32:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdKz-0000000BAIG-39RG;
	Thu, 12 Nov 2026 22:32:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 775D04646C;
	Thu, 12 Nov 2026 22:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 433AA1F000CA;
	Thu, 12 Nov 2026 22:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794522729;
	bh=8bqvMnyVEvBroB2d7Xzxe6U8AVpllM+eYYP2hE1nUBE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Rb8WmlwkkN8eW1QyRTBK5Hqqvke4TxCEcBmr5FFJJU454l6AstuqjtdgKNnkxjejO
	 4nX0qSnlV1/zzh201Zx1C4uAPlNKKRwS48dbE0xaFgI3EKeXHItBtlvh68cgjBenDA
	 uoW8RlDcgWPJ+r+HGfIdRnmcwp5hN5zTBGx9vYO9ulo/GLgnPvaqUng4VnaPPU7RyH
	 03ZEomcjO97MSDvl9qy3GvxSwZsmRo37rD70/SAYOdZea6L3/IILtTymTZCHmpuI+i
	 hN76EfRIobqjBTVaM7YbG+CJE+jXJ+mi4raeNdwjmpmZ10FRzzPscicsh3hPf+D884
	 ud1skVr3vjEcQ==
Subject: Re: [PATCH net v9 03/10] can: rockchip_canfd: retry the outstanding TX buffer
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
Date: Thu, 12 Nov 2026 22:32:07 +0000
Message-ID: <179452272781.488853.6815349480401824438@kernel.org>
In-Reply-To: <20261111-rockchip-canfd-restart-close-v9-3-6643f3825ba3@qq.com>
References: <20261111-rockchip-canfd-restart-close-v9-3-6643f3825ba3@qq.com>
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
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIGNvbW1pdCBtZXNzYWdlIGZvciAi
Y2FuOiByb2NrY2hpcF9jYW5mZDogcmV0cnkgdGhlCiAgb3V0c3RhbmRpbmcgVFggYnVmZmVyIiBs
ZWF2ZXMgb3V0IGEgbGlrZWx5IGJ1cy12aXNpYmxlIGVmZmVjdCBvZiB0aGXigKYKCi0tCgpjYW46
IHJvY2tjaGlwX2NhbmZkOiByZXRyeSB0aGUgb3V0c3RhbmRpbmcgVFggYnVmZmVyCgpUaGlzIHBh
dGNoIGNoYW5nZXMgcmtjYW5mZF94bWl0X3JldHJ5KCkgdG8gcGljayB0aGUgVFggYnVmZmVyIGZv
ciB0aGUKZXJyYXR1bSA2IHJldHJhbnNtaXNzaW9uIHdpdGggdHhfdGFpbCBpbnN0ZWFkIG9mIHR4
X2hlYWQuIFdpdGggYSBUWCBGSUZPCmRlcHRoIG9mIHR3byBhbmQgb25lIGZyYW1lIG91dHN0YW5k
aW5nLCB0eF9oZWFkIHBvaW50cyBhdCB0aGUgZnJlZSBidWZmZXIKYW5kIG5vdCBhdCB0aGUgcGVu
ZGluZyBvbmUuCgo+IFVzZSB0eF90YWlsIHRvIHJldHJ5IHRoZSBvdXRzdGFuZGluZyBidWZmZXIu
IE90aGVyd2lzZSwgdGhlIHBlbmRpbmcgZWNobwo+IGVudHJ5IGNhbiByZW1haW4gaW5jb21wbGV0
ZSBhbmQgbGVhdmUgdGhlIFRYIHF1ZXVlIHN0b3BwZWQuCgpbU2V2ZXJpdHk6IExvd10KVGhlIHR4
X2hlYWQgdG8gdHhfdGFpbCBjaGFuZ2UgbG9va3MgY29ycmVjdCBmb3IgdGhlIG9uZS1wZW5kaW5n
IGNhc2UuIERvZXMKdGhpcyBwYXJhZ3JhcGggZGVzY3JpYmUgdGhlIGZ1bGwgaW1wYWN0IG9mIHRo
ZSBvbGQgY29kZSwgdGhvdWdoPwoKVGhlIGVycmF0dW0gNiByZXRyeSBjYW4gb25seSBydW4gd2hl
biBleGFjdGx5IG9uZSBmcmFtZSBpcyBwZW5kaW5nIGFuZAp0aGF0IGZyYW1lIGlzIEVGRi4gSW4g
dGhhdCBzdGF0ZSBya2NhbmZkX2dldF9lZmZlY3RpdmVfdHhfZnJlZSgpIHJldHVybnMgMDoKCglp
ZiAocHJpdi0+ZGV2dHlwZV9kYXRhLnF1aXJrcyAmIFJLQ0FORkRfUVVJUktfUkszNTY4X0VSUkFU
VU1fNiAmJgoJICAgIHJrY2FuZmRfdHhfdGFpbF9pc19lZmYocHJpdikpCgkJcmV0dXJuIDA7CgpT
byBiZWZvcmUgdGhpcyBwYXRjaCwgdGhlIG1hc2tlZCB0eF9oZWFkIGluIHJrY2FuZmRfeG1pdF9y
ZXRyeSgpIGFsd2F5cwpwb2ludGVkIGF0IHRoZSBvdGhlciBoYXJkd2FyZSBidWZmZXIuCgpUaGUg
Zml4IGFzc3VtZXMgdGhhdCBSS0NBTkZEX1JFR19DTURfVFhfUkVRKGkpIHNlbmRzIHdoYXRldmVy
IGlzIGFscmVhZHkKc3RvcmVkIGluIGJ1ZmZlciBpLiBJZiBzbywgZGlkIGV2ZXJ5IGVycmF0dW0g
NiByZXRyeSB3aXRoIHRoZSBvbGQgY29kZQpyZS1zZW5kIHRoZSBzdGFsZSBjb250ZW50cyBvZiB0
aGUgbm9uLXBlbmRpbmcgYnVmZmVyIGluc3RlYWQgb2YgdGhlCm1hbmdsZWQgRUZGIGZyYW1lPyBU
aGF0IHdvdWxkIHVzdWFsbHkgYmUgYW4gZWFybGllciBTRkYgZnJhbWUgdGhhdCBoYWQKYWxyZWFk
eSBjb21wbGV0ZWQuCgpJZiB0aGF0IGhhcHBlbmVkLCBvdGhlciBub2RlcyBvbiB0aGUgYnVzIHdv
dWxkIHNlZSBhIGR1cGxpY2F0ZSBmcmFtZS4KTG9jYWxseSwgdGhlIHNlbGYtcmVjZWl2ZWQgY29w
eSB3b3VsZCBub3QgbWF0Y2ggZWNob19za2JbdHhfdGFpbF0gaW4KcmtjYW5mZF9yeHN0eF9maWx0
ZXIoKS4gSXQgd291bGQgdGhlbiBnbyB0byBsb2NhbCBzb2NrZXRzIGFzIGEgbm9ybWFsCnJlY2Vp
dmVkIGZyYW1lIHRocm91Z2ggcmtjYW5mZF9oYW5kbGVfcnhfaW50X29uZSgpLgoKSWYgaW5zdGVh
ZCBUWF9SRVEoaSkgbGF0Y2hlcyB0aGUgc2hhcmVkIEZEX1RYRlJBTUVJTkZPLCBGRF9UWElEIGFu
ZApGRF9UWERBVEEgcmVnaXN0ZXJzIHdyaXR0ZW4gaW4gcmtjYW5mZF9zdGFydF94bWl0KCksIHRo
ZSBvbGQgYW5kIG5ldyBjb2RlCndvdWxkIGJvdGggc2VuZCB0aGUgRUZGIGZyYW1lLiBJbiB0aGF0
IGNhc2UgdGhlIHN0YWxsIGRlc2NyaWJlZCBhYm92ZQp3b3VsZCBub3QgaGFwcGVuLgoKVGhlIGRy
aXZlciBjb2RlIGFsb25lIGRvZXNuJ3Qgc2hvdyB3aGljaCBvZiB0aGVzZSBpcyB0aGUgcmVhbCBo
YXJkd2FyZQpiZWhhdmlvci4gQ291bGQgdGhlIGNvbW1pdCBtZXNzYWdlIHNheSB3aGljaCBUWF9S
RVEgc2VtYW50aWNzIHRoZSBmaXgKZGVwZW5kcyBvbj8gSWYgdGhleSBhcHBseSwgY291bGQgaXQg
YWxzbyBtZW50aW9uIHRoZSBkdXBsaWNhdGUKdHJhbnNtaXNzaW9uIGFuZCB0aGUgcGhhbnRvbSBs
b2NhbCBSWCBmcmFtZT8KCldhcyB0aGlzIHJlcHJvZHVjZWQgb3IgdGVzdGVkIG9uIFJLMzU2OCBo
YXJkd2FyZT8gSWYgc28sIGEgbm90ZSBvbiB0aGF0Cm9yIGEgVGVzdGVkLWJ5IHRhZyB3b3VsZCBo
ZWxwLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vbmV0ZGV2LWFpLmJvdHMubGlu
dXguZGV2L3Nhc2hpa28vIy9wYXRjaHNldC8yMDI2MTExMS1yb2NrY2hpcC1jYW5mZC1yZXN0YXJ0
LWNsb3NlLXY5LTAtNjY0M2YzODI1YmEzJTQwcXEuY29tCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

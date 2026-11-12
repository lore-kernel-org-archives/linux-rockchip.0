Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D490B60A262B
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 22:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JFgYXeOL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Qu4iskwl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ChI9NT4l14osRlF6DSCVj1m7P0yv4qX6bjw4Ex7PN74=; b=JFgYXeOLMQNJztGTB3dfoMTgSH
	j1UXw+vokrzBgjDq8oMLWqY75LXPPpApqD+o//C7X1LCFOi1b7UOWjMavgECR5w4hn+q9/8eXtfLq
	/wvbZ4rAuhEf1OeXp/bxkiUdGgOCKorXeu9bGuDxw8F9glxiwMlPeK2u7bQF0tDAh5LA08ml0AT0P
	UOJIVLR8MJ62AgwuFZu866HnKpayzYoj95L4DJraACXNj1cbA9+TL/IWaeA5Sr7FClJEC11HoQhyU
	8XkgEQ82HIqYhfejmF6REWWGVYuXP0weBWgWzW0r47bPQMqlKGpPn9Kpealgp79pVIbtE5Vf+n8Tv
	6ml1exug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdKy-0000000BAHi-1yPZ;
	Thu, 12 Nov 2026 22:32:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRdKw-0000000BAGj-2RSa;
	Thu, 12 Nov 2026 22:32:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0082C44F9E;
	Thu, 12 Nov 2026 22:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B53AD1F000C4;
	Thu, 12 Nov 2026 22:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794522725;
	bh=7Dww7rLEK29Z8yiJXV5V5KMhrywlVHiQMndBRuw4E/0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Qu4iskwlFTCn0sPnAuYguLRUDzos0rP2oiB2AV6297+eONMYTmxzBG9ldyx/ZiwMH
	 4BY6Bbuc8BzogjDhd1FpX2D22Bq66YV3QjstHiZVSsAEAvwBb+IGvdpRR74rHU+oa8
	 KBMUbqeMZcw0Oi/dEada+JA93TRZo6z9Ru+aC1yc8NlYXImB561/9XVKiugV9zc3U4
	 JSoYaEkEnSBNr67EPpqg/LjteW0gzZHlx1WD/ZvUv+5UWCga6NW18cNLWNCGd823qe
	 Aj3DX1K027sMoeGt+7Dnkhqg/2zyOjFh7nkH3/Ab2FVepFBESbMmCI2HNXYfJ1ZTfV
	 /qZN/Ot3wccGg==
Subject: Re: [PATCH net v9 01/10] can: rockchip_canfd: prevent TX stall on
 echo skb failure
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
Date: Thu, 12 Nov 2026 22:32:04 +0000
Message-ID: <179452272422.488853.17004807498883326670@kernel.org>
In-Reply-To: <20261111-rockchip-canfd-restart-close-v9-1-6643f3825ba3@qq.com>
References: <20261111-rockchip-canfd-restart-close-v9-1-6643f3825ba3@qq.com>
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
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIGNvbW1pdCBtZXNzYWdlIHVuZGVy
c3RhdGVzIGhvdyBiYWQgdGhlIGJ1ZyBpcy4KCi0tCgpjYW46IHJvY2tjaGlwX2NhbmZkOiBwcmV2
ZW50IFRYIHN0YWxsIG9uIGVjaG8gc2tiIGZhaWx1cmUKClRoaXMgY29tbWl0IG1vdmVzIGNhbl9w
dXRfZWNob19za2IoKSBpbiBya2NhbmZkX3N0YXJ0X3htaXQoKSBzbyBpdCBydW5zCmJlZm9yZSB0
aGUgaGFyZHdhcmUgVFggYnVmZmVyIGlzIHdyaXR0ZW4uIElmIG5vIGVjaG8gc2tiIHdhcyBpbnN0
YWxsZWQsIHRoZQpmcmFtZSBpcyBkcm9wcGVkIGFuZCB0eF9oZWFkIGFuZCB0aGUgQlFMIGJ5dGVz
IGFyZSBsZWZ0IHVuY2hhbmdlZC4gSXQgYWxzbwpwYXNzZXMgYW4gZXh0cmEgc2tiIHJlZmVyZW5j
ZSB0byBjYW5fcHV0X2VjaG9fc2tiKCkgYW5kIHJlbGVhc2VzIHRoZQpvcmlnaW5hbCBza2Igb25j
ZSBzdWJtaXNzaW9uIGZpbmlzaGVzIG9yIGZhaWxzLgoKPiBya2NhbmZkX3N0YXJ0X3htaXQoKSBh
ZHZhbmNlcyB0eF9oZWFkIGFuZCByZXF1ZXN0cyB0cmFuc21pc3Npb24gZXZlbiB3aGVuCj4gY2Fu
X3B1dF9lY2hvX3NrYigpIGZhaWxzLiBDb21wbGV0aW9uIG1hdGNoZXMgc2VsZi1yZWNlaXZlZCBm
cmFtZXMgYWdhaW5zdAo+IHRoZSBlY2hvIHJpbmcsIHNvIGFuIGVudHJ5IHdpdGhvdXQgYW4gZWNo
byBza2IgY2Fubm90IGJlIGNvbXBsZXRlZCBhbmQKPiBjYW4gbGVhdmUgdGhlIFRYIHF1ZXVlIHN0
b3BwZWQuCgpbU2V2ZXJpdHk6IExvd10KVGhlIGNvZGUgY2hhbmdlIGxvb2tzIHJpZ2h0IHRvIG1l
LiBEb2VzIHRoaXMgZGVzY3JpcHRpb24gY292ZXIgdGhlIHdob2xlCmltcGFjdCwgdGhvdWdoPyBJ
dCBsb29rcyBsaWtlIFJYIHN0b3BzIGFzIHdlbGwgYXMgVFguCgpjYW5fY3JlYXRlX2VjaG9fc2ti
KCkgdXNlcyBza2JfY2xvbmUoR0ZQX0FUT01JQyksIHNvIGNhbl9wdXRfZWNob19za2IoKSBjYW4K
ZmFpbCB3aXRoIC1FTk9NRU0gdW5kZXIgbWVtb3J5IHByZXNzdXJlLiBCZWZvcmUgdGhpcyBwYXRj
aCwgdGhlIGVtcHR5IHNsb3QKc3RpbGwgYmVjYW1lIHR4X3RhaWwsIHNvIHJrY2FuZmRfZ2V0X3R4
X3BlbmRpbmcoKSBzdGF5ZWQgbm9uLXplcm8uCgpBZnRlciB0aGF0LCBldmVyeSByZWNlaXZlZCBm
cmFtZSBnb2VzIHRocm91Z2ggcmtjYW5mZF9yeHN0eF9maWx0ZXIoKToKCmRyaXZlcnMvbmV0L2Nh
bi9yb2NrY2hpcC9yb2NrY2hpcF9jYW5mZC1yeC5jOnJrY2FuZmRfcnhzdHhfZmlsdGVyKCkgewog
ICAgLi4uCglza2IgPSBwcml2LT5jYW4uZWNob19za2JbdHhfdGFpbF07CglpZiAoIXNrYikgewoJ
CW5ldGRldl9lcnIocHJpdi0+bmRldiwgLi4uKTsKCgkJcmV0dXJuIC1FTk9NU0c7Cgl9CiAgICAu
Li4KfQoKQnkgdGhpcyBwb2ludCBya2NhbmZkX2hhbmRsZV9yeF9pbnRfb25lKCkgaGFzIGFscmVh
ZHkgcHVsbGVkIHRoZSBmcmFtZSBvdXQKb2YgdGhlIEZJRk8gd2l0aCBya2NhbmZkX3JlYWRfcmVw
KCkuIEl0IHRoZW4gcmV0dXJucyBiZWZvcmUKYWxsb2NfY2FuX3NrYigpIGFuZCBjYW5fcnhfb2Zm
bG9hZF9xdWV1ZV90aW1lc3RhbXAoKSBhcmUgY2FsbGVkOgoKZHJpdmVycy9uZXQvY2FuL3JvY2tj
aGlwL3JvY2tjaGlwX2NhbmZkLXJ4LmM6cmtjYW5mZF9oYW5kbGVfcnhfaW50X29uZSgpIHsKICAg
IC4uLgoJaWYgKHJrY2FuZmRfZ2V0X3R4X3BlbmRpbmcocHJpdikpIHsKCQlib29sIHR4X2RvbmUg
PSBmYWxzZTsKCgkJZXJyID0gcmtjYW5mZF9yeHN0eF9maWx0ZXIocHJpdiwgY2ZkLCBoZWFkZXIt
PnRzLCAmdHhfZG9uZSk7CgkJaWYgKGVycikKCQkJcmV0dXJuIGVycjsKICAgIC4uLgp9Cgpya2Nh
bmZkX2hhbmRsZV9yeF9pbnQoKSB0aGVuIGxlYXZlcyBpdHMgRklGTyBsb29wIG9uIHRoYXQgZXJy
b3IuIHR4X3RhaWwKbmV2ZXIgYWR2YW5jZXMsIHNvIHRoZSBzYW1lIHRoaW5nIGhhcHBlbnMgb24g
ZXZlcnkgbGF0ZXIgUlggaW50ZXJydXB0LCB3aXRoCmEgbmV0ZGV2X2VycigpIGVhY2ggdGltZS4g
RnJhbWVzIGZyb20gb3RoZXIgbm9kZXMgb24gdGhlIGJ1cyBhcmUgbG9zdCBhcwp3ZWxsIHVudGls
IHRoZSBpbnRlcmZhY2UgaXMgcmVzdGFydGVkLgoKQ291bGQgdGhlIGNvbW1pdCBtZXNzYWdlIHNh
eSB0aGF0IGJvdGggUlggYW5kIFRYIHN0b3A/IFRoYXQgd291bGQgaGVscApzdGFibGUgYmFja3Bv
cnRlcnMganVkZ2UgaG93IHVyZ2VudCB0aGlzIGZpeCBpcy4KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL25ldGRldi1haS5ib3RzLmxpbnV4LmRldi9zYXNoaWtvLyMvcGF0Y2hzZXQv
MjAyNjExMTEtcm9ja2NoaXAtY2FuZmQtcmVzdGFydC1jbG9zZS12OS0wLTY2NDNmMzgyNWJhMyU0
MHFxLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

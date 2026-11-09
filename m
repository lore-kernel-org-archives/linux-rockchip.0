Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98DD3606EE85
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 11:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yy2eDjbE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Er3jM619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=D6+vFzwutuwiGDDqF/uTG0r0uWWOdG8jSE3mkArvUTc=; b=yy2eDjbEqwd4AMTr9zgaoOqzKa
	tRfSHIjwtQQVXtiKGuV1SYRI3JUApFGLa9oyrhgBWsHffNRGrud+RzvD0eVuvDeDmW2CeFUmJGhA1
	/dbEFHRcYaSe4EXndX7SJWTdWsVadgC7pktI+F7unrbRxtQSqXrOLn3zGSRwPzCCEyU1qREZ9Ie58
	Y94kz0ufbhxOHXkrnepG2X3YcG5ptn/sjvc0szSYSKEdzFvd1ubsvZdXNhvgKvStFSumJFfwNVtgd
	YZf5hOzh7zR46vEmZJfZy814SvF9Vpl3pSDJlQjFmpqO6bO4y04go70omPCONLrAcIj+TBDFeZIrs
	xjrvGnDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQNhG-00000000XvI-2LAq;
	Mon, 09 Nov 2026 11:37:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQNhC-00000000Xp5-20YU;
	Mon, 09 Nov 2026 11:37:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3686245865;
	Mon,  9 Nov 2026 11:37:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1163F1F008A1;
	Mon,  9 Nov 2026 11:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794224274;
	bh=rd3+z6vq2TMUkUnwow78Fgj3dJ0i765N3091XiypQOI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Er3jM619QoitPT+MyCqskB0zPJIXAu03U7PIFLgXR4BLHZFlgq3I/idooQVpJ9ElO
	 9vld4JK12+j8i5s5JI6l6GfSi6RtA4wOcPi0XoPgWCh/j/EOxW5mu4OSTosNswqB39
	 NlQDJ//yQTySjepJ1gJRY8gt76cTIytu17wE1flL0dv0bBKG1lu74MqQydeQX1lRXW
	 P85ECnQNre4WnS2k3RhG0esyaFt1RNofreLm3v72hFoJAg6feC7zrABkMwZsfFoNs8
	 5APGh6jkpjLHiikXU43zuRUEiq0bPAsvIy3s3yxKc70ZtpBRQN08Id4fl4iAC/1nKX
	 /s8Ka7W76MqRA==
Subject: Re: [PATCH net v8 10/10] can: rockchip_canfd: serialize timecounter
 timestamp conversion
From: netdev-bot+sashiko@kernel.org
To: 1579567540@qq.com
Cc: mkl@pengutronix.de, kernel@pengutronix.de, mailhol@kernel.org,
 heiko@sntech.de, socketcan@hartkopp.net, davem@davemloft.net,
 edumazet@kernel.org, kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 corbet@lwn.net, skhan@linuxfoundation.org, rdunlap@infradead.org,
 wg@grandegger.com, linux-can@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org
Date: Mon, 09 Nov 2026 11:37:52 +0000
Message-ID: <179422427265.994134.1596521443425790522@kernel.org>
In-Reply-To: <20261108-rockchip-canfd-restart-close-v8-10-3e7a23fd9eae@qq.com>
References: <20261108-rockchip-canfd-restart-close-v8-10-3e7a23fd9eae@qq.com>
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
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIGZpeCBvbmx5IHdvcmtzIGJlY2F1
c2UgdGhlIHByZWNlZGluZyBzZXJpZXMgcGF0Y2ggImNhbjoKICByb2NrY2hpcF9jYW5mZDogcHJl
dmVudCB0aW1lc3RhbXAgd29yayBmcm9tIHJlYXJtaW5nIGFmdGVyIGJ1cy1vZmYi4oCmCgotLQoK
Y2FuOiByb2NrY2hpcF9jYW5mZDogc2VyaWFsaXplIHRpbWVjb3VudGVyIHRpbWVzdGFtcCBjb252
ZXJzaW9uCgpUaGUgY29tbWl0IHRha2VzIHRpbWVzdGFtcF9sb2NrIGFyb3VuZCB0aW1lY291bnRl
cl9jeWMydGltZSgpIGluCnJrY2FuZmRfc2tiX3NldF90aW1lc3RhbXAoKSwgc28gYSBjb252ZXJz
aW9uIGNhbiBubyBsb25nZXIgcnVuIHdoaWxlIHRoZQp0aW1lc3RhbXAgd29ya2VyIGlzIGluc2lk
ZSB0aW1lY291bnRlcl9yZWFkKCkuIEl0IGFsc28gdXBkYXRlcyB0aGUKY29tbWVudCBvbiB0aW1l
c3RhbXBfbG9jayBpbiBzdHJ1Y3QgcmtjYW5mZF9wcml2IHRvIHNheSB0aGF0IHRoZSBsb2NrCmNv
dmVycyB0Yy4KCj4gSG9sZCB0aW1lc3RhbXBfbG9jayBhY3Jvc3MgdGltZWNvdW50ZXJfY3ljMnRp
bWUoKSwgdXNpbmcgdGhlIHNhbWUgbG9jawo+IGFzIHRpbWVjb3VudGVyX3JlYWQoKSBhbmQgdGlt
ZWNvdW50ZXJfaW5pdCgpLiBLZWVwIHRoZSBTS0IgdGltZXN0YW1wCj4gYXNzaWdubWVudCBvdXRz
aWRlIHRoZSBjcml0aWNhbCBzZWN0aW9uLgo+Cj4gVFggY29tcGxldGlvbiBuZXN0cyB0aW1lc3Rh
bXBfbG9jayBpbnNpZGUgdHhfbG9jazsgbm8gdGltZXN0YW1wLWxvY2sKPiBob2xkZXIgYWNxdWly
ZXMgdHhfbG9jay4KPgo+IEZpeGVzOiA0ZTFhMThiYWIxMjQgKCJjYW46IHJvY2tjaGlwX2NhbmZk
OiBhZGQgaGFyZHdhcmUgdGltZXN0YW1waW5nIHN1cHBvcnQiKQo+IENjOiBzdGFibGVAdmdlci5r
ZXJuZWwub3JnCgpbU2V2ZXJpdHk6IExvd10KU2hvdWxkIHRoaXMgY29tbWl0IG1lc3NhZ2Ugc3Rh
dGUgaXRzIGJhY2twb3J0IHByZXJlcXVpc2l0ZXM/CgpBdCA0ZTFhMThiYWIxMjQsIHN0cnVjdCBy
a2NhbmZkX3ByaXYgaGFzIG5vIHRpbWVzdGFtcF9sb2NrIGFuZCBubwp0aW1lc3RhbXBfYWN0aXZl
IGZpZWxkLiBBbHNvLCBya2NhbmZkX3RpbWVzdGFtcF93b3JrKCkgY2FsbHMKdGltZWNvdW50ZXJf
cmVhZCgmcHJpdi0+dGMpIHdpdGggbm8gbG9jayBoZWxkIGJlZm9yZSBpdCBjYWxscwpzY2hlZHVs
ZV9kZWxheWVkX3dvcmsoKS4KClRoZSBzdGF0ZW1lbnQgInVzaW5nIHRoZSBzYW1lIGxvY2sgYXMg
dGltZWNvdW50ZXJfcmVhZCgpIGFuZAp0aW1lY291bnRlcl9pbml0KCkiIGlzIG9ubHkgdHJ1ZSBv
bmNlIHRoZSBwcmVjZWRpbmcgcGF0Y2ggaW4gdGhpcwpzZXJpZXMgaXMgYXBwbGllZDoKCiAgODA2
NjkxYTIwMDQ4ICgiY2FuOiByb2NrY2hpcF9jYW5mZDogcHJldmVudCB0aW1lc3RhbXAgd29yayBm
cm9tCiAgcmVhcm1pbmcgYWZ0ZXIgYnVzLW9mZiIpCgpUaGF0IHBhdGNoIGFkZHMgdGhlIGxvY2sg
YW5kIHRoZSBhY3RpdmUgZmxhZy4gSXQgYWxzbyBhZGRzIHRoZSBsb2NraW5nCmluIHJrY2FuZmRf
dGltZXN0YW1wX3dvcmsoKSBhbmQgcmtjYW5mZF90aW1lc3RhbXBfc3RhcnQoKToKCmRyaXZlcnMv
bmV0L2Nhbi9yb2NrY2hpcC9yb2NrY2hpcF9jYW5mZC10aW1lc3RhbXAuYzpya2NhbmZkX3RpbWVz
dGFtcF93b3JrKCkgewogICAgLi4uCglzcGluX2xvY2tfaXJxc2F2ZSgmcHJpdi0+dGltZXN0YW1w
X2xvY2ssIGZsYWdzKTsKCWlmIChwcml2LT50aW1lc3RhbXBfYWN0aXZlKSB7CgkJdGltZWNvdW50
ZXJfcmVhZCgmcHJpdi0+dGMpOwogICAgLi4uCn0KClRoZSBwYXJhZ3JhcGggYWJvdXQgbG9jayBu
ZXN0aW5nIGFsc28gZGVwZW5kcyBvbiB0eF9sb2NrLiBUaGF0IGxvY2sgY29tZXMKZnJvbSB0aGUg
ZWFybGllciBwYXRjaGVzICJjYW46IHJvY2tjaGlwX2NhbmZkOiBzZXJpYWxpemUgVFggc3RhdGUg
YW5kCmNvbW1hbmQgd3JpdGVzIiBhbmQgImNhbjogcm9ja2NoaXBfY2FuZmQ6IHNlcmlhbGl6ZSBU
WCB3aXRoIGJ1cy1vZmYgYW5kCnJlc3RhcnQiLgoKQSBwbGFpbiBjaGVycnktcGljayBvbnRvIGEg
dHJlZSB3aXRob3V0IDgwNjY5MWEyMDA0OCB3b3VsZCBmYWlsIHRvIGJ1aWxkLAphbmQgdGhhdCBw
YXRjaCBjYXJyaWVzIHRoZSBzYW1lIEZpeGVzOiB0YWcgYW5kIENjOiBzdGFibGUuIEJ1dCBzdXBw
b3NlCnNvbWVvbmUgYWRhcHRzIHRoaXMgcGF0Y2ggYnkgaGFuZCBhbmQgb25seSBhZGRzIGEgbG9j
ayBpbgpya2NhbmZkX3NrYl9zZXRfdGltZXN0YW1wKCkuIFRoZSB0aW1lY291bnRlcl9yZWFkKCkg
aW4gdGhlIHdvcmtlciB3b3VsZApzdGlsbCBydW4gdW5sb2NrZWQsIHNvIHRoZSByYWNlIHdvdWxk
IHN0YXkgb3Blbi4KCk90aGVyIHBhdGNoZXMgaW4gdGhpcyBzZXJpZXMgaW5jbHVkZSBhIG5vdGUg
c3VjaCBhcyAiQmFja3BvcnRzIG11c3QKaW5jbHVkZSB0aGUgcHJlY2VkaW5nIFRYIHNlcmlhbGl6
YXRpb24gZml4Li4uIi4gQ291bGQgYSBzaW1pbGFyIG5vdGUgYmUKYWRkZWQgaGVyZSwgbmFtaW5n
IDgwNjY5MWEyMDA0OCBhbmQgdGhlIHR4X2xvY2sgcGF0Y2hlcyBhcyBwcmVyZXF1aXNpdGVzPwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vbmV0ZGV2LWFpLmJvdHMubGludXguZGV2
L3Nhc2hpa28vIy9wYXRjaHNldC8yMDI2MTEwOC1yb2NrY2hpcC1jYW5mZC1yZXN0YXJ0LWNsb3Nl
LXY4LTAtM2U3YTIzZmQ5ZWFlJTQwcXEuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

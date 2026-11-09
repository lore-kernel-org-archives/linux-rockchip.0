Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B69B606D810
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 11:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PmlBya/m;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=BsNl7ZDe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7VURLCV8157RDTte+TrgenmyOK/5mTJNgrdykh4kGiY=; b=PmlBya/misI6tdDJxlyi6iBHYa
	SCHL6ZFRQ1mRlzLPpagjUIM2DFCfK6wPuAnQXDd8VQgXqBwdLH5i/85SmOTte6WfwsNjwxs8rCglE
	KbZwe8U1/g4Anqg5IboWZgG1TmmJf1+D0yq7GFJlRGkmlnadPp3poBvelWaSF88FGdS8Z+NPtt+kk
	BjPmx8QKQm0yxtT4CYfrPVBS5UOgm8gGKjAz1vvKDxFSdjHS7Gjfx815TMXip+z5k7KkplV1iGmHA
	HeTZRwhtGVCIhaM3Atxtf7ypzX9/ezGdjJGYO9SSknAI4fu4a2/Du5NRkC/9tzRZrb/ksox7dUCn7
	ApOD8mPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQNh6-00000000Xk9-2Oco;
	Mon, 09 Nov 2026 11:37:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQNh5-00000000XjF-03In;
	Mon, 09 Nov 2026 11:37:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2CE8361262;
	Mon,  9 Nov 2026 11:37:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D21341F0089F;
	Mon,  9 Nov 2026 11:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794224265;
	bh=2ViT3Yo4M3SsUpvja1R5K7/sF1YFo5i6DucfxLblQBU=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=BsNl7ZDeGyPFQKK2Sj1fAO+4RkRF1uiZ6sP5hR44G7QzyBrQ44q9NwfvOW/fxL2n6
	 1GgkdTCTfIHUWTTx+NhQtw/CVAybuER3+EHRhrGsmvVzn14YrIP9RG2aOMLXDapPfB
	 FTcDrtf/1N9pKXuB+yw2ztzN8T96RVDxGQnnzftygYfPR6rhvkqUEyUgtq2PKSUkvR
	 zkKXPatfQr+bwb57/ifJYEpOR9/QZqsHtrXWmEdCCHNZPT9JNCB6SY/bThhSbCYMbK
	 i8P762UuS7STpaLKdWxNs40zTEM5U939heEyAKA/tqh6mf9b9LN5u7HKTI45OKXUFm
	 CfMbFacbIj/wg==
Subject: Re: [PATCH net v8 03/10] can: rockchip_canfd: retry the outstanding TX buffer
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
Date: Mon, 09 Nov 2026 11:37:44 +0000
Message-ID: <179422426444.994134.7825659732864102594@kernel.org>
In-Reply-To: <20261108-rockchip-canfd-restart-close-v8-3-3e7a23fd9eae@qq.com>
References: <20261108-rockchip-canfd-restart-close-v8-3-3e7a23fd9eae@qq.com>
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
Y2FuOiByb2NrY2hpcF9jYW5mZDogcmV0cnkgdGhlCiAgb3V0c3RhbmRpbmcgVFggYnVmZmVyIiBz
dGF0ZXMgdGhlIHVzZXItdmlzaWJsZSBmYWlsdXJlICgidGhlIHBlbmRpbmfigKYKCi0tCgpjYW46
IHJvY2tjaGlwX2NhbmZkOiByZXRyeSB0aGUgb3V0c3RhbmRpbmcgVFggYnVmZmVyCgpUaGlzIHBh
dGNoIGNoYW5nZXMgcmtjYW5mZF94bWl0X3JldHJ5KCkgc28gdGhlIGVycmF0dW0gNiByZXRyYW5z
bWlzc2lvbgp1c2VzIHR4X3RhaWwgaW5zdGVhZCBvZiB0eF9oZWFkIHRvIHBpY2sgdGhlIFRYIGJ1
ZmZlci4gVGhlIGdvYWwgaXMgdG8gcmV0cnkKdGhlIGZyYW1lIHRoYXQgaXMgc3RpbGwgcGVuZGlu
ZyByYXRoZXIgdGhhbiB0aGUgbmV4dCBmcmVlIGJ1ZmZlci4gSXQgaXMKdGFnZ2VkIGZvciBzdGFi
bGUgd2l0aCBhIEZpeGVzOiB0YWcgcG9pbnRpbmcgYXQgYTU2MDVkNjFjN2RkLgoKPiBVc2UgdHhf
dGFpbCB0byByZXRyeSB0aGUgb3V0c3RhbmRpbmcgYnVmZmVyLiBPdGhlcndpc2UsIHRoZSBwZW5k
aW5nIGVjaG8KPiBlbnRyeSBjYW4gcmVtYWluIGluY29tcGxldGUgYW5kIGxlYXZlIHRoZSBUWCBx
dWV1ZSBzdG9wcGVkLgoKW1NldmVyaXR5OiBMb3ddClRoZSB0eF90YWlsIGluZGV4aW5nIGxvb2tz
IGNvcnJlY3QuIFRoZSBzdGFibGUganVzdGlmaWNhdGlvbiBpcyBoYXJkZXIgdG8KY2hlY2ssIHRo
b3VnaCwgYmVjYXVzZSB0aGUgc3RhbGwgZGVzY3JpYmVkIGhlcmUgZGVwZW5kcyBvbiBob3cgdGhl
CmhhcmR3YXJlIGhhbmRsZXMgVFhfUkVRKG4pLCBhbmQgdGhlIGNvbW1pdCBtZXNzYWdlIGRvZXNu
J3Qgc2F5LgoKVGhlIGNvbnRyb2xsZXIgaGFzIG9uZSBUWCBmcmFtZSByZWdpc3RlciB3aW5kb3cg
KFJLQ0FORkRfUkVHX0ZEX1RYRlJBTUVJTkZPLApSS0NBTkZEX1JFR19GRF9UWElELCBSS0NBTkZE
X1JFR19GRF9UWERBVEEwLi4pIGFuZCB0d28gcmVxdWVzdCBiaXRzLiBFdmVyeQpmcmFtZSBpcyB3
cml0dGVuIGludG8gdGhhdCBzaGFyZWQgd2luZG93IGluIHJrY2FuZmRfc3RhcnRfeG1pdCgpIGJl
Zm9yZQpUWF9SRVEodHhfaGVhZCkgaXMgaXNzdWVkLgoKcmtjYW5mZF94bWl0X3JldHJ5KCkgaGFz
IG9uZSBjYWxsZXIsIHJrY2FuZmRfcnhzdHhfZmlsdGVyKCkuIFRoYXQgY2FsbGVyCm9ubHkgZ2V0
cyB0aGF0IGZhciB3aGVuIHRoZSBub21pbmFsIGZyYW1lIGVjaG9fc2tiW3R4X3RhaWxdIGlzIEVG
RjoKCmRyaXZlcnMvbmV0L2Nhbi9yb2NrY2hpcC9yb2NrY2hpcF9jYW5mZC1yeC5jOnJrY2FuZmRf
cnhzdHhfZmlsdGVyKCkgewogICAgLi4uCglpZiAoIShjZmRfbm9taW5hbC0+Y2FuX2lkICYgQ0FO
X0VGRl9GTEFHKSB8fAoJICAgIChjZmRfcngtPmNhbl9pZCAmIENBTl9FRkZfRkxBRykpCgkJcmV0
dXJuIDA7CiAgICAuLi4KCXJrY2FuZmRfeG1pdF9yZXRyeShwcml2KTsKICAgIC4uLgp9CgpXaGls
ZSB0aGUgdGFpbCBmcmFtZSBpcyBFRkYsIG5vIGZ1cnRoZXIgZnJhbWUgY2FuIGJlIHF1ZXVlZDoK
CmRyaXZlcnMvbmV0L2Nhbi9yb2NrY2hpcC9yb2NrY2hpcF9jYW5mZC10eC5jOnJrY2FuZmRfZ2V0
X2VmZmVjdGl2ZV90eF9mcmVlKCkgewogICAgLi4uCglpZiAocHJpdi0+ZGV2dHlwZV9kYXRhLnF1
aXJrcyAmIFJLQ0FORkRfUVVJUktfUkszNTY4X0VSUkFUVU1fNiAmJgoJICAgIHJrY2FuZmRfdHhf
dGFpbF9pc19lZmYocHJpdikpCgkJcmV0dXJuIDA7CiAgICAuLi4KfQoKU28gd2hlbmV2ZXIgdGhl
IHJldHJ5IHJ1bnMsIGV4YWN0bHkgb25lIGZyYW1lIHNob3VsZCBiZSBwZW5kaW5nLCBhbmQgaXQK
c2hvdWxkIGJlIHRoZSBsYXN0IGZyYW1lIHdyaXR0ZW4gaW50byB0aGUgc2hhcmVkIHdpbmRvdy4K
CklmIHdyaXRpbmcgVFhfUkVRKG4pIGxhdGNoZXMgdGhlIGN1cnJlbnQgd2luZG93IGludG8gYnVm
ZmVyIG4sIHdvdWxkbid0IHRoZQpvbGQgVFhfUkVRKHR4X2hlYWQpIGhhdmUgcmVzZW50IHRoZSBj
b3JyZWN0IGZyYW1lPyBUaGUgZWNobyB3b3VsZCB0aGVuCm1hdGNoIGVjaG9fc2tiW3R4X3RhaWxd
IGFuZCBjb21wbGV0aW9uIHdvdWxkIGdvIGFoZWFkIG5vcm1hbGx5LgoKQXMgZmFyIGFzIEkgY2Fu
IHRlbGwsIHRoZSBzdGFsbCBvbmx5IGhhcHBlbnMgaWYgYnVmZmVyIG4ga2VlcHMgaXRzIG9sZApj
b250ZW50cyBhbmQgVFhfUkVRKG4pIHJlc2VuZHMgdGhlbSB3aXRob3V0IHJlbG9hZGluZyBmcm9t
IHRoZSB3aW5kb3cuCgpXYXMgdGhlIHN0YWxsIGFjdHVhbGx5IHNlZW4gb24gaGFyZHdhcmUsIG9y
IGlzIHRoaXMgbWFpbmx5IG1ha2luZyB0aGUgc2xvdAppbmRleGluZyBjb25zaXN0ZW50IHdpdGgg
dGhlIGVjaG9fc2tiW3R4X3RhaWxdIG1vZGVsPyBUaGUgRXJyYXR1bSA2IGNvbW1lbnQKaW4gcm9j
a2NoaXBfY2FuZmQuaCBoYXMgYSBjYW5mZHRlc3QgcmVwcm9kdWNlciwgYW5kIGE1NjA1ZDYxYzdk
ZCBjYXJyaWVzIGEKVGVzdGVkLWJ5IGZvciB0aGUgZGVwdGgtMiBjaGFuZ2UuCgpDb3VsZCB0aGUg
Y29tbWl0IG1lc3NhZ2Ugc2F5IHdoaWNoIFRYX1JFUShuKSBiZWhhdmlvdXIgdGhlIGZpeCByZWxp
ZXMgb24sCm9yIGFkZCBhIFRlc3RlZC1ieSBvciByZXByb2R1Y2VyLCBzbyBzdGFibGUgYmFja3Bv
cnRlcnMgY2FuIGp1ZGdlIGl0PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vbmV0
ZGV2LWFpLmJvdHMubGludXguZGV2L3Nhc2hpa28vIy9wYXRjaHNldC8yMDI2MTEwOC1yb2NrY2hp
cC1jYW5mZC1yZXN0YXJ0LWNsb3NlLXY4LTAtM2U3YTIzZmQ5ZWFlJTQwcXEuY29tCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

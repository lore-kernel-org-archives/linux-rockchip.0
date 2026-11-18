Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2F0606A320
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 10:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vKAjCWS+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=ASB9sl6E
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mDVdNmC56Bvw3I94mEdzX/NSW8LrS4qdbkRuU2ILT04=; b=vKAjCWS+6c3CsqULebJny97f8R
	MoXepmRm8r+wQUlXGKrcMR1fefbNSy6ERrefr0Z+pno/hkMhccAKhf1GiEXlebMx6FjfBKtoJuuwT
	t9ds4fagBNHh2fZ6A+EWrF8zp80G/S8XcaJjeHPxyD+/8M1I+mNbWjqHQc/zk9u3wJ0RwE59Bn9fo
	wna8g88uqXNu31tySM7/WNRhmscvrJw/V1uEp4t7BdYF/vL2q3/Pa2zCJO2p6ImR8myNI0p00kpi9
	BVNJLDcJL32JGSPlehq/zqhS2VcAJkVpNO0clSoiZ/1lKRDlFnwZWpiOfi+0YGYvLQqECJmvClNIp
	sxpsyurA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTdIo-00000008dwm-32vx;
	Wed, 18 Nov 2026 10:54:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTdIl-00000008duy-3a5F;
	Wed, 18 Nov 2026 10:54:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2d12lWVGBsaoMn/Enc4uD3O8Aj7O2S/+EaVF50C+EQ4=; b=ASB9sl6EOSdJIB1EGdzGn/PsUI
	tjmO5szAeJdZlM3+Q+1IxHT6bEQz7NGbHeDeXN/VaxTVXWPcEGKc4AfeQfzAuyTuxCIVTt7MpD5t/
	XlSIvngr8SDDvOVk9p25Jn/Q/FYRGNish8CUgxxwlY5S/t2eXyRIV1e04CKzxeg55zOC/EKwYhBkO
	GGKPXSQczmZOV3gvlJe9BxKNc5Kdwfh74CEC8xAFFoZieOiti6wZ9MnWlrXi0cC/pRxJv6OdZvQ5k
	F+DEY3D2KFaFrIzZppTvcBQ5gdYd88NvoFprVbrXRsYK2qEsmfnrs9yIAcKEjRDQLi4S3L2LG/LU8
	ffa/brvQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: broonie@kernel.org, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 quentin.schulz@cherry.de, Lee Jones <lee@kernel.org>,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v3 6/7] spi: rockchip: Move to pm_runtime_resume_and_get
Date: Wed, 18 Nov 2026 11:54:02 +0100
Message-ID: <ldw_Vn7fRw2QdWAMZ2npBw@sntech.de>
In-Reply-To: <av0CaMF_jOyqMYA0@venus>
References: <20261117235021.2013719-1-heiko@sntech.de>
 <20261117235021.2013719-7-heiko@sntech.de> <av0CaMF_jOyqMYA0@venus>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_025407_889988_8EC4A64D 
X-CRM114-Status: GOOD (  15.47  )
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

QW0gTWl0dHdvY2gsIDE4LiBOb3ZlbWJlciAyMDI2LCAwMjo1MzozMiBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIFNlYmFzdGlhbiBSZWljaGVsOgo+IEhpLAo+IAo+IE9uIFdl
ZCwgTm92IDE4LCAyMDI2IGF0IDEyOjUwOjIwQU0gKzAxMDAsIEhlaWtvIFN0dWVibmVyIHdyb3Rl
Ogo+ID4gRnJvbTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVibmVyQGNoZXJyeS5kZT4KPiA+
IAo+ID4gQ3VycmVudGx5IHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSBpcyB1c2VkLCB3aGljaCBpbmNy
ZW1lbnRzIHRoZSB1c2FnZQo+ID4gY291bnQgZXZlbiBpZiB0aGUgcmVzdW1lIHdhcyBub3Qgc3Vj
Y2Vzc2Z1bC4KPiA+IAo+ID4gTW92ZSB0byB0aGUgbW9yZSBtb2Rlcm4gcG1fcnVudGltZV9yZXN1
bWVfYW5kX2dldCgpIHdoaWNoIGhhbmRsZXMgdGhlCj4gPiB1c2FnZSBjb3VudGVyIGJldHRlci4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVibmVyQGNo
ZXJyeS5kZT4KPiA+IC0tLQo+IAo+IFRoaXMgb25seSBtYWtlcyBzZW5zZSB3aGVuIGNvbWJpbmVk
IHdpdGggZXJyb3IgaGFuZGxpbmcuIEtlZXBpbmcKPiB0aGUgdXNlIGNvdW50IGluY3JlYXNlZCBt
YWtlcyBtb3JlIHNlbnNlIGZvciB0aGUgY3VycmVudCBjb2RlOgo+IAo+IHBtX3J1bnRpbWVfZ2V0
X3N5bmMoKTsgLy8ga2VlcCB1c2UgY291bnQgaW5jcmVhc2VkIG9uIGZhaWx1cmUKPiByYW5kb21f
Y29kZSgpOwo+IHBtX3J1bnRpbWVfcHV0KCk7IC8vIGFsd2F5cyBkZWNyZWFzZSB0aGUgUlBNIHVz
ZSBjb3VudAo+IAo+IE1lYW53aGlsZSB5b3VyIG5ldyBjb2RlIHdvdWxkIHJlc3VsdCBpbiBkb3Vi
bGUgZGVjcmVhc2Ugb24gZXJyb3I6CgpkYXJuLCBvbmUgc2hvdWxkIG5vdCBnbyAiZWgsIGxldCdz
IGp1c3QgdXNlIHRoZSBzYW1lIHBtLXJ1bnRpbWUgcGF0dGVybiwKc2hvdWxkIGJlIGVhc3kiIDst
KSAuCgpCdXQgSSBndWVzcyByZWFsIGVycm9yIGhhbmRsaW5nIGluIHRob3NlIGNhc2VzIG1pZ2h0
IGFjdHVhbGx5IGRlc2lyZWFibGUuCgoKSGVpa28KCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

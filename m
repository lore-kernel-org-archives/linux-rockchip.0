Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB78E606D811
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 14:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bhbQJ3oA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=ixkdVo0Z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vSo9j87tbz65UV0OmqxmAKcbYmfMNimeNBqryY6u/9M=; b=bhbQJ3oA3oNwDSizPMXc15FwXM
	CDZZd98BAtOI6Jg+tTrUodj1b5Gk/56Ram6LaX8Pvb6vZMLHGqgc4fuCuh2Wo7sHGYPtaqLF9B5BF
	1i7Fc1/m9DwIgOORdBytCdv52eWNpuzoaBImsjk3a32irgoojEHqZcq8VnFemWmkZZxUmTp54Il2/
	UdEy4scsSBB4BvaALfEQcVo/gxJ82zcMMuazKiPmv2Jpbb3JJqG8J8qP1pxK/zHGdg59KXRyulRbB
	VFNUXf3z5SvWN65LaV38qlvIu2caZsb4fKoJyHJBj1Ojootf2Zfzab598WIexr1/GwME5A5+0OzO2
	uV/cyFOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPhpy-0000000Es7I-181b;
	Sat, 07 Nov 2026 14:56:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPhpv-0000000Es6T-3zJO;
	Sat, 07 Nov 2026 14:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Sv9tRvnr9TF/tmGqWJfOuRnKtgkf41Z5HKKYDQ+jKyo=; b=ixkdVo0Zqz03Xevev6+EHeeEz1
	IVMALVClC0XEpqnA2KMMA69iQ2nCyZsMbVYFmIrRrf0fzrlBb6SV2Oh1T7Wz3yfqJB3/rALSUPsHs
	flHyyzCaPXjSYOkyRXtBp3X7Df6y2BXW6TGYxzUMPSmCji4ClqojwoGl4lkDI52LK6YODb84z3hrn
	KWzM7saE9G2/x4gDV/D0e2lDeBEyNRb3KFXqH29Iutzwowxw3ZwSaW6rQjTzyxQkbQ1woSv5qD3Gs
	Y7tmcC3/V2fYBKWfowJHPQZsWE0CIdH3XTl80RtZ/LJF2D7yKB2rmJPhgzQ4pHCOTTAz7R4a8QGMq
	lupSoPgQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: rafael@kernel.org, Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
 Lukasz Luba <lukasz.luba@arm.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v5 5/6] powercap: dtpm: Rename Rockchip virtual node descriptor
Date: Sat, 07 Nov 2026 15:56:03 +0100
Message-ID: <3394748.l52yBJDM9G@phil>
In-Reply-To: <d58bc47b95fad310cb506ca01b59cbc54f0d8c75.1793666444.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1793666444.git.daniel.lezcano@oss.qualcomm.com>
 <d58bc47b95fad310cb506ca01b59cbc54f0d8c75.1793666444.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_065607_990264_B9EDCF93 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
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

QW0gRGllbnN0YWcsIDMuIE5vdmVtYmVyIDIwMjYsIDA1OjQ4OjE5IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRGFuaWVsIExlemNhbm86Cj4gVGhlIHZpcnR1YWwgRFRQTSBu
b2RlIGRlc2NyaXB0b3IgaXMgbmFtZWQgYWZ0ZXIgdGhlIFJLMzM5OSBldmVuIHRob3VnaAo+IGl0
IGRvZXMgbm90IGNvbnRhaW4gYW55IFNvQy1zcGVjaWZpYyBpbmZvcm1hdGlvbi4KPiAKPiBSZW5h
bWUgaXQgdG8gcm9ja2NoaXBfdmlydHVhbCBzbyBpdCBjYW4gYmUgcmV1c2VkIGJ5IG90aGVyIFJv
Y2tjaGlwIFNvQwo+IGhpZXJhcmNoaWVzLgo+IAo+IE5vIGZ1bmN0aW9uYWwgY2hhbmdlIGludGVu
ZGVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0Bv
c3MucXVhbGNvbW0uY29tPgo+IFJldmlld2VkLWJ5OiBMdWthc3ogTHViYSA8bHVrYXN6Lmx1YmFA
YXJtLmNvbT4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

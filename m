Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC0B606A339
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 10:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gn9mmwWI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=0HwuzVzr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=iIu4dxsozINZcvMNF50QxSG7kJOiX29Cq5VISfhXL/M=; b=gn9mmwWIyG56zJZy7LzFxHiIsO
	brskR4xxX1QfWDy2PUcr9ec3d9AD4rDA62+1iCl2ho65s9EHDIw8wJ0n6yuTnMNuMJpa7s/Z15ulp
	zS5zEtwtkLecuBhI/9fEeOChJePTqahNaNq/IW5aStnnMWlQst1RVz6yGFfee1lRwCZyoEokPpxma
	edRScXbHZ/nbRERKwdis1q92OGaLHhMJO0BjP9QlsYLUZi5Fd5LH8Y1VALZKKnjT16f+lRoEkxERK
	VxYvZYWdmZRWEAeJtMRvvjFjwL+zuI83IYWO4eVtteyCHEMdEt42R4UnMVqWQhoPylcVUKvSoNJKe
	kOgpiVHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQitp-00000003QlK-2jbZ;
	Tue, 10 Nov 2026 10:16:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQite-00000003Qkj-0g8f;
	Tue, 10 Nov 2026 10:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=uRXUy8URMFJL42UsUUDEQakhlpG+sH9T+5dJoqYfuRs=; b=0HwuzVzrFlw4rhUtVs2kpNQEsL
	Qz2R91yxGkmikYXIzlq3/uDopppNQzO+ovydO0aqepYs4IW+TGhaydKscis69hg8WLyV+qVBtXZpv
	KOYsA+PqeciKzq1fseWzrPVaKgcvp27hTGOxsJ/8cddN/zzBSRvTc+dWvYv+Jz8qK2kZe6DjTq5u4
	PwyeJ0lntyDwDtC+V+bHoh+CCfS5h3cV/nJ88rr4sZUIDnL2Gs2AjMpde+0WoKzcReDCEmiZ083SA
	FtjMV5Edg9WVcxxXFh3EcBK7dGHzOyHkEUySfdv7bnoJjbxZrXkH2n8mjbwq+fy7t4719lX7rGEYA
	+LrG2LeQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	hjc@rock-chips.com,
	andyshrk@163.com,
	chaoyi.chen@rock-chips.com,
	damon.ding@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de
Subject: [PATCH] MAINTAINERS: Add two reviewers to the Rockchip DRM entry
Date: Tue, 10 Nov 2026 11:15:53 +0100
Message-ID: <20261110101554.1809467-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_021610_219902_F0E0B61C 
X-CRM114-Status: UNSURE (   9.74  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Q2hhb3lpIENoZW4gYW5kIERhbW9uIERpbmcgdm9sdW50ZWVyZWQgdG8gYmVjb21lIHJldmlld2Vy
cyBmb3IgdGhlClJvY2tjaGlwIERSTSBkcml2ZXJzLCBzbyBhZGQgdGhlbSB0byB0aGUgTUFJTlRB
SU5FUlMgZW50cnkuCgpTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNo
LmRlPgotLS0KIE1BSU5UQUlORVJTIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKaW5kZXggOTNhYmJi
MzE1MDY1Li45OTE0MmE5MTEzNTAgMTAwNjQ0Ci0tLSBhL01BSU5UQUlORVJTCisrKyBiL01BSU5U
QUlORVJTCkBAIC05MTM5LDYgKzkxMzksOCBAQCBEUk0gRFJJVkVSUyBGT1IgUk9DS0NISVAKIE06
CVNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+CiBNOglIZWlrbyBTdMO8Ym5lciA8aGVp
a29Ac250ZWNoLmRlPgogTToJQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+CitSOglDaGFveWkg
Q2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+CitSOglEYW1vbiBEaW5nIDxkYW1vbi5k
aW5nQHJvY2stY2hpcHMuY29tPgogTDoJZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwog
TDoJbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwogUzoJTWFpbnRhaW5lZAotLSAK
Mi40Ny4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

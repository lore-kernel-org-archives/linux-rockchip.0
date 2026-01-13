Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 991E4D29DDD
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 06:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4u+63XxOYKYQB3oxo57vuknxCa1LFCwQdyuLnqeO5pE=; b=LcUC39Z7gJAMxY
	a3DkcG3n/COpdWi4o7ic0/pJ/t0ehFuQK8fSs/r6RjWnR7csnM1ASU2ZrKE3iVczkOSLA6ySirLzq
	fXmwqIAyTSaygpsGyQwByHJNEnWMrKSfDA4o5TSlXlE6pe9mAXniybFqU5Lh8i3t4VoEba5142zgZ
	OfAFsjnlmx3pYrknl56FoIEBKtRJqrmOqlYNZQ8x9FtDnhSAOhZ5gzSgmXfIGnxIY/pIyKr6gDQue
	XgDjnBjqamwVi4wnBfxAKkCUhXwgnFsCjRGJXHGn/Pq451dkYf9bwP7png16l1x90ihukACNU2R3d
	i+31kcE8dUMXXZEvAVnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfY6t-00000006bkq-3Gly;
	Tue, 13 Jan 2026 06:42:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfY6m-00000006bdR-0LKp;
	Tue, 13 Jan 2026 06:42:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 251B54437C;
	Tue, 13 Jan 2026 06:42:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94ADC19425;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768286545;
	bh=JVfXDE3E2ltmMy4GP25Fi2by9NnQ3UmZ7e8txPADr30=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=qXlXaHdAa36uNPMLCrQhJ/6CsHPDR2IaT+Muq8evWJlHpus7SfpHIJwM/e+GpH0Jx
	 q9eFz91l8NYONrCbMlpeWeTdk2sF8xfh6PtgHrXKoWBwoMirIJHQY0QzS+2CDNjimB
	 1cl6zqKpPoeucsNX01exINvZxBuXbknjLJHzkEQdDiecI2933GHXkO9buS7Dak7yIt
	 aypgzwXSyAFRTAWBzdNoULlC9APQZIYDX6ItONDnV9jM2CsArtO/OluOf2iTl7+TTg
	 KqpmN1Pshc0VkXF5LKhCmB2Np5Bwh7oL1xgjMOb693Z33Y640xCnkxN9oDEt0ZRWO3
	 jhxSOBkjdwUSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECD7D29DE0;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 12 Jan 2026 22:42:26 -0800
Subject: [PATCH 3/3] arm64: dts: rockchip: Remove interrupt GPIO for WiFi
 for the Pinephone Pro
MIME-Version: 1.0
Message-Id: <20260112-ppp_connectivity-v1-3-284d6e83b212@gmail.com>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
In-Reply-To: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, Ondrej Jirman <megi@xff.cz>, 
 Martijn Braam <martijn@brixit.nl>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768286545; l=1127;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=V2xGi6mOVeWleP+m2F/1DkoT1Cl2cZl0GZeCm6kqSeY=;
 b=QB+1y+pDSe95xr6xk+qde0I6KgnZrK15MGSnGS0vNzWdXVIPaXxoqEtr5mcbivN2mUb8Nm6L0
 Um61cMTLCyJDlyJ3mmvuBBGruOkvdrJ7XOzBXjx4r9u3vzsLjn6YkCL
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_224228_144340_4952B68B 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: guptarud@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpXaWZpIGlzIGN1cnJlbnRseSB1bnVz
YWJsZSBpZiBpbnRlcnJ1cHRzIGFyZSBkZWZpbmVkLiBMZXQncyByZW1vdmUgdGhlbQpzbyB0aGF0
IFdpZmkgbmV0d29ya3MgYXJlIGFjdHVhbGx5IGRpc2NvdmVyYWJsZS4KCkNvLWRldmVsb3BlZC1i
eTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+ClNpZ25lZC1vZmYtYnk6IE1hcnRp
am4gQnJhYW0gPG1hcnRpam5AYnJpeGl0Lm5sPgpDby1kZXZlbG9wZWQtYnk6IEthbWlsIFRyemNp
xYRza2kgPGF5dWZhbkBheXVmYW4uZXU+ClNpZ25lZC1vZmYtYnk6IEthbWlsIFRyemNpxYRza2kg
PGF5dWZhbkBheXVmYW4uZXU+ClNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZm
LmN6PgpTaWduZWQtb2ZmLWJ5OiBSdWRyYWtzaGEgR3VwdGEgPGd1cHRhcnVkQGdtYWlsLmNvbT4K
LS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0
cyB8IDMgLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCmluZGV4
IDk3ZDBiZjQ1NTI1OC4uNjliYjlkZTRjZTU1IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cworKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwpAQCAtODM0LDkgKzgzNCw2
IEBAICZzZGlvMCB7CiAJYnJjbWY6IHdpZmlAMSB7CiAJCWNvbXBhdGlibGUgPSAiYnJjbSxiY200
MzI5LWZtYWMiOwogCQlyZWcgPSA8MT47Ci0JCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW80PjsK
LQkJaW50ZXJydXB0cyA9IDxSS19QRDAgSVJRX1RZUEVfTEVWRUxfSElHSD47Ci0JCWludGVycnVw
dC1uYW1lcyA9ICJob3N0LXdha2UiOwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCQlw
aW5jdHJsLTAgPSA8JndpZmlfaG9zdF93YWtlX2w+OwogCX07CgotLSAKMi41Mi4wCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

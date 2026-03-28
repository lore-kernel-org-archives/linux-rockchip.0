Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 658D010F3DE7
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Mar 2026 13:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FZREDsk/eeHpPDYfMV5A+hmf0Tfylwrdf/u/iDvE9Sg=; b=AobCWUNCY1vYNb
	VlCzelOFTWTuPn2Nvp2P5uwPy1hhDqJFM0yrNI4qKaZJlfWpHOCI+emi90Cbi7Z2ZF6fuL1sSXiLa
	jepKDx6Gk/fGT+SVBj1qy/oHVQxP3J/aPRjIrqlGDe+mW4vOrCraVSR0BgzR6WrGOpFI3ThaXiNZ3
	2dpIgck/JL2iXfxLuYN+01WUGGWPtN/etthk8CEnZ5+3RVCiOiM/DrfzG2M9lqIHoyerS6kzKzFAk
	RSmt/7d6rzf96tjQSiCOht33dQwbym/kJnzxDSfH4DK4nHBt/8Ejb5IF4CY7JA6BaXTUsSdkkjrMl
	k0dVcDxI8DuF0ik6GpBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6TxR-00000008zBa-2q7G;
	Sat, 28 Mar 2026 13:44:09 +0000
Received: from out203-205-221-173.mail.qq.com ([203.205.221.173])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6TxP-00000008zAv-1Euk
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Mar 2026 13:44:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1774705445; bh=rFLCYdDTvsSc8eyn9nD3Tqfl6DUP1pTYa4FCzNUr3pk=;
	h=From:To:Cc:Subject:Date;
	b=lVIRN+rEQL4IlEgrVOGKAVb3tZeS3428s4HtcVqEzf3EAWGHqlYXLgwE7GFccCN63
	 xnMW0tKViPN6S4+tqGAJkx4oCw5IxbzC64jgO1ivz28nMEZniWeBWTRpbzghYajN7U
	 /vCUPbs88y52AEQfFqOgS5iZbQQwQtcIs+AEW50k=
Received: from mail.red54.com ([103.253.24.18])
	by newxmesmtplogicsvrszc56-0.qq.com (NewEsmtp) with SMTP
	id AEC8E62D; Sat, 28 Mar 2026 21:43:44 +0800
X-QQ-mid: xmsmtpt1774705424t775usdsw
Message-ID: <tencent_833D2AD6577F21CF38ED1C3FE8814EB4B308@qq.com>
X-QQ-XMAILINFO: NC4p7XQIBeahgv7/OMCpr9OjGJVJ35WpFVBu5hY3UbIKjaD8n0VNPx0ORi4DKu
	 xxvo2ulNpGH1tHptD/O0r4fn/N3oU+DBXq5Wvrksv8aJhedYI73PyPknhlyBoV4dkxU2r83r7NgI
	 NzwrZaQUBAv0z+0eZHNJpA1h98SMzsHksMuIhCNX+247Vu03Y6WYaaWg4KT4LQMkYan6BDNpOWPQ
	 3Q1EFiAJ8/xgssRkADtBVYhWiFJgMWDI5UcX08lZdUV7J0fltBxXlgX1O1FfSE3yu4vutBdiz8in
	 0/2assn8KjpWDrDI8szZiOrrhqXTV6Onvo4Ed/hJKWbAJjkiunnyj+XianaHH5GpuJjtKwRG21qa
	 fvKrrpFp/tuz993awFMvuSycJMs08dv5P0bqhAuC9oqCMSSECytdbpIAguHoY33CM7/p96qL+fdA
	 QSySXUGJETn+osENjS6n6i4rFd49XETgr/fDDmXES9/ZeS5wEHThWysFZVr1R0vXu1nLo4eS5zqV
	 uhSdn+8+EU17y4F9m1TsRe6I16vlRL3ZEbBmdaFT51n/myvF/rZU1tiP4FdGNCqyIAFSrMZYxhcb
	 5toweIp9YUzq5vL1aTc9KDVR/kAg+2as78wu9tq78FcBdbvTD3jvLT/wYPooz7bgjNPmEYzXbxPG
	 KsD5BfY5fcUZvgoiW7TS2zuFHkdCiVAFkLjevFe8hcj5UzBEOx6K9vAZ6Pf9JHOpKWaAqZUc+vUZ
	 aB7bWPbtnxcBGwWG0pNIv4p169Iy3LzBtwEsdPVk7Q6UUU/V4hM3ma7nzkB5+G5ziifQFteY8gCf
	 DNfmWwccx5xbt9L7epqJN2vRpADeHUGoAByEKcZoMIq5FotygvnsmQ0HWDrtHcOca+oX6D8x1zzE
	 jc1JhA9nzlIeGj+ErnSbK8NRYtOAWPZ3e6eJFlD02uyAbZPjb3Z2HLTIkrG54v4bvN5C+MOx9kWK
	 DMAVGvbGKMW37w+w3ZcKjYZ7mwrFOLrjm5R3uC3dWn2d0EawK+UXZJXC36iw9Z7yboR7YuPC5xP8
	 T0yvBw0DByvqqwUxMLpi2J03/iQR3kiDjE5fjiPxaLXLcAj2/q
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
From: =?UTF-8?q?=E8=B0=A2=E8=87=B4=E9=82=A6=20=28XIE=20Zhibang=29?= <Yeking@Red54.com>
To: linux-rockchip@lists.infradead.org
Cc: =?UTF-8?q?=E8=B0=A2=E8=87=B4=E9=82=A6=20=28XIE=20Zhibang=29?= <Yeking@Red54.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] net: stmmac: dwmac-rk: Fix typo in comment
Date: Sat, 28 Mar 2026 13:43:31 +0000
X-OQ-MSGID: <20260328134331.26627-1-Yeking@Red54.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260328_064407_649344_1F451722 
X-CRM114-Status: UNSURE (   9.92  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Q29ycmVjdCB0aGUgdHlwbyAicmszNTIwIiB0byAicmszNTI4IiBpbiBjb21tZW50LgoKU2lnbmVk
LW9mZi1ieTog6LCi6Ie06YKmIChYSUUgWmhpYmFuZykgPFlla2luZ0BSZWQ1NC5jb20+Ci0tLQog
ZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jCmluZGV4IGIwNDQxYTM2OGNi
MS4uOGQ3MDQyZTY4OTI2IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3Jv
L3N0bW1hYy9kd21hYy1yay5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3Rt
bWFjL2R3bWFjLXJrLmMKQEAgLTIxNCw3ICsyMTQsNyBAQCBzdGF0aWMgaW50IHJrX2NvbmZpZ3Vy
ZV9pb19jbGtzZWwoc3RydWN0IHJrX3ByaXZfZGF0YSAqYnNwX3ByaXYpCiAJY3J1ID0gIWlvOwog
CiAJLyogVGhlIGlvX2Nsa3NlbCBjb25maWd1cmF0aW9uIGNhbiBiZSBlaXRoZXI6Ci0JICogIDA9
Q1JVLCAxPUlPIChyazM1MDYsIHJrMzUyMCwgcmszNTc2KSBvcgorCSAqICAwPUNSVSwgMT1JTyAo
cmszNTA2LCByazM1MjgsIHJrMzU3Nikgb3IKIAkgKiAgMD1JTywgMT1DUlUgKHJrMzU4OCkKIAkg
KiB3aGVyZSBDUlUgbWVhbnMgdGhlIHRyYW5zbWl0IGNsb2NrIGNvbWVzIGZyb20gdGhlIENSVSBh
bmQgSU8KIAkgKiBtZWFucyB0aGUgdHJhbnNtaXQgY2xvY2sgY29tZXMgZnJvbSBJTy4KLS0gCjIu
NDMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK

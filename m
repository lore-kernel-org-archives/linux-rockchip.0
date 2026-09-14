Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 130DCC88E72
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2026 08:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxYiH1qqHG5mwF40ziF8LbFy90z/xXgGpCjLHUGHCBY=; b=THzGkiOfznRtkf
	8t7D7y2ga31JgTop57tvfadN4TtzFQP6uhjfB2QKTida72Oa+rxTbyAoO+M3fKng2EWcb0Ve9/+3l
	ULr+FW9CPyuxLkqgha1HNM+aR8kWNs97ero48C/YdjGSfr8ad0yMfH9NrTgp2RxQYhwpGTgQt+OKP
	UTdjUDrqGB0ekmGN09jY9HQ10K2xJX67fZHCrz/zLHfDFWAwTsaQKF8g56mXeKe5ieAzbnqviPhYW
	5auPUDngpsouFUAMDotE+ix2yHEZV/i42RuEN0A95Iuis1Gnq77TdOJAWW5TdhP9oonxmWyeyqHiV
	B5Bd2ZtMXYLEeHVEVQfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x61zD-00000002if1-3FRO;
	Mon, 14 Sep 2026 08:24:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x61z7-00000002ib5-3hA9;
	Mon, 14 Sep 2026 08:24:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 56A0943772;
	Mon, 14 Sep 2026 08:24:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2EE70C2BCFB;
	Mon, 14 Sep 2026 08:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789374257;
	bh=Kmzg1hLY7k2PqqnnJPw4xAFnJIs4MxWG1yajjZhsdWU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=IiO5y3dPQKm24jLWwAXVpfEZgkqwB9/KSDqOyiWH52WNY+oqcLHySKJLXhmAFfu6d
	 /zyd0gcqiSIRw2O2kn6KV6+IjUMDcJc5YgX0ZkNEu4ML2ixoqkF4beS2gauzFYRVkN
	 iosRj94Z9CXqZ4zEYAAgrbmhkG/GjbOC/XkRHPxRwsCigtR4BYsLmrAcnOYPb7mvep
	 K0rHNaCfA3xM1Up9La45gC13mS3ySESdav0UmxX0UW/BVviwi6KScnnoyVKHuGL7vw
	 JNlxiCPaI2mO7Df1/udeRFh4j5YsG0He0PSTI4M6wiHO5BQJ8RKk5UANcFb/LmjYeb
	 omlgQQgonPq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12435C88E6E;
	Mon, 14 Sep 2026 08:24:17 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Date: Mon, 14 Sep 2026 16:24:09 +0800
Subject: [PATCH v5 3/4] arm64: dts: rockchip: Add devicetree for the
 FriendlyElec NanoPi R28S
MIME-Version: 1.0
Message-Id: <20260914-r28s-upstream-v5-3-7409c498e8dc@proton.me>
References: <20260914-r28s-upstream-v5-0-7409c498e8dc@proton.me>
In-Reply-To: <20260914-r28s-upstream-v5-0-7409c498e8dc@proton.me>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>, 
 jensen <jensenhuang@friendlyarm.com>, 
 Andrey Korshunov <razor1702@gmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4506;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=YeTn1EqtodMCk/Sr4EeoKVVQbqIxuHoF6Z4x3WjihKs=;
 b=owGbwMvMwCUmepz3XUtTHjvjabUkhqzl6/WVtupU87/x1eO7v8C8MFSrsLr3YXuJ6Zbyo6XRs
 /qtrrt3lLIwiHExyIopsshuqo4UWhU9s4hF6jjMHFYmkCEMXJwCMJF1DQz/00LkOPv4Fu2/Ltu8
 aFqyivOhIxOtzt9Ze4DhXi3LtYneNowMlza/35V+/g+/QKRu7DRmxjP1cQLq1YwPmqcaZnyJL7v
 DAAA=
X-Developer-Key: i=HystericalDragons@proton.me; a=openpgp;
 fpr=1DB27B5912AA5B9972041AC715C70DEE84826E07
X-Endpoint-Received: by B4 Relay for HystericalDragons@proton.me/default
 with auth_id=1004
X-Original-From: =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
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
Reply-To: HystericalDragons@proton.me
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTog5a6J5a65IDxIeXN0ZXJpY2FsRHJhZ29uc0Bwcm90b24ubWU+CgpUaGUgTmFub1BpIFIy
OFMgaXMgYSBkdWFsIGdpZ2FiaXQgRXRoZXJuZXQgcm91dGVyIGJvYXJkIGJhc2VkIG9uIHRoZQpS
b2NrY2hpcCBSSzM1MjggU29DLCBkZXNpZ25lZCBhbmQgZGV2ZWxvcGVkIGJ5IEZyaWVuZGx5RWxl
Yy4gSXQgc2hhcmVzCm1vc3Qgb2YgaXRzIGRlc2lnbiB3aXRoIHRoZSBOYW5vUGkgWmVybzIsIHNv
IGl0IGJ1aWxkcyBvbiB0aGUgY29tbW9uCnJrMzUyOC1uYW5vcGkuZHRzaS4KClNwZWNpZmljYXRp
b246Ci0gUm9ja2NoaXAgUkszNTI4Ci0gMUdCIFJBTQotIGVNTUMgc29ja2V0IChvcHRpb25hbCkK
LSBNaWNyb1NEIHNsb3QKLSAxeCAxMDAwQmFzZS1UIChHTUFDMSwgUmVhbHRlayBSVEw4MjExRikK
LSAxeCAxMDAwQmFzZS1UIChQQ0llLCBSZWFsdGVrIFJUTDgxMTFIKQotIEFJQ1NlbWkgQUlDODgw
MEQ4MCBTRElPIFdpRmkKLSAzeCBMRURzIChTWVMsIExBTiwgV0FOKQotIDF4IFVTQiAyLjAgVHlw
ZS1DLCBwZXJpcGhlcmFsIG9ubHksIHNoYXJlZCB3aXRoIHRoZSA1ViBwb3dlciBpbnB1dAotIFVz
ZXIgYW5kIE1hc2tST00gYnV0dG9ucwotIEhhb3l1IEhZTTg1NjMgUlRDCi0gMXggVVNCIFR5cGUt
QyBkZWJ1ZyBVQVJUIChvbmJvYXJkIFdDSCBDSDM0MEUpCgpBc3Npc3RlZC1ieTogTExNClNpZ25l
ZC1vZmYtYnk6IOWuieWuuSA8SHlzdGVyaWNhbERyYWdvbnNAcHJvdG9uLm1lPgotLS0KIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICAgICAgIHwgICAxICsKIC4u
Li9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3BpLXIyOHMuZHRzIHwgMTI3ICsr
KysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxMjggaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCmluZGV4IGI2Nzc5MTRjZDMuLjUxYTk4
ODkwODggMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUK
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQpAQCAtOTQsNiArOTQs
NyBAQCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXZpY2hhcmFrLXZhYW1h
bi5kdGIKIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTlwcm8tcm9jay1waS1u
MTAuZHRiCiBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTI4LWFybXNvbS1zaWdl
MS5kdGIKIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1MjgtaGlubGluay1oMjhr
LmR0YgorZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzUyOC1uYW5vcGktcjI4cy5k
dGIKIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1MjgtbmFub3BpLXplcm8yLmR0
YgogZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzUyOC1yYWR4YS1lMjBjLmR0Ygog
ZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzUyOC1yb2NrLTJhLmR0YgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3BpLXIyOHMuZHRz
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3BpLXIyOHMuZHRzCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAuLjBiN2JiYzAxMjIKLS0tIC9kZXYv
bnVsbAorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGktcjI4
cy5kdHMKQEAgLTAsMCArMSwxMjcgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMCsgT1IgTUlUKQorLyoKKyAqIENvcHlyaWdodCAoYykgMjAyMiBSb2NrY2hpcCBFbGVjdHJv
bmljcyBDby4sIEx0ZC4KKyAqIENvcHlyaWdodCAoYykgMjAyNiBGcmllbmRseUVsZWMgQ29tcHV0
ZXIgVGVjaC4gQ28uLCBMdGQuCisgKiBDb3B5cmlnaHQgKGMpIDIwMjYg5a6J5a65IDxIeXN0ZXJp
Y2FsRHJhZ29uc0Bwcm90b24ubWU+CisgKi8KKworL2R0cy12MS87CisKKyNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9sZWRzL2NvbW1vbi5oPgorI2luY2x1ZGUgInJrMzUyOC1uYW5vcGkuZHRzaSIKKwor
LyB7CisJbW9kZWwgPSAiRnJpZW5kbHlFbGVjIE5hbm9QaSBSMjhTIjsKKwljb21wYXRpYmxlID0g
ImZyaWVuZGx5YXJtLG5hbm9waS1yMjhzIiwgInJvY2tjaGlwLHJrMzUyOCI7CisKKwlhbGlhc2Vz
IHsKKwkJbW1jMiA9ICZzZGlvMDsKKwl9OworCisJZ3Bpby1rZXlzIHsKKwkJY29tcGF0aWJsZSA9
ICJncGlvLWtleXMiOworCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQlwaW5jdHJsLTAg
PSA8JnVzcl9idG4+OworCisJCWJ1dHRvbi11c2VyIHsKKwkJCWRlYm91bmNlLWludGVydmFsID0g
PDUwPjsKKwkJCWdwaW9zID0gPCZncGlvNCBSS19QQjIgR1BJT19BQ1RJVkVfTE9XPjsKKwkJCWxh
YmVsID0gIlVTRVIiOworCQkJbGludXgsY29kZSA9IDxCVE5fMT47CisJCQl3YWtldXAtc291cmNl
OworCQl9OworCX07CisKKwlzZGlvX3B3cnNlcTogc2Rpby1wd3JzZXEgeworCQljb21wYXRpYmxl
ID0gIm1tYy1wd3JzZXEtc2ltcGxlIjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJ
cGluY3RybC0wID0gPCZwd3Jfd2Y+OworCQlwb3N0LXBvd2VyLW9uLWRlbGF5LW1zID0gPDEwMD47
CisJCXJlc2V0LWdwaW9zID0gPCZncGlvMSBSS19QQzIgR1BJT19BQ1RJVkVfTE9XPjsKKwl9Owor
fTsKKworJmNvbWJwaHkgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKKyZsZWRzIHsKKwlwaW5j
dHJsLTAgPSA8JmxlZDE+LCA8JmxlZDI+LCA8JmxlZF9zeXM+OworCisJbGVkLTEgeworCQljb2xv
ciA9IDxMRURfQ09MT1JfSURfR1JFRU4+OworCQlkZWZhdWx0LXN0YXRlID0gIm9mZiI7CisJCWZ1
bmN0aW9uID0gTEVEX0ZVTkNUSU9OX1dBTjsKKwkJZ3Bpb3MgPSA8JmdwaW80IFJLX1BCMSBHUElP
X0FDVElWRV9ISUdIPjsKKwkJbGludXgsZGVmYXVsdC10cmlnZ2VyID0gIm5ldGRldiI7CisJfTsK
KworCWxlZC0yIHsKKwkJY29sb3IgPSA8TEVEX0NPTE9SX0lEX0dSRUVOPjsKKwkJZGVmYXVsdC1z
dGF0ZSA9ICJvZmYiOworCQlmdW5jdGlvbiA9IExFRF9GVU5DVElPTl9MQU47CisJCWdwaW9zID0g
PCZncGlvNCBSS19QQjMgR1BJT19BQ1RJVkVfSElHSD47CisJCWxpbnV4LGRlZmF1bHQtdHJpZ2dl
ciA9ICJuZXRkZXYiOworCX07Cit9OworCismcGNpZSB7CisJcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKKwlwaW5jdHJsLTAgPSA8JnBjaWVfZXRoX3BlcnN0Yj47CisJcmVzZXQtZ3Bpb3MgPSA8
JmdwaW80IFJLX1BDMCBHUElPX0FDVElWRV9ISUdIPjsKKwl2cGNpZTN2My1zdXBwbHkgPSA8JnZj
Y18zdjM+OworCisJc3RhdHVzID0gIm9rYXkiOworfTsKKworJnBpbmN0cmwgeworCWdwaW8ta2V5
cyB7CisJCXVzcl9idG46IHVzci1idG4geworCQkJcm9ja2NoaXAscGlucyA9IDw0IFJLX1BCMiBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47CisJCX07CisJfTsKKworCWxlZHMgeworCQlsZWQy
OiBsZWQyIHsKKwkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QQjMgUktfRlVOQ19HUElPICZwY2Zn
X3B1bGxfbm9uZT47CisJCX07CisJfTsKKworCXBjaWUgeworCQlwY2llX2V0aF9wZXJzdGI6IHBj
aWUtZXRoLXBlcnN0YiB7CisJCQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEMwIFJLX0ZVTkNfR1BJ
TyAmcGNmZ19wdWxsX25vbmU+OworCQl9OworCX07CisKKwl3aWZpIHsKKwkJcHdyX3dmOiBwd3It
d2YgeworCQkJcm9ja2NoaXAscGlucyA9IDwxIFJLX1BDMiBSS19GVU5DX0dQSU8gJnBjZmdfcHVs
bF9ub25lPjsKKwkJfTsKKwl9OworfTsKKworJnNkaW8wIHsKKwlidXMtd2lkdGggPSA8ND47CisJ
Y2FwLXNkLWhpZ2hzcGVlZDsKKwljYXAtc2Rpby1pcnE7CisJa2VlcC1wb3dlci1pbi1zdXNwZW5k
OworCW1tYy1wd3JzZXEgPSA8JnNkaW9fcHdyc2VxPjsKKwlub24tcmVtb3ZhYmxlOworCXNkLXVo
cy1zZHIxMDQ7CisJdnFtbWMtc3VwcGx5ID0gPCZ2Y2NfMXY4PjsKKworCXN0YXR1cyA9ICJva2F5
IjsKK307CisKKyZ1YXJ0MiB7CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlwaW5jdHJs
LTAgPSA8JnVhcnQybTFfeGZlcj4sIDwmdWFydDJtMV9jdHNuPiwgPCZ1YXJ0Mm0xX3J0c24+Owor
CXVhcnQtaGFzLXJ0c2N0czsKKworCXN0YXR1cyA9ICJva2F5IjsKK307CisKKyZ1c2JfaG9zdDBf
eGhjaSB7CisJLyogVHlwZS1DIHBvcnQsIHNoYXJlZCB3aXRoIHRoZSA1ViBwb3dlciBpbnB1dCAq
LworCWRyX21vZGUgPSAicGVyaXBoZXJhbCI7Cit9OwoKLS0gCjIuNTUuMAoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

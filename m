Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB53ECAC587
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 15:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9n3x8T2NYNyg5N3rx67sIpcydomcQ6BCwBYshN1/H4o=; b=D+EBsuPwyfC3kn
	KQqTyHa3Mgs0vH+lF8WVPSlLF1aOBwg0hsSv8xjJ81hNokk7tN3dZiGM8/4YvwWYtfIPPJIUz9sEU
	uLuxImmvGfcB04+ePA/JnVu8T5kQGQakYQB5iC5gt4jCprbxhHK3DsGtxDCLU5Yw321+NyO757AIx
	66+ogUbrK5YHGoBTOd43b0k8PzUTXHaLGdM1BZ8qwAgFFvAviaaynd0GhYhF5goWnoURvR9jcJ8wj
	DFZIHawpCUK1yrIEak8QPnkxlpvD/eIynyl7DEH3q7zeZc3xteIm+cYY4uNKn7kdB3g6K8OXJYSkD
	AnEzA/rM5Ep+epruaJ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwjZl-000000040Hi-46E1;
	Thu, 11 Sep 2025 15:51:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwjZj-000000040GN-3u6K
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Sep 2025 15:51:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5D67160234;
	Thu, 11 Sep 2025 15:51:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A446CC4CEF0;
	Thu, 11 Sep 2025 15:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757605867;
	bh=D+Kiy6o94m1pRNW35/OkOm3daFa7P2zcK4Au4ZPzqxM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AFnDgDquTQ4yMZNrF/l3efaw61XvagSaqRTcqUNm2kYVUlgPqlHzMggjyZWecy8mr
	 yqf7yie6CvD2Un7SKUu5Axyk47npfDJfDfPp7/LrAOhnshXgGnes96Vzn9ALEbAQEF
	 KTt4O7sXRZWjYjik02lYyltg9Qiasu/Z5h1Bd5gJxhqRZ6JoNu0WkAzQGQqzsWGXAR
	 lOcwjAouDJM7lGgaMcT9dW/XFFnOosZIRye+xBqYwjTAVGer1Ypc5otdezY4T96QRs
	 eQbm9/yNKZqkN+KYSI/1vFFm2wR3YIIjx188IXYk2UyRkQtE/z3rTgDIt9gumGvNjJ
	 cqj5lkn5Rn4Hg==
Date: Thu, 11 Sep 2025 16:51:01 +0100
From: Lee Jones <lee@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com,
	sre@kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [GIT PULL] Immutable branch between MFD, Power and Regulator due for
 the v6.18 merge window
Message-ID: <20250911155101.GA1637058@google.com>
References: <20250904160530.66178-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250904160530.66178-1-macroalpha82@gmail.com>
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

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDhmNWFlMzBkNjlkNzU0
M2VlZTBkNzAwODNkYWY0ZGU4ZmUxNWQ1ODU6CgogIExpbnV4IDYuMTctcmMxICgyMDI1LTA4LTEw
IDE5OjQxOjE2ICswMzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6
CgogIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9sZWUvbWZk
LmdpdCB0YWdzL2liLW1mZC1wb3dlci1yZWd1bGF0b3ItdjYuMTgKCmZvciB5b3UgdG8gZmV0Y2gg
Y2hhbmdlcyB1cCB0byA5ODFkZDE2MmI2MzU3OGFlZTM0YjVjNjg3OTVlMjQ2NzM0Yjc2ZDcwOgoK
ICByZWd1bGF0b3I6IGJxMjU3eHg6IEFkZCBicTI1N3h4IGJvb3N0IHJlZ3VsYXRvciBkcml2ZXIg
KDIwMjUtMDktMTEgMTU6NTU6NDEgKzAxMDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkltbXV0YWJsZSBicmFuY2ggYmV0
d2VlbiBNRkQsIFBvd2VyIGFuZCBSZWd1bGF0b3IgZHVlIGZvciB0aGUgdjYuMTggbWVyZ2Ugd2lu
ZG93CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCkNocmlzIE1vcmdhbiAoNCk6CiAgICAgIGR0LWJpbmRpbmdzOiBtZmQ6IHRp
LGJxMjU3MDNhOiBBZGQgVEkgQlEyNTcwM0EgQ2hhcmdlcgogICAgICBtZmQ6IGJxMjU3eHg6IEFk
ZCBzdXBwb3J0IGZvciBCUTI1NzAzQSBjb3JlIGRyaXZlcgogICAgICBwb3dlcjogc3VwcGx5OiBi
cTI1N3h4OiBBZGQgc3VwcG9ydCBmb3IgQlEyNTdYWCBjaGFyZ2VyCiAgICAgIHJlZ3VsYXRvcjog
YnEyNTd4eDogQWRkIGJxMjU3eHggYm9vc3QgcmVndWxhdG9yIGRyaXZlcgoKIC4uLi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21mZC90aSxicTI1NzAzYS55YW1sICAgICAgIHwgMTE3ICsrKysKIGRyaXZl
cnMvbWZkL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDExICsKIGRy
aXZlcnMvbWZkL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsK
IGRyaXZlcnMvbWZkL2JxMjU3eHguYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDk5
ICsrKwogZHJpdmVycy9wb3dlci9zdXBwbHkvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAg
fCAgIDcgKwogZHJpdmVycy9wb3dlci9zdXBwbHkvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDEgKwogZHJpdmVycy9wb3dlci9zdXBwbHkvYnEyNTd4eF9jaGFyZ2VyLmMgICAgICAg
ICAgICAgfCA3NTUgKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL3JlZ3VsYXRvci9LY29u
ZmlnICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgOCArCiBkcml2ZXJzL3JlZ3VsYXRvci9N
YWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL3JlZ3VsYXRv
ci9icTI1N3h4LXJlZ3VsYXRvci5jICAgICAgICAgICAgICB8IDE4NiArKysrKwogaW5jbHVkZS9s
aW51eC9tZmQvYnEyNTd4eC5oICAgICAgICAgICAgICAgICAgICAgICAgfCAxMDQgKysrCiAxMSBm
aWxlcyBjaGFuZ2VkLCAxMjkwIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3RpLGJxMjU3MDNhLnlhbWwKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21mZC9icTI1N3h4LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL3Bvd2VyL3N1cHBseS9icTI1N3h4X2NoYXJnZXIuYwogY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvcmVndWxhdG9yL2JxMjU3eHgtcmVndWxhdG9yLmMKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBpbmNsdWRlL2xpbnV4L21mZC9icTI1N3h4LmgKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F60AC433E7
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 20:43:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B32E521D6C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 20:43:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Fu4k0g7k"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B32E521D6C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FRV4Yjp7+kKFCV68cI4DmtKaPMP5Gqjxx0p/0GNA7PQ=; b=Fu4k0g7kDy+h3zIYKFRJnvoL8d
	fcPHgQiI6xV6jmrwpCiMvN/z0poDfN+d+y4LakIzXVSS6iwaqYjHa3oCph98kJG5uuVY8Ej/6Jbpm
	JtnVuDjJLfKIY5VCat5dMmQbd4m6P93TWZh+NYj8AgZVnUxpj360ZiCZ5YC35K5GdZULsT2V8EtUB
	FYVOBx/byTValsr4+17yXi+6QxruL4c4EiNQKbirEPQXgO9VOQ+S7WmY8soeqdVUGwtINk3n7+XJO
	DW2PogNs2stNCH40NqtBzd66HejPX2Le6mx/yTxiJKz40hBd4XTMmZ1LPhSahIv0ZNYSmABObS95G
	H+mMrhkw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS4fL-0002Af-VT; Mon, 12 Oct 2020 20:43:32 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4fE-00028l-6S; Mon, 12 Oct 2020 20:43:26 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 2BE79A5218B; Mon, 12 Oct 2020 22:43:21 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH v2 0/2] arm64: Add basic support for Kobol's Helios64
Date: Mon, 12 Oct 2020 22:43:15 +0200
Message-Id: <20201012204317.1581752-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_164324_339792_F43E83C4 
X-CRM114-Status: GOOD (  12.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgp0aGlzIGlzIHYyIG9mIHRoZSBzZXJpZXMuIENvbXBhcmVkIHRvIHRoZSAoaW1wbGlj
aXQpIHYxIHNlbnQgd2l0aApNZXNzYWdlLUlkOiAyMDIwMDkyNTIxNDAwMy4yNzE4Ni0xLXV3ZUBr
bGVpbmUta29lbmlnLm9yZyBJIHJlbW92ZWQgbW9zdApPUFBzIHRvIG1ha2UgdGhlIHRoZSBtYWNo
aW5lIHJ1biBzdGFibGUuIEkgZ3Vlc3MgdGhpcyBjYW4gYmUgYmV0dGVyCmZpeGVkIGJ5IGZpbmUg
dHVuaW5nIHRoZSByZWd1bGF0b3Igc2V0dXAsIGJ1dCBJIGRvbid0IGhhdmUgdGhlIGVxdWlwbWVu
dAp0byBmaW5kIHRoZSBhY3R1YWwgcHJvYmxlbS4gQWxzbyBJIGFkZGVkIGEgY29weXJpZ2h0IGhp
bnQsIGEgdGVtcGVyYXR1cmUKc2Vuc29yIGFuZCBhIGxpbmsgdG8gdGhlIHZlbmRvciB3aWtpLiBU
aGUgZmlyc3QgcGF0Y2ggZ290IGFuIEFjayBpbiB0aGUKZmlyc3Qgcm91bmQgdGhhdCBJIGFkZGVk
LCB0b28uCgpCZXN0IHJlZ2FyZHMKVXdlCgpVd2UgS2xlaW5lLUvDtm5pZyAoMik6CiAgZHQtYmlu
ZGluZ3M6IHZlbmRvci1wcmVmaXhlczogQWRkIGtvYm9sIHByZWZpeAogIGFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBBZGQgYmFzaWMgc3VwcG9ydCBmb3IgS29ib2wncyBIZWxpb3M2NAoKIC4uLi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sICB8ICAgMiArCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwogLi4uL2R0cy9yb2Nr
Y2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzICAgIHwgMzgyICsrKysrKysrKysrKysrKysr
KwogMyBmaWxlcyBjaGFuZ2VkLCAzODUgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlvczY0LmR0cwoK
LS0gCjIuMjguMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
